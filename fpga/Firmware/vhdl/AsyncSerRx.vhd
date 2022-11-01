-- **********************************************
-- * ZARC FPGA Source                           *
-- * Asynchronous Serial Receiver               *
-- * Written by: Merlin Skinner                 *
-- * Date Started: 5/5/2020                     *
-- **********************************************

-- An asynchronous serial receiver. Busy is active while data is being received.
-- "Rx_Strb" indicates that a word has been received.

library ieee;
use ieee.std_logic_1164.all;

use work.Definitions.all;               -- Project definitions


entity AsyncSer_Rx is
    port(
        Clk : in  std_logic;
        Rst : in  std_logic;
        Time_Strb : in  std_logic;      -- Timing reference (ASER_BAUD_MULT times the Baud rate)
        RxD : in  std_logic;            -- Serial data in
        Data : out std_logic_vector(ASER_WORD_LENGTH - 1 downto 0); -- Received data
        Rx_Ready : out std_logic;       -- Received data available
        Rx_Ack : in  std_logic;         -- Acknowlege receipt of received data
        Busy : out std_logic;           -- Receiver busy
        FrameErr : out std_logic        -- Framing error
    );
end entity AsyncSer_Rx;

architecture logic of AsyncSer_Rx is

    -- A two FF synchronizer
    component Sync2FF
        generic(size : integer := 1);   -- Default size is 1
        port(
            Clk : in  std_logic;
            Rst : in  std_logic;
            Input : in  std_logic_vector (size - 1 downto 0);    -- Asynchronous input
            Output : out std_logic_vector (size - 1 downto 0);   -- Synchronous outputs
            Output_n : out std_logic_vector(size - 1 downto 0)
        );
    end component Sync2FF;

    -- Remove transient pulses from input data.
    component DeNoise
        generic(count : integer);   -- Number of bit_counts in timer
        port(
            Clk : in std_logic;
            Rst : in std_logic;
            Time_Strb : in  std_logic;  -- Timing strobe
            Input : in  std_logic;      -- Signal input
            Output : out std_logic      -- Signal output
        );
    end component DeNoise;

    -- State machine
    type States is (ST_INIT, ST_IDLE, ST_START, ST_DATA, ST_STOP, ST_WTACK);
    signal state : States;

    signal rxd_s : std_logic;           -- Synchronised serial inputs
    signal rxd_clean : std_logic;       -- Low-pass filtered inputs
    signal reg : std_logic_vector(ASER_WORD_LENGTH - 1 downto 0); -- Transmit shift register
    signal bit_count : integer range 0 to ASER_WORD_LENGTH - 1;
    signal bd_halfway : std_logic;      -- Half-way though each bit strobe
    signal bd_div : integer range 0 to ASER_BAUD_MULT - 1; -- Baud rate divider


begin
    -- Synchronise input
    inst_Sync : Sync2FF
        generic map(size => 1)
        port map(
            Clk => Clk,
            Rst => '0',                 -- Establish level before end of reset
            Input(0) => RxD,            -- External data input
            Output(0) => rxd_s          -- Synchronised input
        );

    -- Remove transient pulses from input data.
    inst_DeNoise : DeNoise
        generic map(count => (ASER_BAUD_MULT / 2))
        port map(
            Clk => Clk,
            Rst => Rst,
            Time_Strb => Time_Strb,     -- Use baud rate strobe as timing reference
            Input => rxd_s,             -- Synchronised input
            Output => rxd_clean         -- Filtered input
        );

    -- Generate Baud rate strobe. This is created from the ASER_BAUD_MULT times the Baud rate
    -- strobe. The bit_counter is reset when idling and loops continuously during reception.
    brgen : process(Rst, Clk) is
    begin
        if Rst = '1' then
            bd_div <= 0;
        elsif rising_edge(Clk) then
            if state = ST_IDLE then
                -- Hold the timer in reset when idling
                bd_div <= 0;
            else
                if Time_Strb = '1' then
                    if bd_div = (ASER_BAUD_MULT - 1) then
                        bd_div <= 0;
                    else
                        bd_div <= bd_div + 1;
                    end if;
                end if;
            end if;
        end if;

        -- Generate a strobe half-way through each time.
        if rising_edge(Clk) then
            if (bd_div = ((ASER_BAUD_MULT / 2)-1)) and (Time_Strb = '1') then
                -- We aim for slightly earlier than half-way to allow for single-clock
                -- delays elsewhere in the logic. This is only really significant at
                -- low settings of ASER_BAUD_MULT.
                bd_halfway <= '1';
            else
                bd_halfway <= '0';
            end if;
        end if;
    end process brgen;

    fsm : process(Rst, Clk) is
    begin
        -- Control the reception sequence
        if Rst = '1' then
            reg <= (others => '0');
            Data <= x"00";          -- Output data register
            Rx_Ready <= '0';        -- No received data available
            FrameErr <= '0';        -- No error
            Busy <= '0';
            bit_count <= 0;
            state <= ST_INIT;

        elsif rising_edge(Clk) then
            case state is
                when ST_INIT =>
                    -- Wait for marking state while the input logic initialises.
                    if (rxd_clean = '1') then
                        state <= ST_IDLE;
                    end if;

                when ST_IDLE =>
                    -- Wait for a start bit ("space").
                    if rxd_clean = '0' then
                        Busy <= '1';        -- Indicate activity
                        state <= ST_START;
                    else
                        Busy <= '0';
                    end if;

                when ST_START =>
                    -- Delay until half-way though the bit to find sampling time.
                    if (rxd_clean = '0') then
                        if bd_halfway = '1' then
                            bit_count <= 0; -- Reset bit bit_counter
                            state <= ST_DATA;
                        end if;
                    else
                        -- Ignore short start bits (noise?)
                        Busy  <= '0';   -- We are no longer busy
                        state <= ST_IDLE;
                    end if;

                when ST_DATA =>
                    -- Data bits.
                    if bd_halfway = '1' then
                        -- We are half-way though a data bit. Shift the new bit into the data register.
                        reg(ASER_WORD_LENGTH - 2 downto 0) <= reg(ASER_WORD_LENGTH - 1 downto 1);
                        reg(ASER_WORD_LENGTH - 1) <= rxd_clean;
                        if bit_count = (ASER_WORD_LENGTH - 1) then
                            state <= ST_STOP;
                        else
                            -- There are more bits to send
                            bit_count <= bit_count + 1;
                        end if;
                    end if;

                when ST_STOP =>
                    -- Verify the stop bit, which should be a mark.
                    if bd_halfway = '1' then
                        -- Time to sample the stop bit.
                        if (rxd_clean = '1') then
                            -- Stop bit is OK
                            Data <= reg;            -- Present received data
                            Rx_Ready  <= '1';       -- Signify new word received
                            FrameErr <= '0';        -- No error
                            state <= ST_WTACK;
                        else
                            -- We expected a "space". Report framing error and ignore received data.
                            FrameErr <= '1';        -- Flag error
                            state <= ST_IDLE;
                        end if;
                    end if;

                when ST_WTACK =>
                    -- Await receipt of new data
                    if Rx_Ack = '1' then
                        Rx_Ready  <= '0';           -- Word acknowledged
                        state <= ST_IDLE;
                    end if;

            end case;
        end if;

    end process fsm;
end architecture logic;
