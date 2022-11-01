-- **********************************
-- * ZARC FPGA Source               *
-- * Pass a strobe signal from one  *
-- * clock domanin to another.      *
-- * Written by: Merlin Skinner     *
-- * Date Started: 5/5/2020         *
-- **********************************

-- A single-cycle strobe in InStrb results in a single-cycle strobe on OutStrb
-- when both are in different clock domains. Due to the requirement for
-- synchronisation in both directions, the maximum rate at which strobes can be
-- passed is limited. An estimate is one strobe every four input clock cycles
-- is the maximum rate for reliable operation.


library ieee;
use ieee.std_logic_1164.all;

entity PassStrobe is
    generic(size : integer := 1);       -- Default size is 1
    port(
        InClk : in std_logic;           -- Input clock
        InRst : in std_logic;           -- Reset (synchronous to input clock)
        InStrb : in std_logic;          -- Strobe input
        OutClk : in std_logic;          -- Output clock
        OutRst : in std_logic;          -- Reset (synchronous to output clock)
        OutStrb : out std_logic         -- Strobe output
    );
end entity PassStrobe;

architecture logic of PassStrobe is

    -- **************
    -- * Components *
    -- **************

    -- A two FF synchronizer
    component Sync2FF
        generic(size : integer := 1);       -- Default size is 1
        port(
            Clk : in  std_logic;
            Rst : in  std_logic;
            Input : in  std_logic_vector (size - 1 downto 0);    -- Asynchronous input
            Output : out std_logic_vector (size - 1 downto 0);   -- Synchronous outputs
            Output_n : out std_logic_vector(size - 1 downto 0)
        );
    end component Sync2FF;

    -- *************
    -- * Variables *
    -- *************

    signal flag : std_logic;          -- Input strobe flag
    signal flag_s : std_logic;        -- Above synchronised to OutClk
    signal flag_s_dly : std_logic;    -- Above delayed by one cycle
    signal flag_fdback : std_logic;   -- flag_s_dly sychronised to InClk

begin
    -- ****************************
    -- * Component Instantiations *
    -- ****************************

    inst_SyncToOut : Sync2FF generic map(size => 1)
        port map(
            Clk => OutClk,              -- 50 MHz
            Rst => OutRst,
            Input(0) => flag,
            Output(0) => flag_s         -- Synchronous output
        );

    inst_SyncToIn : Sync2FF generic map(size => 1)
        port map(
            Clk => InClk,               -- 50 MHz
            Rst => InRst,
            Input(0) => flag_s_dly,
            Output(0) => flag_fdback    -- Synchronous output
        );


    -- Input side processing.
    -- Set "flag" if InStrb is active, and clear it if flag_fdback (from the output side)
    -- is active.
    ins : process(InClk, InRst)
    begin
        if InRst = '1' then
            flag  <= '0';
        elsif rising_edge(InClk) then
            if InStrb = '1' then
                flag <= '1';
            elsif flag_fdback = '1' then
                flag <= '0';
            end if;
        end if;
    end process ins;

    -- Output side processing.
    -- Generate a delayed version of flag and an output pulse if this is a new high.
    outs : process(OutClk, OutRst)
    begin
        if OutRst = '1' then
            flag_s_dly  <= '0';
        elsif rising_edge(OutClk) then
            flag_s_dly <= flag_s;
            -- Generate output strobe if this is a new signal.
            if (flag_s = '1') and (flag_s_dly = '0') then
                OutStrb <= '1';
            else
                OutStrb <= '0';
            end if;
        end if;
    end process outs;
end logic;
