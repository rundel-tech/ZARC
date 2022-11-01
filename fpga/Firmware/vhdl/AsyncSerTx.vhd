-- **********************************************
-- * ZARC FPGA Source                           *
-- * Asynchronous Serial Transmitter            *
-- * Written by: Merlin Skinner                 *
-- * Date Started: 5/5/2020                     *
-- **********************************************

-- An asynchronous serial transmitter. "Tx_Strb" triggers transmission. Busy is
-- active until completion.

library ieee;
use ieee.std_logic_1164.all;

use work.Definitions.all;               -- Project definitions


entity AsyncSer_Tx is
    port(
        Clk : in  std_logic;
        Rst : in  std_logic;
        Time_Strb : in  std_logic;      -- Timing reference (ASER_BAUD_MULT times the Baud rate)
        Data : in std_logic_vector(ASER_WORD_LENGTH - 1 downto 0); -- Data to transmit
        Tx_Strb : in  std_logic;        -- Trigger
        Busy : out std_logic;           -- Transmitter busy
        TxD : out std_logic             -- Serial data out
    );
end entity AsyncSer_Tx;

architecture logic of AsyncSer_Tx is

    -- State machine
    type States is (ST_IDLE, ST_TRIGD, ST_START, ST_DATA);
    signal state : States;

    -- Word transmission
    signal reg : std_logic_vector(ASER_WORD_LENGTH - 1 downto 0); -- Transmit shift register
    signal bit_count : integer range 0 to ASER_WORD_LENGTH - 1;
    signal br_strb : std_logic;         -- Baud rate strobe
    signal br_div : integer range 0 to ASER_BAUD_MULT - 1; -- Baud rate divider


begin
    -- Divide Time_Strb to produce a Baud rate strobe.
    divb : process(Rst, Clk) is
    begin
        if Rst = '1' then
            br_div <= 0;
        elsif (rising_edge(Clk)) then
            if (Time_Strb = '1') then
                if br_div = (ASER_BAUD_MULT - 1) then
                    br_div <= 0;
                else
                    br_div <= br_div + 1;
                end if;
            end if;
        end if;

        -- Generate the strobe itself if the bit_counter is at the limit.
        if rising_edge(Clk) then
            if (br_div = (ASER_BAUD_MULT - 1)) and (Time_Strb = '1') then
                br_strb <= '1';
            else
                br_strb <= '0';
            end if;
        end if;
    end process divb;

    -- Control the transmission sequence
    fsm : process(Rst, Clk) is
    begin
        if Rst = '1' then
            reg <= (others => '0');
            Busy <= '0';
            TxD <= '1';
            bit_count <= 0;
            state <= ST_IDLE;
        elsif rising_edge(Clk) then
            case state is
                when ST_IDLE =>
                    -- Idle state. At least in idle period is required to form the stop bit.
                    TxD <= '1';             -- Marking state
                    -- Tx_Strb means we have some work to do
                    if Tx_Strb = '1' then
                        reg <= Data;
                        Busy <= '1';        -- Indicate activity
                        state <= ST_TRIGD;
                    else
                        Busy <= '0';
                    end if;

                when ST_TRIGD =>
                    -- Wait for the next bit time
                    if br_strb = '1' then
                        state <= ST_START;
                    end if;

                when ST_START =>
                    -- Send start bit
                    TxD <= '0';         -- Space state
                    if br_strb = '1' then
                        bit_count <= 0;
                        state <= ST_DATA;
                    end if;

                when ST_DATA =>
                    -- Setup data bit
                    TxD <= reg(0); -- Transmit LS bit
                    if br_strb = '1' then
                        -- Shift right
                        reg(ASER_WORD_LENGTH - 2 downto 0) <= reg(ASER_WORD_LENGTH - 1 downto 1);
                        if bit_count = (ASER_WORD_LENGTH - 1) then
                            -- Idle will ensure at least one bit (stop bit) so no need for an explicit
                            -- stop bit state.
                            state <= ST_IDLE;
                        else
                            -- There are more bits to send
                            bit_count <= bit_count + 1;
                        end if;
                    end if;

            end case;
        end if;

    end process fsm;

end architecture logic;
