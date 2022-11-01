-- **********************************************
-- * ZARC FPGA Source                           *
-- * CRC-16 (XMODEM)                            *
-- * Written by: Merlin Skinner                 *
-- * Date Started: 9/6/2020                     *
-- **********************************************

-- CRC16 / XMODEM and MultiMediaCard CRC16 algorithm.

library ieee;
use ieee.std_logic_1164.all;

use work.Definitions.all;               -- Project definitions


entity CRC16_XModem is
    port (
        Clk : in  std_logic;
        Rst : in  std_logic;
        CRC : out std_logic_vector (CRCX_REG_LENGTH - 1 downto 0);  -- CRC result
        Data : in std_logic_vector (CPU_DATA_WIDTH - 1 downto 0);   -- CPU write data
        Strb : in  std_logic;           -- Data trigger
        SetCRC_Low : in std_logic;      -- Write to CRC register (low byte)
        SetCRC_High : in std_logic;     -- Write to CRC register (high byte)
        Busy : out std_logic
    );
end entity CRC16_XModem;

architecture logic of CRC16_XModem is

    -- State machine
    type States is (ST_IDLE, ST_DATA, ST_DONE);
    signal state : States;

    -- Word transmission
    signal data_reg : std_logic_vector (CPU_DATA_WIDTH - 1 downto 0);    -- Data shift register
    signal crc_reg : std_logic_vector (CRCX_REG_LENGTH - 1 downto 0);    -- CRC shift register
    signal bit_count : integer range 0 to CPU_DATA_WIDTH - 1;
    signal feedback : std_logic;        -- CRC register feedback bit


begin
    -- Control the transmission sequence
    fsm : process (Rst, Clk, data_reg, crc_reg) is
    begin
        -- CRC feedback bit.
        feedback <= data_reg (CPU_DATA_WIDTH - 1) xor crc_reg (15);
        CRC <= crc_reg;     -- Make result externally available

        if Rst = '1' then
            data_reg <= (others => '0');
            crc_reg <= (others => '0');
            bit_count <= 0;
            Busy <= '0';
            state <= ST_IDLE;

        elsif rising_edge (Clk) then
            case state is
                when ST_IDLE =>
                    -- Idle state.
                    if SetCRC_Low = '1' then
                        -- Write to CRC register (low byte)
                        crc_reg (7 downto 0) <= Data;
                    elsif SetCRC_High = '1' then
                        -- Write to CRC register (high byte)
                        crc_reg (15 downto 8) <= Data;
                    elsif Strb = '1' then
                        -- Process the byte.
                        data_reg <= Data;
                        Busy <= '1';        -- Indicate activity
                        bit_count <= 0;
                        state <= ST_DATA;
                    else
                        Busy <= '0';
                    end if;

                when ST_DATA =>
                    -- Process one bit.
                    crc_reg (0) <= feedback;
                    crc_reg (4 downto 1) <= crc_reg (3 downto 0);
                    crc_reg (5) <= feedback xor crc_reg (4);
                    crc_reg (11 downto 6) <= crc_reg (10 downto 5);
                    crc_reg (12) <= feedback xor crc_reg (11);
                    crc_reg (15 downto 13) <= crc_reg (14 downto 12);
                    -- Shift input data left for next cycle.
                    data_reg (CPU_DATA_WIDTH - 1 downto 1) <= data_reg (CPU_DATA_WIDTH - 2 downto 0);
                    -- Count bits.
                    if bit_count = (CPU_DATA_WIDTH - 1) then
                        -- All bits processed.
                        state <= ST_DONE;
                    else
                        bit_count <= bit_count + 1;
                    end if;

                when ST_DONE =>
                    -- All bits processed. The strobe should be long gone, but check just in case.
                    if Strb = '0' then
                        state <= ST_IDLE;
                    end if;

            end case;
        end if;

    end process fsm;

end architecture logic;
