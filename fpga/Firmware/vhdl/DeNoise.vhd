-- **********************************************
-- * ZARC FPGA Source                           *
-- * Asynchronous Serial Receiver               *
-- * Written by: Merlin Skinner                 *
-- * Date Started: 18/7/2019                    *
-- **********************************************

-- Attempts to remove noise from a signal. Only persistent changes are propagated
-- to the output. The input is sampled when Time_Strb is high, so driving this high
-- for one clock cycle regularly allows control of the filter timing. Time_Strb may
-- be left high for high-speed inputs.

-- "count" defines the number of samples for which Time_Strb is active before the
-- input state is guaranteed to be considered valid. For example, if Time_Strb is
-- connected to a 1 us strobe, the delay value is the maximum latency in us.

library ieee;
use ieee.std_logic_1164.all;

use work.Definitions.all;               -- Project definitions


entity DeNoise is
    generic(count : integer);           -- Number of counts in timer
    port(
        Clk : in  std_logic;
        Rst : in  std_logic;
        Time_Strb : in  std_logic;      -- Timing strobe
        Input : in std_logic;           -- Signal input
        Output : out std_logic          -- Signal output
    );
end entity DeNoise;

architecture logic of DeNoise is

    -- **************
    -- * Components *
    -- **************

    -- None
    
    
    -- *************
    -- * Variables *
    -- *************

    signal avg : integer range 0 to count;
    signal output_int : std_logic;      -- Filtered state


begin

    -- ****************************
    -- * Component Instantiations *
    -- ****************************

    -- None


    -- *********
    -- * Logic *
    -- *********

    -- Filter
    filt : process(Clk, Rst, Input)
    begin
        if Rst = '1' then
            output_int <= '0';          -- Assume output = zero on reset
            avg <= (count / 2);         -- Set half-way state
 
        elsif rising_edge(Clk) then
            if (Time_Strb = '1') then
                if Input = '1' then
                    -- Input is high so increase the average if it isn't already at maximum.
                    if (avg = count) then
                        -- Counter is at maximum, so the input is a consistent '1'.
                        output_int <= '1';
                    else
                        avg <= avg + 1;
                    end if;
                else
                    -- Input is low.
                    if (avg = 0) then
                        -- Counter is at zero, so the input is a consistent '0'.
                        output_int <= '0';
                    else
                        avg <= avg - 1;
                    end if;
                end if;
            end if;
        end if;

    end process filt;

    -- Copy to output
    Output <= output_int;

end logic;
