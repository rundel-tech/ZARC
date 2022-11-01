-- **********************************************
-- * ZARC FPGA Source                           *
-- * NMI Controller                             *
-- * Written by: Merlin Skinner                 *
-- * Date Started: 15/6/2020                    *
-- **********************************************

-- There are various reasons that an NMI might be generated, and a method is
-- required to determine which of these caused the interrupt.

-- Note that unlike INTn, NMIn is an asynchronous input to the Z80. For a CMOS
-- Z80, the minimum pulse width is 60 ns. NMI is sampled on the rising edge of
-- the last clock cycle at the end of any instruction.

-- In order that NMIs are correctly vectored to the monitor, memory mapping is
-- selectively disabled to force the code at the NMI vector in page 0x3f to gain
-- control, regardless of the currently selected page. The logic to achieve this
-- is clocked at 50 MHz to ensure it can reliably follow bus cycles. The process
-- is complicated by the fact that the Z80 does not have a uniquely identifiable
-- NMI acknowledge cycle. Externally, it is identical to a normal instruction
-- fetch, though the data is ignored. Prefixed instructions have multiple M1
-- cycles. These features make it difficult to synchronise the control of memory
-- mapping with the state of the processor. Each of the sources are treated
-- differently to ensure reliable operation.

-- Supervisor violation
-- An I/O cycle is in progress. As long as NMI is asserted before the last
-- CPU_CLK cycle, we can be sure that the following M1 cycle is an NMI
-- acknowledge.

-- Write protection violation
-- A write cycle is in progress. As long as NMI is asserted before the last
-- CPU_CLK cycle, we can be sure that the following M1 cycle is an NMI
-- acknowledge.

-- Front panel switch
-- Switch operation is asynchronous to CPU cycles, so we must wait for a memory
-- read, memory write or I/O operation before asserting NMI. This works because
-- M1 cyles only occur at the beginning of an instruction. Instructions that do
-- not access memory or I/O will result in delayed NMI operation, but in this
-- case the effect is unimportant.

-- Trace (single step) interrupt
-- The monitor determines the instruction prefix state before triggering the
-- trace. As a result, the hardware "knows" how many additional M1 cycles are
-- to be expected before the interrupt acknowledge.


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;                 -- Required for log2

use work.Definitions.all;               -- Project definitions

entity NMI_Control is
    port(
        Clk : in std_logic;             -- 50 MHz
        Rst : in std_logic;
        -- CPU signals
        m1_s : in std_logic;            -- Machine cycle 1
        iorq_s : in std_logic;          -- I/O request
        mreq_s : in std_logic;          -- Memory request
        wr_s : in std_logic;            -- Write strobe
        rd_s : in std_logic;            -- Read strobe
        super_s : in std_logic;         -- Supervisor mode - I/O access allowed
        prot_s : in std_logic;          -- Write protect
        -- Other signals
        NMI_SWITCHn: in std_logic;      -- Debounced front panel NMI switch
        trace_arm : in std_logic;       -- Trace (single step) arm strobe
        prefix_count : integer range 0 to 2;    -- Number of prefixes for trace
        mmap_arm : in std_logic;        -- Memory mapping arm strobe
        NMI : out std_logic;            -- Non-maskable interrupt to CPU (asynchronous)
        nmi_svc : out std_logic;        -- NMI service time
        nmi_mode_clr : in std_logic;    -- nmi_mode_en clear strobe
        ctrl_mmap_en : in std_logic;    -- Memory mapping enable bit
        mmap_arm_next :out std_logic;   -- Map next instruction
        mmap_on_nmi : out std_logic;    -- MMAP state on NMI
        super_instr : out std_logic;    -- Instruction is from supervisor bank
        nmi_reasons_reg : out std_logic_vector (CPU_DATA_WIDTH - 1 downto 0);   -- NMI reason register
        nmi_reasons_clr : in std_logic_vector (NMI_REASONS_NUM - 1 downto 0)    -- NMI reason clear strobes
    );
end entity NMI_Control;


architecture logic of NMI_Control is

    -- **************
    -- * Components *
    -- **************

    -- None


    -- *************
    -- * Constants *
    -- *************

    constant CYC_TIMER_MAX : integer := 7;  -- Limit of cycle timer


    -- *************
    -- * Variables *
    -- *************

    -- Generated signals
    signal mem_t1 : std_logic;              -- M1 T1 cycle strobe
    signal mem_t2 : std_logic;              -- M1 T2 cycle strobe
    signal nmi_prot_viol : std_logic;       -- Write protect violation
    signal nmi_super_viol : std_logic;      -- Supervisor violation
    type Bus_States is (BST_IDLE, BST_MEM1, BST_MEM2, BST_M1, BST_M1WE,
        BST_RFSH, BST_MRD, BST_MWR, BST_IO1, BST_IO2,
        BST_IACK, BST_NACK, BST_IN, BST_OUT);   -- State machine states
    signal bus_state : Bus_States;
    signal cyc_timer : integer range 0 to CYC_TIMER_MAX;
    signal super_instr_out : std_logic;     -- Instruction is from supervisor bank
    -- NMI / trace signals
    signal nmi_out : std_logic;             -- NMI
    signal nmi_req : std_logic;             -- NMI request
    type mapa_states is (MST_IDLE, MST_ARM, MST_END);   -- State machine states
    signal mapa_state : mapa_states;
    type tra_states is (TST_IDLE, TST_ARM, TST_END);    -- State machine states
    signal tra_state : tra_states;
    type svc_states is (SST_IDLE, SST_SVC); -- State machine states
    signal svc_state : svc_states;
    signal nmi_trigd : std_logic;           -- NMI triggered flag
    signal prefix_counter : integer range 0 to 2;   -- Prefix counter for trace
    signal nmi_switch_s : std_logic;        -- Synchronised NMI switch
    signal nmi_switch_dly : std_logic;      -- Delay for edge detection
    signal nmi_reasons : std_logic_vector (NMI_REASONS_NUM - 1 downto 0);    -- Reason register
    signal nmi_trace : std_logic;           -- Trace (single step)
    -- trace_counter counts M1 cycles counter before the NMI is asserted.
    signal trace_counter : integer range 0 to TRACE_CYCLES;
    signal mmap_arm_counter : integer range 0 to MMAP_ARM_CYCLES;   -- MMAP cycle counter


begin


    -- ****************************
    -- * Component Instantiations *
    -- ****************************

    -- None.


    -- *********
    -- * Logic *
    -- *********


    -- Number of interrupts must fit into one byte, allowing for the MMAP_En bit.
    assert NMI_REASONS_NUM  < CPU_DATA_WIDTH report "Too many NMI reasons: " & integer'image(NMI_REASONS_NUM) severity error;

    -- Map bits into NMI reason register as seen by the CPU.
    nmi_reasons_reg (NMI_REASONS_NUM - 1 downto 0) <= nmi_reasons;
    nmi_reasons_reg (CPU_DATA_WIDTH - 1 downto NMI_REASONS_NUM) <= (others => '0');


    sync_to_r : process (Clk) is
    begin
        -- Synchronise CPU inputs. These are not reset so they settle to the
        -- reset state before reset is released.
        if rising_edge (Clk) then
            nmi_switch_s <= NMI_SWITCHn;    -- Debounced front panel NMI switch
        end if;
    end process sync_to_r;


    nmi_svc <= '1' when (svc_state = SST_SVC) else '0';
    NMI <= nmi_out;

    -- *** NMI Servicing ***
    nsvc : process (Rst, Clk) is
    begin

        if Rst = '1' then
            svc_state <= SST_IDLE;

        elsif rising_edge (Clk) then

            case svc_state is

                when SST_IDLE =>
                    -- Normal state
                    if (bus_state = BST_NACK) and (mreq_s = '0') then
                        -- This is the end of the NMI acknowledge cycle
                        svc_state <= SST_SVC;
                    end if;

                when SST_SVC =>
                    -- NMI service routine active.
                    if nmi_mode_clr = '1' then
                        -- Stop NMI service mode.
                        svc_state <= SST_IDLE;
                    end if;

            end case;
        end if;

    end process nsvc;


    -- *** Memory Map Arm ***
    -- Implement the memory mapping arm logic.
    mapa : process (Rst, Clk) is
    begin

        if Rst = '1' then
            mapa_state <= MST_IDLE;
            -- Trace (single step)
            mmap_arm_counter <= 0;
            mmap_arm_next <= '0';

        elsif rising_edge (Clk) then

            case mapa_state is

                when MST_IDLE =>
                    -- Normal state
                    if mmap_arm = '1' then
                         -- Memory mapping arm
                        mmap_arm_counter <= MMAP_ARM_CYCLES;
                        mapa_state <= MST_ARM;
                    end if;


                when MST_ARM =>
                    -- Memory mapping arm logic.
                    if bus_state = BST_MEM2 then
                        -- This is the beginning of a memory cycle.
                        if mmap_arm_counter = 0 then
                            mmap_arm_next <= '1';       -- Map next instruction
                            mapa_state <= MST_END;
                        else
                            mmap_arm_counter <= mmap_arm_counter - 1;
                        end if;
                    end if;

                when MST_END =>
                    if bus_state = BST_IDLE then
                        mmap_arm_next <= '0';
                        mapa_state <= MST_IDLE;
                    end if;

            end case;
        end if;

    end process mapa;


    -- *** Trace Arm ***
    -- Implement the TRARM logic.
    tra : process (Rst, Clk) is
    begin

        if Rst = '1' then
            tra_state <= TST_IDLE;
            -- Trace (single step)
            nmi_trace <= '0';
            trace_counter <= 0;

        elsif rising_edge (Clk) then

            case tra_state is

                when TST_IDLE =>
                    -- Trace logic.
                    if trace_arm = '1' then
                        -- Arm trace (single step) interrupt
                        trace_counter <= TRACE_CYCLES;
                        tra_state <= TST_ARM;
                    end if;

                when TST_ARM =>
                    -- Trace arm logic.
                    if bus_state = BST_MEM2 then
                        -- This is the beginning of a memory cycle.
                        if trace_counter = 0 then
                            nmi_trace <= '1';       -- Trigger trace interrupt
                            tra_state <= TST_END;
                        else
                            trace_counter <= trace_counter - 1;
                        end if;
                    end if;

                when TST_END =>
                    nmi_trace <= '0';
                    tra_state <= TST_IDLE;

            end case;
        end if;

    end process tra;


    -- *** CPU Bus Interface ***
    -- Keep track of CPU busy cycles, indentifies supervisor and write
    -- protection violations. NMI is asserted at times that lead to unambiguous
    -- acknowledge cycle identification.
    busi : process (Rst, Clk, super_instr_out) is
    begin

        super_instr <= super_instr_out; -- Instruction is from supervisor bank

        if Rst = '1' then
            bus_state <= BST_IDLE;
            cyc_timer <= 0;                 -- Cycle timer
            mmap_on_nmi <= '0';             -- MMAP state on NMI
            -- NMI
            nmi_out <= '0';
            super_instr_out <= '0';     -- Instruction is from supervisor bank
            nmi_prot_viol <= '0';
            nmi_super_viol <= '0';
            nmi_trigd <= '0';

        elsif rising_edge (Clk) then

            -- Update cycle timer.
            if bus_state = BST_IDLE then
                cyc_timer <= 0;         -- Reset cycle timer
            else
                if cyc_timer /= CYC_TIMER_MAX then
                    cyc_timer <= cyc_timer + 1;
                end if;
            end if;

            -- State machine.
            case bus_state is
                when BST_IDLE =>
                    -- Idle state.
                    if nmi_req = '0' then
                        -- Remove NMI if there is no request.
                        nmi_out <= '0';
                    end if;
                    nmi_prot_viol <= '0';
                    nmi_super_viol <= '0';
                    if (mreq_s = '1') then
                        -- Memory cycle
                        bus_state <= BST_MEM1;
                    elsif (iorq_s = '1') then
                        -- I/O cycle or interrupt acknowledge.
                        bus_state <= BST_IO1;
                    end if;

                when BST_MEM1 =>
                    -- Memory cycle.
                    if (mreq_s = '1') then
                        bus_state <= BST_MEM2;
                    else
                        -- Abort if MREQn has gone away.
                        bus_state <= BST_IDLE;
                    end if;

                when BST_MEM2 =>
                    -- We see a persistent MREQn. The delay also increases
                    -- confidence that other control signals will have settled
                    -- to their intended states.
                    if (m1_s = '1') then
                        if (nmi_trigd = '1') then
                            -- If this is the result of a trace, we need to
                            -- allow for prefixes before disabling memory
                            -- mapping.
                            if (nmi_reasons (NMI_TRACE_BIT) = '0') or (prefix_counter = 0) then
                                -- NMI acknowledge cycle
                                mmap_on_nmi <= ctrl_mmap_en;    -- MMAP state on NMI
                                bus_state <= BST_NACK;
                            else
                                -- Keep count of prefixes. This is redundant
                                -- for all but traces.
                                prefix_counter <= prefix_counter - 1;
                                bus_state <= BST_M1;    -- Instruction fetch
                            end if;
                        else
                            -- Instruction fetch
                            bus_state <= BST_M1;
                        end if;
                    else
                        -- Memory read / write
                        if (rd_s = '1') then
                            -- Memory data read
                            bus_state <= BST_MRD;
                        else
                            -- Memory data write. Note that WRn will not be
                            -- asserted for some time. Early detection is useful
                            -- to allow write protection violation NMIs to be
                            -- generated in time to prevent execution of the
                            -- following instruction.
                            bus_state <= BST_MWR;
                        end if;
                    end if;

                when BST_NACK =>
                    -- NMI acknowledge.
                    if (mreq_s = '0') then
                        nmi_trigd <= '0';
                        -- Process refresh cycle as for a normal M1.
                        bus_state <= BST_M1WE;
                    end if;

                when BST_M1 =>
                    -- Instruction fetch.
                    if cyc_timer = 5 then
                        -- Sample SUPER after an uncritical delay.
                        super_instr_out <= super_s; -- Sample supervisor bit
                    end if;
                    if nmi_trace = '1' then
                        -- Trace NMI required on this instruction.
                        nmi_out <= '1';
                        nmi_trigd <= '1';       -- Set triggered flag
                        prefix_counter <= prefix_count;
                    end if;
                    if (mreq_s = '0') then
                        bus_state <= BST_M1WE;
                    end if;

                when BST_M1WE =>
                    -- Await refresh cycle. Note that the FPGA does not have
                    -- access to RFSHn, but we can deduce refresh time as it
                    -- always follows an instruction fetch.
                    if (mreq_s = '1') then
                        -- Start of refresh cycle
                        bus_state <= BST_RFSH;
                    end if;

                when BST_RFSH =>
                    -- Refresh cycle.
                    if (mreq_s = '0') then
                        bus_state <= BST_IDLE;
                    end if;

                when BST_MRD =>
                    -- Memory data read. An NMI asserted before the rising edge
                    -- of the last clock cycle at the end of any instruction
                    -- will be unabiguously be serviced on the next cycle.
                    if (cyc_timer = 6) and (nmi_out = '0') and (nmi_req = '1') then
                        -- Assert NMI
                        nmi_out <= '1';
                        nmi_trigd <= '1';       -- Set triggered flag
                    end if;
                    if (mreq_s = '0') then
                        bus_state <= BST_IDLE;
                    end if;

                when BST_MWR =>
                    -- Memory data write. An NMI asserted before the rising
                    -- edge of the last clock cycle at the end of any
                    -- instruction will be unabiguously be serviced on the next
                    -- cycle.
                    if cyc_timer = 5 then
                        if (nmi_out = '0') and ((nmi_req = '1') or (prot_s = '1')) then
                            -- Assert requested NMI. Write protect violations
                            -- are acted upon immediately so it is serviced on
                            -- the following cycle.
                            nmi_out <= '1';
                            nmi_trigd <= '1';       -- Set triggered flag
                        end if;
                        if prot_s = '1' then
                            -- Flag write protect violation.
                            nmi_prot_viol <= '1';
                        end if;
                    end if;
                    if (mreq_s = '0') then
                        -- End of read
                        bus_state <= BST_IDLE;
                    end if;

                when BST_IO1 =>
                    -- I/O cycle.
                    if (iorq_s = '1') then
                        bus_state <= BST_IO2;
                    else
                        -- Abort if IORQn has gone away.
                        bus_state <= BST_IDLE;
                    end if;

                when BST_IO2 =>
                    -- We see a persistent IORQn. The delay also increases
                    -- confidence that other control signals will have settled
                    -- to their intended states.
                    if (m1_s = '1') then
                        -- Interrupt acknowledge
                        bus_state <= BST_IACK;
                    else
                        if (super_instr_out = '0') then
                            nmi_super_viol <= '1';
                        end if;
                        -- I/O read / write
                        if (rd_s = '1') then
                            -- Input cycle
                            bus_state <= BST_IN;
                        elsif (wr_s = '1') then
                            -- Output cycle
                            bus_state <= BST_OUT;
                        end if;
                    end if;

                when BST_IACK =>
                    -- Interrupt acknowledge. There is no refresh cycle after
                    -- this.
                    if (iorq_s = '0') then
                        bus_state <= BST_IDLE;
                    end if;

                when BST_IN =>
                    -- Input cycle. An NMI asserted before the rising edge of
                    -- the last clock cycle at the end of any instruction will
                    -- be unabiguously be serviced on the next cycle.
                    if (cyc_timer = 6) and (nmi_out = '0') and (nmi_req = '1') then
                        -- Assert NMI
                        nmi_out <= '1';
                        nmi_trigd <= '1';       -- Set triggered flag
                    end if;
                    if (iorq_s = '0') then
                        bus_state <= BST_IDLE;
                    end if;

                when BST_OUT =>
                    -- Output cycle. An NMI asserted before the rising edge of
                    -- the last clock cycle at the end of any instruction will
                    -- be unabiguously be serviced on the next cycle.
                    if (cyc_timer = 6) and (nmi_out = '0') and (nmi_req = '1') then
                        -- Assert NMI
                        nmi_out <= '1';
                        nmi_trigd <= '1';       -- Set triggered flag
                    end if;
                    if (iorq_s = '0') then
                        bus_state <= BST_IDLE;
                    end if;

            end case;
        end if;

    end process busi;


    nmi_proc : process (Rst, Clk) is
    begin
        if Rst = '1' then
            nmi_reasons <= (others => '0');     -- Clear reasons

        elsif rising_edge (Clk) then
            nmi_switch_dly <= nmi_switch_s;     -- Delay for edge detection

            -- Request NMI whenever there is a reason to.
            if unsigned (nmi_reasons) /= 0 then
                nmi_req <= '1';
             else
                nmi_req <= '0';
            end if;

            if (nmi_switch_s = '1') and (nmi_switch_dly = '0') then
                -- The switch is newly pressed
                nmi_reasons (NMI_SWITCH_BIT) <= '1';
            elsif nmi_reasons_clr (NMI_SWITCH_BIT) = '1' then
                nmi_reasons (NMI_SWITCH_BIT) <= '0';
            end if;
            if nmi_prot_viol = '1' then
                nmi_reasons (NMI_PROT_VIOL_BIT) <= '1';
            elsif nmi_reasons_clr (NMI_PROT_VIOL_BIT) = '1' then
                nmi_reasons (NMI_PROT_VIOL_BIT) <= '0';
            end if;
            if nmi_super_viol = '1' then
                nmi_reasons (NMI_SUPER_VIOL_BIT) <= '1';
            elsif nmi_reasons_clr (NMI_SUPER_VIOL_BIT) = '1' then
                nmi_reasons (NMI_SUPER_VIOL_BIT) <= '0';
            end if;
            if nmi_trace = '1' then
                nmi_reasons (NMI_TRACE_BIT) <= '1';
            elsif nmi_reasons_clr (NMI_TRACE_BIT) = '1' then
                nmi_reasons (NMI_TRACE_BIT) <= '0';
            end if;

        end if;

    end process nmi_proc;

end logic;
