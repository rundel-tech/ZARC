-- **********************************
-- * ZARC FPGA Source               *
-- * Video Output                   *
-- * Written by: Merlin Skinner     *
-- * Date Started: 30/7/2019        *
-- **********************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Definitions.all;           -- Project definitions


entity Video is
	port(
		PClk : in std_logic;        -- 65 MHz video pixel clock
		VRClk : in std_logic;       -- 16.25 MHz character clock (double rate)
		VRst : in std_logic;        -- System reset

        -- Video output
        R : out std_logic_vector(1 downto 0); -- Red output
        G : out std_logic_vector(1 downto 0); -- Green output
        B : out std_logic_vector(1 downto 0)  -- Blue output

   );

end entity Video;

architecture logic of Video is

	-- **************
	-- * Components *
	-- **************

   -- A two FF synchronizer
	component Synch
		generic(size : integer := 1);   -- Default size is 1
		port(
			Clk    : in  std_logic;
			Rst    : in  std_logic;
			Input  : in  std_logic_vector(size - 1 downto 0); -- Asynchronous input
			Output : out std_logic_vector(size - 1 downto 0) -- Synchronous output
		);
	end component Synch;

    -- Video RAM
    component VideoRAM
	    PORT(
		    address		: in std_logic_vector (12 DOWNTO 0);
		    clock		: in std_logic  := '1';
		    data		: in std_logic_vector (7 DOWNTO 0);
		    wren		: in std_logic ;
		    q		    : out std_logic_vector (7 DOWNTO 0)
	    );
    end component VideoRAM;

    -- Character generator RAM. This will initally be used as ROM, but the
    -- ability to change the character set under program control may be useful.
    component CharGen
	    PORT
	    (
		    address		: in std_logic_vector (11 DOWNTO 0);
    		clken		: in std_logic  := '1';
		    clock		: in std_logic  := '1';
		    data		: in std_logic_vector (7 DOWNTO 0);
		    wren		: in std_logic ;
		    q		    : out std_logic_vector (7 DOWNTO 0)
	    );
    end component;

    -- Character generator logic.
    component CharGenLogic
	    port(
		    PClk : in std_logic;        -- 65 MHz video pixel clock
		    VRClk : in std_logic;       -- 16.25 MHz character clock (double rate)
		    VRst : in std_logic;        -- Video system reset

            Vid_CPUn : in std_logic;    -- Video / CPU cycle
            CharPixRow : in integer range 0 to 11;   -- Character pixel row
            VR_RdData : in std_logic_vector(7 downto 0);    -- Character from video RAM

            -- Video output
            R : out std_logic_vector(1 downto 0); -- Red output
            G : out std_logic_vector(1 downto 0); -- Green output
            B : out std_logic_vector(1 downto 0)  -- Blue output
	    );
    end component;


	-- *************
	-- * Variables *
	-- *************
	
	signal vid_cpun : std_logic;        -- Video / CPU cycle
	signal vid_cpun_dly : std_logic;    -- vid_cpun delayed by one pixel
	signal v_counter : std_logic_vector (12 downto 0); -- Video address counter
    -- Display timing
    signal CharPixRow : integer range 0 to 11;   -- Character pixel row   

    -- Video RAM
	signal vr_addr : std_logic_vector (12 downto 0);    -- Address
	signal vr_wrdata : std_logic_vector (7 downto 0);   -- Write data
	signal vr_wren : std_logic;                         -- Write enable
	signal vr_rddata : std_logic_vector (7 downto 0);   -- Read data

begin


	-- ****************************
	-- * Component Instantiations *
	-- ****************************

    inst_VideoRAM : VideoRAM
		port map(
		    address	 => vr_addr,
		    clock	 => VRClk,
		    data	 => vr_wrdata,
		    wren	 => vr_wren,
		    q	     => vr_rddata
	    );

     -- Character generator logic.
    inst_CharGenLogic : CharGenLogic
	    port map(
		    PClk => PClk,           -- 65 MHz video pixel clock
		    VRClk => VRClk,         -- 16.25 MHz character clock (double rate)
		    VRst => VRst,           -- Video system reset

            Vid_CPUn => Vid_CPUn,   -- Video / CPU cycle
            CharPixRow => CharPixRow,   -- Character pixel row
            VR_RdData => vr_rddata, -- Character from video RAM

            -- Video output
            R => R,         -- Red output
            G => G,         -- Green output
            B => B          -- Blue output
	    );

    
	-- *********
	-- * Logic *
	-- *********

    CharPixRow <= 0;      -- TEMPORARY

    -- Combinatorial address etc. multiplexing to avoid an extra
    -- cycle of delay.
    vid_mux : process(vid_cpun, v_counter) is
    begin
        if vid_cpun = '1' then
            -- Video cycle, so data output is potentially for the CPU.
            -- Setup for the next cycle
            vr_addr <= v_counter;
            vr_wren <= '0';     -- Display is read-only
        else
            -- CPU cycle, so data output is for video.
            -- Setup for the next cycle (dummy for the moment)
            vr_addr <= (others => '0');
            vr_wren <= '0';
       end if;
	end process vid_mux;
    
    vr_wrdata <= x"00";                 -- Video write data (for now!)
    
	-- Control the transmission sequence
	vid : process(VRst, VRClk) is
	begin
		if VRst = '1' then
		    vid_cpun <= '0';
		elsif rising_edge(VRClk) then
		    vid_cpun <= not (vid_cpun);
            if vid_cpun = '1' then
                -- Video cycle, so data output is potentially for the CPU.
                v_counter <= std_logic_vector( unsigned(v_counter) + 1);
            else
                -- CPU cycle, so data output is for video.
                null;
                
            end if;                
            
            
        end if;
	end process vid;


end logic;
