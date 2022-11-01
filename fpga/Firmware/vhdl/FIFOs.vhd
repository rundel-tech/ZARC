-- **********************************************
-- * ZARC FPGA Source                           *
-- * FIFOs using a single RAM block             *
-- * Written by: Merlin Skinner                 *
-- * Date Started: 20/5/2020                    *
-- **********************************************

-- Cyclone II M4K RAM blocks are 512 bytes long (other organisations are possible).
-- This logic provides a series of small FIFOs using a single RAM block in order to
-- make best use of the available RAM.

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;                 -- Required for log2

use work.Definitions.all;               -- Project definitions

-- FIFO 0 - Console RS-232 input
-- FIFO 1 - Console RS-232 output

entity FIFOs is
    port(
        Clk : in  std_logic;
        Rst : in  std_logic;
        -- FIFOs interfaces 0
        DataIn : in FIFOS_DATA_TYPE;
        DataOut : out FIFOS_DATA_TYPE;
        WrReq : in std_logic_vector (FIFOS_NUM - 1 downto 0);    -- Write request
        WrAck : out std_logic_vector (FIFOS_NUM - 1 downto 0);   -- Write acknowledged
        RdReq : in std_logic_vector (FIFOS_NUM - 1 downto 0);    -- Read request
        RdAck : out std_logic_vector (FIFOS_NUM - 1 downto 0);   -- Read acknowledged (data valid)
        Empty : out std_logic_vector (FIFOS_NUM - 1 downto 0);   -- FIFO is empty
        Full : out std_logic_vector (FIFOS_NUM - 1 downto 0);    -- FIFO is full
        ALHalf : out std_logic_vector (FIFOS_NUM - 1 downto 0)   -- FIFO is at least half full
    );
end entity FIFOs;


architecture logic of FIFOs is

    -- *************
    -- * Constants *
    -- *************

    -- Constants of interest outside this module are defined in Definitions.vhd.
    constant FIFO_RAM_SIZE : positive := 512;       -- RAM size in bytes
    -- RAM address bus width
    constant FIFO_RAM_ADDR_WIDTH : positive := positive (ceil (log2 (real (FIFO_RAM_SIZE))));

    -- Individual FIFO parameters
    -- Sizes (ordered list of each FIFO in bytes)
    type FIFO_PARAMS_TYPE is array (0 to FIFOS_NUM - 1) of integer;
    constant FIFOS_SIZE : FIFO_PARAMS_TYPE := (32, 32, 32, 32);      -- Edit to define size of each FIFO
 
    -- Generate pointer widths constant array.
    function init_widths return FIFO_PARAMS_TYPE is
        variable widths : FIFO_PARAMS_TYPE;
    begin
        for i in widths'range loop
            widths(i) := positive (ceil (log2 (real (FIFOS_SIZE (0)))));
        end loop;
        return widths;
    end function;

    constant FIFOS_PTR_WIDTH : FIFO_PARAMS_TYPE := init_widths;

    -- Generate RAM start address constants array.
    function init_starts return FIFO_PARAMS_TYPE is
        variable strts : FIFO_PARAMS_TYPE;
        variable acc : integer := 0;        -- Start at beginning
    begin
        for i in strts'range loop
            strts(i) := acc;
            assert false report "FIFO allocated address: " & integer'image(acc) severity note;
            acc := acc + FIFOS_SIZE (i);
         end loop;
        assert acc <= FIFO_RAM_SIZE report "Can't fit FIFOs in RAM!" severity error;
        return strts;
    end function;

    constant FIFOS_START : FIFO_PARAMS_TYPE := init_starts;

    -- Find maximum FIFO size.
    function init_max_size return positive is
        variable strts : FIFO_PARAMS_TYPE;
        variable max : integer := 0;
    begin
        for i in strts'range loop
            if FIFOS_SIZE (i) > max then
                max := FIFOS_SIZE (i);
            end if;
        end loop;
        assert false report "Maximum FIFO size: " & integer'image(max) severity note;
        return max;
    end function;

    constant FIFO_MAX_SIZE : positive := init_max_size;


    -- **************
    -- * Components *
    -- **************

    component FIFO_RAM
        port
        (
            address : in std_logic_vector (8 downto 0);
            clock : in std_logic  := '1';
            data : in std_logic_vector (7 downto 0);
            wren : in std_logic ;
            q : out std_logic_vector (7 downto 0)
        );
    end component FIFO_RAM;




    -- *************
    -- * Variables *
    -- *************

    -- State machine
    type States is (ST_IDLE, ST_WRITE, ST_WR_DONE, ST_READ, ST_RD1, ST_RD_DONE);
    signal state : States;
    signal op_fifo : integer range 0 to FIFOS_NUM - 1;

    -- RAM
    signal ram_addr : std_logic_vector (FIFO_RAM_ADDR_WIDTH - 1 downto 0);  -- Address
    signal ram_wrdata : std_logic_vector (CPU_DATA_WIDTH - 1 downto 0);     -- Write data
    signal ram_rddata : std_logic_vector (CPU_DATA_WIDTH - 1 downto 0);     -- Read data
    signal ram_wren : std_logic;        -- Write enable

    -- FIFOs
    type PTR_TYPE is array (0 to FIFOS_NUM - 1) of integer range 0 to FIFO_MAX_SIZE;
    signal rd_ptr : PTR_TYPE;           -- Read pointer
    signal wr_ptr : PTR_TYPE;           -- Write pointer
    type CONTENTS_TYPE is array (0 to FIFOS_NUM - 1) of integer range 0 to FIFO_MAX_SIZE;
    signal contents : CONTENTS_TYPE;    -- Number of bytes in buffer
    type FLAG_TYPE is array (0 to FIFOS_NUM - 1) of std_logic;
    signal full_int : FLAG_TYPE;
    signal empty_int : FLAG_TYPE;


begin

    -- ****************************
    -- * Component Instantiations *
    -- ****************************

    FIFO_RAM_inst : FIFO_RAM
        port map (
            address => ram_addr,
            clock => Clk,
            data => ram_wrdata,
            wren => ram_wren,
            q => ram_rddata
        );


    -- *********
    -- * Logic *
    -- *********

    -- Maintain FIFO status flags and write pointers for all FIFOs.
    gen_stat: for i in 0 to FIFOS_NUM - 1 generate

        -- Empty
        empty_int (i) <= '1' when (contents (i) = 0) else '0';
        Empty (i) <= empty_int (i);     -- Copy to external signal
        -- Full
        full_int (i) <= '1' when (contents (i) = FIFOS_SIZE (i)) else '0';
        Full (i) <= full_int (i);             -- Copy to external signal
        -- At least half full. This is not used internally, hence no alhalf_int.
        ALHalf (i) <= '1' when (contents (i) >= (FIFOS_SIZE (i) / 2)) else '0';

        -- Calculate write pointers from read pointers and contents. Allow for wrap-around.
        wr_ptr (i) <= to_integer (to_unsigned (rd_ptr (i) + contents (i), FIFOS_PTR_WIDTH (i)) ); --(PTR_WIDTH downto 0)

    end generate gen_stat;

    
    -- Apply address etc. to RAM to avoid additional registers on the outputs of "fsm".
    -- The Altera RAM block already contains registers on address, wren and write data.
    fsm_fastout : process(state, op_fifo, wr_ptr, rd_ptr, DataIn) is
    begin
        -- Default values
        ram_addr <= (others => 'X');
        ram_wrdata <= (others => 'X');
        ram_wren <= '0';

        case state is
            when ST_WRITE =>
                -- Write data to FIFO number op_fifo.
                for i in 0 to FIFOS_NUM - 1 loop
                    if op_fifo = i then
                        -- RAM write
                        -- ram_addr <= (FIFO_RAM_ADDR_WIDTH - 1 downto FIFOS_PTR_WIDTH (i) => '0')
                            -- & std_logic_vector (to_unsigned (FIFOS_START (i) + wr_ptr (i), FIFOS_PTR_WIDTH (i)));
                        -- Construct the address. wr_ptr (i) is wrapped to fit in
                        --FIFOS_PTR_WIDTH (i) and the base address is added.
                        ram_addr <= std_logic_vector (to_unsigned (
                            to_integer (to_unsigned (wr_ptr (i), FIFOS_PTR_WIDTH (i)))
                            + FIFOS_START (i), FIFO_RAM_ADDR_WIDTH));
                        ram_wrdata <= DataIn (i);
                    end if;
                end loop;
                ram_wren <= '1';

            when ST_READ =>
                -- Read data from FIFO number op_fifo.
                for i in 0 to FIFOS_NUM - 1 loop
                    if op_fifo = i then
                        -- RAM read
                        -- ram_addr <= (FIFO_RAM_ADDR_WIDTH - 1 downto FIFOS_PTR_WIDTH (i) => '0')
                            -- & std_logic_vector (to_unsigned (FIFOS_START (i) + rd_ptr (i), FIFOS_PTR_WIDTH (i)));
                        ram_addr <= std_logic_vector (to_unsigned (
                            to_integer (to_unsigned (rd_ptr (i), FIFOS_PTR_WIDTH (i)))
                            + FIFOS_START (i), FIFO_RAM_ADDR_WIDTH));
                    end if;
                end loop;
                ram_wrdata <= (others => 'X');
                ram_wren <= '0';

            when others =>
                ram_addr <= (others => 'X');
                ram_wrdata <= (others => 'X');
                ram_wren <= '0';

        end case;

    end process fsm_fastout;


    -- Control RAM operations for each cycle.
    fsm : process(Rst, Clk) is
    begin
        if Rst = '1' then
            for i in 0 to FIFOS_NUM - 1 loop
                rd_ptr (i) <= 0;        -- Read pointer
                -- Write pointers and status flags are calculated elsewhere.
                contents (i) <= 0;      -- Number of bytes in buffer
                WrAck (i) <= '0';
                RdAck (i) <= '0';
            end loop;
            state <= ST_IDLE;

        elsif rising_edge(Clk) then

            case state is
                when ST_IDLE =>
                    -- Decide which operation to perform next. Edit this section to set
                    -- priorities as required. Earlier entries have higher priority.
                    if (WrReq (FIFO_CON_RX) = '1') and (full_int (FIFO_CON_RX) = '0') then
                        -- Write console receiver data to FIFO. This requires a high priority
                        -- to avoid blocking the receiver and hence losing data.
                        op_fifo <= FIFO_CON_RX;
                        state <= ST_WRITE;
                    elsif (WrReq (FIFO_AUX_RX) = '1') and (full_int (FIFO_AUX_RX) = '0') then
                        -- Write auxiliary receiver data to FIFO. This requires a high priority
                        -- to avoid blocking the receiver and hence losing data.
                        op_fifo <= FIFO_AUX_RX;
                        state <= ST_WRITE;

                    elsif (RdReq (FIFO_CON_RX) = '1') and (empty_int (FIFO_CON_RX) = '0') then
                        -- CPU reads console receiver data from FIFO
                        op_fifo <= FIFO_CON_RX;
                        state <= ST_READ;
                    elsif (RdReq (FIFO_AUX_RX) = '1') and (empty_int (FIFO_AUX_RX) = '0') then
                        -- CPU reads auxiliary receiver data from FIFO
                        op_fifo <= FIFO_AUX_RX;
                        state <= ST_READ;

                    elsif (RdReq (FIFO_CON_TX) = '1') and (empty_int (FIFO_CON_TX) = '0') then
                        -- Console transmitter reads data from FIFO
                        op_fifo <= FIFO_CON_TX;
                        state <= ST_READ;
                    elsif (RdReq (FIFO_AUX_TX) = '1') and (empty_int (FIFO_AUX_TX) = '0') then
                        -- Auxiliary transmitter reads  data from FIFO
                        op_fifo <= FIFO_AUX_TX;
                        state <= ST_READ;

                    elsif (WrReq (FIFO_CON_TX) = '1') and (full_int (FIFO_CON_TX) = '0') then
                        -- CPU writes console transmitter data to FIFO
                        op_fifo <= FIFO_CON_TX;
                        state <= ST_WRITE;
                    elsif (WrReq (FIFO_AUX_TX) = '1') and (full_int (FIFO_AUX_TX) = '0') then
                        -- CPU writes auxiliary transmitter data to FIFO
                        op_fifo <= FIFO_AUX_TX;
                        state <= ST_WRITE;
                    end if;

                when ST_WRITE =>
                    -- Write data to FIFO in op_fifo. See fsm_fastout for RAM control.
                    for i in 0 to FIFOS_NUM - 1 loop
                        if op_fifo = i then
                             -- Update contents count
                            contents (i) <= contents (i) + 1;
                            WrAck (i) <= '1';
                        end if;
                    end loop;
                    state <= ST_WR_DONE;

                when ST_WR_DONE =>
                    -- Await removal of request to prevent multiple writes.
                    for i in 0 to FIFOS_NUM - 1 loop
                        if op_fifo = i then
                            if WrReq (i) = '0' then
                                WrAck (i) <= '0';
                                state <= ST_IDLE;
                            end if;
                        end if;
                    end loop;

                when ST_READ =>
                    -- Read data from FIFO in op_fifo. See fsm_fastout for RAM control.
                    state <= ST_RD1;

                when ST_RD1 =>
                    -- Store output data
                    for i in 0 to FIFOS_NUM - 1 loop
                        if op_fifo = i then
                            DataOut (i) <= ram_rddata;
                            RdAck (i) <= '1';
                        end if;
                    end loop;
                    state <= ST_RD_DONE;

                when ST_RD_DONE =>
                    -- Await removal of request to prevent multiple writes.
                    for i in 0 to FIFOS_NUM - 1 loop
                        if op_fifo = i then
                            if RdReq (i) = '0' then
                                -- Update pointer and count
                                rd_ptr (i) <= rd_ptr (i) + 1;
                                contents (i) <= contents (i) - 1;
                                RdAck (i) <= '0';
                                state <= ST_IDLE;
                            end if;
                        end if;
                    end loop;

            end case;
        end if;

    end process fsm;

end architecture logic;
