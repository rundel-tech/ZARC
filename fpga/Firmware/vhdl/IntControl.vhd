-- **********************************************
-- * ZARC FPGA Source                           *
-- * Interrupt Controller                       *
-- * Written by: Merlin Skinner                 *
-- * Date Started: 23/5/2020                    *
-- **********************************************

-- Note: Up to eight interrupts are supported. IM 2 is anticipated, and the
-- fixed vector associated with each interrupt is supplied when the interrupt
-- is serviced. Routine address is “I*256+databus”. Vector supplied is
-- 0xe0 + 2 * interrupt number (0 to 7).

-- Note that INTn is a synchronous input to the Z80. For a CMOS Z80, the setup
-- time is 50 ns and the hold is 10 ns. There are significant propagation
-- delays from the FPGA to the Z80 interrupt pins, including a 74ls00 (U38) so
-- the hold time will be satisfied by an FPGA output changing on the positive
-- edge of CPU_CLK.

-- Synchronising CPU_CLK to RClk will result in a 0 to 20 ns delay plus 20 ns
-- per RClk (50 MHz). CPU_CLK at 8 MHz is 125 ns long, so we have 6.25 RClk
-- cycles per CPU_CLK.


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;                 -- Required for log2

use work.Definitions.all;               -- Project definitions

entity IntControl is
    port (
        Clk : in std_logic;
        Rst : in std_logic;
        -- Level-sensitive interrupt requests. 0 is the highest prioity.
        Requests : in std_logic_vector (INTS_NUM - 1 downto 0); -- 0 is highest priority
        Enables : in std_logic_vector (INTS_NUM - 1 downto 0);
        -- Strobes indicate that the corresponding request is being serviced.
        Service : out std_logic_vector (INTS_NUM - 1 downto 0); -- Interrupt service strobes
        Inhibit : in std_logic;         -- Inhibit (during changes)
        cpu_clk_s : in std_logic;       -- CPU clock
        Int : out std_logic;            -- Interrupt to CPU (synchronous)
        IntAck : in  std_logic;         -- Interrupt acknowledge cycle
        Vector : out std_logic_vector (CPU_DATA_WIDTH - 1 downto 0); -- Vector to CPU
        VecValid : out std_logic        -- Vector is valid
    );
end entity IntControl;


architecture logic of IntControl is

    -- *************
    -- * Variables *
    -- *************

    -- State machine
    type States is (ST_IDLE, ST_INTACK);
    signal state : States;

    type int_num_type is range 0 to INTS_NUM - 1;

    signal qual_req : std_logic_vector (INTS_NUM - 1 downto 0); -- Enabled requests
    signal do_int_num : integer range 0 to INTS_NUM - 1;        -- Interrupt number being serviced
    signal cpu_clk_d : std_logic;           -- Delayed cpu_clk_s
    shared variable pri_int_num : integer range 0 to INTS_NUM - 1;  -- Number of highest priority request


begin

    -- Number of interrupts must fit into one byte.
    assert INTS_NUM <= CPU_DATA_WIDTH report "Too many interrupts: " & integer'image (INTS_NUM) severity error;

    -- Use a priority encoder to find the highest priority enabled request.
    pri : process (Requests, Enables, qual_req)
    begin
        pri_int_num := INTS_NUM - 1;
        qual_req <= Requests and Enables;
        for i in 0 to INTS_NUM - 1 loop
            if qual_req (i) = '1' then
                pri_int_num := i;
                exit;           -- Exit loop if interrupt request found
            end if;
        end loop;
    end process;


    -- Controlling state machine.
    fsm : process (Rst, Clk) is
    begin
        if Rst = '1' then
            Int <= '0';
            VecValid <= '0';            -- No vector
            state <= ST_IDLE;

            elsif rising_edge (Clk) then
            cpu_clk_d <= cpu_clk_s;     -- Create delayed clock

            -- Generate an interrupt request for any enabled request. Inhibit
            -- is used to prevent interrupts immediately after an instruction
            -- that might cancel an interupt. Failure to do this could result
            -- in an interrupt being acknowledged that has no current reason.
            if (cpu_clk_s = '1') and (cpu_clk_d = '0') then
                -- Positive CPU_CLK edge detected, so we can update INT.
                if (unsigned (qual_req) = 0) or (Inhibit = '1') then
                    Int <= '0';             -- No enabled interrupts requested
                else
                    Int <= '1';             -- Interrupt request to CPU
                end if;
            end if;

            case state is
                when ST_IDLE =>
                    -- Idle state
                    Service <= (others => '0');         -- Remove any service strobes
                    VecValid <= '0';                    -- No vector
                    if IntAck = '1' then
                        -- Interrupt acknowledge cycle
                        do_int_num <= pri_int_num;      -- Sample interrupt number
                        state <= ST_INTACK;
                    end if;

                when ST_INTACK =>
                    -- Interrupt acknowledge
                    Vector <= std_logic_vector (to_unsigned (
                        INT_VEC_BASE + (do_int_num + do_int_num)
                        , CPU_DATA_WIDTH));
                    VecValid <= '1';                    -- Vector is valid
                    if IntAck = '0' then
                        for i in 0 to INTS_NUM - 1 loop
                            if i = do_int_num then
                                Service (i) <= '1';
                            end if;
                        end loop;
                        state <= ST_IDLE;
                    end if;

            end case;
        end if;
    end process fsm;

end logic;
