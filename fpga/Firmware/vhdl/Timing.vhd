-- **********************************
-- * ZARC FPGA Source               *
-- * Timing generation              *
-- * Written by: Merlin Skinner     *
-- * Date Started: 18/7/2019        *
-- **********************************

-- The outputs are one clock period wide and may be used
-- anywhere that a time reference is required.


library ieee;
use ieee.std_logic_1164.all;

use work.Definitions.all;               -- Project definitions


entity Timing is
    port (
        Clk : in  std_logic;
        Rst : in  std_logic;
        Strb_1us, Strb_1ms : out std_logic; -- Timing strobes
        Strb_Con : out std_logic;           -- Console serial timing
        Strb_I2C : out std_logic            -- I2C serial timing
    );

end entity Timing;

architecture logic of Timing is

    -- Local copies (since out ports can't be read)
    signal strb_1us_int : std_logic;
    -- Dividers
    signal count_1us : integer range 0 to MICROSECOND_CLK_DIV - 1;
    signal count_1ms : integer range 0 to 999;
    signal count_con : integer range 0 to ASER_BAUD_DIVIDER - 1;
    signal count_i2c : integer range 0 to I2C_BAUD_US_DIV - 1;

begin

    -- One microsecond strobe
    -- First strobe is 1 us after reset.
    s1us : process (Clk, Rst)
    begin
        if Rst = '1' then
            count_1us <= 0;
            strb_1us_int <= '0';
        elsif rising_edge (Clk) then
            if count_1us = (MICROSECOND_CLK_DIV - 1) then
                strb_1us_int <= '1';
                count_1us <= 0;             -- Wrap-around
            else
                strb_1us_int <= '0';
                count_1us <= count_1us + 1;
            end if;
        end if;
    end process s1us;

    Strb_1us <= strb_1us_int;

    -- One millisecond strobe (for timeouts etc.)
    -- First strobe is 1 ms after reset.
    s1ms : process (Clk, Rst)
    begin
        if Rst = '1' then
            count_1ms <= 0;
            Strb_1ms  <= '0';
        elsif rising_edge (Clk) then
            if strb_1us_int = '1' then
                if count_1ms = 999 then
                    -- 1 ms edge
                    Strb_1ms  <= '1';
                    count_1ms <= 0;         -- Wrap-around
                else
                    count_1ms <= count_1ms + 1;
                end if;
            else
                Strb_1ms <= '0';
            end if;
        end if;
    end process s1ms;

    -- Console Baud rate strobe. This generates regular strobes that
    -- define the Baud rate for the console port.
    constrb : process (Clk, Rst)
    begin
        if Rst = '1' then
            count_con    <= 0;
            Strb_Con <= '0';
        elsif rising_edge (Clk) then
            if count_con = (ASER_BAUD_DIVIDER - 1) then
                Strb_Con <= '1';
                count_con <= 0;             -- Wrap-around
            else
                Strb_Con <= '0';
                count_con <= count_con + 1;
            end if;
        end if;
    end process constrb;

    -- I2C serial timing.
    si2c : process (Clk, Rst)
    begin
        if Rst = '1' then
            count_i2c <= 0;
            Strb_I2C <= '0';
        elsif rising_edge (Clk) then
            if strb_1us_int = '1' then
                if count_i2c = I2C_BAUD_US_DIV - 1 then
                    -- Generate output strobe
                    Strb_I2C <= '1';
                    count_i2c <= 0;         -- Wrap-around
                else
                    count_i2c <= count_i2c + 1;
                end if;
            else
                Strb_I2C <= '0';
            end if;
        end if;
    end process si2c;

end logic;
