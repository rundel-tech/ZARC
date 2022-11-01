-- **********************************
-- * ZARC FPGA Source               *
-- * Character Generator Logic      *
-- * Written by: Merlin Skinner     *
-- * Date Started: 1/8/2019         *
-- **********************************

-- This logic takes 8-bit character data and generates the corresponding
-- serial pixel data.
--
-- The display character set is composed of:
--
-- 0 (0x00) to 21 (0x15) – reserved for control codes (attribute changes). Displayed as spaces.
-- 22 (0x16) to 191 (0xbf) – CG-generated characters. Pixel data is stored in the CharGen block.
-- 192 (0xc0) to 255 (0xff) – hardware-generated semigraphics characters
--
-- Notes
-- 1) A 2 KB character generator memory can store 170 8 x 12 characters
-- 2) 2 x 3 semi-graphics requires 64 characters, giving roughly square pixels on
--    a 1024 x 768 display. This results in a 256 x 192 pixel resolution.


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Definitions.all;           -- Project definitions


entity CharGenLogic is
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

end entity CharGenLogic;

architecture logic of CharGenLogic is

	-- **************
	-- * Components *
	-- **************

    -- Character generator RAM. This will initally be used as ROM, but the
    -- ability to change the character set under program control may be useful.
    component CharGen
	    PORT
	    (
		    address		: in std_logic_vector (10 DOWNTO 0);
    		clken		: in std_logic  := '1';
		    clock		: in std_logic  := '1';
		    data		: in std_logic_vector (7 DOWNTO 0);
		    wren		: in std_logic ;
		    q		    : out std_logic_vector (7 DOWNTO 0)
	    );
    end component;


	-- *************
	-- * Variables *
	-- *************
	
	signal vid_cpun_dly : std_logic;    -- vid_cpun delayed by one pixel
	-- Character generator
	signal cg_addr : std_logic_vector (10 downto 0);    -- Address
 	signal cg_wrdata :  std_logic_vector (7 downto 0);  -- Write data
	signal cg_wren : std_logic;                         -- Write enable
	signal cg_rddata : std_logic_vector (7 downto 0);   -- Read data
    signal vrd_z : std_logic_vector (10 downto 0);      -- Zero offset
    signal vrd_8z : std_logic_vector (10 downto 0);     -- n * 8
    signal vrd_4z : std_logic_vector (10 downto 0);     -- n * 4
    type char_types is (Ctrl, Normal, Semigraphics);    -- Character types
    signal char_type : char_types;                      -- Current char type
    signal next_char_type : char_types;                 -- Next char type
    signal sg_pix_bits : std_logic_vector (1 downto 0); -- Semigraphics row pixels
    signal pix_data : std_logic_vector (7 downto 0);    -- Pixel data
    signal next_pix_data : std_logic_vector (7 downto 0);   -- Next cycle's data
    -- Video output
    signal sr_in : std_logic_vector (7 downto 0);       -- Shift register input
    signal op_sr : std_logic_vector (7 downto 0);       -- Shift register
    signal phase : integer range 0 to 7;            -- Phase relative to Vid_CPUn
    -- Colours
    signal fg_col : std_logic_vector (5 downto 0);      -- Foreground
    signal bg_col : std_logic_vector (5 downto 0);      -- Background
	
begin


	-- ****************************
	-- * Component Instantiations *
	-- ****************************

    inst_CharGen : CharGen
		port map(
		    address	 => cg_addr,
    		clken	 => not (vid_cpun),
		    clock	 => VRClk,
		    data	 => cg_wrdata,
		    wren	 => cg_wren,
		    q	 => cg_rddata
	    );

     
	-- *********
	-- * Logic *
	-- *********

    cg_wrdata <= x"00";                 -- CG writes not implemented (yet)

 	pix_gen : process(VR_RdData, CharPixRow, vrd_z, vrd_8z, vrd_4z, sg_pix_bits) is
	begin
        if unsigned(VR_RdData) <22 then
            -- Codes reserved for control codes.
            next_char_type <= Ctrl;             -- Store type for next cycle
            next_pix_data <= x"00";             -- Display as blank
            -- Define values to avoid unwanted latches
            vrd_z <= (others => '0');
            vrd_8z <= (others => '0');
            vrd_4z <= (others => '0');
            cg_addr <= (others => '0');
            sg_pix_bits <= (others => '0');
        elsif unsigned(VR_RdData) < 192 then
            -- Pixel data is stored in the CharGen memory block.
            -- Form CG lookup address.
            -- Address is (<display char> - 22) * 12 + <row>. Given the numbers have few
            -- bits, this should not take up too much logic. CharGen address is registered,
            -- so no need for an additional register.
            next_char_type <= Normal;           -- Store type for next cycle         
            vrd_z <= b"000" & std_logic_vector(unsigned(VR_RdData) - 22);    -- Convert to zero base
            -- n * 12 is equivalent to v * 8 + n * 4.
            vrd_8z <= b"00" & vrd_z(5 downto 0) & b"000";   -- Find n * 8
            vrd_4z <= b"000" & vrd_z(5 downto 0) & b"00";   -- Find n * 4
            cg_addr <= std_logic_vector(unsigned(vrd_8z) + unsigned(vrd_4z));
            -- Data will be available next VRClk.
            -- Define values to avoid unwanted latches
            next_pix_data <= (others => '0');
            sg_pix_bits <= (others => '0');
        else
            -- 192 to 255 – hardware-generated semigraphics characters
            next_char_type <= Semigraphics;     -- Store type for next cycle
            -- Each pixel row has just two semigraphics pixels.
            case CharPixRow is
                when 0 | 1 | 2 | 3 =>
                    sg_pix_bits <= VR_RdData(1 downto 0);
                when 4 | 5 | 6 | 7 =>
                     sg_pix_bits <= VR_RdData(3 downto 2);
                when 8 | 9 | 10 | 11 =>
                    sg_pix_bits <= VR_RdData(5 downto 4); 
--                when others =>
--                   sg_pix_bits <= b"00";
            end case;
            -- Generate the pixel row from the two pixels
            next_pix_data <=
                sg_pix_bits(1) &
                sg_pix_bits(1) &
                sg_pix_bits(1) &
                sg_pix_bits(1) &
                sg_pix_bits(0) &
                sg_pix_bits(0) &
                sg_pix_bits(0) &
                sg_pix_bits(0);
             -- Define values to avoid unwanted latches
            vrd_z <= (others => '0');
            vrd_8z <= (others => '0');
            vrd_4z <= (others => '0');
            cg_addr <= (others => '0');
       end if;
	end process pix_gen;


    -- Select pixel data according to the character type
 	pix_sel : process(char_type, pix_data, cg_rddata) is
	begin
        case char_type is
            when Ctrl =>
                sr_in <= pix_data;          -- Use delayed data
            when Normal =>
                sr_in <= cg_rddata;         -- Use CG memory data	            
            when Semigraphics =>
                sr_in <= pix_data;          -- Use delayed data
        end case;
	end process pix_sel;


    -- Character logic
 	char : process(VRst, VRClk) is
	begin
 		if VRst = '1' then
			null;
		elsif rising_edge(VRClk) then
            char_type <= next_char_type;
            pix_data <= next_pix_data;  -- Delay to compensate for RAM lookup cycle
        end if;
	end process char;


    cg_wren <= '0';         -- CG write are not implemented (yet)

    -- Colours are initially hard-coded.
    fg_col <= b"001100";                -- Foreground
    bg_col <= b"000000";                -- Background

	-- Output shift register and colour lookup
	vout : process(VRst, PClk) is
	begin
		if VRst = '1' then
		    vid_cpun_dly <= '0';
		    phase <= 0;
		elsif rising_edge(PClk) then
		    vid_cpun_dly <= Vid_CPUn;
		    if (Vid_CPUn = '1') and (vid_cpun_dly = '0') then
		        -- Vid_CPUn has just gone high, so phase must be zero
		        phase <= 0;
		    else
		        phase <= phase + 1;
		        -- Phase can't overflow due to Vid_CPUn every 8 pixels
	        end if;
	        if phase = 7 then
	            -- Load a new row of pixels
	            op_sr <= sr_in;         -- Load new pixel row
	        else
	            op_sr <= op_sr (6 downto 0) & '0';  -- Shift to next pixel
	        end if;
	        -- Select the colour for the pixel
	        if op_sr(7) = '1' then
	            -- Foreground colour
                R <= fg_col (5 downto 4);
                G <= fg_col (3 downto 2);
                B <= fg_col (1 downto 0);
            else
	            -- Background colour
                R <= bg_col (5 downto 4);
                G <= bg_col (3 downto 2);
                B <= bg_col (1 downto 0);
            end if;
        end if;
	end process vout;

end logic;
