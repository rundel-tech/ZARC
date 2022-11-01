-- **********************************
-- * ZARC FPGA Source               *
-- * Single-Stage Synchronizer      *
-- * Written by: Merlin Skinner     *
-- * Date Started: 18/7/2019        *
-- **********************************

library ieee;
use ieee.std_logic_1164.all;

entity Sync1FF is
    generic(size : integer := 1);       -- Default size is 1
    port(
        Clk : in  std_logic;
        Rst : in  std_logic;
        Input : in  std_logic_vector(size - 1 downto 0);    -- Asynchronous input
        Output : out std_logic_vector(size - 1 downto 0);   -- Synchronous outputs
        Output_n : out std_logic_vector(size - 1 downto 0)
    );

end entity Sync1FF;

architecture logic of Sync1FF is

begin

    -- The single flip-flop. Note that the two outputs could conceivably be implemented
    -- in the FPGA as two flip-flops. In this case, one is not guaranteed to be the
    -- inverse of the other in all cases.
    ffs : process(Clk, Rst)
    begin
        if Rst = '1' then
            Output <= (others => '0');
            Output_n <= (others => '1');
        elsif rising_edge(Clk) then
            Output <= Input;
            Output_n <= not (Input);
        end if;
    end process ffs;

end logic;
