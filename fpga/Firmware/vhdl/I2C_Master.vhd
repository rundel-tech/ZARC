-- **********************************************
-- * ZARC FPGA Source                           *
-- * I2C Master Interface                       *
-- * Written by: Merlin Skinner                 *
-- * Date Started: 9/7/2020                     *
-- **********************************************

-- I2C (Inter-Integrated Circuit) master interface. This is inteneded for
-- connection to a DS1672 Real Time Clock (RTC), but it will likely have other
-- uses. This logic assumes that it is the only master connected to the bus
-- (arbitration is not supported).

-- No attempt is made to optimise for speed. If faster operation is required,
-- some states could use much shorter delays. For example, the data hold time
-- after clock low is much longer than required.

-- This interface operates at byte level. A single byte may be transmitted or
-- received. Software is responisble for constructing command and operand
-- sequences as required. "Tx_Strb" triggers transmission. Busy is active until
-- completion. Reception is triggered by transmitting 0xff. In this case, SDA
-- is never driven low so data in the bus comes from the slave device.

-- Start_Strb and Stop_Strb trigger I2C start and stop sequences. These are
-- ignored when the transceiver is busy. 


library ieee;
use ieee.std_logic_1164.all;

use work.Definitions.all;               -- Project definitions


entity I2C_Master is
    port(
        Clk : in  std_logic;
        Rst : in  std_logic;
        Time_Strb : in  std_logic;      -- Timing reference (I2C_BAUD_MULT times the nominal Baud rate)
        Tx_Data : in std_logic_vector(I2C_WORD_LENGTH - 1 downto 0);    -- Data to transmit
        Rx_Data : out std_logic_vector(I2C_WORD_LENGTH - 1 downto 0);   -- Received data
        Tx_Ackn : in std_logic;         -- Acknowledge to transmit (when reading data)
        Rx_Ackn : out std_logic;        -- Acknowledge received (when writing data)
        Tx_Strb : in  std_logic;        -- Trigger
        Start_Strb : in  std_logic;     -- Trigger an I2C (re-)start sequence
        Stop_Strb : in std_logic;       -- Trigger an I2C stop sequence
        Busy : out std_logic;           -- Transceiver busy
        I2C_SCL : inout std_logic;
        I2C_SDA : inout std_logic
    );
end entity I2C_Master;

architecture logic of I2C_Master is

    -- A two FF synchronizer
    component Sync2FF
        generic(size : integer := 1);   -- Default size is 1
        port(
            Clk : in  std_logic;
            Rst : in  std_logic;
            Input : in std_logic_vector(size - 1 downto 0);    -- Asynchronous input
            Output : out std_logic_vector(size - 1 downto 0)    -- Synchronous output
        );
    end component Sync2FF;

    -- State machine
    type States is (ST_IDLE, ST_START, ST_START1, ST_START2, ST_START3, ST_STOP, ST_STOP1, ST_STOP2, ST_TX, ST_DATA, ST_DATA1, ST_DATA2, ST_DATA3, ST_TXDN);
    signal state : States;

    signal sda_s : std_logic;           -- Synchronised serial input
    signal scl_s : std_logic;           -- Synchronised clock
    signal reg : std_logic_vector(I2C_WORD_LENGTH - 1 downto 0);    -- Shift register
    signal bit_count : integer range 0 to I2C_WORD_LENGTH;          -- Allow extra for ACK / NACK bit


begin
    -- Synchronise incoming data
    inst_Sync_sda : Sync2FF
        generic map(size => 1)
        port map(
            Clk => Clk,
            Rst => '0',                 -- Establish level before end of reset
            Input(0) => I2C_SDA,        -- External data input
            Output(0) => sda_s          -- Synchronised input
        );

    -- Synchronise incoming clock
    inst_Sync_scl : Sync2FF
        generic map(size => 1)
        port map(
            Clk => Clk,
            Rst => '0',                 -- Establish level before end of reset
            Input(0) => I2C_SCL,        -- External data input
            Output(0) => scl_s          -- Synchronised input
        );

    Rx_Data <= reg;                     -- Read data comes directly from the shift register

    fsm : process(Rst, Clk) is
    begin
        -- Control the reception sequence
        if Rst = '1' then
            reg <= x"00";               -- Output data register
            Rx_Ackn <= '0';
            Busy <= '0';
            bit_count <= 0;
            I2C_SCL <= 'Z';
            I2C_SDA <= 'Z';
            state <= ST_IDLE;

        elsif rising_edge(Clk) then
            case state is
                when ST_IDLE =>
                    -- Wait for something to do.
                    if Start_Strb = '1' then
                        -- I2C start sequence
                        Busy <= '1';
                        state <= ST_START;
                    elsif Stop_Strb = '1' then
                        -- I2C stop sequence
                        Busy <= '1';
                        state <= ST_STOP;
                    elsif Tx_Strb = '1' then
                        -- Byte transfer
                        Busy <= '1';
                        reg <= Tx_Data;
                        state <= ST_TX;
                    else
                        Busy <= '0';
                    end if;

                when ST_START =>
                    -- I2C start sequence. This may also be used to send a
                    -- "repeated start" by simply not sending an intervening
                    -- stop.
                    -- Wait for the next timing strobe.
                    if Time_Strb = '1' then
                        I2C_SDA <= 'Z';     -- Ensure SDA is high
                        state <= ST_START1;
                    end if;

                when ST_START1 =>
                    if Time_Strb = '1' then
                        I2C_SCL <= 'Z';     -- Ensure SCL is high
                        state <= ST_START2;
                    end if;

                when ST_START2 =>
                    if Time_Strb = '1' then
                        I2C_SDA <= '0';     -- Set SDA low to signal the start.
                        state <= ST_START3;
                    end if;

                when ST_START3 =>
                    -- The trigger strobe should have gone by now, but wait
                    -- just in case.
                    if (Time_Strb = '1') and (Start_Strb = '0') then
                        I2C_SCL <= '0';     -- Set SCL low
                        state <= ST_IDLE;
                    end if;

                when ST_STOP =>
                    -- I2C stop sequence. Wait for the next timing strobe.
                    if Time_Strb = '1' then
                        I2C_SDA <= '0';     -- Ensure SDA is low
                        state <= ST_STOP1;
                    end if;

                when ST_STOP1 =>
                    if Time_Strb = '1' then
                        I2C_SCL <= 'Z';     -- Set SCL high
                        state <= ST_STOP2;
                    end if;

                when ST_STOP2 =>
                    -- The trigger strobe should have gone by now, but wait
                    -- just in case.
                    if (Time_Strb = '1') and (Stop_Strb = '0') then
                        I2C_SDA <= 'Z';     -- Set SDA high to signal the stop.
                        state <= ST_IDLE;
                    end if;

                when ST_TX =>
                    bit_count <= 0;         -- Reset bit bit_counter
                    state <= ST_DATA;

                when ST_DATA =>
                    -- Send / receive data loop. This takes I2C_BAUD_MULT cycles
                    -- to transfer each bit, unless clock stretching by the
                    -- slave slows things further.
                    if Time_Strb = '1' then
                        I2C_SCL <= '0';     -- Ensure SCL is low
                        state <= ST_DATA1;
                    end if;

                when ST_DATA1 =>
                    if Time_Strb = '1' then
                        if bit_count = I2C_WORD_LENGTH then
                            -- ACK / NACK bit. This always comes from the
                            -- receiver of the data, which may be the master
                            -- or the slave. When we are writing, the Tx_Ackn
                            -- bit must be set to '1' in software to allow the
                            -- slave to control SDA appropriately.
                            if Tx_Ackn = '1' then
                                I2C_SDA <= 'Z';
                            else
                                I2C_SDA <= '0';
                            end if;
                        else
                            -- Normal data bit. Supply data bit ('1' for reads),
                            -- MSB first
                            if reg(I2C_WORD_LENGTH - 1) = '1' then
                                I2C_SDA <= 'Z';
                            else
                                I2C_SDA <= '0';
                            end if;
                            -- Shift left
                            reg(I2C_WORD_LENGTH - 1 downto 1) <= reg(I2C_WORD_LENGTH - 2 downto 0);
                        end if;
                        state <= ST_DATA2;
                    end if;

                when ST_DATA2 =>
                    if Time_Strb = '1' then
                        I2C_SCL <= 'Z';
                        state <= ST_DATA3;
                    end if;

                when ST_DATA3 =>
                    if Time_Strb = '1' and scl_s = '1' then
                        -- End of bit tranfer, allowing for potential clock
                        -- stretching by the slave.
                        if bit_count = I2C_WORD_LENGTH then
                            -- ACK / NACK bit
                            Rx_Ackn <= sda_s;
                            state <= ST_TXDN;
                        else
                            -- Normal data bit
                            reg(0) <= sda_s;
                            bit_count <= bit_count + 1;
                            state <= ST_DATA;
                        end if;
                    end if;

                when ST_TXDN =>
                    --  The trigger strobe should have gone by now, but wait
                    -- just in case.
                    if (Time_Strb = '1') and (Tx_Strb = '0') then
                        -- Set SCL low before the data is changed so we don't
                        -- inadvertently signal loss of control of the bus.
                        I2C_SCL <= '0';
                        state <= ST_IDLE;
                    end if;

            end case;
        end if;

    end process fsm;
end architecture logic;
