-- **********************************************
-- * ZARC FPGA Source                           *
-- * Output Expander (74x595) Driver            *
-- * Written by: Merlin Skinner                 *
-- * Date Started: 9/5/2020                     *
-- **********************************************

-- Generates serial data for the external 74x595. This is used as an output
-- expander as FPGA pins are limited. 

library ieee;
use ieee.std_logic_1164.all;

use work.Definitions.all;               -- Project definitions


entity OutExpander is
    port (
        Clk : in std_logic;             -- Input clock
        Rst : in std_logic;             -- Reset (synchronous to input clock)
        Time_Strb : in std_logic;       -- Timing reference (2 x Baud rate)
        Data : in std_logic_vector (IOX_WIDTH - 1 downto 0); -- Parallel data in
        -- External shift register (74x595) signals
        OX_DATA : out std_logic;        -- Serial data
        OX_SRCLK : out std_logic;       -- Shift register clock
        OX_RCLK : out std_logic         -- Register clock
    );
end entity OutExpander;


architecture logic of OutExpander is

    -- State machine
    type States is (ST_SETUP, ST_BIT, ST_BIT1, ST_DONE);

    -- Word transmission
    signal reg : std_logic_vector (IOX_WIDTH - 1 downto 0); -- Transmit shift register
    signal state : States;
    signal bit_count : integer range 0 to IOX_WIDTH - 1;


begin

    -- Control the transmission sequence.
    fsm : process (Rst, Clk, Time_Strb) is
    begin
        if Rst = '1' then
            reg <= (others => '0');
            OX_DATA <= '0';             -- Serial data
            OX_SRCLK <= '0';            -- Shift register clock
            OX_RCLK <= '0';             -- Register clock
            bit_count <= 0;
            state <= ST_SETUP;
        elsif rising_edge (Clk) and (Time_Strb = '1') then
            case state is

                when ST_SETUP =>
                    OX_RCLK <= '0';     -- Remove any previous external shift register clock
                    reg <= Data;        -- Load transmitter with parallel data
                    bit_count <= 0;
                    state <= ST_BIT;

                when ST_BIT =>
                    OX_SRCLK <= '0';    -- Remove any external shift register clock
                    OX_DATA <= reg (IOX_WIDTH - 1);  -- Transmit MS bit
                    state <= ST_BIT1;

                when ST_BIT1 =>
                    OX_SRCLK <= '1';    -- Clock external shift register
                    -- Shift left
                    reg (IOX_WIDTH - 1 downto 1) <= reg (IOX_WIDTH - 2 downto 0);
                    if bit_count = (IOX_WIDTH - 1) then
                        state <= ST_DONE;
                    else
                        -- There are more bits to send
                        bit_count <= bit_count + 1;
                        state <= ST_BIT;
                    end if;

                when ST_DONE =>
                    OX_RCLK <= '1';     -- Clock external shift register data to output
                    state <= ST_SETUP;

            end case;
        end if;

    end process fsm;

end architecture logic;
