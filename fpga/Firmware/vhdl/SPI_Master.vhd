-- **********************************************
-- * ZARC FPGA Source                           *
-- * SPI Master Interface                       *
-- * Written by: Merlin Skinner                 *
-- * Date Started: 6/8/2020                     *
-- **********************************************

-- SPI (Serial Peripheral Interface) master interface. This is intended for
-- connection to a memory card, but it will likely have other uses.

-- This interface operates at byte level. A single byte may be transmitted and
-- received. Software is responisble for constructing command and operand
-- sequences as required. "Tx_Strb" triggers transmission. Busy is active until
-- completion.

-- Slave select(s) are handled directly by software and the necessary outputs
-- are external to this block.

-- The SPI interface runs at one of two speeds. When Fast_Mode is low, the
-- interface runs at 400 KHz. The low frequency is required for Multi Media
-- Card (MMC) compatibility. When Fast_Mode is high, the SPI clock runs at
-- approximately 8 MHz.


library ieee;
use ieee.std_logic_1164.all;

use work.Definitions.all;               -- Project definitions


entity SPI_Master is
    port (
        Clk : in  std_logic;
        Rst : in  std_logic;
        Fast_Mode : in std_logic;       -- SPI speed select
        Tx_Data : in std_logic_vector (SPI_WORD_LENGTH - 1 downto 0);    -- Data to transmit
        Rx_Data : out std_logic_vector (SPI_WORD_LENGTH - 1 downto 0);   -- Received data
        Tx_Strb : in  std_logic;        -- Trigger
        Busy : out std_logic;           -- Transceiver busy
        SPI_SCLK : out std_logic;
        SPI_MOSI : out std_logic;
        SPI_MISO : in std_logic
    );
end entity SPI_Master;

architecture logic of SPI_Master is

    -- A two FF synchronizer
    component Sync2FF
        generic (size : integer := 1);   -- Default size is 1
        port (
            Clk : in  std_logic;
            Rst : in  std_logic;
            Input : in  std_logic_vector (size - 1 downto 0);    -- Asynchronous input
            Output : out std_logic_vector (size - 1 downto 0);   -- Synchronous outputs
            Output_n : out std_logic_vector (size - 1 downto 0)
        );
    end component Sync2FF;

    -- State machine
    type States is (ST_IDLE, ST_TX, ST_DATA, ST_TXDN);
    signal state : States;

    signal miso_s : std_logic;          -- Synchronised serial input
    signal reg : std_logic_vector (SPI_WORD_LENGTH - 1 downto 0);    -- Shift register
    signal bit_count : integer range 0 to SPI_WORD_LENGTH;          -- Allow extra for ACK / NACK bit
    signal tstrb : std_logic;           -- Timing strobe
    signal count_spi : integer range 0 to SPI_BAUD_SLOW_DIV - 1;    -- Slow mode timer

begin
    -- Synchronise incoming data
    inst_Sync_sda : Sync2FF
        generic map (size => 1)
        port map (
            Clk => Clk,
            Rst => '0',                 -- Establish level before end of reset
            Input (0) => SPI_MISO,       -- External data input
            Output (0) => miso_s         -- Synchronised input
        );

    Rx_Data <= reg;                     -- Read data comes directly from the shift register

    -- SPI slow rate serial timing.
    sspi : process (Clk, Rst)
    begin
        if Rst = '1' then
            count_spi <= 0;
            tstrb <= '0';

        elsif rising_edge (Clk) then
            if (count_spi = SPI_BAUD_SLOW_DIV - 1) or
                ((Fast_Mode = '1') and (count_spi = SPI_BAUD_FAST_DIV - 1)) then
                -- Generate output strobe
                tstrb <= '1';
                count_spi <= 0;         -- Wrap-around
            else
                tstrb <= '0';
                count_spi <= count_spi + 1;
            end if;
        end if;
    end process sspi;

    fsm : process (Rst, Clk) is
    begin
        -- Control the transmission / reception sequence
        if Rst = '1' then
            reg <= x"00";               -- Output data register
            Busy <= '0';
            bit_count <= 0;
            SPI_SCLK <= '0';
            SPI_MOSI <= '0';
            state <= ST_IDLE;

        elsif rising_edge (Clk) then
            case state is
                when ST_IDLE =>
                    -- Wait for something to do.
                    if Tx_Strb = '1' then
                        -- Byte transfer
                        Busy <= '1';
                        reg <= Tx_Data;
                        bit_count <= 0;     -- Reset bit bit_counter
                        state <= ST_TX;
                    else
                        Busy <= '0';
                    end if;

                when ST_TX =>
                    -- Send / receive data loop. This takes SPI_BAUD_MULT cycles to transfer
                    -- each bit.
                    if tstrb = '1' then
                        SPI_SCLK <= '0';    -- Set SCLK low
                        -- Supply output data bit
                        SPI_MOSI <= reg (SPI_WORD_LENGTH - 1);  -- Send MSB first
                        if bit_count = SPI_WORD_LENGTH then
                            state <= ST_TXDN;
                        else
                            state <= ST_DATA;
                        end if;
                    end if;

                when ST_DATA =>
                    if tstrb = '1' then
                        SPI_SCLK <= '1';    -- Set SCLK high
                        -- Shift left
                        reg (SPI_WORD_LENGTH - 1 downto 1) <= reg (SPI_WORD_LENGTH - 2 downto 0);
                        reg (0) <= miso_s;   -- Add received bit
                        bit_count <= bit_count + 1;
                        state <= ST_TX;
                    end if;

                when ST_TXDN =>
                    --  The trigger strobe should have gone by now, but wait just in case.
                    if (tstrb = '1') and (Tx_Strb = '0') then
                        state <= ST_IDLE;
                    end if;

            end case;
        end if;

    end process fsm;
end architecture logic;
