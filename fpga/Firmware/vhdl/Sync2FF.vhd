-- **********************************
-- * ZARC FPGA Source               *
-- * Two-Stage Synchronizer         *
-- * Written by: Merlin Skinner     *
-- * Date Started: 18/7/2019        *
-- **********************************

library ieee;
use ieee.std_logic_1164.all;

entity Sync2FF is
    generic(size : integer := 1);       -- Default size is 1
    port(
        Clk : in  std_logic;
        Rst : in  std_logic;
        Input : in  std_logic_vector(size - 1 downto 0);    -- Asynchronous input
        Output : out std_logic_vector(size - 1 downto 0);   -- Synchronous outputs
        Output_n : out std_logic_vector(size - 1 downto 0)
    );

end entity Sync2FF;

architecture logic of Sync2FF is
    signal meta_reg : std_logic_vector(size - 1 downto 0);

begin

    --  The two flip-flops. Note that the two outputs could conceivably be implemented
    -- in the FPGA as two flip-flops. In this case, one is not guaranteed to be the
    -- inverse of the other in all cases.
    ff : process(Clk, Rst)
    begin
        if Rst = '1' then
            meta_reg <= (others => '0');
            Output <= (others => '0');
            Output_n <= (others => '1');
        elsif rising_edge(Clk) then
            meta_reg <= Input;
            Output <= meta_reg;
            Output_n <= not (meta_reg);
        end if;
    end process ff;

end logic;
