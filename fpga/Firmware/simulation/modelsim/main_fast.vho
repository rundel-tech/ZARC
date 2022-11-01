-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "11/21/2021 15:58:12"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Main IS
    PORT (
	RClk : IN std_logic;
	LED_D2n : OUT std_logic;
	LED_D4n : OUT std_logic;
	LED_D5n : OUT std_logic;
	CPU_CLK : IN std_logic;
	RESET : IN std_logic;
	D : INOUT std_logic_vector(7 DOWNTO 0);
	A : IN std_logic_vector(7 DOWNTO 0);
	M1n : IN std_logic;
	IORQn : IN std_logic;
	MREQn : IN std_logic;
	WRn : IN std_logic;
	RDn : IN std_logic;
	IOWAITn : OUT std_logic;
	SUPER : IN std_logic;
	PROT : IN std_logic;
	MMAP_ENn : OUT std_logic;
	MMAP_IO_SELn : OUT std_logic;
	NMI_SWITCHn : IN std_logic;
	INT : OUT std_logic;
	NMI : OUT std_logic;
	PNL_DAT_RDn : OUT std_logic;
	OX_DATA : OUT std_logic;
	OX_SRCLK : OUT std_logic;
	OX_RCLK : OUT std_logic;
	CTxDn : OUT std_logic;
	CRxDn : IN std_logic;
	CRTSn : OUT std_logic;
	CCTSn : IN std_logic;
	ATxDn : OUT std_logic;
	ARxDn : IN std_logic;
	ARTSn : OUT std_logic;
	ACTSn : IN std_logic;
	RTC_SCL : INOUT std_logic;
	RTC_SDA : INOUT std_logic;
	SPI_CSn : OUT std_logic;
	SPI_SCLK : OUT std_logic;
	SPI_MOSI : OUT std_logic;
	SPI_MISO : IN std_logic
	);
END Main;

-- Design Ports Information
-- D[0]	=>  Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[1]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[4]	=>  Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[5]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[6]	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- D[7]	=>  Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- RTC_SCL	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- RTC_SDA	=>  Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LED_D2n	=>  Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LED_D4n	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- LED_D5n	=>  Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- IOWAITn	=>  Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- MMAP_ENn	=>  Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- MMAP_IO_SELn	=>  Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- INT	=>  Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- NMI	=>  Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- PNL_DAT_RDn	=>  Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- OX_DATA	=>  Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- OX_SRCLK	=>  Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- OX_RCLK	=>  Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- CTxDn	=>  Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- CRTSn	=>  Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- ATxDn	=>  Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- ARTSn	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- SPI_CSn	=>  Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- SPI_SCLK	=>  Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- SPI_MOSI	=>  Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
-- M1n	=>  Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RDn	=>  Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RClk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- WRn	=>  Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- MREQn	=>  Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IORQn	=>  Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CPU_CLK	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- PROT	=>  Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- RESET	=>  Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CCTSn	=>  Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ACTSn	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SUPER	=>  Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- NMI_SWITCHn	=>  Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CRxDn	=>  Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ARxDn	=>  Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SPI_MISO	=>  Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Main IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_RClk : std_logic;
SIGNAL ww_LED_D2n : std_logic;
SIGNAL ww_LED_D4n : std_logic;
SIGNAL ww_LED_D5n : std_logic;
SIGNAL ww_CPU_CLK : std_logic;
SIGNAL ww_RESET : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_M1n : std_logic;
SIGNAL ww_IORQn : std_logic;
SIGNAL ww_MREQn : std_logic;
SIGNAL ww_WRn : std_logic;
SIGNAL ww_RDn : std_logic;
SIGNAL ww_IOWAITn : std_logic;
SIGNAL ww_SUPER : std_logic;
SIGNAL ww_PROT : std_logic;
SIGNAL ww_MMAP_ENn : std_logic;
SIGNAL ww_MMAP_IO_SELn : std_logic;
SIGNAL ww_NMI_SWITCHn : std_logic;
SIGNAL ww_INT : std_logic;
SIGNAL ww_NMI : std_logic;
SIGNAL ww_PNL_DAT_RDn : std_logic;
SIGNAL ww_OX_DATA : std_logic;
SIGNAL ww_OX_SRCLK : std_logic;
SIGNAL ww_OX_RCLK : std_logic;
SIGNAL ww_CTxDn : std_logic;
SIGNAL ww_CRxDn : std_logic;
SIGNAL ww_CRTSn : std_logic;
SIGNAL ww_CCTSn : std_logic;
SIGNAL ww_ATxDn : std_logic;
SIGNAL ww_ARxDn : std_logic;
SIGNAL ww_ARTSn : std_logic;
SIGNAL ww_ACTSn : std_logic;
SIGNAL ww_SPI_CSn : std_logic;
SIGNAL ww_SPI_SCLK : std_logic;
SIGNAL ww_SPI_MOSI : std_logic;
SIGNAL ww_SPI_MISO : std_logic;
SIGNAL \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_Synch_Rst|Output[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RClk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_FIFOs|contents[2][1]~regout\ : std_logic;
SIGNAL \inst_FIFOs|contents[2][1]~69_combout\ : std_logic;
SIGNAL \inst_Timing|Add1~0_combout\ : std_logic;
SIGNAL \inst_Timing|Add1~4_combout\ : std_logic;
SIGNAL \inst_Timing|Add1~6_combout\ : std_logic;
SIGNAL \inst_Timing|Add1~10_combout\ : std_logic;
SIGNAL \trace_arm~regout\ : std_logic;
SIGNAL \inst_Timing|Add0~9\ : std_logic;
SIGNAL \inst_Timing|Add0~10_combout\ : std_logic;
SIGNAL \inst_SPI_Master|bit_count[0]~4_combout\ : std_logic;
SIGNAL \inst_SPI_Master|count_spi[0]~6_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Busy~regout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \inst_FIFOs|Add2~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[0][1]~regout\ : std_logic;
SIGNAL \inst_FIFOs|Add3~2_combout\ : std_logic;
SIGNAL \inst_FIFOs|Add2~4_combout\ : std_logic;
SIGNAL \inst_FIFOs|Add3~5\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[1][3]~regout\ : std_logic;
SIGNAL \inst_FIFOs|Add0~7\ : std_logic;
SIGNAL \inst_FIFOs|Add3~6_combout\ : std_logic;
SIGNAL \inst_FIFOs|Add3~7\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[2][4]~regout\ : std_logic;
SIGNAL \inst_FIFOs|Add0~8_combout\ : std_logic;
SIGNAL \inst_FIFOs|Add3~8_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[0][1]~26_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[1][3]~38_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[2][3]~41\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[2][4]~48_combout\ : std_logic;
SIGNAL \inst_Timing|Add2~0_combout\ : std_logic;
SIGNAL \inst_Timing|Add2~2_combout\ : std_logic;
SIGNAL \inst_Timing|Add2~10_combout\ : std_logic;
SIGNAL \Equal21~2_combout\ : std_logic;
SIGNAL \Equal22~2_combout\ : std_logic;
SIGNAL \Equal23~0_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector17~1_combout\ : std_logic;
SIGNAL \inst_NMI_Control|bus_state.BST_MRD~regout\ : std_logic;
SIGNAL \inst_NMI_Control|Equal2~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector16~4_combout\ : std_logic;
SIGNAL \inst_Aux_Tx|state.ST_TRIGD~regout\ : std_logic;
SIGNAL \inst_Aux_Tx|Selector0~0_combout\ : std_logic;
SIGNAL \WideNor0~4_combout\ : std_logic;
SIGNAL \Equal9~2_combout\ : std_logic;
SIGNAL \Selector52~5_combout\ : std_logic;
SIGNAL \Selector52~6_combout\ : std_logic;
SIGNAL \Selector52~8_combout\ : std_logic;
SIGNAL \Selector52~9_combout\ : std_logic;
SIGNAL \Selector52~10_combout\ : std_logic;
SIGNAL \Selector53~0_combout\ : std_logic;
SIGNAL \Selector52~15_combout\ : std_logic;
SIGNAL \Selector52~16_combout\ : std_logic;
SIGNAL \Selector41~15_combout\ : std_logic;
SIGNAL \Selector52~17_combout\ : std_logic;
SIGNAL \Selector52~18_combout\ : std_logic;
SIGNAL \Selector52~19_combout\ : std_logic;
SIGNAL \Selector52~20_combout\ : std_logic;
SIGNAL \Selector41~28_combout\ : std_logic;
SIGNAL \inst_NMI_Control|bus_state.BST_RFSH~regout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector24~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|bus_state.BST_IACK~regout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector24~2_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector30~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|mapa_state.MST_ARM~regout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector4~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector4~1_combout\ : std_logic;
SIGNAL \Selector46~5_combout\ : std_logic;
SIGNAL \Selector46~8_combout\ : std_logic;
SIGNAL \Selector46~9_combout\ : std_logic;
SIGNAL \Selector46~10_combout\ : std_logic;
SIGNAL \Selector46~11_combout\ : std_logic;
SIGNAL \Selector46~12_combout\ : std_logic;
SIGNAL \Selector46~18_combout\ : std_logic;
SIGNAL \Selector46~22_combout\ : std_logic;
SIGNAL \inst_NMI_Control|tra_state.TST_IDLE~regout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector19~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector19~1_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector19~2_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector25~1_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector24~3_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[0][0]~regout\ : std_logic;
SIGNAL \inst_Con_Tx|Selector7~0_combout\ : std_logic;
SIGNAL \inst_Con_Tx|reg[2]~0_combout\ : std_logic;
SIGNAL \inst_Con_Tx|Selector9~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|op_fifo~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[2][0]~regout\ : std_logic;
SIGNAL \inst_Aux_Tx|Selector7~0_combout\ : std_logic;
SIGNAL \inst_Aux_Tx|reg[2]~0_combout\ : std_logic;
SIGNAL \inst_Aux_Tx|Selector9~0_combout\ : std_logic;
SIGNAL \inst_Aux_Tx|Selector9~1_combout\ : std_logic;
SIGNAL \inst_SPI_Master|state.ST_TXDN~regout\ : std_logic;
SIGNAL \inst_SPI_Master|Selector14~1_combout\ : std_logic;
SIGNAL \inst_SPI_Master|sspi~1_combout\ : std_logic;
SIGNAL \inst_Timing|count_1ms~4_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|WrAck[0]~4_combout\ : std_logic;
SIGNAL \Selector51~0_combout\ : std_logic;
SIGNAL \Selector42~3_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector20~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector24~8_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector24~9_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector29~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector35~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector35~1_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector35~2_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector4~2_combout\ : std_logic;
SIGNAL \inst_NMI_Control|mapa_state.MST_END~regout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector4~3_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector5~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|mmap_arm_counter[3]~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Add0~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|mmap_arm_counter[3]~1_combout\ : std_logic;
SIGNAL \inst_NMI_Control|mmap_arm_counter[2]~2_combout\ : std_logic;
SIGNAL \inst_NMI_Control|mmap_arm_counter[2]~3_combout\ : std_logic;
SIGNAL \inst_NMI_Control|mmap_arm_counter[1]~4_combout\ : std_logic;
SIGNAL \inst_NMI_Control|mmap_arm_counter[0]~5_combout\ : std_logic;
SIGNAL \inst_IntControl|Service~0_combout\ : std_logic;
SIGNAL \inst_IntControl|Service~1_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector13~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|trace_counter[2]~2_combout\ : std_logic;
SIGNAL \inst_NMI_Control|trace_counter[1]~4_combout\ : std_logic;
SIGNAL \inst_NMI_Control|tra_state.TST_END~regout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector12~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|nmi_prot_viol~regout\ : std_logic;
SIGNAL \inst_NMI_Control|nmi_reasons~2_combout\ : std_logic;
SIGNAL \inst_OutExpander|Selector2~0_combout\ : std_logic;
SIGNAL \inst_Timing|count_1us~0_combout\ : std_logic;
SIGNAL \inst_OutExpander|Selector9~0_combout\ : std_logic;
SIGNAL \inst_OutExpander|Selector8~0_combout\ : std_logic;
SIGNAL \inst_OutExpander|Selector8~1_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[0][1]~regout\ : std_logic;
SIGNAL \inst_Con_Tx|Selector6~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[0][0]~0_combout\ : std_logic;
SIGNAL \inst_Con_Tx|bit_count[1]~2_combout\ : std_logic;
SIGNAL \fifos_wrreq[2]~2_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector17~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[2][1]~regout\ : std_logic;
SIGNAL \inst_Aux_Tx|Selector6~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[2][0]~1_combout\ : std_logic;
SIGNAL \Selector82~0_combout\ : std_logic;
SIGNAL \inst_SPI_Master|Selector15~1_combout\ : std_logic;
SIGNAL \Selector88~8_combout\ : std_logic;
SIGNAL \Selector96~4_combout\ : std_logic;
SIGNAL \Selector102~0_combout\ : std_logic;
SIGNAL \Selector102~1_combout\ : std_logic;
SIGNAL \Selector102~2_combout\ : std_logic;
SIGNAL \mmap_shadow~29_regout\ : std_logic;
SIGNAL \mmap_shadow~13_regout\ : std_logic;
SIGNAL \mmap_shadow~59_combout\ : std_logic;
SIGNAL \mmap_shadow~22_regout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[1][3]~regout\ : std_logic;
SIGNAL \Selector112~6_combout\ : std_logic;
SIGNAL \mmap_shadow~40_regout\ : std_logic;
SIGNAL \D[5]~23_combout\ : std_logic;
SIGNAL \mmap_shadow~25_regout\ : std_logic;
SIGNAL \mmap_shadow~17_regout\ : std_logic;
SIGNAL \mmap_shadow~67_combout\ : std_logic;
SIGNAL \Selector128~0_combout\ : std_logic;
SIGNAL \inst_SPI_Master|Busy~regout\ : std_logic;
SIGNAL \Selector126~1_combout\ : std_logic;
SIGNAL \Selector126~3_combout\ : std_logic;
SIGNAL \mmap_shadow~42_regout\ : std_logic;
SIGNAL \inst_I2C_Master|state.ST_START3~regout\ : std_logic;
SIGNAL \inst_I2C_Master|state.ST_START1~regout\ : std_logic;
SIGNAL \inst_I2C_Master|state.ST_STOP1~regout\ : std_logic;
SIGNAL \inst_I2C_Master|state.ST_DATA2~regout\ : std_logic;
SIGNAL \inst_I2C_Master|I2C_SCL~3_combout\ : std_logic;
SIGNAL \inst_I2C_Master|state.ST_STOP2~regout\ : std_logic;
SIGNAL \inst_I2C_Master|state.ST_START~regout\ : std_logic;
SIGNAL \inst_I2C_Master|I2C_SDA~2_combout\ : std_logic;
SIGNAL \inst_I2C_Master|state.ST_START2~regout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector26~0_combout\ : std_logic;
SIGNAL \inst_IntControl|qual_req[2]~0_combout\ : std_logic;
SIGNAL \trace_arm~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector17~2_combout\ : std_logic;
SIGNAL \Selector76~0_combout\ : std_logic;
SIGNAL \inst_OutExpander|Selector3~0_combout\ : std_logic;
SIGNAL \inst_OutExpander|reg[2]~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[0][2]~regout\ : std_logic;
SIGNAL \inst_Con_Tx|Selector5~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector6~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector5~0_combout\ : std_logic;
SIGNAL \inst_Timing|Equal2~1_combout\ : std_logic;
SIGNAL \inst_Con_Rx|Add1~0_combout\ : std_logic;
SIGNAL \inst_Con_Rx|state.ST_INIT~regout\ : std_logic;
SIGNAL \inst_Con_Rx|Selector1~1_combout\ : std_logic;
SIGNAL \inst_Con_Rx|Selector1~2_combout\ : std_logic;
SIGNAL \inst_Con_Rx|Selector1~3_combout\ : std_logic;
SIGNAL \inst_Con_Rx|Selector1~4_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|Selector5~1_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|Selector5~5_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[2][2]~regout\ : std_logic;
SIGNAL \inst_Aux_Tx|Selector5~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector21~1_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector4~0_combout\ : std_logic;
SIGNAL \inst_SPI_Master|Busy~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Busy~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector4~0_combout\ : std_logic;
SIGNAL \i2c_tx_ackn~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector7~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector1~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector0~2_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector0~3_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector0~4_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector0~5_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector1~1_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|Busy~regout\ : std_logic;
SIGNAL \inst_OutExpander|Selector4~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[0][3]~regout\ : std_logic;
SIGNAL \inst_Con_Tx|Selector4~0_combout\ : std_logic;
SIGNAL \inst_Con_Rx|inst_DeNoise|avg~0_combout\ : std_logic;
SIGNAL \inst_Con_Rx|bd_div~4_combout\ : std_logic;
SIGNAL \inst_Con_Rx|Selector1~7_combout\ : std_logic;
SIGNAL \inst_Con_Rx|Selector2~8_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|inst_DeNoise|avg~1_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|bd_div~4_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|Selector3~0_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|bit_count[1]~3_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|Selector1~0_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|Selector2~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[2][3]~regout\ : std_logic;
SIGNAL \inst_Aux_Tx|Selector4~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector0~6_combout\ : std_logic;
SIGNAL \inst_FIFOs|ram_wrdata~8_combout\ : std_logic;
SIGNAL \inst_FIFOs|ram_wrdata~10_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|bit_count[0]~3_combout\ : std_logic;
SIGNAL \inst_Con_Rx|Busy~regout\ : std_logic;
SIGNAL \inst_OutExpander|Selector5~0_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|Busy~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[0][4]~regout\ : std_logic;
SIGNAL \inst_Con_Tx|Selector3~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[2][4]~regout\ : std_logic;
SIGNAL \inst_Aux_Tx|Selector3~0_combout\ : std_logic;
SIGNAL \inst_OutExpander|Selector6~0_combout\ : std_logic;
SIGNAL \inst_Con_Rx|Busy~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[0][5]~regout\ : std_logic;
SIGNAL \inst_Con_Tx|Selector2~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[2][5]~regout\ : std_logic;
SIGNAL \inst_Aux_Tx|Selector2~0_combout\ : std_logic;
SIGNAL \inst_OutExpander|Selector7~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[0][6]~regout\ : std_logic;
SIGNAL \inst_Con_Tx|Selector1~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[2][6]~regout\ : std_logic;
SIGNAL \inst_Aux_Tx|Selector1~0_combout\ : std_logic;
SIGNAL \inst_OutExpander|reg[0]~1_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[0][7]~regout\ : std_logic;
SIGNAL \inst_Con_Tx|reg[7]~1_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[2][7]~regout\ : std_logic;
SIGNAL \inst_Aux_Tx|reg[7]~1_combout\ : std_logic;
SIGNAL \Selector52~25_combout\ : std_logic;
SIGNAL \Selector49~3_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector6~2_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[0][0]~feeder_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[2][0]~feeder_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[0][1]~feeder_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[2][1]~feeder_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[2][2]~feeder_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[0][2]~feeder_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[1][3]~feeder_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[2][3]~feeder_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[2][5]~feeder_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[2][6]~feeder_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[2][7]~feeder_combout\ : std_logic;
SIGNAL \mmap_shadow~29feeder_combout\ : std_logic;
SIGNAL \mmap_shadow~17feeder_combout\ : std_logic;
SIGNAL \inst_I2C_Master|state.ST_START1~feeder_combout\ : std_logic;
SIGNAL \nmi_reasons_clr[2]~feeder_combout\ : std_logic;
SIGNAL \nmi_reasons_clr[1]~feeder_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|Data[0]~feeder_combout\ : std_logic;
SIGNAL \inst_Con_Rx|Data[4]~feeder_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|Data[5]~feeder_combout\ : std_logic;
SIGNAL \inst_Con_Rx|state.ST_INIT~feeder_combout\ : std_logic;
SIGNAL \D[0]~0\ : std_logic;
SIGNAL \D[1]~1\ : std_logic;
SIGNAL \D[2]~2\ : std_logic;
SIGNAL \D[3]~3\ : std_logic;
SIGNAL \D[4]~4\ : std_logic;
SIGNAL \D[5]~5\ : std_logic;
SIGNAL \D[6]~6\ : std_logic;
SIGNAL \D[7]~7\ : std_logic;
SIGNAL \RTC_SCL~0\ : std_logic;
SIGNAL \RTC_SDA~0\ : std_logic;
SIGNAL \Equal9~0_combout\ : std_logic;
SIGNAL \Equal18~0_combout\ : std_logic;
SIGNAL \Equal3~7_combout\ : std_logic;
SIGNAL \crc_set_low~0_combout\ : std_logic;
SIGNAL \RESET~combout\ : std_logic;
SIGNAL \inst_Synch_Rst|meta_reg[0]~feeder_combout\ : std_logic;
SIGNAL \inst_Synch_Rst|Output[0]~clkctrl_outclk\ : std_logic;
SIGNAL \Selector96~2_combout\ : std_logic;
SIGNAL \Equal3~8_combout\ : std_logic;
SIGNAL \WideNor0~7_combout\ : std_logic;
SIGNAL \Equal10~0_combout\ : std_logic;
SIGNAL \WideNor0~8_combout\ : std_logic;
SIGNAL \WideNor0~5_combout\ : std_logic;
SIGNAL \WideNor0~9_combout\ : std_logic;
SIGNAL \IORQn~combout\ : std_logic;
SIGNAL \iorq_s~0_combout\ : std_logic;
SIGNAL \iorq_s~regout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \WideNor0~6_combout\ : std_logic;
SIGNAL \Equal3~6_combout\ : std_logic;
SIGNAL \WideNor0~11_combout\ : std_logic;
SIGNAL \WideNor1~0_combout\ : std_logic;
SIGNAL \WideNor1~combout\ : std_logic;
SIGNAL \Selector52~24_combout\ : std_logic;
SIGNAL \Selector52~7_combout\ : std_logic;
SIGNAL \SUPER~combout\ : std_logic;
SIGNAL \super_s~feeder_combout\ : std_logic;
SIGNAL \super_s~regout\ : std_logic;
SIGNAL \MREQn~combout\ : std_logic;
SIGNAL \mreq_s~0_combout\ : std_logic;
SIGNAL \mreq_s~regout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector20~1_combout\ : std_logic;
SIGNAL \inst_NMI_Control|bus_state.BST_MEM1~regout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector19~3_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector19~4_combout\ : std_logic;
SIGNAL \inst_NMI_Control|bus_state.BST_IDLE~regout\ : std_logic;
SIGNAL \inst_NMI_Control|cyc_timer[2]~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|cyc_timer[1]~2_combout\ : std_logic;
SIGNAL \M1n~combout\ : std_logic;
SIGNAL \m1_s~0_combout\ : std_logic;
SIGNAL \m1_s~regout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector18~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector18~1_combout\ : std_logic;
SIGNAL \inst_NMI_Control|nmi_super_viol~regout\ : std_logic;
SIGNAL \inst_NMI_Control|nmi_reasons~1_combout\ : std_logic;
SIGNAL \Selector73~0_combout\ : std_logic;
SIGNAL \Selector73~1_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector21~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|bus_state.BST_MEM2~regout\ : std_logic;
SIGNAL \inst_NMI_Control|trace_counter[3]~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|trace_counter[0]~5_combout\ : std_logic;
SIGNAL \inst_NMI_Control|trace_counter[2]~3_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Add1~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|trace_counter[3]~1_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Equal1~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector13~1_combout\ : std_logic;
SIGNAL \inst_NMI_Control|tra_state.TST_ARM~regout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector14~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector15~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|nmi_trace~regout\ : std_logic;
SIGNAL \inst_NMI_Control|nmi_reasons~0_combout\ : std_logic;
SIGNAL \NMI_SWITCHn~combout\ : std_logic;
SIGNAL \inst_NMI_Control|nmi_switch_s~feeder_combout\ : std_logic;
SIGNAL \inst_NMI_Control|nmi_switch_s~regout\ : std_logic;
SIGNAL \inst_NMI_Control|nmi_switch_dly~feeder_combout\ : std_logic;
SIGNAL \inst_NMI_Control|nmi_switch_dly~regout\ : std_logic;
SIGNAL \inst_NMI_Control|nmi_reasons~3_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Equal6~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|nmi_req~regout\ : std_logic;
SIGNAL \inst_NMI_Control|cyc_timer[0]~1_combout\ : std_logic;
SIGNAL \wr_s~0_combout\ : std_logic;
SIGNAL \wr_s~regout\ : std_logic;
SIGNAL \RDn~combout\ : std_logic;
SIGNAL \rd_s~0_combout\ : std_logic;
SIGNAL \rd_s~regout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector28~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector27~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|bus_state.BST_IO1~regout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector28~1_combout\ : std_logic;
SIGNAL \inst_NMI_Control|bus_state.BST_IO2~regout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector32~0_combout\ : std_logic;
SIGNAL \Selector46~3_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \ctrl_mmap_en~2_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector16~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|mmap_on_nmi~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|prefix_counter[0]~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|prefix_counter[0]~1_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Add3~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|busi~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector24~1_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector22~1_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector22~2_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector22~3_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector22~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector22~4_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector30~1_combout\ : std_logic;
SIGNAL \inst_NMI_Control|bus_state.BST_NACK~regout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector23~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|bus_state.BST_M1WE~regout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector24~5_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector24~4_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector24~6_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector24~7_combout\ : std_logic;
SIGNAL \inst_NMI_Control|bus_state.BST_OUT~regout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector31~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|bus_state.BST_IN~regout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector16~3_combout\ : std_logic;
SIGNAL \PROT~combout\ : std_logic;
SIGNAL \prot_s~regout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector25~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector26~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|bus_state.BST_MWR~regout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector17~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector16~1_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector16~2_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector16~5_combout\ : std_logic;
SIGNAL \inst_NMI_Control|nmi_out~_Duplicate_1_regout\ : std_logic;
SIGNAL \inst_NMI_Control|busi~1_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector35~3_combout\ : std_logic;
SIGNAL \inst_NMI_Control|nmi_trigd~regout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector22~5_combout\ : std_logic;
SIGNAL \inst_NMI_Control|bus_state.BST_M1~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector22~6_combout\ : std_logic;
SIGNAL \inst_NMI_Control|bus_state.BST_M1~regout\ : std_logic;
SIGNAL \inst_NMI_Control|super_instr_out~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|super_instr_out~1_combout\ : std_logic;
SIGNAL \inst_NMI_Control|super_instr_out~regout\ : std_logic;
SIGNAL \Selector52~13_combout\ : std_logic;
SIGNAL \Selector52~14_combout\ : std_logic;
SIGNAL \Selector52~21_combout\ : std_logic;
SIGNAL \Selector41~12_combout\ : std_logic;
SIGNAL \Selector52~11_combout\ : std_logic;
SIGNAL \Selector41~13_combout\ : std_logic;
SIGNAL \Selector46~1_combout\ : std_logic;
SIGNAL \Selector52~4_combout\ : std_logic;
SIGNAL \Selector52~12_combout\ : std_logic;
SIGNAL \Selector52~22_combout\ : std_logic;
SIGNAL \iosm~0_combout\ : std_logic;
SIGNAL \Selector52~23_combout\ : std_logic;
SIGNAL \io_state.ST_WAIT~regout\ : std_logic;
SIGNAL \Selector53~1_combout\ : std_logic;
SIGNAL \io_state.ST_DONE~regout\ : std_logic;
SIGNAL \Selector41~30_combout\ : std_logic;
SIGNAL \Selector41~33_combout\ : std_logic;
SIGNAL \WideNor0~10_combout\ : std_logic;
SIGNAL \WideNor0~combout\ : std_logic;
SIGNAL \Selector41~31_combout\ : std_logic;
SIGNAL \Selector43~1_combout\ : std_logic;
SIGNAL \Selector41~19_combout\ : std_logic;
SIGNAL \Equal13~0_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Selector45~1_combout\ : std_logic;
SIGNAL \io_state.ST_IORD_AUX~regout\ : std_logic;
SIGNAL \fifos_rdreq[3]~3_combout\ : std_logic;
SIGNAL \fifos_rdreq[3]~4_combout\ : std_logic;
SIGNAL \fifos_rdreq[3]~5_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[1][0]~29\ : std_logic;
SIGNAL \inst_FIFOs|contents[1][1]~30_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|bd_div~3_combout\ : std_logic;
SIGNAL \inst_Timing|count_con~3_combout\ : std_logic;
SIGNAL \inst_Timing|count_con~4_combout\ : std_logic;
SIGNAL \inst_Timing|Add2~1\ : std_logic;
SIGNAL \inst_Timing|Add2~3\ : std_logic;
SIGNAL \inst_Timing|Add2~4_combout\ : std_logic;
SIGNAL \inst_Timing|Add2~5\ : std_logic;
SIGNAL \inst_Timing|Add2~6_combout\ : std_logic;
SIGNAL \inst_Timing|count_con~2_combout\ : std_logic;
SIGNAL \inst_Timing|Add2~7\ : std_logic;
SIGNAL \inst_Timing|Add2~8_combout\ : std_logic;
SIGNAL \inst_Timing|Add2~9\ : std_logic;
SIGNAL \inst_Timing|Add2~11\ : std_logic;
SIGNAL \inst_Timing|Add2~12_combout\ : std_logic;
SIGNAL \inst_Timing|Add2~13\ : std_logic;
SIGNAL \inst_Timing|Add2~14_combout\ : std_logic;
SIGNAL \inst_Timing|count_con~1_combout\ : std_logic;
SIGNAL \inst_Timing|Add2~15\ : std_logic;
SIGNAL \inst_Timing|Add2~16_combout\ : std_logic;
SIGNAL \inst_Timing|Add2~17\ : std_logic;
SIGNAL \inst_Timing|Add2~18_combout\ : std_logic;
SIGNAL \inst_Timing|count_con~0_combout\ : std_logic;
SIGNAL \inst_Timing|Equal2~0_combout\ : std_logic;
SIGNAL \inst_Timing|Equal2~2_combout\ : std_logic;
SIGNAL \inst_Timing|Strb_Con~regout\ : std_logic;
SIGNAL \inst_Aux_Rx|state.ST_INIT~feeder_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|Selector4~7_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|state.ST_INIT~regout\ : std_logic;
SIGNAL \inst_FIFOs|WrAck[3]~11_combout\ : std_logic;
SIGNAL \inst_FIFOs|WrAck[3]~12_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|Selector5~0_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|Selector5~2_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|Selector5~3_combout\ : std_logic;
SIGNAL \ARxDn~combout\ : std_logic;
SIGNAL \inst_Aux_Rx|inst_Sync|meta_reg[0]~feeder_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|inst_DeNoise|avg~2_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|inst_DeNoise|avg~0_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|inst_DeNoise|output_int~0_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|inst_DeNoise|output_int~1_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|inst_DeNoise|output_int~regout\ : std_logic;
SIGNAL \inst_Aux_Rx|Selector5~4_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|Selector5~6_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|Selector5~7_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|state.ST_WTACK~regout\ : std_logic;
SIGNAL \inst_Aux_Rx|Selector4~4_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|Selector4~5_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|Selector4~6_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|Selector2~1_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|state.ST_START~regout\ : std_logic;
SIGNAL \inst_Aux_Rx|bit_count[1]~2_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|Selector3~1_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|state.ST_DATA~regout\ : std_logic;
SIGNAL \inst_Aux_Rx|bit_count[0]~6_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|bit_count[1]~5_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|Add1~0_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|bit_count[2]~4_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|Selector4~8_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|state.ST_STOP~regout\ : std_logic;
SIGNAL \inst_Aux_Rx|FrameErr~1_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|Selector1~1_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|state.ST_IDLE~regout\ : std_logic;
SIGNAL \inst_Aux_Rx|bd_div[0]~2_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|bd_div~1_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|brgen~0_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|bd_halfway~regout\ : std_logic;
SIGNAL \inst_Aux_Rx|Selector10~0_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|Rx_Ready~0_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|Rx_Ready~regout\ : std_logic;
SIGNAL \inst_FIFOs|contents[3][0]~42\ : std_logic;
SIGNAL \inst_FIFOs|contents[3][1]~43_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[3][0]~51_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector16~2_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[0][0]~54_combout\ : std_logic;
SIGNAL \inst_FIFOs|Equal14~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|RdAck[1]~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|RdAck[0]~3_combout\ : std_logic;
SIGNAL \inst_Con_Tx|Selector8~1_combout\ : std_logic;
SIGNAL \inst_Aux_Tx|br_div[0]~2_combout\ : std_logic;
SIGNAL \inst_Aux_Tx|br_div[1]~1_combout\ : std_logic;
SIGNAL \inst_Aux_Tx|br_div[2]~0_combout\ : std_logic;
SIGNAL \inst_Aux_Tx|divb~0_combout\ : std_logic;
SIGNAL \inst_Aux_Tx|br_strb~regout\ : std_logic;
SIGNAL \inst_Con_Tx|Selector10~1_combout\ : std_logic;
SIGNAL \inst_Con_Tx|bit_count[0]~0_combout\ : std_logic;
SIGNAL \inst_Con_Tx|bit_count[0]~3_combout\ : std_logic;
SIGNAL \inst_Con_Tx|Add1~0_combout\ : std_logic;
SIGNAL \inst_Con_Tx|bit_count[2]~1_combout\ : std_logic;
SIGNAL \inst_Con_Tx|Equal1~0_combout\ : std_logic;
SIGNAL \inst_Con_Tx|Selector9~1_combout\ : std_logic;
SIGNAL \inst_Con_Tx|state.ST_TRIGD~regout\ : std_logic;
SIGNAL \inst_Con_Tx|Selector10~2_combout\ : std_logic;
SIGNAL \inst_Con_Tx|state.ST_START~regout\ : std_logic;
SIGNAL \inst_Con_Tx|Selector11~0_combout\ : std_logic;
SIGNAL \inst_Con_Tx|state.ST_DATA~regout\ : std_logic;
SIGNAL \inst_Con_Tx|Selector8~2_combout\ : std_logic;
SIGNAL \inst_Con_Tx|state.ST_IDLE~regout\ : std_logic;
SIGNAL \inst_Con_Tx|Busy~0_combout\ : std_logic;
SIGNAL \inst_Con_Tx|Busy~regout\ : std_logic;
SIGNAL \inst_FIFOs|contents[0][0]~55\ : std_logic;
SIGNAL \inst_FIFOs|contents[0][1]~57\ : std_logic;
SIGNAL \inst_FIFOs|contents[0][2]~59\ : std_logic;
SIGNAL \inst_FIFOs|contents[0][3]~60_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[0][3]~regout\ : std_logic;
SIGNAL \inst_FIFOs|contents[0][3]~61\ : std_logic;
SIGNAL \inst_FIFOs|contents[0][4]~63\ : std_logic;
SIGNAL \inst_FIFOs|contents[0][5]~65_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[0][5]~regout\ : std_logic;
SIGNAL \inst_FIFOs|Equal0~1_combout\ : std_logic;
SIGNAL \CCTSn~combout\ : std_logic;
SIGNAL \ccts_s~0_combout\ : std_logic;
SIGNAL \ccts_s~regout\ : std_logic;
SIGNAL \inst_FIFOs|fsm~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[0][3]~64_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[0][0]~regout\ : std_logic;
SIGNAL \inst_FIFOs|contents[0][4]~62_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[0][4]~regout\ : std_logic;
SIGNAL \inst_FIFOs|contents[0][2]~58_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[0][2]~regout\ : std_logic;
SIGNAL \inst_FIFOs|Equal0~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|fsm~3_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[2][0]~68\ : std_logic;
SIGNAL \inst_FIFOs|contents[2][1]~70\ : std_logic;
SIGNAL \inst_FIFOs|contents[2][2]~72\ : std_logic;
SIGNAL \inst_FIFOs|contents[2][3]~73_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[2][3]~74\ : std_logic;
SIGNAL \inst_FIFOs|contents[2][4]~75_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[2][4]~regout\ : std_logic;
SIGNAL \inst_FIFOs|contents[2][2]~71_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[2][2]~regout\ : std_logic;
SIGNAL \inst_FIFOs|contents[2][0]~67_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[2][0]~regout\ : std_logic;
SIGNAL \inst_FIFOs|Equal4~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|Equal4~1_combout\ : std_logic;
SIGNAL \inst_FIFOs|Equal8~2_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[2][5]~80_combout\ : std_logic;
SIGNAL \inst_FIFOs|RdAck[2]~4_combout\ : std_logic;
SIGNAL \inst_Aux_Tx|Selector8~1_combout\ : std_logic;
SIGNAL \inst_Aux_Tx|Selector11~0_combout\ : std_logic;
SIGNAL \inst_Aux_Tx|state.ST_DATA~regout\ : std_logic;
SIGNAL \inst_Aux_Tx|Selector10~1_combout\ : std_logic;
SIGNAL \inst_Aux_Tx|Selector10~2_combout\ : std_logic;
SIGNAL \inst_Aux_Tx|state.ST_START~regout\ : std_logic;
SIGNAL \inst_Aux_Tx|bit_count[1]~0_combout\ : std_logic;
SIGNAL \inst_Aux_Tx|bit_count[0]~3_combout\ : std_logic;
SIGNAL \inst_Aux_Tx|bit_count[1]~2_combout\ : std_logic;
SIGNAL \inst_Aux_Tx|Add1~0_combout\ : std_logic;
SIGNAL \inst_Aux_Tx|bit_count[2]~1_combout\ : std_logic;
SIGNAL \inst_Aux_Tx|Equal1~0_combout\ : std_logic;
SIGNAL \inst_Aux_Tx|Selector8~2_combout\ : std_logic;
SIGNAL \inst_Aux_Tx|state.ST_IDLE~regout\ : std_logic;
SIGNAL \inst_Aux_Tx|Busy~0_combout\ : std_logic;
SIGNAL \inst_Aux_Tx|Busy~regout\ : std_logic;
SIGNAL \inst_FIFOs|Selector15~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[2][5]~77_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[2][3]~regout\ : std_logic;
SIGNAL \inst_FIFOs|Equal5~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|Equal1~0_combout\ : std_logic;
SIGNAL \Selector41~16_combout\ : std_logic;
SIGNAL \Selector41~17_combout\ : std_logic;
SIGNAL \Selector51~1_combout\ : std_logic;
SIGNAL \Selector51~2_combout\ : std_logic;
SIGNAL \io_state.ST_IOWR_AUX~regout\ : std_logic;
SIGNAL \fifos_wrreq[2]~3_combout\ : std_logic;
SIGNAL \fifos_wrreq[2]~4_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector15~1_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector16~1_combout\ : std_logic;
SIGNAL \inst_FIFOs|op_fifo[1]~6_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector15~7_combout\ : std_logic;
SIGNAL \inst_FIFOs|state.ST_IDLE~regout\ : std_logic;
SIGNAL \inst_FIFOs|Selector16~3_combout\ : std_logic;
SIGNAL \inst_FIFOs|state.ST_WRITE~regout\ : std_logic;
SIGNAL \inst_FIFOs|contents[3][0]~82_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[3][1]~regout\ : std_logic;
SIGNAL \inst_FIFOs|contents[3][1]~44\ : std_logic;
SIGNAL \inst_FIFOs|contents[3][2]~45_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[3][2]~regout\ : std_logic;
SIGNAL \inst_FIFOs|contents[3][0]~41_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[3][0]~regout\ : std_logic;
SIGNAL \inst_FIFOs|Equal7~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[3][2]~46\ : std_logic;
SIGNAL \inst_FIFOs|contents[3][3]~47_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[3][3]~regout\ : std_logic;
SIGNAL \inst_FIFOs|Equal7~1_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector18~1_combout\ : std_logic;
SIGNAL \inst_FIFOs|op_fifo~5_combout\ : std_logic;
SIGNAL \inst_FIFOs|op_fifo[1]~4_combout\ : std_logic;
SIGNAL \inst_FIFOs|Equal8~1_combout\ : std_logic;
SIGNAL \inst_FIFOs|fsm~1_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector17~1_combout\ : std_logic;
SIGNAL \inst_FIFOs|state.ST_WR_DONE~regout\ : std_logic;
SIGNAL \inst_FIFOs|contents[1][4]~37\ : std_logic;
SIGNAL \inst_FIFOs|contents[1][5]~39_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[1][5]~regout\ : std_logic;
SIGNAL \inst_FIFOs|Equal3~1_combout\ : std_logic;
SIGNAL \inst_FIFOs|Equal8~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|WrAck[1]~9_combout\ : std_logic;
SIGNAL \inst_FIFOs|WrAck[1]~10_combout\ : std_logic;
SIGNAL \CRxDn~combout\ : std_logic;
SIGNAL \inst_Con_Rx|inst_Sync|meta_reg[0]~feeder_combout\ : std_logic;
SIGNAL \inst_Con_Rx|inst_DeNoise|avg~2_combout\ : std_logic;
SIGNAL \inst_Con_Rx|inst_DeNoise|avg~1_combout\ : std_logic;
SIGNAL \inst_Con_Rx|inst_DeNoise|output_int~0_combout\ : std_logic;
SIGNAL \inst_Con_Rx|inst_DeNoise|output_int~1_combout\ : std_logic;
SIGNAL \inst_Con_Rx|inst_DeNoise|output_int~regout\ : std_logic;
SIGNAL \inst_Con_Rx|Selector2~7_combout\ : std_logic;
SIGNAL \inst_Con_Rx|state.ST_STOP~regout\ : std_logic;
SIGNAL \inst_Con_Rx|FrameErr~1_combout\ : std_logic;
SIGNAL \inst_Con_Rx|Selector1~8_combout\ : std_logic;
SIGNAL \inst_Con_Rx|state.ST_IDLE~regout\ : std_logic;
SIGNAL \inst_Con_Rx|bd_div~3_combout\ : std_logic;
SIGNAL \inst_Con_Rx|bd_div[0]~2_combout\ : std_logic;
SIGNAL \inst_Con_Rx|bd_div~1_combout\ : std_logic;
SIGNAL \inst_Con_Rx|brgen~0_combout\ : std_logic;
SIGNAL \inst_Con_Rx|bd_halfway~regout\ : std_logic;
SIGNAL \inst_Con_Rx|bit_count[0]~6_combout\ : std_logic;
SIGNAL \inst_Con_Rx|bit_count[1]~5_combout\ : std_logic;
SIGNAL \inst_Con_Rx|Selector3~0_combout\ : std_logic;
SIGNAL \inst_Con_Rx|bit_count[0]~2_combout\ : std_logic;
SIGNAL \inst_Con_Rx|Selector3~1_combout\ : std_logic;
SIGNAL \inst_Con_Rx|state.ST_DATA~regout\ : std_logic;
SIGNAL \inst_Con_Rx|Selector1~0_combout\ : std_logic;
SIGNAL \inst_Con_Rx|bit_count[0]~3_combout\ : std_logic;
SIGNAL \inst_Con_Rx|bit_count[2]~4_combout\ : std_logic;
SIGNAL \inst_Con_Rx|Selector2~10_combout\ : std_logic;
SIGNAL \inst_Con_Rx|Selector2~4_combout\ : std_logic;
SIGNAL \inst_Con_Rx|Selector2~5_combout\ : std_logic;
SIGNAL \inst_Con_Rx|Selector2~6_combout\ : std_logic;
SIGNAL \inst_Con_Rx|Selector2~9_combout\ : std_logic;
SIGNAL \inst_Con_Rx|state.ST_START~regout\ : std_logic;
SIGNAL \inst_Con_Rx|Selector1~5_combout\ : std_logic;
SIGNAL \inst_Con_Rx|Selector1~6_combout\ : std_logic;
SIGNAL \inst_Con_Rx|Selector10~0_combout\ : std_logic;
SIGNAL \inst_Con_Rx|Selector5~0_combout\ : std_logic;
SIGNAL \inst_Con_Rx|state.ST_WTACK~regout\ : std_logic;
SIGNAL \inst_Con_Rx|Rx_Ready~0_combout\ : std_logic;
SIGNAL \inst_Con_Rx|Rx_Ready~regout\ : std_logic;
SIGNAL \inst_FIFOs|Selector18~0_combout\ : std_logic;
SIGNAL \Selector44~1_combout\ : std_logic;
SIGNAL \D[5]~16_combout\ : std_logic;
SIGNAL \Equal11~0_combout\ : std_logic;
SIGNAL \Selector44~2_combout\ : std_logic;
SIGNAL \io_state.ST_IORD_CON~regout\ : std_logic;
SIGNAL \fifos_rdreq[1]~1_combout\ : std_logic;
SIGNAL \inst_FIFOs|RdAck[1]~1_combout\ : std_logic;
SIGNAL \fifos_rdreq[1]~0_combout\ : std_logic;
SIGNAL \fifos_rdreq[1]~2_combout\ : std_logic;
SIGNAL \inst_FIFOs|fsm~4_combout\ : std_logic;
SIGNAL \inst_FIFOs|op_fifo~1_combout\ : std_logic;
SIGNAL \inst_FIFOs|op_fifo~2_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[1][4]~81_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[1][1]~regout\ : std_logic;
SIGNAL \inst_FIFOs|contents[1][1]~31\ : std_logic;
SIGNAL \inst_FIFOs|contents[1][2]~32_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[1][2]~regout\ : std_logic;
SIGNAL \inst_FIFOs|contents[1][2]~33\ : std_logic;
SIGNAL \inst_FIFOs|contents[1][3]~34_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[1][3]~regout\ : std_logic;
SIGNAL \inst_FIFOs|contents[1][3]~35\ : std_logic;
SIGNAL \inst_FIFOs|contents[1][4]~36_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[1][4]~regout\ : std_logic;
SIGNAL \inst_FIFOs|contents[1][0]~28_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[1][0]~regout\ : std_logic;
SIGNAL \inst_FIFOs|Equal3~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|Equal2~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|op_fifo~3_combout\ : std_logic;
SIGNAL \ACTSn~combout\ : std_logic;
SIGNAL \acts_s~0_combout\ : std_logic;
SIGNAL \acts_s~regout\ : std_logic;
SIGNAL \inst_FIFOs|fsm~2_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector16~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector18~2_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector15~2_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector15~3_combout\ : std_logic;
SIGNAL \inst_FIFOs|WrAck[0]~7_combout\ : std_logic;
SIGNAL \inst_FIFOs|WrAck[0]~8_combout\ : std_logic;
SIGNAL \Selector50~1_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \Selector50~2_combout\ : std_logic;
SIGNAL \io_state.ST_IOWR_CON~regout\ : std_logic;
SIGNAL \fifos_wrreq[0]~0_combout\ : std_logic;
SIGNAL \mmap_shadow~55_combout\ : std_logic;
SIGNAL \fifos_wrreq[0]~1_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector15~4_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector20~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector20~1_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector15~5_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector15~6_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector18~3_combout\ : std_logic;
SIGNAL \inst_FIFOs|state.ST_READ~regout\ : std_logic;
SIGNAL \inst_FIFOs|state.ST_RD1~regout\ : std_logic;
SIGNAL \inst_FIFOs|Selector20~2_combout\ : std_logic;
SIGNAL \inst_FIFOs|state.ST_RD_DONE~regout\ : std_logic;
SIGNAL \inst_FIFOs|contents[3][3]~48\ : std_logic;
SIGNAL \inst_FIFOs|contents[3][4]~50\ : std_logic;
SIGNAL \inst_FIFOs|contents[3][5]~52_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[3][5]~regout\ : std_logic;
SIGNAL \inst_FIFOs|Equal6~0_combout\ : std_logic;
SIGNAL \Selector41~27_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Selector42~1_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \Selector43~2_combout\ : std_logic;
SIGNAL \io_state.ST_IORD~regout\ : std_logic;
SIGNAL \Selector41~8_combout\ : std_logic;
SIGNAL \Selector41~9_combout\ : std_logic;
SIGNAL \Selector41~21_combout\ : std_logic;
SIGNAL \inst_FIFOs|WrAck[2]~5_combout\ : std_logic;
SIGNAL \inst_FIFOs|WrAck[2]~6_combout\ : std_logic;
SIGNAL \Selector41~10_combout\ : std_logic;
SIGNAL \Selector41~11_combout\ : std_logic;
SIGNAL \Selector41~22_combout\ : std_logic;
SIGNAL \inst_FIFOs|RdAck[3]~2_combout\ : std_logic;
SIGNAL \Selector41~23_combout\ : std_logic;
SIGNAL \Selector42~2_combout\ : std_logic;
SIGNAL \Selector42~4_combout\ : std_logic;
SIGNAL \io_state.ST_INTACK~regout\ : std_logic;
SIGNAL \Selector41~24_combout\ : std_logic;
SIGNAL \Selector47~2_combout\ : std_logic;
SIGNAL \Selector47~4_combout\ : std_logic;
SIGNAL \Selector47~3_combout\ : std_logic;
SIGNAL \io_state.ST_IOWRWT~regout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \io_state.ST_IOWW1~regout\ : std_logic;
SIGNAL \Selector41~25_combout\ : std_logic;
SIGNAL \Selector41~26_combout\ : std_logic;
SIGNAL \Selector41~18_combout\ : std_logic;
SIGNAL \Selector41~20_combout\ : std_logic;
SIGNAL \Selector41~29_combout\ : std_logic;
SIGNAL \Selector41~32_combout\ : std_logic;
SIGNAL \io_state.ST_IDLE~regout\ : std_logic;
SIGNAL \int_ack~2_combout\ : std_logic;
SIGNAL \int_ack~3_combout\ : std_logic;
SIGNAL \int_ack~regout\ : std_logic;
SIGNAL \inst_IntControl|state~regout\ : std_logic;
SIGNAL \inst_IntControl|VecValid~regout\ : std_logic;
SIGNAL \Selector46~23_combout\ : std_logic;
SIGNAL \Selector46~24_combout\ : std_logic;
SIGNAL \Selector46~25_combout\ : std_logic;
SIGNAL \Selector46~6_combout\ : std_logic;
SIGNAL \Selector41~14_combout\ : std_logic;
SIGNAL \Selector49~2_combout\ : std_logic;
SIGNAL \io_state.ST_IOWW2~regout\ : std_logic;
SIGNAL \Selector46~7_combout\ : std_logic;
SIGNAL \Selector46~14_combout\ : std_logic;
SIGNAL \Selector46~15_combout\ : std_logic;
SIGNAL \Selector46~16_combout\ : std_logic;
SIGNAL \Selector46~17_combout\ : std_logic;
SIGNAL \crc_set_high~0_combout\ : std_logic;
SIGNAL \Selector91~2_combout\ : std_logic;
SIGNAL \crc_set_high~regout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector26~3_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|bit_count[2]~1_combout\ : std_logic;
SIGNAL \crc_strb~0_combout\ : std_logic;
SIGNAL \crc_strb~regout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector26~4_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector27~0_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|state.ST_DATA~regout\ : std_logic;
SIGNAL \inst_CRC16_XModem|bit_count[1]~2_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Add0~0_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|bit_count[2]~0_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector26~5_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector28~0_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|state.ST_DONE~regout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector26~6_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|state.ST_IDLE~regout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Busy~0_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Busy~1_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Busy~regout\ : std_logic;
SIGNAL \Selector46~19_combout\ : std_logic;
SIGNAL \Selector46~20_combout\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \Selector46~2_combout\ : std_logic;
SIGNAL \Selector46~13_combout\ : std_logic;
SIGNAL \Selector46~21_combout\ : std_logic;
SIGNAL \Selector46~26_combout\ : std_logic;
SIGNAL \CPU_CLK~combout\ : std_logic;
SIGNAL \cpu_clk_s~regout\ : std_logic;
SIGNAL \Selector46~4_combout\ : std_logic;
SIGNAL \Selector46~27_combout\ : std_logic;
SIGNAL \Selector46~28_combout\ : std_logic;
SIGNAL \Selector46~29_combout\ : std_logic;
SIGNAL \io_state.ST_IOWR~regout\ : std_logic;
SIGNAL \crc_set_low~regout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector26~2_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|data_reg[0]~1_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector22~0_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|data_reg[6]~0_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector21~0_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector20~0_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector19~0_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector18~0_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector17~0_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector16~0_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|crc_reg~2_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|crc_reg[13]~1_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector2~0_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector1~0_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector0~0_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector15~0_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|crc_reg[0]~0_combout\ : std_logic;
SIGNAL \spi_mc_ss~2_combout\ : std_logic;
SIGNAL \spi_fast_mode~regout\ : std_logic;
SIGNAL \SPI_MISO~combout\ : std_logic;
SIGNAL \inst_SPI_Master|inst_Sync_sda|meta_reg[0]~feeder_combout\ : std_logic;
SIGNAL \inst_SPI_Master|inst_Sync_sda|Output[0]~feeder_combout\ : std_logic;
SIGNAL \inst_SPI_Master|count_spi[0]~7\ : std_logic;
SIGNAL \inst_SPI_Master|count_spi[1]~8_combout\ : std_logic;
SIGNAL \inst_SPI_Master|count_spi[1]~9\ : std_logic;
SIGNAL \inst_SPI_Master|count_spi[2]~10_combout\ : std_logic;
SIGNAL \inst_SPI_Master|count_spi[2]~11\ : std_logic;
SIGNAL \inst_SPI_Master|count_spi[3]~13\ : std_logic;
SIGNAL \inst_SPI_Master|count_spi[4]~14_combout\ : std_logic;
SIGNAL \inst_SPI_Master|count_spi[3]~12_combout\ : std_logic;
SIGNAL \inst_SPI_Master|sspi~0_combout\ : std_logic;
SIGNAL \inst_SPI_Master|count_spi[4]~15\ : std_logic;
SIGNAL \inst_SPI_Master|count_spi[5]~16_combout\ : std_logic;
SIGNAL \inst_SPI_Master|sspi~2_combout\ : std_logic;
SIGNAL \inst_SPI_Master|tstrb~regout\ : std_logic;
SIGNAL \inst_SPI_Master|Selector13~1_combout\ : std_logic;
SIGNAL \inst_SPI_Master|state.ST_TX~regout\ : std_logic;
SIGNAL \inst_SPI_Master|bit_count[0]~5\ : std_logic;
SIGNAL \inst_SPI_Master|bit_count[1]~6_combout\ : std_logic;
SIGNAL \Equal17~0_combout\ : std_logic;
SIGNAL \Selector82~1_combout\ : std_logic;
SIGNAL \spi_tx_strb~regout\ : std_logic;
SIGNAL \inst_SPI_Master|Selector12~0_combout\ : std_logic;
SIGNAL \inst_SPI_Master|state.ST_IDLE~regout\ : std_logic;
SIGNAL \inst_SPI_Master|bit_count[2]~12_combout\ : std_logic;
SIGNAL \inst_SPI_Master|bit_count[1]~7\ : std_logic;
SIGNAL \inst_SPI_Master|bit_count[2]~8_combout\ : std_logic;
SIGNAL \inst_SPI_Master|bit_count[2]~9\ : std_logic;
SIGNAL \inst_SPI_Master|bit_count[3]~10_combout\ : std_logic;
SIGNAL \inst_SPI_Master|Selector15~0_combout\ : std_logic;
SIGNAL \inst_SPI_Master|Selector14~0_combout\ : std_logic;
SIGNAL \inst_SPI_Master|Selector14~2_combout\ : std_logic;
SIGNAL \inst_SPI_Master|state.ST_DATA~regout\ : std_logic;
SIGNAL \inst_SPI_Master|Selector7~0_combout\ : std_logic;
SIGNAL \inst_SPI_Master|Selector13~0_combout\ : std_logic;
SIGNAL \Selector88~0_combout\ : std_logic;
SIGNAL \Selector88~1_combout\ : std_logic;
SIGNAL \Equal14~0_combout\ : std_logic;
SIGNAL \Selector81~0_combout\ : std_logic;
SIGNAL \Selector81~1_combout\ : std_logic;
SIGNAL \i2c_tx_strb~regout\ : std_logic;
SIGNAL \Selector80~0_combout\ : std_logic;
SIGNAL \Selector79~1_combout\ : std_logic;
SIGNAL \i2c_stop_strb~regout\ : std_logic;
SIGNAL \Selector79~0_combout\ : std_logic;
SIGNAL \i2c_start_strb~regout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector9~1_combout\ : std_logic;
SIGNAL \inst_I2C_Master|inst_Sync_scl|meta_reg[0]~feeder_combout\ : std_logic;
SIGNAL \inst_Timing|Add1~1\ : std_logic;
SIGNAL \inst_Timing|Add1~2_combout\ : std_logic;
SIGNAL \inst_Timing|Add0~0_combout\ : std_logic;
SIGNAL \inst_Timing|Add0~1\ : std_logic;
SIGNAL \inst_Timing|Add0~2_combout\ : std_logic;
SIGNAL \inst_Timing|count_1us~2_combout\ : std_logic;
SIGNAL \inst_Timing|Add0~3\ : std_logic;
SIGNAL \inst_Timing|Add0~4_combout\ : std_logic;
SIGNAL \inst_Timing|Add0~5\ : std_logic;
SIGNAL \inst_Timing|Add0~7\ : std_logic;
SIGNAL \inst_Timing|Add0~8_combout\ : std_logic;
SIGNAL \inst_Timing|count_1us~1_combout\ : std_logic;
SIGNAL \inst_Timing|Add0~6_combout\ : std_logic;
SIGNAL \inst_Timing|Equal0~0_combout\ : std_logic;
SIGNAL \inst_Timing|Equal0~1_combout\ : std_logic;
SIGNAL \inst_Timing|strb_1us_int~regout\ : std_logic;
SIGNAL \inst_Timing|Strb_I2C~0_combout\ : std_logic;
SIGNAL \inst_Timing|Strb_I2C~regout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector12~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|state.ST_DATA3~regout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector9~5_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector9~2_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector9~3_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector9~4_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector9~8_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector9~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|state.ST_TXDN~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|state.ST_TXDN~regout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector0~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector0~1_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector8~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector8~1_combout\ : std_logic;
SIGNAL \inst_I2C_Master|state.ST_TX~regout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector0~7_combout\ : std_logic;
SIGNAL \inst_I2C_Master|state.ST_IDLE~regout\ : std_logic;
SIGNAL \inst_I2C_Master|inst_Sync_sda|meta_reg[0]~feeder_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector21~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector21~2_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Rx_Ackn~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Rx_Ackn~regout\ : std_logic;
SIGNAL \Selector88~7_combout\ : std_logic;
SIGNAL \Selector88~9_combout\ : std_logic;
SIGNAL \inst_FIFOs|LessThan0~0_combout\ : std_logic;
SIGNAL \int_enables[0]~2_combout\ : std_logic;
SIGNAL \Selector88~4_combout\ : std_logic;
SIGNAL \Selector88~5_combout\ : std_logic;
SIGNAL \mmap_shadow~71_combout\ : std_logic;
SIGNAL \mmap_shadow~35_regout\ : std_logic;
SIGNAL \mmap_shadow~72_combout\ : std_logic;
SIGNAL \mmap_shadow~27_regout\ : std_logic;
SIGNAL \mmap_shadow~73_combout\ : std_logic;
SIGNAL \mmap_shadow~19_regout\ : std_logic;
SIGNAL \mmap_shadow~74_combout\ : std_logic;
SIGNAL \mmap_shadow~11_regout\ : std_logic;
SIGNAL \mmap_shadow~56_combout\ : std_logic;
SIGNAL \Selector88~3_combout\ : std_logic;
SIGNAL \Selector88~6_combout\ : std_logic;
SIGNAL \Selector88~10_combout\ : std_logic;
SIGNAL \Selector88~2_combout\ : std_logic;
SIGNAL \Selector88~11_combout\ : std_logic;
SIGNAL \RClk~combout\ : std_logic;
SIGNAL \RClk~clkctrl_outclk\ : std_logic;
SIGNAL \inst_Con_Rx|reg[7]~feeder_combout\ : std_logic;
SIGNAL \inst_Con_Rx|reg[6]~feeder_combout\ : std_logic;
SIGNAL \inst_Con_Rx|reg[5]~feeder_combout\ : std_logic;
SIGNAL \inst_Con_Rx|reg[4]~feeder_combout\ : std_logic;
SIGNAL \inst_Con_Rx|reg[3]~feeder_combout\ : std_logic;
SIGNAL \inst_Con_Rx|reg[2]~feeder_combout\ : std_logic;
SIGNAL \inst_Con_Rx|reg[0]~feeder_combout\ : std_logic;
SIGNAL \inst_FIFOs|ram_wrdata~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|ram_wrdata~1_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[0][0]~20_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[0][0]~regout\ : std_logic;
SIGNAL \inst_FIFOs|Add0~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[1][0]~18_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[1][0]~regout\ : std_logic;
SIGNAL \inst_FIFOs|Add1~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector6~2_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[3][0]~21_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[3][0]~regout\ : std_logic;
SIGNAL \inst_FIFOs|Add3~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector6~3_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector6~1_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector6~4_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[1][1]~22_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[1][4]~38_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[1][1]~regout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[3][1]~28_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[3][1]~regout\ : std_logic;
SIGNAL \inst_FIFOs|Selector5~1_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[2][1]~24_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[2][1]~regout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[2][0]~19_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[2][0]~regout\ : std_logic;
SIGNAL \inst_FIFOs|Add2~1\ : std_logic;
SIGNAL \inst_FIFOs|Add2~2_combout\ : std_logic;
SIGNAL \inst_FIFOs|Add1~1\ : std_logic;
SIGNAL \inst_FIFOs|Add1~2_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[0][1]~56_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[0][1]~regout\ : std_logic;
SIGNAL \inst_FIFOs|Add0~1\ : std_logic;
SIGNAL \inst_FIFOs|Add0~2_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector5~2_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector5~3_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector5~4_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[3][1]~29\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[3][2]~36_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[3][2]~regout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[2][1]~25\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[2][2]~32_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[2][2]~regout\ : std_logic;
SIGNAL \inst_FIFOs|Selector4~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector4~1_combout\ : std_logic;
SIGNAL \inst_FIFOs|Add0~3\ : std_logic;
SIGNAL \inst_FIFOs|Add0~4_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[1][1]~23\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[1][2]~30_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[1][2]~regout\ : std_logic;
SIGNAL \inst_FIFOs|Add1~3\ : std_logic;
SIGNAL \inst_FIFOs|Add1~4_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector4~2_combout\ : std_logic;
SIGNAL \inst_FIFOs|Add3~1\ : std_logic;
SIGNAL \inst_FIFOs|Add3~3\ : std_logic;
SIGNAL \inst_FIFOs|Add3~4_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector4~3_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector4~4_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[0][1]~27\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[0][2]~34_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[0][0]~54_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[0][2]~regout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[0][2]~35\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[0][3]~42_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[0][3]~regout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[2][2]~33\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[2][3]~40_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[2][3]~regout\ : std_logic;
SIGNAL \inst_FIFOs|Selector3~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[3][2]~37\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[3][3]~44_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[3][3]~regout\ : std_logic;
SIGNAL \inst_FIFOs|Selector3~1_combout\ : std_logic;
SIGNAL \inst_FIFOs|Add0~5\ : std_logic;
SIGNAL \inst_FIFOs|Add0~6_combout\ : std_logic;
SIGNAL \inst_FIFOs|Add1~5\ : std_logic;
SIGNAL \inst_FIFOs|Add1~6_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector3~2_combout\ : std_logic;
SIGNAL \inst_FIFOs|Add2~3\ : std_logic;
SIGNAL \inst_FIFOs|Add2~5\ : std_logic;
SIGNAL \inst_FIFOs|Add2~6_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector3~3_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector3~4_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[1][2]~31\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[1][3]~39\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[1][4]~46_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[1][4]~regout\ : std_logic;
SIGNAL \inst_FIFOs|Add1~7\ : std_logic;
SIGNAL \inst_FIFOs|Add1~8_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector2~2_combout\ : std_logic;
SIGNAL \inst_FIFOs|Add2~7\ : std_logic;
SIGNAL \inst_FIFOs|Add2~8_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector2~3_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[0][3]~43\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[0][4]~50_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[0][4]~regout\ : std_logic;
SIGNAL \inst_FIFOs|Selector2~0_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[3][3]~45\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[3][4]~52_combout\ : std_logic;
SIGNAL \inst_FIFOs|rd_ptr[3][4]~regout\ : std_logic;
SIGNAL \inst_FIFOs|Selector2~1_combout\ : std_logic;
SIGNAL \inst_FIFOs|Selector2~4_combout\ : std_logic;
SIGNAL \inst_Con_Rx|Data[1]~feeder_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|reg[7]~feeder_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|reg[6]~feeder_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|reg[5]~feeder_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|reg[4]~feeder_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|reg[3]~feeder_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|reg[1]~feeder_combout\ : std_logic;
SIGNAL \inst_FIFOs|ram_wrdata~2_combout\ : std_logic;
SIGNAL \inst_FIFOs|ram_wrdata~3_combout\ : std_logic;
SIGNAL \inst_FIFOs|ram_wrdata~4_combout\ : std_logic;
SIGNAL \inst_FIFOs|ram_wrdata~5_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|Data[3]~feeder_combout\ : std_logic;
SIGNAL \inst_FIFOs|ram_wrdata~6_combout\ : std_logic;
SIGNAL \inst_FIFOs|ram_wrdata~7_combout\ : std_logic;
SIGNAL \inst_FIFOs|ram_wrdata~9_combout\ : std_logic;
SIGNAL \inst_FIFOs|ram_wrdata~11_combout\ : std_logic;
SIGNAL \inst_Con_Rx|Data[6]~feeder_combout\ : std_logic;
SIGNAL \inst_FIFOs|ram_wrdata~12_combout\ : std_logic;
SIGNAL \inst_FIFOs|ram_wrdata~13_combout\ : std_logic;
SIGNAL \inst_Con_Rx|Data[7]~feeder_combout\ : std_logic;
SIGNAL \inst_FIFOs|ram_wrdata~14_combout\ : std_logic;
SIGNAL \inst_FIFOs|ram_wrdata~15_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[3][0]~feeder_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[3][0]~2_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[3][0]~regout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[1][0]~3_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[1][0]~regout\ : std_logic;
SIGNAL \Selector90~0_combout\ : std_logic;
SIGNAL \Selector90~1_combout\ : std_logic;
SIGNAL \Selector91~3_combout\ : std_logic;
SIGNAL \WideOr13~0_combout\ : std_logic;
SIGNAL \Selector86~1_combout\ : std_logic;
SIGNAL \Selector86~2_combout\ : std_logic;
SIGNAL \Selector86~3_combout\ : std_logic;
SIGNAL \Selector86~4_combout\ : std_logic;
SIGNAL \Selector86~5_combout\ : std_logic;
SIGNAL \Selector86~0_combout\ : std_logic;
SIGNAL \Selector86~6_combout\ : std_logic;
SIGNAL \Selector87~2_combout\ : std_logic;
SIGNAL \Selector87~0_combout\ : std_logic;
SIGNAL \Selector87~1_combout\ : std_logic;
SIGNAL \Selector87~3_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[3][1]~feeder_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[3][1]~regout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[1][1]~regout\ : std_logic;
SIGNAL \Selector96~7_combout\ : std_logic;
SIGNAL \inst_IntControl|pri~0_combout\ : std_logic;
SIGNAL \inst_IntControl|pri_int_num[0]~0_combout\ : std_logic;
SIGNAL \inst_IntControl|pri_int_num[0]~1_combout\ : std_logic;
SIGNAL \inst_IntControl|do_int_num[2]~0_combout\ : std_logic;
SIGNAL \inst_IntControl|Vector[3]~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector20~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|bit_count~3_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector25~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Add0~2_combout\ : std_logic;
SIGNAL \inst_I2C_Master|bit_count[1]~2_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector24~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Add0~1_combout\ : std_logic;
SIGNAL \inst_I2C_Master|bit_count[2]~1_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector23~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Add0~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|bit_count[3]~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector22~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Equal0~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector9~6_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector9~7_combout\ : std_logic;
SIGNAL \inst_I2C_Master|state.ST_DATA~regout\ : std_logic;
SIGNAL \inst_I2C_Master|state.ST_DATA1~regout\ : std_logic;
SIGNAL \inst_I2C_Master|reg[3]~0_combout\ : std_logic;
SIGNAL \Selector94~7_combout\ : std_logic;
SIGNAL \inst_FIFOs|LessThan1~0_combout\ : std_logic;
SIGNAL \Selector94~8_combout\ : std_logic;
SIGNAL \Selector96~5_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|crc_reg~3_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector9~0_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector8~0_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector7~0_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector6~0_combout\ : std_logic;
SIGNAL \inst_SPI_Master|Selector6~0_combout\ : std_logic;
SIGNAL \spi_mc_ss~feeder_combout\ : std_logic;
SIGNAL \spi_mc_ss~regout\ : std_logic;
SIGNAL \Selector94~0_combout\ : std_logic;
SIGNAL \Selector94~1_combout\ : std_logic;
SIGNAL \Selector96~9_combout\ : std_logic;
SIGNAL \mmap_shadow~28_regout\ : std_logic;
SIGNAL \mmap_shadow~36_regout\ : std_logic;
SIGNAL \mmap_shadow~12_regout\ : std_logic;
SIGNAL \mmap_shadow~20_regout\ : std_logic;
SIGNAL \mmap_shadow~57_combout\ : std_logic;
SIGNAL \mmap_shadow~58_combout\ : std_logic;
SIGNAL \mmap_arm~0_combout\ : std_logic;
SIGNAL \mmap_arm~regout\ : std_logic;
SIGNAL \inst_NMI_Control|Selector4~4_combout\ : std_logic;
SIGNAL \inst_NMI_Control|mapa_state.MST_IDLE~regout\ : std_logic;
SIGNAL \inst_NMI_Control|mmap_arm_next~2_combout\ : std_logic;
SIGNAL \inst_NMI_Control|mmap_arm_next~3_combout\ : std_logic;
SIGNAL \inst_NMI_Control|mmap_arm_next~regout\ : std_logic;
SIGNAL \ctrl_mmap_en~0_combout\ : std_logic;
SIGNAL \ctrl_mmap_en~1_combout\ : std_logic;
SIGNAL \ctrl_mmap_en~regout\ : std_logic;
SIGNAL \Selector94~3_combout\ : std_logic;
SIGNAL \Selector94~4_combout\ : std_logic;
SIGNAL \Selector94~5_combout\ : std_logic;
SIGNAL \Selector94~2_combout\ : std_logic;
SIGNAL \Selector94~6_combout\ : std_logic;
SIGNAL \Selector96~3_combout\ : std_logic;
SIGNAL \Selector96~6_combout\ : std_logic;
SIGNAL \Selector96~8_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[2][4]~76\ : std_logic;
SIGNAL \inst_FIFOs|contents[2][5]~78_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[2][5]~regout\ : std_logic;
SIGNAL \inst_FIFOs|LessThan2~0_combout\ : std_logic;
SIGNAL \inst_IntControl|pri~1_combout\ : std_logic;
SIGNAL \D[2]~17_combout\ : std_logic;
SIGNAL \D[2]~20_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector5~0_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector14~0_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector13~0_combout\ : std_logic;
SIGNAL \mmap_shadow~21_regout\ : std_logic;
SIGNAL \mmap_shadow~37feeder_combout\ : std_logic;
SIGNAL \mmap_shadow~37_regout\ : std_logic;
SIGNAL \mmap_shadow~60_combout\ : std_logic;
SIGNAL \Selector102~3_combout\ : std_logic;
SIGNAL \Selector102~4_combout\ : std_logic;
SIGNAL \D[2]~19_combout\ : std_logic;
SIGNAL \Selector102~5_combout\ : std_logic;
SIGNAL \inst_SPI_Master|Selector5~0_combout\ : std_logic;
SIGNAL \Selector102~6_combout\ : std_logic;
SIGNAL \Selector102~7_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[3][2]~regout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[1][2]~feeder_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[1][2]~regout\ : std_logic;
SIGNAL \Selector102~8_combout\ : std_logic;
SIGNAL \D[2]~21_combout\ : std_logic;
SIGNAL \Selector108~0_combout\ : std_logic;
SIGNAL \inst_Con_Rx|FrameErr~0_combout\ : std_logic;
SIGNAL \inst_Con_Rx|FrameErr~regout\ : std_logic;
SIGNAL \inst_Aux_Rx|FrameErr~0_combout\ : std_logic;
SIGNAL \inst_Aux_Rx|FrameErr~regout\ : std_logic;
SIGNAL \Selector108~1_combout\ : std_logic;
SIGNAL \Selector108~2_combout\ : std_logic;
SIGNAL \D[2]~18_combout\ : std_logic;
SIGNAL \mmap_shadow~38_regout\ : std_logic;
SIGNAL \mmap_shadow~14_regout\ : std_logic;
SIGNAL \mmap_shadow~30_regout\ : std_logic;
SIGNAL \mmap_shadow~61_combout\ : std_logic;
SIGNAL \mmap_shadow~62_combout\ : std_logic;
SIGNAL \Selector108~3_combout\ : std_logic;
SIGNAL \Selector108~4_combout\ : std_logic;
SIGNAL \Selector108~5_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector19~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector18~0_combout\ : std_logic;
SIGNAL \Selector108~6_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[3][3]~regout\ : std_logic;
SIGNAL \inst_IntControl|Int~0_combout\ : std_logic;
SIGNAL \Selector108~7_combout\ : std_logic;
SIGNAL \Selector108~8_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[3][4]~regout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[1][4]~regout\ : std_logic;
SIGNAL \Selector114~0_combout\ : std_logic;
SIGNAL \Selector112~4_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector17~0_combout\ : std_logic;
SIGNAL \Selector112~5_combout\ : std_logic;
SIGNAL \inst_NMI_Control|mmap_on_nmi~1_combout\ : std_logic;
SIGNAL \inst_NMI_Control|mmap_on_nmi~regout\ : std_logic;
SIGNAL \Selector112~7_combout\ : std_logic;
SIGNAL \Selector112~8_combout\ : std_logic;
SIGNAL \mmap_shadow~15_regout\ : std_logic;
SIGNAL \mmap_shadow~23_regout\ : std_logic;
SIGNAL \mmap_shadow~63_combout\ : std_logic;
SIGNAL \mmap_shadow~31_regout\ : std_logic;
SIGNAL \mmap_shadow~39_regout\ : std_logic;
SIGNAL \mmap_shadow~64_combout\ : std_logic;
SIGNAL \Selector112~0_combout\ : std_logic;
SIGNAL \inst_SPI_Master|Selector4~0_combout\ : std_logic;
SIGNAL \inst_SPI_Master|Selector3~0_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector12~0_combout\ : std_logic;
SIGNAL \inst_CRC16_XModem|Selector11~0_combout\ : std_logic;
SIGNAL \Selector112~1_combout\ : std_logic;
SIGNAL \Selector112~2_combout\ : std_logic;
SIGNAL \Selector112~3_combout\ : std_logic;
SIGNAL \Selector112~9_combout\ : std_logic;
SIGNAL \Selector114~1_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[3][5]~regout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[1][5]~regout\ : std_logic;
SIGNAL \D[5]~25_combout\ : std_logic;
SIGNAL \D[5]~26_combout\ : std_logic;
SIGNAL \D[5]~22_combout\ : std_logic;
SIGNAL \D[5]~24_combout\ : std_logic;
SIGNAL \mmap_shadow~24_regout\ : std_logic;
SIGNAL \mmap_shadow~32_regout\ : std_logic;
SIGNAL \mmap_shadow~16feeder_combout\ : std_logic;
SIGNAL \mmap_shadow~16_regout\ : std_logic;
SIGNAL \mmap_shadow~65_combout\ : std_logic;
SIGNAL \mmap_shadow~66_combout\ : std_logic;
SIGNAL \inst_SPI_Master|Selector2~0_combout\ : std_logic;
SIGNAL \Selector118~0_combout\ : std_logic;
SIGNAL \Selector118~1_combout\ : std_logic;
SIGNAL \Selector118~2_combout\ : std_logic;
SIGNAL \Selector118~3_combout\ : std_logic;
SIGNAL \Selector118~4_combout\ : std_logic;
SIGNAL \D[5]~reg0SLOAD_MUX_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[3][6]~regout\ : std_logic;
SIGNAL \mmap_shadow~41_regout\ : std_logic;
SIGNAL \mmap_shadow~33feeder_combout\ : std_logic;
SIGNAL \mmap_shadow~33_regout\ : std_logic;
SIGNAL \mmap_shadow~68_combout\ : std_logic;
SIGNAL \inst_SPI_Master|Selector1~0_combout\ : std_logic;
SIGNAL \Selector123~0_combout\ : std_logic;
SIGNAL \Selector123~1_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector16~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector15~0_combout\ : std_logic;
SIGNAL \Selector123~2_combout\ : std_logic;
SIGNAL \Selector123~3_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[1][6]~regout\ : std_logic;
SIGNAL \Selector123~4_combout\ : std_logic;
SIGNAL \D[6]~reg0SLOAD_MUX_combout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[1][7]~regout\ : std_logic;
SIGNAL \inst_FIFOs|DataOut[3][7]~regout\ : std_logic;
SIGNAL \Selector128~2_combout\ : std_logic;
SIGNAL \mmap_shadow~18_regout\ : std_logic;
SIGNAL \mmap_shadow~34_regout\ : std_logic;
SIGNAL \mmap_shadow~69_combout\ : std_logic;
SIGNAL \mmap_shadow~26_regout\ : std_logic;
SIGNAL \mmap_shadow~70_combout\ : std_logic;
SIGNAL \Equal9~1_combout\ : std_logic;
SIGNAL \inst_SPI_Master|Selector0~0_combout\ : std_logic;
SIGNAL \Selector126~0_combout\ : std_logic;
SIGNAL \Selector126~2_combout\ : std_logic;
SIGNAL \Selector126~4_combout\ : std_logic;
SIGNAL \Selector128~1_combout\ : std_logic;
SIGNAL \Selector128~3_combout\ : std_logic;
SIGNAL \inst_I2C_Master|I2C_SCL~1_combout\ : std_logic;
SIGNAL \inst_I2C_Master|I2C_SCL~2_combout\ : std_logic;
SIGNAL \inst_I2C_Master|I2C_SCL~4_combout\ : std_logic;
SIGNAL \inst_I2C_Master|I2C_SCL~en_regout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector5~0_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector5~1_combout\ : std_logic;
SIGNAL \inst_I2C_Master|state.ST_STOP~regout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector26~1_combout\ : std_logic;
SIGNAL \inst_I2C_Master|Selector14~0_combout\ : std_logic;
SIGNAL \i2c_tx_ackn~1_combout\ : std_logic;
SIGNAL \i2c_tx_ackn~regout\ : std_logic;
SIGNAL \inst_I2C_Master|I2C_SDA~1_combout\ : std_logic;
SIGNAL \inst_I2C_Master|I2C_SDA~3_combout\ : std_logic;
SIGNAL \inst_I2C_Master|I2C_SDA~en_regout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \inst_Timing|count_1ms~5_combout\ : std_logic;
SIGNAL \inst_Timing|Add1~3\ : std_logic;
SIGNAL \inst_Timing|Add1~5\ : std_logic;
SIGNAL \inst_Timing|Add1~7\ : std_logic;
SIGNAL \inst_Timing|Add1~8_combout\ : std_logic;
SIGNAL \inst_Timing|Add1~9\ : std_logic;
SIGNAL \inst_Timing|Add1~11\ : std_logic;
SIGNAL \inst_Timing|Add1~12_combout\ : std_logic;
SIGNAL \inst_Timing|count_1ms~3_combout\ : std_logic;
SIGNAL \inst_Timing|Add1~13\ : std_logic;
SIGNAL \inst_Timing|Add1~14_combout\ : std_logic;
SIGNAL \inst_Timing|count_1ms~2_combout\ : std_logic;
SIGNAL \inst_Timing|Add1~15\ : std_logic;
SIGNAL \inst_Timing|Add1~16_combout\ : std_logic;
SIGNAL \inst_Timing|count_1ms~1_combout\ : std_logic;
SIGNAL \inst_Timing|Add1~17\ : std_logic;
SIGNAL \inst_Timing|Add1~18_combout\ : std_logic;
SIGNAL \inst_Timing|count_1ms~0_combout\ : std_logic;
SIGNAL \inst_Timing|Equal1~0_combout\ : std_logic;
SIGNAL \inst_Timing|Equal1~1_combout\ : std_logic;
SIGNAL \inst_Timing|Equal1~2_combout\ : std_logic;
SIGNAL \inst_Timing|Strb_1ms~0_combout\ : std_logic;
SIGNAL \inst_Timing|Strb_1ms~regout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \count~5_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Equal21~1_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \count~2_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \count~1_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \count~0_combout\ : std_logic;
SIGNAL \Equal21~0_combout\ : std_logic;
SIGNAL \Equal21~3_combout\ : std_logic;
SIGNAL \Equal22~0_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \count~4_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \count~3_combout\ : std_logic;
SIGNAL \Equal22~1_combout\ : std_logic;
SIGNAL \LED_D2n~0_combout\ : std_logic;
SIGNAL \LED_D2n~reg0_regout\ : std_logic;
SIGNAL \LED_D4n~0_combout\ : std_logic;
SIGNAL \LED_D4n~reg0_regout\ : std_logic;
SIGNAL \Equal24~0_combout\ : std_logic;
SIGNAL \LED_D5n~0_combout\ : std_logic;
SIGNAL \LED_D5n~reg0_regout\ : std_logic;
SIGNAL \IOWAITn~reg0_Duplicate_1_regout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \Selector69~0_combout\ : std_logic;
SIGNAL \Selector69~1_combout\ : std_logic;
SIGNAL \nmi_mode_clr~regout\ : std_logic;
SIGNAL \inst_NMI_Control|svc_state~0_combout\ : std_logic;
SIGNAL \inst_NMI_Control|svc_state~regout\ : std_logic;
SIGNAL \MMAP_ENn~0_combout\ : std_logic;
SIGNAL \Selector71~2_combout\ : std_logic;
SIGNAL \MMAP_IO_SELn~reg0_regout\ : std_logic;
SIGNAL \inst_IntControl|cpu_clk_d~feeder_combout\ : std_logic;
SIGNAL \inst_IntControl|cpu_clk_d~regout\ : std_logic;
SIGNAL \inst_IntControl|Int~_Duplicate_1_regout\ : std_logic;
SIGNAL \WRn~combout\ : std_logic;
SIGNAL \inst_IntControl|Int~1_combout\ : std_logic;
SIGNAL \Selector72~0_combout\ : std_logic;
SIGNAL \Selector72~1_combout\ : std_logic;
SIGNAL \tick_int_sw_clr~regout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \tick_timer~2_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \tick_timer~1_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \tick_timer~0_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \tick_strb~0_combout\ : std_logic;
SIGNAL \tick_strb~regout\ : std_logic;
SIGNAL \tick_int_req~0_combout\ : std_logic;
SIGNAL \tick_int_req~regout\ : std_logic;
SIGNAL \inst_IntControl|Int~2_combout\ : std_logic;
SIGNAL \inst_IntControl|Int~3_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Selector38~1_combout\ : std_logic;
SIGNAL \PNL_DAT_RDn~reg0_regout\ : std_logic;
SIGNAL \inst_OutExpander|Selector9~1_combout\ : std_logic;
SIGNAL \inst_OutExpander|Equal0~0_combout\ : std_logic;
SIGNAL \inst_OutExpander|Selector10~0_combout\ : std_logic;
SIGNAL \inst_OutExpander|state~9_combout\ : std_logic;
SIGNAL \inst_OutExpander|state.ST_DONE~regout\ : std_logic;
SIGNAL \inst_OutExpander|state.ST_SETUP~0_combout\ : std_logic;
SIGNAL \inst_OutExpander|state.ST_SETUP~regout\ : std_logic;
SIGNAL \inst_OutExpander|Selector11~0_combout\ : std_logic;
SIGNAL \inst_OutExpander|state.ST_BIT~regout\ : std_logic;
SIGNAL \inst_OutExpander|state.ST_BIT1~regout\ : std_logic;
SIGNAL \inst_OutExpander|state~8_combout\ : std_logic;
SIGNAL \inst_OutExpander|Selector1~0_combout\ : std_logic;
SIGNAL \inst_OutExpander|OX_DATA~0_combout\ : std_logic;
SIGNAL \inst_OutExpander|OX_DATA~regout\ : std_logic;
SIGNAL \inst_OutExpander|Selector12~0_combout\ : std_logic;
SIGNAL \inst_OutExpander|OX_SRCLK~regout\ : std_logic;
SIGNAL \inst_OutExpander|Selector0~0_combout\ : std_logic;
SIGNAL \inst_OutExpander|OX_RCLK~regout\ : std_logic;
SIGNAL \inst_Con_Tx|Selector0~0_combout\ : std_logic;
SIGNAL \inst_Con_Tx|Selector0~1_combout\ : std_logic;
SIGNAL \inst_Con_Tx|TxD~regout\ : std_logic;
SIGNAL \inst_Aux_Tx|Selector0~1_combout\ : std_logic;
SIGNAL \inst_Aux_Tx|TxD~regout\ : std_logic;
SIGNAL \inst_FIFOs|contents[3][4]~49_combout\ : std_logic;
SIGNAL \inst_FIFOs|contents[3][4]~regout\ : std_logic;
SIGNAL \inst_FIFOs|LessThan3~0_combout\ : std_logic;
SIGNAL \inst_SPI_Master|SPI_SCLK~0_combout\ : std_logic;
SIGNAL \inst_SPI_Master|SPI_SCLK~regout\ : std_logic;
SIGNAL \inst_SPI_Master|SPI_MOSI~0_combout\ : std_logic;
SIGNAL \inst_SPI_Master|SPI_MOSI~regout\ : std_logic;
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_SPI_Master|count_spi\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst_CRC16_XModem|bit_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_CRC16_XModem|data_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_SPI_Master|reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_CRC16_XModem|crc_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst_SPI_Master|bit_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_Con_Rx|inst_Sync|Output\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_Con_Rx|inst_Sync|meta_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_Aux_Tx|bit_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_Aux_Tx|reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_Aux_Tx|br_div\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_Aux_Rx|Data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_Aux_Rx|reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_Aux_Rx|bit_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_Aux_Rx|bd_div\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_Aux_Rx|inst_Sync|Output\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_Aux_Rx|inst_Sync|meta_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_Aux_Rx|inst_DeNoise|avg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_I2C_Master|inst_Sync_scl|Output\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_I2C_Master|inst_Sync_scl|meta_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_SPI_Master|inst_Sync_sda|Output\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_SPI_Master|inst_Sync_sda|meta_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL tick_timer : std_logic_vector(6 DOWNTO 0);
SIGNAL prefix_count : std_logic_vector(1 DOWNTO 0);
SIGNAL nmi_reasons_clr : std_logic_vector(3 DOWNTO 0);
SIGNAL int_enables : std_logic_vector(4 DOWNTO 0);
SIGNAL fifos_wrreq : std_logic_vector(3 DOWNTO 0);
SIGNAL fifos_rdreq : std_logic_vector(3 DOWNTO 0);
SIGNAL d_s : std_logic_vector(7 DOWNTO 0);
SIGNAL count : std_logic_vector(10 DOWNTO 0);
SIGNAL a_s : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_Synch_Rst|meta_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_Synch_Rst|Output\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_Timing|count_con\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst_Timing|count_1us\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \inst_Timing|count_1ms\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst_OutExpander|reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_OutExpander|bit_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_Con_Tx|reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_Con_Tx|bit_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_Con_Rx|reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_Con_Rx|bit_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_Con_Rx|bd_div\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_Con_Rx|Data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_Con_Rx|inst_DeNoise|avg\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_FIFOs|op_fifo\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_FIFOs|WrAck\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_FIFOs|RdAck\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_IntControl|qual_req\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst_IntControl|do_int_num\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_IntControl|Vector\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_IntControl|Service\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst_NMI_Control|trace_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_NMI_Control|prefix_counter\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst_NMI_Control|nmi_reasons\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_NMI_Control|mmap_arm_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_NMI_Control|cyc_timer\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst_I2C_Master|reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst_I2C_Master|bit_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst_I2C_Master|inst_Sync_sda|meta_reg\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_I2C_Master|inst_Sync_sda|Output\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst_I2C_Master|ALT_INV_state.ST_IDLE~regout\ : std_logic;
SIGNAL \inst_I2C_Master|ALT_INV_state.ST_DATA3~regout\ : std_logic;
SIGNAL \inst_CRC16_XModem|ALT_INV_state.ST_DATA~regout\ : std_logic;
SIGNAL \inst_I2C_Master|ALT_INV_I2C_SDA~en_regout\ : std_logic;
SIGNAL \inst_I2C_Master|ALT_INV_I2C_SCL~en_regout\ : std_logic;
SIGNAL \inst_NMI_Control|ALT_INV_bus_state.BST_MEM2~regout\ : std_logic;
SIGNAL \inst_SPI_Master|ALT_INV_state.ST_DATA~regout\ : std_logic;
SIGNAL \inst_Timing|ALT_INV_strb_1us_int~regout\ : std_logic;
SIGNAL \ALT_INV_io_state.ST_IOWR~regout\ : std_logic;
SIGNAL \inst_Synch_Rst|ALT_INV_Output\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_spi_mc_ss~regout\ : std_logic;
SIGNAL \inst_Aux_Tx|ALT_INV_TxD~regout\ : std_logic;
SIGNAL \inst_Con_Tx|ALT_INV_TxD~regout\ : std_logic;
SIGNAL \ALT_INV_PNL_DAT_RDn~reg0_regout\ : std_logic;
SIGNAL \ALT_INV_MMAP_IO_SELn~reg0_regout\ : std_logic;
SIGNAL \inst_Timing|ALT_INV_Strb_1ms~regout\ : std_logic;

BEGIN

ww_RClk <= RClk;
LED_D2n <= ww_LED_D2n;
LED_D4n <= ww_LED_D4n;
LED_D5n <= ww_LED_D5n;
ww_CPU_CLK <= CPU_CLK;
ww_RESET <= RESET;
ww_A <= A;
ww_M1n <= M1n;
ww_IORQn <= IORQn;
ww_MREQn <= MREQn;
ww_WRn <= WRn;
ww_RDn <= RDn;
IOWAITn <= ww_IOWAITn;
ww_SUPER <= SUPER;
ww_PROT <= PROT;
MMAP_ENn <= ww_MMAP_ENn;
MMAP_IO_SELn <= ww_MMAP_IO_SELn;
ww_NMI_SWITCHn <= NMI_SWITCHn;
INT <= ww_INT;
NMI <= ww_NMI;
PNL_DAT_RDn <= ww_PNL_DAT_RDn;
OX_DATA <= ww_OX_DATA;
OX_SRCLK <= ww_OX_SRCLK;
OX_RCLK <= ww_OX_RCLK;
CTxDn <= ww_CTxDn;
ww_CRxDn <= CRxDn;
CRTSn <= ww_CRTSn;
ww_CCTSn <= CCTSn;
ATxDn <= ww_ATxDn;
ww_ARxDn <= ARxDn;
ARTSn <= ww_ARTSn;
ww_ACTSn <= ACTSn;
SPI_CSn <= ww_SPI_CSn;
SPI_SCLK <= ww_SPI_SCLK;
SPI_MOSI <= ww_SPI_MOSI;
ww_SPI_MISO <= SPI_MISO;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\inst_FIFOs|ram_wrdata~15_combout\ & \inst_FIFOs|ram_wrdata~13_combout\ & \inst_FIFOs|ram_wrdata~11_combout\ & \inst_FIFOs|ram_wrdata~9_combout\ & 
\inst_FIFOs|ram_wrdata~7_combout\ & \inst_FIFOs|ram_wrdata~5_combout\ & \inst_FIFOs|ram_wrdata~3_combout\ & \inst_FIFOs|ram_wrdata~1_combout\);

\inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst_FIFOs|op_fifo\(1) & \inst_FIFOs|op_fifo\(0) & \inst_FIFOs|Selector2~4_combout\ & \inst_FIFOs|Selector3~4_combout\ & \inst_FIFOs|Selector4~4_combout\ & 
\inst_FIFOs|Selector5~4_combout\ & \inst_FIFOs|Selector6~4_combout\);

\inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(0) <= \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(1) <= \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(2) <= \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(3) <= \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(4) <= \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(5) <= \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(6) <= \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(7) <= \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst_Synch_Rst|Output[0]~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst_Synch_Rst|Output\(0));

\RClk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \RClk~combout\);
\inst_I2C_Master|ALT_INV_state.ST_IDLE~regout\ <= NOT \inst_I2C_Master|state.ST_IDLE~regout\;
\inst_I2C_Master|ALT_INV_state.ST_DATA3~regout\ <= NOT \inst_I2C_Master|state.ST_DATA3~regout\;
\inst_CRC16_XModem|ALT_INV_state.ST_DATA~regout\ <= NOT \inst_CRC16_XModem|state.ST_DATA~regout\;
\inst_I2C_Master|ALT_INV_I2C_SDA~en_regout\ <= NOT \inst_I2C_Master|I2C_SDA~en_regout\;
\inst_I2C_Master|ALT_INV_I2C_SCL~en_regout\ <= NOT \inst_I2C_Master|I2C_SCL~en_regout\;
\inst_NMI_Control|ALT_INV_bus_state.BST_MEM2~regout\ <= NOT \inst_NMI_Control|bus_state.BST_MEM2~regout\;
\inst_SPI_Master|ALT_INV_state.ST_DATA~regout\ <= NOT \inst_SPI_Master|state.ST_DATA~regout\;
\inst_Timing|ALT_INV_strb_1us_int~regout\ <= NOT \inst_Timing|strb_1us_int~regout\;
\ALT_INV_io_state.ST_IOWR~regout\ <= NOT \io_state.ST_IOWR~regout\;
\inst_Synch_Rst|ALT_INV_Output\(0) <= NOT \inst_Synch_Rst|Output\(0);
\ALT_INV_spi_mc_ss~regout\ <= NOT \spi_mc_ss~regout\;
\inst_Aux_Tx|ALT_INV_TxD~regout\ <= NOT \inst_Aux_Tx|TxD~regout\;
\inst_Con_Tx|ALT_INV_TxD~regout\ <= NOT \inst_Con_Tx|TxD~regout\;
\ALT_INV_PNL_DAT_RDn~reg0_regout\ <= NOT \PNL_DAT_RDn~reg0_regout\;
\ALT_INV_MMAP_IO_SELn~reg0_regout\ <= NOT \MMAP_IO_SELn~reg0_regout\;
\inst_Timing|ALT_INV_Strb_1ms~regout\ <= NOT \inst_Timing|Strb_1ms~regout\;

-- Location: LCFF_X8_Y6_N13
\inst_FIFOs|contents[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|contents[2][1]~69_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[2][5]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|contents[2][1]~regout\);

-- Location: LCCOMB_X8_Y6_N12
\inst_FIFOs|contents[2][1]~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[2][1]~69_combout\ = (\inst_FIFOs|contents[2][1]~regout\ & ((\inst_FIFOs|state.ST_RD_DONE~regout\ & (\inst_FIFOs|contents[2][0]~68\ & VCC)) # (!\inst_FIFOs|state.ST_RD_DONE~regout\ & (!\inst_FIFOs|contents[2][0]~68\)))) # 
-- (!\inst_FIFOs|contents[2][1]~regout\ & ((\inst_FIFOs|state.ST_RD_DONE~regout\ & (!\inst_FIFOs|contents[2][0]~68\)) # (!\inst_FIFOs|state.ST_RD_DONE~regout\ & ((\inst_FIFOs|contents[2][0]~68\) # (GND)))))
-- \inst_FIFOs|contents[2][1]~70\ = CARRY((\inst_FIFOs|contents[2][1]~regout\ & (!\inst_FIFOs|state.ST_RD_DONE~regout\ & !\inst_FIFOs|contents[2][0]~68\)) # (!\inst_FIFOs|contents[2][1]~regout\ & ((!\inst_FIFOs|contents[2][0]~68\) # 
-- (!\inst_FIFOs|state.ST_RD_DONE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[2][1]~regout\,
	datab => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datad => VCC,
	cin => \inst_FIFOs|contents[2][0]~68\,
	combout => \inst_FIFOs|contents[2][1]~69_combout\,
	cout => \inst_FIFOs|contents[2][1]~70\);

-- Location: LCFF_X14_Y9_N7
\inst_SPI_Master|bit_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|bit_count[0]~4_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sclr => \inst_SPI_Master|ALT_INV_state.ST_DATA~regout\,
	ena => \inst_SPI_Master|bit_count[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|bit_count\(0));

-- Location: LCFF_X13_Y9_N1
\inst_SPI_Master|count_spi[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|count_spi[0]~6_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sclr => \inst_SPI_Master|sspi~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|count_spi\(0));

-- Location: LCCOMB_X20_Y8_N6
\inst_Timing|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add1~0_combout\ = \inst_Timing|count_1ms\(0) $ (VCC)
-- \inst_Timing|Add1~1\ = CARRY(\inst_Timing|count_1ms\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Timing|count_1ms\(0),
	datad => VCC,
	combout => \inst_Timing|Add1~0_combout\,
	cout => \inst_Timing|Add1~1\);

-- Location: LCCOMB_X20_Y8_N10
\inst_Timing|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add1~4_combout\ = (\inst_Timing|count_1ms\(2) & (\inst_Timing|Add1~3\ $ (GND))) # (!\inst_Timing|count_1ms\(2) & (!\inst_Timing|Add1~3\ & VCC))
-- \inst_Timing|Add1~5\ = CARRY((\inst_Timing|count_1ms\(2) & !\inst_Timing|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Timing|count_1ms\(2),
	datad => VCC,
	cin => \inst_Timing|Add1~3\,
	combout => \inst_Timing|Add1~4_combout\,
	cout => \inst_Timing|Add1~5\);

-- Location: LCCOMB_X20_Y8_N12
\inst_Timing|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add1~6_combout\ = (\inst_Timing|count_1ms\(3) & (!\inst_Timing|Add1~5\)) # (!\inst_Timing|count_1ms\(3) & ((\inst_Timing|Add1~5\) # (GND)))
-- \inst_Timing|Add1~7\ = CARRY((!\inst_Timing|Add1~5\) # (!\inst_Timing|count_1ms\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_Timing|count_1ms\(3),
	datad => VCC,
	cin => \inst_Timing|Add1~5\,
	combout => \inst_Timing|Add1~6_combout\,
	cout => \inst_Timing|Add1~7\);

-- Location: LCCOMB_X20_Y8_N16
\inst_Timing|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add1~10_combout\ = (\inst_Timing|count_1ms\(5) & (!\inst_Timing|Add1~9\)) # (!\inst_Timing|count_1ms\(5) & ((\inst_Timing|Add1~9\) # (GND)))
-- \inst_Timing|Add1~11\ = CARRY((!\inst_Timing|Add1~9\) # (!\inst_Timing|count_1ms\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Timing|count_1ms\(5),
	datad => VCC,
	cin => \inst_Timing|Add1~9\,
	combout => \inst_Timing|Add1~10_combout\,
	cout => \inst_Timing|Add1~11\);

-- Location: LCFF_X9_Y5_N9
trace_arm : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \trace_arm~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sclr => \ALT_INV_io_state.ST_IOWR~regout\,
	ena => \Selector91~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \trace_arm~regout\);

-- Location: LCCOMB_X19_Y8_N8
\inst_Timing|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add0~8_combout\ = (\inst_Timing|count_1us\(4) & (\inst_Timing|Add0~7\ $ (GND))) # (!\inst_Timing|count_1us\(4) & (!\inst_Timing|Add0~7\ & VCC))
-- \inst_Timing|Add0~9\ = CARRY((\inst_Timing|count_1us\(4) & !\inst_Timing|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_Timing|count_1us\(4),
	datad => VCC,
	cin => \inst_Timing|Add0~7\,
	combout => \inst_Timing|Add0~8_combout\,
	cout => \inst_Timing|Add0~9\);

-- Location: LCCOMB_X19_Y8_N10
\inst_Timing|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add0~10_combout\ = \inst_Timing|count_1us\(5) $ (\inst_Timing|Add0~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Timing|count_1us\(5),
	cin => \inst_Timing|Add0~9\,
	combout => \inst_Timing|Add0~10_combout\);

-- Location: LCCOMB_X14_Y9_N6
\inst_SPI_Master|bit_count[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|bit_count[0]~4_combout\ = (\inst_SPI_Master|bit_count\(0) & (\inst_SPI_Master|tstrb~regout\ $ (VCC))) # (!\inst_SPI_Master|bit_count\(0) & (\inst_SPI_Master|tstrb~regout\ & VCC))
-- \inst_SPI_Master|bit_count[0]~5\ = CARRY((\inst_SPI_Master|bit_count\(0) & \inst_SPI_Master|tstrb~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SPI_Master|bit_count\(0),
	datab => \inst_SPI_Master|tstrb~regout\,
	datad => VCC,
	combout => \inst_SPI_Master|bit_count[0]~4_combout\,
	cout => \inst_SPI_Master|bit_count[0]~5\);

-- Location: LCCOMB_X13_Y9_N0
\inst_SPI_Master|count_spi[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|count_spi[0]~6_combout\ = \inst_SPI_Master|count_spi\(0) $ (VCC)
-- \inst_SPI_Master|count_spi[0]~7\ = CARRY(\inst_SPI_Master|count_spi\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SPI_Master|count_spi\(0),
	datad => VCC,
	combout => \inst_SPI_Master|count_spi[0]~6_combout\,
	cout => \inst_SPI_Master|count_spi[0]~7\);

-- Location: LCFF_X13_Y10_N17
\inst_I2C_Master|Busy\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|Busy~0_combout\,
	sdata => VCC,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => \i2c_start_strb~regout\,
	ena => \inst_I2C_Master|ALT_INV_state.ST_IDLE~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|Busy~regout\);

-- Location: LCCOMB_X15_Y8_N6
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (tick_timer(1) & (!\Add0~1\)) # (!tick_timer(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!tick_timer(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_timer(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X15_Y8_N10
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (tick_timer(3) & (!\Add0~5\)) # (!tick_timer(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!tick_timer(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_timer(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X7_Y6_N12
\inst_FIFOs|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Add2~0_combout\ = (\inst_FIFOs|contents[2][0]~regout\ & (\inst_FIFOs|rd_ptr[2][0]~regout\ $ (VCC))) # (!\inst_FIFOs|contents[2][0]~regout\ & (\inst_FIFOs|rd_ptr[2][0]~regout\ & VCC))
-- \inst_FIFOs|Add2~1\ = CARRY((\inst_FIFOs|contents[2][0]~regout\ & \inst_FIFOs|rd_ptr[2][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[2][0]~regout\,
	datab => \inst_FIFOs|rd_ptr[2][0]~regout\,
	datad => VCC,
	combout => \inst_FIFOs|Add2~0_combout\,
	cout => \inst_FIFOs|Add2~1\);

-- Location: LCFF_X7_Y8_N21
\inst_FIFOs|rd_ptr[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|rd_ptr[0][1]~26_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|rd_ptr[0][0]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|rd_ptr[0][1]~regout\);

-- Location: LCCOMB_X7_Y5_N2
\inst_FIFOs|Add3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Add3~2_combout\ = (\inst_FIFOs|rd_ptr[3][1]~regout\ & ((\inst_FIFOs|contents[3][1]~regout\ & (\inst_FIFOs|Add3~1\ & VCC)) # (!\inst_FIFOs|contents[3][1]~regout\ & (!\inst_FIFOs|Add3~1\)))) # (!\inst_FIFOs|rd_ptr[3][1]~regout\ & 
-- ((\inst_FIFOs|contents[3][1]~regout\ & (!\inst_FIFOs|Add3~1\)) # (!\inst_FIFOs|contents[3][1]~regout\ & ((\inst_FIFOs|Add3~1\) # (GND)))))
-- \inst_FIFOs|Add3~3\ = CARRY((\inst_FIFOs|rd_ptr[3][1]~regout\ & (!\inst_FIFOs|contents[3][1]~regout\ & !\inst_FIFOs|Add3~1\)) # (!\inst_FIFOs|rd_ptr[3][1]~regout\ & ((!\inst_FIFOs|Add3~1\) # (!\inst_FIFOs|contents[3][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|rd_ptr[3][1]~regout\,
	datab => \inst_FIFOs|contents[3][1]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|Add3~1\,
	combout => \inst_FIFOs|Add3~2_combout\,
	cout => \inst_FIFOs|Add3~3\);

-- Location: LCCOMB_X7_Y6_N16
\inst_FIFOs|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Add2~4_combout\ = ((\inst_FIFOs|rd_ptr[2][2]~regout\ $ (\inst_FIFOs|contents[2][2]~regout\ $ (!\inst_FIFOs|Add2~3\)))) # (GND)
-- \inst_FIFOs|Add2~5\ = CARRY((\inst_FIFOs|rd_ptr[2][2]~regout\ & ((\inst_FIFOs|contents[2][2]~regout\) # (!\inst_FIFOs|Add2~3\))) # (!\inst_FIFOs|rd_ptr[2][2]~regout\ & (\inst_FIFOs|contents[2][2]~regout\ & !\inst_FIFOs|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|rd_ptr[2][2]~regout\,
	datab => \inst_FIFOs|contents[2][2]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|Add2~3\,
	combout => \inst_FIFOs|Add2~4_combout\,
	cout => \inst_FIFOs|Add2~5\);

-- Location: LCCOMB_X7_Y5_N4
\inst_FIFOs|Add3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Add3~4_combout\ = ((\inst_FIFOs|contents[3][2]~regout\ $ (\inst_FIFOs|rd_ptr[3][2]~regout\ $ (!\inst_FIFOs|Add3~3\)))) # (GND)
-- \inst_FIFOs|Add3~5\ = CARRY((\inst_FIFOs|contents[3][2]~regout\ & ((\inst_FIFOs|rd_ptr[3][2]~regout\) # (!\inst_FIFOs|Add3~3\))) # (!\inst_FIFOs|contents[3][2]~regout\ & (\inst_FIFOs|rd_ptr[3][2]~regout\ & !\inst_FIFOs|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[3][2]~regout\,
	datab => \inst_FIFOs|rd_ptr[3][2]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|Add3~3\,
	combout => \inst_FIFOs|Add3~4_combout\,
	cout => \inst_FIFOs|Add3~5\);

-- Location: LCFF_X6_Y6_N13
\inst_FIFOs|rd_ptr[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|rd_ptr[1][3]~38_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[1][4]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|rd_ptr[1][3]~regout\);

-- Location: LCCOMB_X7_Y8_N16
\inst_FIFOs|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Add0~6_combout\ = (\inst_FIFOs|rd_ptr[0][3]~regout\ & ((\inst_FIFOs|contents[0][3]~regout\ & (\inst_FIFOs|Add0~5\ & VCC)) # (!\inst_FIFOs|contents[0][3]~regout\ & (!\inst_FIFOs|Add0~5\)))) # (!\inst_FIFOs|rd_ptr[0][3]~regout\ & 
-- ((\inst_FIFOs|contents[0][3]~regout\ & (!\inst_FIFOs|Add0~5\)) # (!\inst_FIFOs|contents[0][3]~regout\ & ((\inst_FIFOs|Add0~5\) # (GND)))))
-- \inst_FIFOs|Add0~7\ = CARRY((\inst_FIFOs|rd_ptr[0][3]~regout\ & (!\inst_FIFOs|contents[0][3]~regout\ & !\inst_FIFOs|Add0~5\)) # (!\inst_FIFOs|rd_ptr[0][3]~regout\ & ((!\inst_FIFOs|Add0~5\) # (!\inst_FIFOs|contents[0][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|rd_ptr[0][3]~regout\,
	datab => \inst_FIFOs|contents[0][3]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|Add0~5\,
	combout => \inst_FIFOs|Add0~6_combout\,
	cout => \inst_FIFOs|Add0~7\);

-- Location: LCCOMB_X7_Y5_N6
\inst_FIFOs|Add3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Add3~6_combout\ = (\inst_FIFOs|rd_ptr[3][3]~regout\ & ((\inst_FIFOs|contents[3][3]~regout\ & (\inst_FIFOs|Add3~5\ & VCC)) # (!\inst_FIFOs|contents[3][3]~regout\ & (!\inst_FIFOs|Add3~5\)))) # (!\inst_FIFOs|rd_ptr[3][3]~regout\ & 
-- ((\inst_FIFOs|contents[3][3]~regout\ & (!\inst_FIFOs|Add3~5\)) # (!\inst_FIFOs|contents[3][3]~regout\ & ((\inst_FIFOs|Add3~5\) # (GND)))))
-- \inst_FIFOs|Add3~7\ = CARRY((\inst_FIFOs|rd_ptr[3][3]~regout\ & (!\inst_FIFOs|contents[3][3]~regout\ & !\inst_FIFOs|Add3~5\)) # (!\inst_FIFOs|rd_ptr[3][3]~regout\ & ((!\inst_FIFOs|Add3~5\) # (!\inst_FIFOs|contents[3][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|rd_ptr[3][3]~regout\,
	datab => \inst_FIFOs|contents[3][3]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|Add3~5\,
	combout => \inst_FIFOs|Add3~6_combout\,
	cout => \inst_FIFOs|Add3~7\);

-- Location: LCFF_X7_Y6_N11
\inst_FIFOs|rd_ptr[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|rd_ptr[2][4]~48_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[2][5]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|rd_ptr[2][4]~regout\);

-- Location: LCCOMB_X7_Y8_N18
\inst_FIFOs|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Add0~8_combout\ = \inst_FIFOs|contents[0][4]~regout\ $ (\inst_FIFOs|rd_ptr[0][4]~regout\ $ (!\inst_FIFOs|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[0][4]~regout\,
	datab => \inst_FIFOs|rd_ptr[0][4]~regout\,
	cin => \inst_FIFOs|Add0~7\,
	combout => \inst_FIFOs|Add0~8_combout\);

-- Location: LCCOMB_X7_Y5_N8
\inst_FIFOs|Add3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Add3~8_combout\ = \inst_FIFOs|contents[3][4]~regout\ $ (\inst_FIFOs|Add3~7\ $ (!\inst_FIFOs|rd_ptr[3][4]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|contents[3][4]~regout\,
	datad => \inst_FIFOs|rd_ptr[3][4]~regout\,
	cin => \inst_FIFOs|Add3~7\,
	combout => \inst_FIFOs|Add3~8_combout\);

-- Location: LCCOMB_X7_Y8_N20
\inst_FIFOs|rd_ptr[0][1]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|rd_ptr[0][1]~26_combout\ = (\inst_FIFOs|rd_ptr[0][1]~regout\ & (\inst_FIFOs|rd_ptr[0][0]~regout\ $ (VCC))) # (!\inst_FIFOs|rd_ptr[0][1]~regout\ & (\inst_FIFOs|rd_ptr[0][0]~regout\ & VCC))
-- \inst_FIFOs|rd_ptr[0][1]~27\ = CARRY((\inst_FIFOs|rd_ptr[0][1]~regout\ & \inst_FIFOs|rd_ptr[0][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|rd_ptr[0][1]~regout\,
	datab => \inst_FIFOs|rd_ptr[0][0]~regout\,
	datad => VCC,
	combout => \inst_FIFOs|rd_ptr[0][1]~26_combout\,
	cout => \inst_FIFOs|rd_ptr[0][1]~27\);

-- Location: LCCOMB_X6_Y6_N12
\inst_FIFOs|rd_ptr[1][3]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|rd_ptr[1][3]~38_combout\ = (\inst_FIFOs|rd_ptr[1][3]~regout\ & (\inst_FIFOs|rd_ptr[1][2]~31\ $ (GND))) # (!\inst_FIFOs|rd_ptr[1][3]~regout\ & (!\inst_FIFOs|rd_ptr[1][2]~31\ & VCC))
-- \inst_FIFOs|rd_ptr[1][3]~39\ = CARRY((\inst_FIFOs|rd_ptr[1][3]~regout\ & !\inst_FIFOs|rd_ptr[1][2]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|rd_ptr[1][3]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|rd_ptr[1][2]~31\,
	combout => \inst_FIFOs|rd_ptr[1][3]~38_combout\,
	cout => \inst_FIFOs|rd_ptr[1][3]~39\);

-- Location: LCCOMB_X7_Y6_N8
\inst_FIFOs|rd_ptr[2][3]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|rd_ptr[2][3]~40_combout\ = (\inst_FIFOs|rd_ptr[2][3]~regout\ & (\inst_FIFOs|rd_ptr[2][2]~33\ $ (GND))) # (!\inst_FIFOs|rd_ptr[2][3]~regout\ & (!\inst_FIFOs|rd_ptr[2][2]~33\ & VCC))
-- \inst_FIFOs|rd_ptr[2][3]~41\ = CARRY((\inst_FIFOs|rd_ptr[2][3]~regout\ & !\inst_FIFOs|rd_ptr[2][2]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|rd_ptr[2][3]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|rd_ptr[2][2]~33\,
	combout => \inst_FIFOs|rd_ptr[2][3]~40_combout\,
	cout => \inst_FIFOs|rd_ptr[2][3]~41\);

-- Location: LCCOMB_X7_Y6_N10
\inst_FIFOs|rd_ptr[2][4]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|rd_ptr[2][4]~48_combout\ = \inst_FIFOs|rd_ptr[2][3]~41\ $ (\inst_FIFOs|rd_ptr[2][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst_FIFOs|rd_ptr[2][4]~regout\,
	cin => \inst_FIFOs|rd_ptr[2][3]~41\,
	combout => \inst_FIFOs|rd_ptr[2][4]~48_combout\);

-- Location: LCCOMB_X8_Y10_N10
\inst_Timing|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add2~0_combout\ = \inst_Timing|count_con\(0) $ (VCC)
-- \inst_Timing|Add2~1\ = CARRY(\inst_Timing|count_con\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Timing|count_con\(0),
	datad => VCC,
	combout => \inst_Timing|Add2~0_combout\,
	cout => \inst_Timing|Add2~1\);

-- Location: LCCOMB_X8_Y10_N12
\inst_Timing|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add2~2_combout\ = (\inst_Timing|count_con\(1) & (!\inst_Timing|Add2~1\)) # (!\inst_Timing|count_con\(1) & ((\inst_Timing|Add2~1\) # (GND)))
-- \inst_Timing|Add2~3\ = CARRY((!\inst_Timing|Add2~1\) # (!\inst_Timing|count_con\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_Timing|count_con\(1),
	datad => VCC,
	cin => \inst_Timing|Add2~1\,
	combout => \inst_Timing|Add2~2_combout\,
	cout => \inst_Timing|Add2~3\);

-- Location: LCCOMB_X8_Y10_N20
\inst_Timing|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add2~10_combout\ = (\inst_Timing|count_con\(5) & (!\inst_Timing|Add2~9\)) # (!\inst_Timing|count_con\(5) & ((\inst_Timing|Add2~9\) # (GND)))
-- \inst_Timing|Add2~11\ = CARRY((!\inst_Timing|Add2~9\) # (!\inst_Timing|count_con\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Timing|count_con\(5),
	datad => VCC,
	cin => \inst_Timing|Add2~9\,
	combout => \inst_Timing|Add2~10_combout\,
	cout => \inst_Timing|Add2~11\);

-- Location: LCCOMB_X1_Y6_N12
\Equal21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal21~2_combout\ = (count(9) & (!count(4) & count(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datab => count(4),
	datac => count(0),
	combout => \Equal21~2_combout\);

-- Location: LCCOMB_X1_Y6_N20
\Equal22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal22~2_combout\ = (count(9) & (count(3) & (!count(2) & !count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datab => count(3),
	datac => count(2),
	datad => count(4),
	combout => \Equal22~2_combout\);

-- Location: LCCOMB_X1_Y6_N22
\Equal23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal23~0_combout\ = (!count(9) & (!count(3) & (count(2) & count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datab => count(3),
	datac => count(2),
	datad => count(4),
	combout => \Equal23~0_combout\);

-- Location: LCFF_X12_Y4_N17
\int_enables[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(4),
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \int_enables[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => int_enables(4));

-- Location: LCFF_X12_Y4_N25
\int_enables[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(2),
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \int_enables[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => int_enables(2));

-- Location: LCCOMB_X9_Y4_N8
\Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (\Equal9~0_combout\ & (!a_s(4) & (a_s(3) & \Selector96~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => a_s(4),
	datac => a_s(3),
	datad => \Selector96~2_combout\,
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X21_Y6_N20
\inst_NMI_Control|Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector17~1_combout\ = (\inst_NMI_Control|bus_state.BST_MWR~regout\ & (!\inst_NMI_Control|cyc_timer\(1) & (\inst_NMI_Control|cyc_timer\(0) & \inst_NMI_Control|cyc_timer\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|bus_state.BST_MWR~regout\,
	datab => \inst_NMI_Control|cyc_timer\(1),
	datac => \inst_NMI_Control|cyc_timer\(0),
	datad => \inst_NMI_Control|cyc_timer\(2),
	combout => \inst_NMI_Control|Selector17~1_combout\);

-- Location: LCFF_X25_Y6_N3
\inst_NMI_Control|bus_state.BST_MRD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Selector25~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|bus_state.BST_MRD~regout\);

-- Location: LCCOMB_X21_Y6_N24
\inst_NMI_Control|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Equal2~0_combout\ = (\inst_NMI_Control|cyc_timer\(1) & \inst_NMI_Control|cyc_timer\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_NMI_Control|cyc_timer\(1),
	datad => \inst_NMI_Control|cyc_timer\(2),
	combout => \inst_NMI_Control|Equal2~0_combout\);

-- Location: LCCOMB_X21_Y6_N10
\inst_NMI_Control|Selector16~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector16~4_combout\ = (\inst_NMI_Control|nmi_out~_Duplicate_1_regout\) # ((\inst_NMI_Control|Equal2~0_combout\ & (\inst_NMI_Control|nmi_req~regout\ & !\inst_NMI_Control|cyc_timer\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Equal2~0_combout\,
	datab => \inst_NMI_Control|nmi_req~regout\,
	datac => \inst_NMI_Control|cyc_timer\(0),
	datad => \inst_NMI_Control|nmi_out~_Duplicate_1_regout\,
	combout => \inst_NMI_Control|Selector16~4_combout\);

-- Location: LCFF_X9_Y10_N27
\inst_Con_Tx|reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Tx|Selector7~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Con_Tx|reg[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Tx|reg\(0));

-- Location: LCFF_X14_Y6_N9
\inst_Aux_Tx|reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Tx|Selector7~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Aux_Tx|reg[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Tx|reg\(0));

-- Location: LCFF_X17_Y6_N13
\inst_Aux_Tx|state.ST_TRIGD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Tx|Selector9~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Tx|state.ST_TRIGD~regout\);

-- Location: LCCOMB_X17_Y6_N6
\inst_Aux_Tx|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|Selector0~0_combout\ = (\inst_Aux_Tx|state.ST_TRIGD~regout\ & (((\inst_Aux_Tx|reg\(0) & \inst_Aux_Tx|state.ST_DATA~regout\)) # (!\inst_Aux_Tx|TxD~regout\))) # (!\inst_Aux_Tx|state.ST_TRIGD~regout\ & (((\inst_Aux_Tx|reg\(0) & 
-- \inst_Aux_Tx|state.ST_DATA~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Tx|state.ST_TRIGD~regout\,
	datab => \inst_Aux_Tx|TxD~regout\,
	datac => \inst_Aux_Tx|reg\(0),
	datad => \inst_Aux_Tx|state.ST_DATA~regout\,
	combout => \inst_Aux_Tx|Selector0~0_combout\);

-- Location: LCFF_X20_Y8_N7
\inst_Timing|count_1ms[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|Add1~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|strb_1us_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_1ms\(0));

-- Location: LCFF_X19_Y8_N15
\inst_Timing|count_1ms[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|count_1ms~4_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|strb_1us_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_1ms\(5));

-- Location: LCFF_X20_Y8_N11
\inst_Timing|count_1ms[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|Add1~4_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|strb_1us_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_1ms\(2));

-- Location: LCCOMB_X10_Y4_N4
\WideNor0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~4_combout\ = (a_s(4) & ((a_s(1)))) # (!a_s(4) & (a_s(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => a_s(4),
	datac => a_s(0),
	datad => a_s(1),
	combout => \WideNor0~4_combout\);

-- Location: LCCOMB_X10_Y7_N24
\Equal9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal9~2_combout\ = (a_s(3) & (\Equal3~7_combout\ & (\Equal9~0_combout\ & \Equal9~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(3),
	datab => \Equal3~7_combout\,
	datac => \Equal9~0_combout\,
	datad => \Equal9~1_combout\,
	combout => \Equal9~2_combout\);

-- Location: LCCOMB_X10_Y6_N8
\Selector52~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~5_combout\ = (!\io_state.ST_IORD_CON~regout\ & ((\io_state.ST_IORD_AUX~regout\ & ((\inst_FIFOs|RdAck\(3)))) # (!\io_state.ST_IORD_AUX~regout\ & (\Selector41~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~11_combout\,
	datab => \io_state.ST_IORD_CON~regout\,
	datac => \inst_FIFOs|RdAck\(3),
	datad => \io_state.ST_IORD_AUX~regout\,
	combout => \Selector52~5_combout\);

-- Location: LCCOMB_X9_Y8_N0
\Selector52~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~6_combout\ = (\io_state.ST_INTACK~regout\ & (((\inst_IntControl|VecValid~regout\)))) # (!\io_state.ST_INTACK~regout\ & ((\Selector41~9_combout\) # ((\Selector52~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~9_combout\,
	datab => \io_state.ST_INTACK~regout\,
	datac => \inst_IntControl|VecValid~regout\,
	datad => \Selector52~5_combout\,
	combout => \Selector52~6_combout\);

-- Location: LCCOMB_X10_Y8_N24
\Selector52~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~8_combout\ = (\io_state.ST_IOWR_AUX~regout\) # ((\io_state.ST_INTACK~regout\) # ((\io_state.ST_IOWR_CON~regout\) # (!\Selector46~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IOWR_AUX~regout\,
	datab => \io_state.ST_INTACK~regout\,
	datac => \Selector46~0_combout\,
	datad => \io_state.ST_IOWR_CON~regout\,
	combout => \Selector52~8_combout\);

-- Location: LCCOMB_X10_Y5_N2
\Selector52~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~9_combout\ = (\Selector52~8_combout\) # ((!\Selector41~33_combout\ & ((\io_state.ST_IOWR~regout\) # (\io_state.ST_IORD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~33_combout\,
	datab => \Selector52~8_combout\,
	datac => \io_state.ST_IOWR~regout\,
	datad => \io_state.ST_IORD~regout\,
	combout => \Selector52~9_combout\);

-- Location: LCCOMB_X9_Y9_N22
\Selector52~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~10_combout\ = (\Selector52~6_combout\ & ((\Selector52~9_combout\) # (\Selector52~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector52~9_combout\,
	datac => \Selector52~7_combout\,
	datad => \Selector52~6_combout\,
	combout => \Selector52~10_combout\);

-- Location: LCCOMB_X9_Y9_N24
\Selector53~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector53~0_combout\ = (\Selector52~11_combout\ & (((!\iosm~0_combout\)))) # (!\Selector52~11_combout\ & ((\Selector52~10_combout\) # ((\Selector52~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector52~10_combout\,
	datab => \Selector52~11_combout\,
	datac => \iosm~0_combout\,
	datad => \Selector52~4_combout\,
	combout => \Selector53~0_combout\);

-- Location: LCCOMB_X9_Y9_N30
\Selector52~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~15_combout\ = (\io_state.ST_IDLE~regout\ & (((!\Equal11~0_combout\ & !\WideNor0~combout\)) # (!\io_state.ST_IORD~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datab => \io_state.ST_IDLE~regout\,
	datac => \io_state.ST_IORD~regout\,
	datad => \WideNor0~combout\,
	combout => \Selector52~15_combout\);

-- Location: LCCOMB_X10_Y7_N12
\Selector52~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~16_combout\ = (!\io_state.ST_IOWR~regout\ & (!\iorq_s~regout\ & ((\io_state.ST_DONE~regout\) # (\io_state.ST_IORD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_DONE~regout\,
	datab => \io_state.ST_IOWR~regout\,
	datac => \io_state.ST_IORD~regout\,
	datad => \iorq_s~regout\,
	combout => \Selector52~16_combout\);

-- Location: LCCOMB_X8_Y8_N6
\Selector41~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~15_combout\ = (\Equal11~0_combout\ & ((\inst_FIFOs|contents[0][3]~regout\) # ((!\inst_FIFOs|Equal0~0_combout\) # (!\inst_FIFOs|contents[0][5]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[0][3]~regout\,
	datab => \inst_FIFOs|contents[0][5]~regout\,
	datac => \inst_FIFOs|Equal0~0_combout\,
	datad => \Equal11~0_combout\,
	combout => \Selector41~15_combout\);

-- Location: LCCOMB_X9_Y9_N10
\Selector52~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~17_combout\ = (\Selector52~16_combout\) # ((\Selector46~4_combout\) # ((\io_state.ST_IOWR~regout\ & \Selector41~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector52~16_combout\,
	datab => \io_state.ST_IOWR~regout\,
	datac => \Selector46~4_combout\,
	datad => \Selector41~15_combout\,
	combout => \Selector52~17_combout\);

-- Location: LCCOMB_X9_Y9_N28
\Selector52~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~18_combout\ = (\WideNor1~combout\ & ((\inst_FIFOs|Equal5~0_combout\))) # (!\WideNor1~combout\ & (!\iorq_s~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iorq_s~regout\,
	datac => \inst_FIFOs|Equal5~0_combout\,
	datad => \WideNor1~combout\,
	combout => \Selector52~18_combout\);

-- Location: LCCOMB_X9_Y9_N14
\Selector52~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~19_combout\ = (\Selector52~17_combout\) # ((\Selector52~18_combout\ & (!\Equal11~0_combout\ & \io_state.ST_IOWR~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector52~17_combout\,
	datab => \Selector52~18_combout\,
	datac => \Equal11~0_combout\,
	datad => \io_state.ST_IOWR~regout\,
	combout => \Selector52~19_combout\);

-- Location: LCCOMB_X8_Y9_N20
\Selector52~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~20_combout\ = (\Equal11~0_combout\ & (((\inst_FIFOs|Equal2~0_combout\)))) # (!\Equal11~0_combout\ & (\WideNor0~combout\ & (\inst_FIFOs|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datab => \WideNor0~combout\,
	datac => \inst_FIFOs|Equal6~0_combout\,
	datad => \inst_FIFOs|Equal2~0_combout\,
	combout => \Selector52~20_combout\);

-- Location: LCCOMB_X10_Y9_N24
\Selector41~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~28_combout\ = (\WideNor0~combout\ & (\Selector41~8_combout\ & ((\Selector41~27_combout\) # (!\WideNor0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~combout\,
	datab => \Selector41~27_combout\,
	datac => \WideNor0~9_combout\,
	datad => \Selector41~8_combout\,
	combout => \Selector41~28_combout\);

-- Location: LCFF_X18_Y9_N11
\inst_NMI_Control|bus_state.BST_RFSH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Selector24~9_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|bus_state.BST_RFSH~regout\);

-- Location: LCCOMB_X18_Y9_N12
\inst_NMI_Control|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector24~0_combout\ = (!\inst_NMI_Control|bus_state.BST_RFSH~regout\ & (!\inst_NMI_Control|bus_state.BST_MRD~regout\ & !\inst_NMI_Control|bus_state.BST_MWR~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|bus_state.BST_RFSH~regout\,
	datac => \inst_NMI_Control|bus_state.BST_MRD~regout\,
	datad => \inst_NMI_Control|bus_state.BST_MWR~regout\,
	combout => \inst_NMI_Control|Selector24~0_combout\);

-- Location: LCFF_X18_Y9_N31
\inst_NMI_Control|bus_state.BST_IACK\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Selector29~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|bus_state.BST_IACK~regout\);

-- Location: LCCOMB_X18_Y9_N24
\inst_NMI_Control|Selector24~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector24~2_combout\ = (!\iorq_s~regout\ & ((\inst_NMI_Control|bus_state.BST_IN~regout\) # ((\inst_NMI_Control|bus_state.BST_IACK~regout\) # (\inst_NMI_Control|bus_state.BST_OUT~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|bus_state.BST_IN~regout\,
	datab => \inst_NMI_Control|bus_state.BST_IACK~regout\,
	datac => \iorq_s~regout\,
	datad => \inst_NMI_Control|bus_state.BST_OUT~regout\,
	combout => \inst_NMI_Control|Selector24~2_combout\);

-- Location: LCCOMB_X25_Y6_N16
\inst_NMI_Control|Selector30~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector30~0_combout\ = (!\inst_NMI_Control|bus_state.BST_MEM2~regout\ & \inst_NMI_Control|bus_state.BST_NACK~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_NMI_Control|bus_state.BST_MEM2~regout\,
	datad => \inst_NMI_Control|bus_state.BST_NACK~regout\,
	combout => \inst_NMI_Control|Selector30~0_combout\);

-- Location: LCFF_X18_Y7_N27
\inst_NMI_Control|mapa_state.MST_ARM\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Selector5~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|mapa_state.MST_ARM~regout\);

-- Location: LCFF_X18_Y7_N17
\inst_NMI_Control|mmap_arm_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|mmap_arm_counter[3]~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|mmap_arm_counter\(3));

-- Location: LCFF_X18_Y7_N19
\inst_NMI_Control|mmap_arm_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|mmap_arm_counter[2]~3_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|mmap_arm_counter\(2));

-- Location: LCFF_X18_Y7_N21
\inst_NMI_Control|mmap_arm_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|mmap_arm_counter[1]~4_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|mmap_arm_counter\(1));

-- Location: LCFF_X18_Y7_N31
\inst_NMI_Control|mmap_arm_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|mmap_arm_counter[0]~5_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|mmap_arm_counter\(0));

-- Location: LCCOMB_X18_Y7_N24
\inst_NMI_Control|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector4~0_combout\ = (!\inst_NMI_Control|mmap_arm_counter\(3) & (!\inst_NMI_Control|mmap_arm_counter\(0) & (!\inst_NMI_Control|mmap_arm_counter\(1) & !\inst_NMI_Control|mmap_arm_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|mmap_arm_counter\(3),
	datab => \inst_NMI_Control|mmap_arm_counter\(0),
	datac => \inst_NMI_Control|mmap_arm_counter\(1),
	datad => \inst_NMI_Control|mmap_arm_counter\(2),
	combout => \inst_NMI_Control|Selector4~0_combout\);

-- Location: LCCOMB_X18_Y7_N10
\inst_NMI_Control|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector4~1_combout\ = (\inst_NMI_Control|Selector4~0_combout\ & (\inst_NMI_Control|mapa_state.MST_ARM~regout\ & \inst_NMI_Control|bus_state.BST_MEM2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Selector4~0_combout\,
	datab => \inst_NMI_Control|mapa_state.MST_ARM~regout\,
	datac => \inst_NMI_Control|bus_state.BST_MEM2~regout\,
	combout => \inst_NMI_Control|Selector4~1_combout\);

-- Location: LCCOMB_X9_Y9_N20
\Selector46~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~5_combout\ = (!\io_state.ST_WAIT~regout\ & !\cpu_clk_s~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_WAIT~regout\,
	datad => \cpu_clk_s~regout\,
	combout => \Selector46~5_combout\);

-- Location: LCCOMB_X9_Y6_N28
\Selector46~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~8_combout\ = (\io_state.ST_IORD_CON~regout\ & (\inst_FIFOs|RdAck\(1))) # (!\io_state.ST_IORD_CON~regout\ & (((\inst_FIFOs|RdAck\(3) & \io_state.ST_IORD_AUX~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IORD_CON~regout\,
	datab => \inst_FIFOs|RdAck\(1),
	datac => \inst_FIFOs|RdAck\(3),
	datad => \io_state.ST_IORD_AUX~regout\,
	combout => \Selector46~8_combout\);

-- Location: LCCOMB_X10_Y8_N2
\Selector46~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~9_combout\ = (\Selector46~8_combout\) # ((\io_state.ST_IOWW1~regout\ & (\Selector46~0_combout\ & \cpu_clk_s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IOWW1~regout\,
	datab => \Selector46~0_combout\,
	datac => \Selector46~8_combout\,
	datad => \cpu_clk_s~regout\,
	combout => \Selector46~9_combout\);

-- Location: LCCOMB_X10_Y8_N28
\Selector46~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~10_combout\ = (\io_state.ST_IOWR~regout\ & (!\io_state.ST_IORD_CON~regout\ & (!\io_state.ST_IOWW1~regout\ & !\io_state.ST_IORD_AUX~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IOWR~regout\,
	datab => \io_state.ST_IORD_CON~regout\,
	datac => \io_state.ST_IOWW1~regout\,
	datad => \io_state.ST_IORD_AUX~regout\,
	combout => \Selector46~10_combout\);

-- Location: LCCOMB_X10_Y8_N6
\Selector46~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~11_combout\ = (\Equal10~0_combout\ & (\inst_FIFOs|Equal5~0_combout\ & (a_s(1) & a_s(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datab => \inst_FIFOs|Equal5~0_combout\,
	datac => a_s(1),
	datad => a_s(0),
	combout => \Selector46~11_combout\);

-- Location: LCCOMB_X10_Y8_N16
\Selector46~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~12_combout\ = (\Selector46~9_combout\) # ((\Selector46~10_combout\ & ((\Selector46~11_combout\) # (\Selector41~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector46~11_combout\,
	datab => \Selector46~10_combout\,
	datac => \Selector41~15_combout\,
	datad => \Selector46~9_combout\,
	combout => \Selector46~12_combout\);

-- Location: LCCOMB_X9_Y7_N12
\Selector46~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~18_combout\ = (\io_state.ST_IOWR_CON~regout\ & (\inst_FIFOs|WrAck\(0))) # (!\io_state.ST_IOWR_CON~regout\ & (((\io_state.ST_IOWR_AUX~regout\ & \inst_FIFOs|WrAck\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|WrAck\(0),
	datab => \io_state.ST_IOWR_AUX~regout\,
	datac => \inst_FIFOs|WrAck\(2),
	datad => \io_state.ST_IOWR_CON~regout\,
	combout => \Selector46~18_combout\);

-- Location: LCCOMB_X9_Y8_N10
\Selector46~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~22_combout\ = (\io_state.ST_IDLE~regout\ & (!\io_state.ST_INTACK~regout\ & ((\Selector46~2_combout\) # (!\io_state.ST_IORD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IORD~regout\,
	datab => \io_state.ST_IDLE~regout\,
	datac => \io_state.ST_INTACK~regout\,
	datad => \Selector46~2_combout\,
	combout => \Selector46~22_combout\);

-- Location: LCFF_X12_Y8_N25
\inst_IntControl|Service[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_IntControl|Service~1_combout\,
	ena => \inst_Synch_Rst|ALT_INV_Output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_IntControl|Service\(4));

-- Location: LCFF_X17_Y7_N21
\inst_NMI_Control|trace_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|trace_counter[1]~4_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|trace_counter\(1));

-- Location: LCFF_X17_Y7_N5
\inst_NMI_Control|tra_state.TST_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Selector12~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|tra_state.TST_IDLE~regout\);

-- Location: LCFF_X13_Y5_N11
\inst_NMI_Control|nmi_reasons[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|nmi_reasons~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|nmi_reasons\(1));

-- Location: LCCOMB_X19_Y9_N20
\inst_NMI_Control|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector19~0_combout\ = (!\inst_NMI_Control|Selector24~0_combout\ & ((!\mreq_s~regout\) # (!\inst_NMI_Control|bus_state.BST_IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Selector24~0_combout\,
	datab => \inst_NMI_Control|bus_state.BST_IDLE~regout\,
	datad => \mreq_s~regout\,
	combout => \inst_NMI_Control|Selector19~0_combout\);

-- Location: LCCOMB_X18_Y9_N28
\inst_NMI_Control|Selector19~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector19~1_combout\ = (\inst_NMI_Control|bus_state.BST_IACK~regout\) # ((\inst_NMI_Control|bus_state.BST_IN~regout\) # (\inst_NMI_Control|bus_state.BST_OUT~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_NMI_Control|bus_state.BST_IACK~regout\,
	datac => \inst_NMI_Control|bus_state.BST_IN~regout\,
	datad => \inst_NMI_Control|bus_state.BST_OUT~regout\,
	combout => \inst_NMI_Control|Selector19~1_combout\);

-- Location: LCCOMB_X19_Y9_N6
\inst_NMI_Control|Selector19~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector19~2_combout\ = (\inst_NMI_Control|Selector19~0_combout\) # ((\inst_NMI_Control|Selector19~1_combout\ & ((!\inst_NMI_Control|bus_state.BST_IDLE~regout\) # (!\iorq_s~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Selector19~0_combout\,
	datab => \inst_NMI_Control|Selector19~1_combout\,
	datac => \iorq_s~regout\,
	datad => \inst_NMI_Control|bus_state.BST_IDLE~regout\,
	combout => \inst_NMI_Control|Selector19~2_combout\);

-- Location: LCCOMB_X25_Y6_N2
\inst_NMI_Control|Selector25~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector25~1_combout\ = (!\inst_NMI_Control|Selector25~0_combout\ & ((\inst_NMI_Control|bus_state.BST_MEM2~regout\ & (\rd_s~regout\)) # (!\inst_NMI_Control|bus_state.BST_MEM2~regout\ & ((\inst_NMI_Control|bus_state.BST_MRD~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_s~regout\,
	datab => \inst_NMI_Control|bus_state.BST_MEM2~regout\,
	datac => \inst_NMI_Control|bus_state.BST_MRD~regout\,
	datad => \inst_NMI_Control|Selector25~0_combout\,
	combout => \inst_NMI_Control|Selector25~1_combout\);

-- Location: LCCOMB_X19_Y9_N10
\inst_NMI_Control|Selector24~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector24~3_combout\ = (\inst_NMI_Control|bus_state.BST_IDLE~regout\ & (\inst_NMI_Control|bus_state.BST_M1WE~regout\ & ((\mreq_s~regout\)))) # (!\inst_NMI_Control|bus_state.BST_IDLE~regout\ & (((\iorq_s~regout\) # (\mreq_s~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|bus_state.BST_M1WE~regout\,
	datab => \inst_NMI_Control|bus_state.BST_IDLE~regout\,
	datac => \iorq_s~regout\,
	datad => \mreq_s~regout\,
	combout => \inst_NMI_Control|Selector24~3_combout\);

-- Location: LCFF_X19_Y7_N17
\inst_OutExpander|reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_OutExpander|Selector2~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|strb_1us_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_OutExpander|reg\(6));

-- Location: LCFF_X19_Y8_N25
\inst_Timing|count_1us[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|count_1us~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_1us\(5));

-- Location: LCFF_X19_Y7_N9
\inst_OutExpander|bit_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_OutExpander|Selector8~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|strb_1us_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_OutExpander|bit_count\(2));

-- Location: LCFF_X9_Y10_N31
\inst_Con_Tx|reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Tx|Selector6~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Con_Tx|reg[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Tx|reg\(1));

-- Location: LCFF_X12_Y6_N9
\inst_FIFOs|DataOut[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|DataOut[0][0]~feeder_combout\,
	ena => \inst_FIFOs|DataOut[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[0][0]~regout\);

-- Location: LCCOMB_X9_Y10_N26
\inst_Con_Tx|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Tx|Selector7~0_combout\ = (\inst_Con_Tx|state.ST_DATA~regout\ & (\inst_Con_Tx|reg\(1))) # (!\inst_Con_Tx|state.ST_DATA~regout\ & ((\inst_FIFOs|DataOut[0][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Con_Tx|reg\(1),
	datac => \inst_Con_Tx|state.ST_DATA~regout\,
	datad => \inst_FIFOs|DataOut[0][0]~regout\,
	combout => \inst_Con_Tx|Selector7~0_combout\);

-- Location: LCCOMB_X9_Y11_N8
\inst_Con_Tx|reg[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Tx|reg[2]~0_combout\ = (\inst_Aux_Tx|br_strb~regout\ & ((\inst_Con_Tx|state.ST_DATA~regout\) # ((\inst_FIFOs|RdAck\(0) & !\inst_Con_Tx|state.ST_IDLE~regout\)))) # (!\inst_Aux_Tx|br_strb~regout\ & (((\inst_FIFOs|RdAck\(0) & 
-- !\inst_Con_Tx|state.ST_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Tx|br_strb~regout\,
	datab => \inst_Con_Tx|state.ST_DATA~regout\,
	datac => \inst_FIFOs|RdAck\(0),
	datad => \inst_Con_Tx|state.ST_IDLE~regout\,
	combout => \inst_Con_Tx|reg[2]~0_combout\);

-- Location: LCFF_X9_Y11_N7
\inst_Con_Tx|bit_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Tx|bit_count[1]~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Tx|bit_count\(1));

-- Location: LCCOMB_X9_Y11_N12
\inst_Con_Tx|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Tx|Selector9~0_combout\ = (\inst_Aux_Tx|br_strb~regout\ & (!\inst_Con_Tx|state.ST_IDLE~regout\ & (\inst_FIFOs|RdAck\(0)))) # (!\inst_Aux_Tx|br_strb~regout\ & ((\inst_Con_Tx|state.ST_TRIGD~regout\) # ((!\inst_Con_Tx|state.ST_IDLE~regout\ & 
-- \inst_FIFOs|RdAck\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Tx|br_strb~regout\,
	datab => \inst_Con_Tx|state.ST_IDLE~regout\,
	datac => \inst_FIFOs|RdAck\(0),
	datad => \inst_Con_Tx|state.ST_TRIGD~regout\,
	combout => \inst_Con_Tx|Selector9~0_combout\);

-- Location: LCCOMB_X8_Y9_N14
\inst_FIFOs|op_fifo~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|op_fifo~0_combout\ = (!\inst_FIFOs|fsm~0_combout\ & ((\inst_FIFOs|fsm~2_combout\) # (!\inst_FIFOs|fsm~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|fsm~3_combout\,
	datac => \inst_FIFOs|fsm~2_combout\,
	datad => \inst_FIFOs|fsm~0_combout\,
	combout => \inst_FIFOs|op_fifo~0_combout\);

-- Location: LCFF_X14_Y6_N27
\inst_Aux_Tx|reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Tx|Selector6~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Aux_Tx|reg[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Tx|reg\(1));

-- Location: LCFF_X14_Y6_N13
\inst_FIFOs|DataOut[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|DataOut[2][0]~feeder_combout\,
	ena => \inst_FIFOs|DataOut[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[2][0]~regout\);

-- Location: LCCOMB_X14_Y6_N8
\inst_Aux_Tx|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|Selector7~0_combout\ = (\inst_Aux_Tx|state.ST_DATA~regout\ & ((\inst_Aux_Tx|reg\(1)))) # (!\inst_Aux_Tx|state.ST_DATA~regout\ & (\inst_FIFOs|DataOut[2][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|DataOut[2][0]~regout\,
	datab => \inst_Aux_Tx|reg\(1),
	datad => \inst_Aux_Tx|state.ST_DATA~regout\,
	combout => \inst_Aux_Tx|Selector7~0_combout\);

-- Location: LCCOMB_X17_Y6_N2
\inst_Aux_Tx|reg[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|reg[2]~0_combout\ = (\inst_Aux_Tx|state.ST_DATA~regout\ & ((\inst_Aux_Tx|br_strb~regout\) # ((!\inst_Aux_Tx|state.ST_IDLE~regout\ & \inst_FIFOs|RdAck\(2))))) # (!\inst_Aux_Tx|state.ST_DATA~regout\ & (!\inst_Aux_Tx|state.ST_IDLE~regout\ & 
-- ((\inst_FIFOs|RdAck\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Tx|state.ST_DATA~regout\,
	datab => \inst_Aux_Tx|state.ST_IDLE~regout\,
	datac => \inst_Aux_Tx|br_strb~regout\,
	datad => \inst_FIFOs|RdAck\(2),
	combout => \inst_Aux_Tx|reg[2]~0_combout\);

-- Location: LCCOMB_X17_Y6_N14
\inst_Aux_Tx|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|Selector9~0_combout\ = (\inst_Aux_Tx|state.ST_TRIGD~regout\ & (((!\inst_Aux_Tx|state.ST_IDLE~regout\ & \inst_FIFOs|RdAck\(2))) # (!\inst_Aux_Tx|br_strb~regout\))) # (!\inst_Aux_Tx|state.ST_TRIGD~regout\ & (!\inst_Aux_Tx|state.ST_IDLE~regout\ 
-- & ((\inst_FIFOs|RdAck\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Tx|state.ST_TRIGD~regout\,
	datab => \inst_Aux_Tx|state.ST_IDLE~regout\,
	datac => \inst_Aux_Tx|br_strb~regout\,
	datad => \inst_FIFOs|RdAck\(2),
	combout => \inst_Aux_Tx|Selector9~0_combout\);

-- Location: LCCOMB_X17_Y6_N12
\inst_Aux_Tx|Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|Selector9~1_combout\ = (\inst_Aux_Tx|Selector9~0_combout\ & (((!\inst_Aux_Tx|state.ST_DATA~regout\) # (!\inst_Aux_Tx|br_strb~regout\)) # (!\inst_Aux_Tx|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Tx|Equal1~0_combout\,
	datab => \inst_Aux_Tx|Selector9~0_combout\,
	datac => \inst_Aux_Tx|br_strb~regout\,
	datad => \inst_Aux_Tx|state.ST_DATA~regout\,
	combout => \inst_Aux_Tx|Selector9~1_combout\);

-- Location: LCFF_X13_Y9_N31
\inst_SPI_Master|state.ST_TXDN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|Selector15~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_SPI_Master|Selector14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|state.ST_TXDN~regout\);

-- Location: LCCOMB_X14_Y9_N20
\inst_SPI_Master|Selector14~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|Selector14~1_combout\ = (\inst_SPI_Master|state.ST_TX~regout\ & ((!\inst_SPI_Master|state.ST_IDLE~regout\))) # (!\inst_SPI_Master|state.ST_TX~regout\ & (\inst_SPI_Master|state.ST_TXDN~regout\ & \inst_SPI_Master|state.ST_IDLE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_SPI_Master|state.ST_TX~regout\,
	datac => \inst_SPI_Master|state.ST_TXDN~regout\,
	datad => \inst_SPI_Master|state.ST_IDLE~regout\,
	combout => \inst_SPI_Master|Selector14~1_combout\);

-- Location: LCCOMB_X13_Y7_N6
\inst_SPI_Master|sspi~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|sspi~1_combout\ = (\inst_SPI_Master|count_spi\(3) & (\inst_SPI_Master|count_spi\(5) & ((\inst_SPI_Master|count_spi\(2))))) # (!\inst_SPI_Master|count_spi\(3) & (!\inst_SPI_Master|count_spi\(5) & (\spi_fast_mode~regout\ & 
-- !\inst_SPI_Master|count_spi\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SPI_Master|count_spi\(3),
	datab => \inst_SPI_Master|count_spi\(5),
	datac => \spi_fast_mode~regout\,
	datad => \inst_SPI_Master|count_spi\(2),
	combout => \inst_SPI_Master|sspi~1_combout\);

-- Location: LCCOMB_X19_Y8_N14
\inst_Timing|count_1ms~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|count_1ms~4_combout\ = (\inst_Timing|Add1~10_combout\ & !\inst_Timing|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_Timing|Add1~10_combout\,
	datad => \inst_Timing|Equal1~2_combout\,
	combout => \inst_Timing|count_1ms~4_combout\);

-- Location: LCCOMB_X10_Y9_N2
\Selector44~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\Selector41~28_combout\ & (!\Selector41~14_combout\ & (!\io_state.ST_WAIT~regout\ & !\Selector41~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~28_combout\,
	datab => \Selector41~14_combout\,
	datac => \io_state.ST_WAIT~regout\,
	datad => \Selector41~17_combout\,
	combout => \Selector44~0_combout\);

-- Location: LCCOMB_X8_Y5_N0
\inst_FIFOs|WrAck[0]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|WrAck[0]~4_combout\ = (\inst_FIFOs|state.ST_WRITE~regout\ & !\inst_FIFOs|state.ST_WR_DONE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|state.ST_WRITE~regout\,
	datac => \inst_FIFOs|state.ST_WR_DONE~regout\,
	combout => \inst_FIFOs|WrAck[0]~4_combout\);

-- Location: LCCOMB_X10_Y10_N6
\Selector51~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector51~0_combout\ = (!\io_state.ST_WAIT~regout\ & ((\io_state.ST_IOWR_AUX~regout\) # (\Selector41~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_WAIT~regout\,
	datab => \io_state.ST_IOWR_AUX~regout\,
	datad => \Selector41~31_combout\,
	combout => \Selector51~0_combout\);

-- Location: LCCOMB_X10_Y10_N10
\Selector42~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~3_combout\ = (!\io_state.ST_WAIT~regout\ & (\m1_s~regout\ & \Selector42~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_WAIT~regout\,
	datac => \m1_s~regout\,
	datad => \Selector42~1_combout\,
	combout => \Selector42~3_combout\);

-- Location: LCCOMB_X18_Y9_N2
\inst_NMI_Control|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector20~0_combout\ = (\inst_NMI_Control|Selector24~6_combout\ & (((!\wr_s~regout\ & \Selector46~3_combout\)) # (!\inst_NMI_Control|bus_state.BST_IO2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_s~regout\,
	datab => \Selector46~3_combout\,
	datac => \inst_NMI_Control|Selector24~6_combout\,
	datad => \inst_NMI_Control|bus_state.BST_IO2~regout\,
	combout => \inst_NMI_Control|Selector20~0_combout\);

-- Location: LCCOMB_X18_Y9_N6
\inst_NMI_Control|Selector24~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector24~8_combout\ = (\inst_NMI_Control|bus_state.BST_RFSH~regout\ & !\inst_NMI_Control|Selector24~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|bus_state.BST_RFSH~regout\,
	datac => \inst_NMI_Control|Selector24~7_combout\,
	combout => \inst_NMI_Control|Selector24~8_combout\);

-- Location: LCCOMB_X18_Y9_N10
\inst_NMI_Control|Selector24~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector24~9_combout\ = (\inst_NMI_Control|Selector24~8_combout\) # ((\inst_NMI_Control|Selector20~0_combout\ & (\inst_NMI_Control|bus_state.BST_M1WE~regout\ & \mreq_s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Selector24~8_combout\,
	datab => \inst_NMI_Control|Selector20~0_combout\,
	datac => \inst_NMI_Control|bus_state.BST_M1WE~regout\,
	datad => \mreq_s~regout\,
	combout => \inst_NMI_Control|Selector24~9_combout\);

-- Location: LCCOMB_X18_Y9_N30
\inst_NMI_Control|Selector29~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector29~0_combout\ = (\m1_s~regout\ & ((\inst_NMI_Control|bus_state.BST_IO2~regout\) # ((!\inst_NMI_Control|Selector24~7_combout\ & \inst_NMI_Control|bus_state.BST_IACK~regout\)))) # (!\m1_s~regout\ & 
-- (!\inst_NMI_Control|Selector24~7_combout\ & (\inst_NMI_Control|bus_state.BST_IACK~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \m1_s~regout\,
	datab => \inst_NMI_Control|Selector24~7_combout\,
	datac => \inst_NMI_Control|bus_state.BST_IACK~regout\,
	datad => \inst_NMI_Control|bus_state.BST_IO2~regout\,
	combout => \inst_NMI_Control|Selector29~0_combout\);

-- Location: LCCOMB_X21_Y6_N8
\inst_NMI_Control|Selector35~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector35~0_combout\ = (\inst_NMI_Control|Selector17~1_combout\ & (!\inst_NMI_Control|nmi_out~_Duplicate_1_regout\ & ((\inst_NMI_Control|nmi_req~regout\) # (\prot_s~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Selector17~1_combout\,
	datab => \inst_NMI_Control|nmi_req~regout\,
	datac => \prot_s~regout\,
	datad => \inst_NMI_Control|nmi_out~_Duplicate_1_regout\,
	combout => \inst_NMI_Control|Selector35~0_combout\);

-- Location: LCCOMB_X25_Y6_N26
\inst_NMI_Control|Selector35~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector35~1_combout\ = (\inst_NMI_Control|bus_state.BST_M1~regout\) # ((\mreq_s~regout\) # ((\inst_NMI_Control|bus_state.BST_MWR~regout\) # (!\inst_NMI_Control|bus_state.BST_NACK~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|bus_state.BST_M1~regout\,
	datab => \mreq_s~regout\,
	datac => \inst_NMI_Control|bus_state.BST_MWR~regout\,
	datad => \inst_NMI_Control|bus_state.BST_NACK~regout\,
	combout => \inst_NMI_Control|Selector35~1_combout\);

-- Location: LCCOMB_X21_Y6_N18
\inst_NMI_Control|Selector35~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector35~2_combout\ = (\inst_NMI_Control|Selector35~0_combout\) # ((\inst_NMI_Control|Selector16~0_combout\) # ((\inst_NMI_Control|nmi_trigd~regout\ & \inst_NMI_Control|Selector35~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|nmi_trigd~regout\,
	datab => \inst_NMI_Control|Selector35~0_combout\,
	datac => \inst_NMI_Control|Selector16~0_combout\,
	datad => \inst_NMI_Control|Selector35~1_combout\,
	combout => \inst_NMI_Control|Selector35~2_combout\);

-- Location: LCCOMB_X18_Y7_N12
\inst_NMI_Control|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector4~2_combout\ = (\mmap_arm~regout\ & !\inst_NMI_Control|mapa_state.MST_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \mmap_arm~regout\,
	datad => \inst_NMI_Control|mapa_state.MST_IDLE~regout\,
	combout => \inst_NMI_Control|Selector4~2_combout\);

-- Location: LCFF_X18_Y7_N15
\inst_NMI_Control|mapa_state.MST_END\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Selector6~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|mapa_state.MST_END~regout\);

-- Location: LCCOMB_X18_Y7_N8
\inst_NMI_Control|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector4~3_combout\ = (\inst_NMI_Control|mapa_state.MST_END~regout\ & !\inst_NMI_Control|bus_state.BST_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_NMI_Control|mapa_state.MST_END~regout\,
	datad => \inst_NMI_Control|bus_state.BST_IDLE~regout\,
	combout => \inst_NMI_Control|Selector4~3_combout\);

-- Location: LCCOMB_X18_Y7_N26
\inst_NMI_Control|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector5~0_combout\ = (!\inst_NMI_Control|Selector4~1_combout\ & (!\inst_NMI_Control|Selector4~3_combout\ & ((\inst_NMI_Control|mapa_state.MST_ARM~regout\) # (\inst_NMI_Control|Selector4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Selector4~1_combout\,
	datab => \inst_NMI_Control|Selector4~3_combout\,
	datac => \inst_NMI_Control|mapa_state.MST_ARM~regout\,
	datad => \inst_NMI_Control|Selector4~2_combout\,
	combout => \inst_NMI_Control|Selector5~0_combout\);

-- Location: LCCOMB_X18_Y7_N2
\inst_NMI_Control|mmap_arm_counter[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|mmap_arm_counter[3]~0_combout\ = (!\inst_NMI_Control|Selector4~2_combout\ & ((\inst_NMI_Control|Selector4~0_combout\) # ((!\inst_NMI_Control|bus_state.BST_MEM2~regout\) # (!\inst_NMI_Control|mapa_state.MST_ARM~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Selector4~0_combout\,
	datab => \inst_NMI_Control|mapa_state.MST_ARM~regout\,
	datac => \inst_NMI_Control|bus_state.BST_MEM2~regout\,
	datad => \inst_NMI_Control|Selector4~2_combout\,
	combout => \inst_NMI_Control|mmap_arm_counter[3]~0_combout\);

-- Location: LCCOMB_X18_Y7_N4
\inst_NMI_Control|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Add0~0_combout\ = \inst_NMI_Control|mmap_arm_counter\(3) $ (((\inst_NMI_Control|mmap_arm_counter\(0)) # ((\inst_NMI_Control|mmap_arm_counter\(1)) # (\inst_NMI_Control|mmap_arm_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|mmap_arm_counter\(3),
	datab => \inst_NMI_Control|mmap_arm_counter\(0),
	datac => \inst_NMI_Control|mmap_arm_counter\(1),
	datad => \inst_NMI_Control|mmap_arm_counter\(2),
	combout => \inst_NMI_Control|Add0~0_combout\);

-- Location: LCCOMB_X18_Y7_N16
\inst_NMI_Control|mmap_arm_counter[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|mmap_arm_counter[3]~1_combout\ = (\inst_NMI_Control|mmap_arm_counter[3]~0_combout\ & (((\inst_NMI_Control|mmap_arm_counter\(3))))) # (!\inst_NMI_Control|mmap_arm_counter[3]~0_combout\ & (((!\inst_NMI_Control|mapa_state.MST_ARM~regout\)) 
-- # (!\inst_NMI_Control|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Add0~0_combout\,
	datab => \inst_NMI_Control|mapa_state.MST_ARM~regout\,
	datac => \inst_NMI_Control|mmap_arm_counter\(3),
	datad => \inst_NMI_Control|mmap_arm_counter[3]~0_combout\,
	combout => \inst_NMI_Control|mmap_arm_counter[3]~1_combout\);

-- Location: LCCOMB_X18_Y7_N22
\inst_NMI_Control|mmap_arm_counter[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|mmap_arm_counter[2]~2_combout\ = (\inst_NMI_Control|mmap_arm_counter\(2) $ (((!\inst_NMI_Control|mmap_arm_counter\(0) & !\inst_NMI_Control|mmap_arm_counter\(1))))) # (!\inst_NMI_Control|mapa_state.MST_ARM~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|mapa_state.MST_ARM~regout\,
	datab => \inst_NMI_Control|mmap_arm_counter\(0),
	datac => \inst_NMI_Control|mmap_arm_counter\(1),
	datad => \inst_NMI_Control|mmap_arm_counter\(2),
	combout => \inst_NMI_Control|mmap_arm_counter[2]~2_combout\);

-- Location: LCCOMB_X18_Y7_N18
\inst_NMI_Control|mmap_arm_counter[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|mmap_arm_counter[2]~3_combout\ = (\inst_NMI_Control|mmap_arm_counter[3]~0_combout\ & ((\inst_NMI_Control|mmap_arm_counter\(2)))) # (!\inst_NMI_Control|mmap_arm_counter[3]~0_combout\ & (\inst_NMI_Control|mmap_arm_counter[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_NMI_Control|mmap_arm_counter[2]~2_combout\,
	datac => \inst_NMI_Control|mmap_arm_counter\(2),
	datad => \inst_NMI_Control|mmap_arm_counter[3]~0_combout\,
	combout => \inst_NMI_Control|mmap_arm_counter[2]~3_combout\);

-- Location: LCCOMB_X18_Y7_N20
\inst_NMI_Control|mmap_arm_counter[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|mmap_arm_counter[1]~4_combout\ = (\inst_NMI_Control|mmap_arm_counter[3]~0_combout\ & (((\inst_NMI_Control|mmap_arm_counter\(1))))) # (!\inst_NMI_Control|mmap_arm_counter[3]~0_combout\ & ((\inst_NMI_Control|mmap_arm_counter\(0) $ 
-- (!\inst_NMI_Control|mmap_arm_counter\(1))) # (!\inst_NMI_Control|mapa_state.MST_ARM~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|mapa_state.MST_ARM~regout\,
	datab => \inst_NMI_Control|mmap_arm_counter\(0),
	datac => \inst_NMI_Control|mmap_arm_counter\(1),
	datad => \inst_NMI_Control|mmap_arm_counter[3]~0_combout\,
	combout => \inst_NMI_Control|mmap_arm_counter[1]~4_combout\);

-- Location: LCCOMB_X18_Y7_N30
\inst_NMI_Control|mmap_arm_counter[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|mmap_arm_counter[0]~5_combout\ = (\inst_NMI_Control|mmap_arm_counter\(0) & ((\inst_NMI_Control|mmap_arm_counter[3]~0_combout\))) # (!\inst_NMI_Control|mmap_arm_counter\(0) & (\inst_NMI_Control|mapa_state.MST_ARM~regout\ & 
-- !\inst_NMI_Control|mmap_arm_counter[3]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_NMI_Control|mapa_state.MST_ARM~regout\,
	datac => \inst_NMI_Control|mmap_arm_counter\(0),
	datad => \inst_NMI_Control|mmap_arm_counter[3]~0_combout\,
	combout => \inst_NMI_Control|mmap_arm_counter[0]~5_combout\);

-- Location: LCFF_X15_Y8_N11
\tick_timer[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Add0~6_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|Strb_1ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tick_timer(3));

-- Location: LCFF_X15_Y8_N7
\tick_timer[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Add0~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|Strb_1ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tick_timer(1));

-- Location: LCCOMB_X12_Y8_N30
\inst_IntControl|Service~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_IntControl|Service~0_combout\ = (!\inst_IntControl|do_int_num\(1) & (!\inst_IntControl|do_int_num\(0) & (!\int_ack~regout\ & \inst_IntControl|do_int_num\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_IntControl|do_int_num\(1),
	datab => \inst_IntControl|do_int_num\(0),
	datac => \int_ack~regout\,
	datad => \inst_IntControl|do_int_num\(2),
	combout => \inst_IntControl|Service~0_combout\);

-- Location: LCCOMB_X12_Y8_N24
\inst_IntControl|Service~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_IntControl|Service~1_combout\ = (\inst_IntControl|state~regout\ & ((\inst_IntControl|Service\(4)) # (\inst_IntControl|Service~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_IntControl|state~regout\,
	datac => \inst_IntControl|Service\(4),
	datad => \inst_IntControl|Service~0_combout\,
	combout => \inst_IntControl|Service~1_combout\);

-- Location: LCCOMB_X17_Y7_N16
\inst_NMI_Control|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector13~0_combout\ = (!\inst_NMI_Control|tra_state.TST_IDLE~regout\ & \trace_arm~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_NMI_Control|tra_state.TST_IDLE~regout\,
	datac => \trace_arm~regout\,
	combout => \inst_NMI_Control|Selector13~0_combout\);

-- Location: LCCOMB_X17_Y7_N6
\inst_NMI_Control|trace_counter[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|trace_counter[2]~2_combout\ = (\inst_NMI_Control|trace_counter\(2) $ (((!\inst_NMI_Control|trace_counter\(1) & !\inst_NMI_Control|trace_counter\(0))))) # (!\inst_NMI_Control|tra_state.TST_ARM~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|trace_counter\(1),
	datab => \inst_NMI_Control|tra_state.TST_ARM~regout\,
	datac => \inst_NMI_Control|trace_counter\(0),
	datad => \inst_NMI_Control|trace_counter\(2),
	combout => \inst_NMI_Control|trace_counter[2]~2_combout\);

-- Location: LCCOMB_X17_Y7_N20
\inst_NMI_Control|trace_counter[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|trace_counter[1]~4_combout\ = (\inst_NMI_Control|trace_counter[3]~0_combout\ & (((\inst_NMI_Control|trace_counter\(1))))) # (!\inst_NMI_Control|trace_counter[3]~0_combout\ & ((\inst_NMI_Control|trace_counter\(0) $ 
-- (!\inst_NMI_Control|trace_counter\(1))) # (!\inst_NMI_Control|tra_state.TST_ARM~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|trace_counter[3]~0_combout\,
	datab => \inst_NMI_Control|trace_counter\(0),
	datac => \inst_NMI_Control|trace_counter\(1),
	datad => \inst_NMI_Control|tra_state.TST_ARM~regout\,
	combout => \inst_NMI_Control|trace_counter[1]~4_combout\);

-- Location: LCFF_X17_Y7_N3
\inst_NMI_Control|tra_state.TST_END\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Selector14~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|tra_state.TST_END~regout\);

-- Location: LCCOMB_X17_Y7_N4
\inst_NMI_Control|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector12~0_combout\ = (!\inst_NMI_Control|tra_state.TST_END~regout\ & ((\trace_arm~regout\) # (\inst_NMI_Control|tra_state.TST_IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \trace_arm~regout\,
	datab => \inst_NMI_Control|tra_state.TST_END~regout\,
	datac => \inst_NMI_Control|tra_state.TST_IDLE~regout\,
	combout => \inst_NMI_Control|Selector12~0_combout\);

-- Location: LCFF_X14_Y5_N9
\nmi_reasons_clr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \nmi_reasons_clr[2]~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \Selector73~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nmi_reasons_clr(2));

-- Location: LCFF_X21_Y6_N23
\inst_NMI_Control|nmi_prot_viol\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Selector17~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|nmi_prot_viol~regout\);

-- Location: LCFF_X14_Y5_N19
\nmi_reasons_clr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \nmi_reasons_clr[1]~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \Selector73~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nmi_reasons_clr(1));

-- Location: LCCOMB_X13_Y5_N10
\inst_NMI_Control|nmi_reasons~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|nmi_reasons~2_combout\ = (\inst_NMI_Control|nmi_prot_viol~regout\) # ((!nmi_reasons_clr(1) & \inst_NMI_Control|nmi_reasons\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nmi_reasons_clr(1),
	datac => \inst_NMI_Control|nmi_reasons\(1),
	datad => \inst_NMI_Control|nmi_prot_viol~regout\,
	combout => \inst_NMI_Control|nmi_reasons~2_combout\);

-- Location: LCFF_X14_Y5_N29
\nmi_reasons_clr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Selector76~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \Selector73~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nmi_reasons_clr(0));

-- Location: LCFF_X15_Y7_N21
\inst_OutExpander|reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_OutExpander|Selector3~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_OutExpander|reg[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_OutExpander|reg\(5));

-- Location: LCCOMB_X19_Y7_N16
\inst_OutExpander|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_OutExpander|Selector2~0_combout\ = (\inst_OutExpander|state~8_combout\ & ((\inst_OutExpander|reg\(6)) # ((\inst_OutExpander|reg\(5) & \inst_OutExpander|state.ST_BIT1~regout\)))) # (!\inst_OutExpander|state~8_combout\ & (\inst_OutExpander|reg\(5) & 
-- ((\inst_OutExpander|state.ST_BIT1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_OutExpander|state~8_combout\,
	datab => \inst_OutExpander|reg\(5),
	datac => \inst_OutExpander|reg\(6),
	datad => \inst_OutExpander|state.ST_BIT1~regout\,
	combout => \inst_OutExpander|Selector2~0_combout\);

-- Location: LCCOMB_X19_Y8_N24
\inst_Timing|count_1us~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|count_1us~0_combout\ = (\inst_Timing|Add0~10_combout\ & ((\inst_Timing|count_1us\(1)) # ((!\inst_Timing|count_1us\(0)) # (!\inst_Timing|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Timing|Add0~10_combout\,
	datab => \inst_Timing|count_1us\(1),
	datac => \inst_Timing|Equal0~0_combout\,
	datad => \inst_Timing|count_1us\(0),
	combout => \inst_Timing|count_1us~0_combout\);

-- Location: LCCOMB_X19_Y7_N12
\inst_OutExpander|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_OutExpander|Selector9~0_combout\ = (\inst_OutExpander|state~8_combout\) # ((\inst_OutExpander|state.ST_BIT1~regout\ & ((\inst_OutExpander|bit_count\(2)) # (!\inst_OutExpander|bit_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_OutExpander|state~8_combout\,
	datab => \inst_OutExpander|bit_count\(0),
	datac => \inst_OutExpander|state.ST_BIT1~regout\,
	datad => \inst_OutExpander|bit_count\(2),
	combout => \inst_OutExpander|Selector9~0_combout\);

-- Location: LCCOMB_X19_Y7_N0
\inst_OutExpander|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_OutExpander|Selector8~0_combout\ = (\inst_OutExpander|bit_count\(0) & (\inst_OutExpander|bit_count\(1) & \inst_OutExpander|state.ST_BIT1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_OutExpander|bit_count\(0),
	datac => \inst_OutExpander|bit_count\(1),
	datad => \inst_OutExpander|state.ST_BIT1~regout\,
	combout => \inst_OutExpander|Selector8~0_combout\);

-- Location: LCCOMB_X19_Y7_N8
\inst_OutExpander|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_OutExpander|Selector8~1_combout\ = (\inst_OutExpander|Selector8~0_combout\) # ((\inst_OutExpander|bit_count\(2) & ((\inst_OutExpander|state~8_combout\) # (\inst_OutExpander|state.ST_BIT1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_OutExpander|state~8_combout\,
	datab => \inst_OutExpander|Selector8~0_combout\,
	datac => \inst_OutExpander|bit_count\(2),
	datad => \inst_OutExpander|state.ST_BIT1~regout\,
	combout => \inst_OutExpander|Selector8~1_combout\);

-- Location: LCFF_X9_Y10_N17
\inst_Con_Tx|reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Tx|Selector5~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Con_Tx|reg[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Tx|reg\(2));

-- Location: LCFF_X12_Y6_N3
\inst_FIFOs|DataOut[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|DataOut[0][1]~feeder_combout\,
	ena => \inst_FIFOs|DataOut[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[0][1]~regout\);

-- Location: LCCOMB_X9_Y10_N30
\inst_Con_Tx|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Tx|Selector6~0_combout\ = (\inst_Con_Tx|state.ST_DATA~regout\ & (\inst_Con_Tx|reg\(2))) # (!\inst_Con_Tx|state.ST_DATA~regout\ & ((\inst_FIFOs|DataOut[0][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Tx|reg\(2),
	datac => \inst_Con_Tx|state.ST_DATA~regout\,
	datad => \inst_FIFOs|DataOut[0][1]~regout\,
	combout => \inst_Con_Tx|Selector6~0_combout\);

-- Location: LCCOMB_X10_Y6_N24
\inst_FIFOs|DataOut[0][0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|DataOut[0][0]~0_combout\ = (\inst_FIFOs|state.ST_RD1~regout\ & (!\inst_FIFOs|op_fifo\(1) & (!\inst_FIFOs|op_fifo\(0) & !\inst_Synch_Rst|Output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|state.ST_RD1~regout\,
	datab => \inst_FIFOs|op_fifo\(1),
	datac => \inst_FIFOs|op_fifo\(0),
	datad => \inst_Synch_Rst|Output\(0),
	combout => \inst_FIFOs|DataOut[0][0]~0_combout\);

-- Location: LCCOMB_X9_Y11_N6
\inst_Con_Tx|bit_count[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Tx|bit_count[1]~2_combout\ = (\inst_Con_Tx|bit_count[0]~0_combout\ & (((\inst_Con_Tx|bit_count\(1))))) # (!\inst_Con_Tx|bit_count[0]~0_combout\ & (\inst_Con_Tx|state.ST_DATA~regout\ & (\inst_Con_Tx|bit_count\(0) $ (\inst_Con_Tx|bit_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Tx|bit_count\(0),
	datab => \inst_Con_Tx|bit_count[0]~0_combout\,
	datac => \inst_Con_Tx|bit_count\(1),
	datad => \inst_Con_Tx|state.ST_DATA~regout\,
	combout => \inst_Con_Tx|bit_count[1]~2_combout\);

-- Location: LCCOMB_X9_Y7_N8
\fifos_wrreq[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifos_wrreq[2]~2_combout\ = (fifos_wrreq(2) & ((\inst_Synch_Rst|Output\(0)) # ((!\io_state.ST_IOWR_AUX~regout\) # (!\inst_FIFOs|WrAck\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Synch_Rst|Output\(0),
	datab => \inst_FIFOs|WrAck\(2),
	datac => fifos_wrreq(2),
	datad => \io_state.ST_IOWR_AUX~regout\,
	combout => \fifos_wrreq[2]~2_combout\);

-- Location: LCCOMB_X8_Y7_N10
\inst_FIFOs|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector17~0_combout\ = (\inst_FIFOs|Selector15~4_combout\ & (\inst_FIFOs|state.ST_WR_DONE~regout\ & ((fifos_wrreq(2)) # (!\inst_FIFOs|Equal8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Equal8~2_combout\,
	datab => \inst_FIFOs|Selector15~4_combout\,
	datac => fifos_wrreq(2),
	datad => \inst_FIFOs|state.ST_WR_DONE~regout\,
	combout => \inst_FIFOs|Selector17~0_combout\);

-- Location: LCFF_X14_Y6_N7
\inst_Aux_Tx|reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Tx|Selector5~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Aux_Tx|reg[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Tx|reg\(2));

-- Location: LCFF_X14_Y6_N1
\inst_FIFOs|DataOut[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|DataOut[2][1]~feeder_combout\,
	ena => \inst_FIFOs|DataOut[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[2][1]~regout\);

-- Location: LCCOMB_X14_Y6_N26
\inst_Aux_Tx|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|Selector6~0_combout\ = (\inst_Aux_Tx|state.ST_DATA~regout\ & (\inst_Aux_Tx|reg\(2))) # (!\inst_Aux_Tx|state.ST_DATA~regout\ & ((\inst_FIFOs|DataOut[2][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Tx|reg\(2),
	datab => \inst_FIFOs|DataOut[2][1]~regout\,
	datad => \inst_Aux_Tx|state.ST_DATA~regout\,
	combout => \inst_Aux_Tx|Selector6~0_combout\);

-- Location: LCCOMB_X10_Y6_N10
\inst_FIFOs|DataOut[2][0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|DataOut[2][0]~1_combout\ = (\inst_FIFOs|state.ST_RD1~regout\ & (\inst_FIFOs|op_fifo\(1) & (!\inst_FIFOs|op_fifo\(0) & !\inst_Synch_Rst|Output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|state.ST_RD1~regout\,
	datab => \inst_FIFOs|op_fifo\(1),
	datac => \inst_FIFOs|op_fifo\(0),
	datad => \inst_Synch_Rst|Output\(0),
	combout => \inst_FIFOs|DataOut[2][0]~1_combout\);

-- Location: LCCOMB_X13_Y8_N24
\Selector82~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector82~0_combout\ = (\spi_tx_strb~regout\ & ((\io_state.ST_IOWR~regout\) # (!\io_state.ST_DONE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io_state.ST_IOWR~regout\,
	datac => \io_state.ST_DONE~regout\,
	datad => \spi_tx_strb~regout\,
	combout => \Selector82~0_combout\);

-- Location: LCCOMB_X13_Y9_N30
\inst_SPI_Master|Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|Selector15~1_combout\ = (\inst_SPI_Master|tstrb~regout\ & (\inst_SPI_Master|state.ST_TX~regout\ & \inst_SPI_Master|Selector15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_SPI_Master|tstrb~regout\,
	datac => \inst_SPI_Master|state.ST_TX~regout\,
	datad => \inst_SPI_Master|Selector15~0_combout\,
	combout => \inst_SPI_Master|Selector15~1_combout\);

-- Location: LCCOMB_X10_Y5_N24
\Selector88~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector88~8_combout\ = (a_s(1) & (!\inst_FIFOs|Equal6~0_combout\)) # (!a_s(1) & ((!\inst_FIFOs|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Equal6~0_combout\,
	datac => \inst_FIFOs|Equal2~0_combout\,
	datad => a_s(1),
	combout => \Selector88~8_combout\);

-- Location: LCCOMB_X9_Y4_N12
\Selector96~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector96~4_combout\ = (a_s(4) & ((a_s(3) & (!a_s(1) & a_s(0))) # (!a_s(3) & ((!a_s(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(4),
	datab => a_s(1),
	datac => a_s(3),
	datad => a_s(0),
	combout => \Selector96~4_combout\);

-- Location: LCCOMB_X12_Y4_N18
\Selector102~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector102~0_combout\ = (a_s(4) & (a_s(1))) # (!a_s(4) & ((a_s(1) & ((!\inst_FIFOs|LessThan2~0_combout\))) # (!a_s(1) & (int_enables(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(4),
	datab => a_s(1),
	datac => int_enables(2),
	datad => \inst_FIFOs|LessThan2~0_combout\,
	combout => \Selector102~0_combout\);

-- Location: LCCOMB_X12_Y7_N0
\Selector102~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector102~1_combout\ = (a_s(4) & ((\Selector102~0_combout\ & (\inst_FIFOs|Equal7~1_combout\)) # (!\Selector102~0_combout\ & ((\inst_FIFOs|Equal3~1_combout\))))) # (!a_s(4) & (((\Selector102~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Equal7~1_combout\,
	datab => a_s(4),
	datac => \Selector102~0_combout\,
	datad => \inst_FIFOs|Equal3~1_combout\,
	combout => \Selector102~1_combout\);

-- Location: LCCOMB_X12_Y7_N2
\Selector102~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector102~2_combout\ = (!a_s(5) & (\Selector102~1_combout\ & (a_s(3) $ (a_s(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(3),
	datab => a_s(4),
	datac => a_s(5),
	datad => \Selector102~1_combout\,
	combout => \Selector102~2_combout\);

-- Location: LCFF_X12_Y3_N17
\mmap_shadow~29\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \mmap_shadow~29feeder_combout\,
	ena => \mmap_shadow~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~29_regout\);

-- Location: LCFF_X13_Y3_N17
\mmap_shadow~13\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(2),
	sload => VCC,
	ena => \mmap_shadow~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~13_regout\);

-- Location: LCCOMB_X13_Y3_N16
\mmap_shadow~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_shadow~59_combout\ = (a_s(1) & ((a_s(0)) # ((\mmap_shadow~29_regout\)))) # (!a_s(1) & (!a_s(0) & (\mmap_shadow~13_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(1),
	datab => a_s(0),
	datac => \mmap_shadow~13_regout\,
	datad => \mmap_shadow~29_regout\,
	combout => \mmap_shadow~59_combout\);

-- Location: LCFF_X13_Y3_N3
\mmap_shadow~22\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(3),
	sload => VCC,
	ena => \mmap_shadow~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~22_regout\);

-- Location: LCFF_X12_Y5_N11
\inst_CRC16_XModem|crc_reg[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|Selector4~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_CRC16_XModem|crc_reg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|crc_reg\(11));

-- Location: LCFF_X9_Y6_N13
\inst_FIFOs|DataOut[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|DataOut[1][3]~feeder_combout\,
	ena => \inst_FIFOs|DataOut[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[1][3]~regout\);

-- Location: LCCOMB_X12_Y4_N16
\Selector112~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector112~6_combout\ = (a_s(3) & ((a_s(1) & (\tick_int_req~regout\)) # (!a_s(1) & ((int_enables(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tick_int_req~regout\,
	datab => a_s(1),
	datac => int_enables(4),
	datad => a_s(3),
	combout => \Selector112~6_combout\);

-- Location: LCFF_X12_Y3_N31
\mmap_shadow~40\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(5),
	sload => VCC,
	ena => \mmap_shadow~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~40_regout\);

-- Location: LCCOMB_X13_Y6_N6
\D[5]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[5]~23_combout\ = (a_s(2) & ((!a_s(5)))) # (!a_s(2) & (a_s(0) & a_s(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => a_s(0),
	datac => a_s(2),
	datad => a_s(5),
	combout => \D[5]~23_combout\);

-- Location: LCFF_X12_Y2_N25
\mmap_shadow~25\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(6),
	sload => VCC,
	ena => \mmap_shadow~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~25_regout\);

-- Location: LCFF_X13_Y3_N21
\mmap_shadow~17\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \mmap_shadow~17feeder_combout\,
	ena => \mmap_shadow~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~17_regout\);

-- Location: LCCOMB_X12_Y2_N24
\mmap_shadow~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_shadow~67_combout\ = (a_s(1) & (((a_s(0))))) # (!a_s(1) & ((a_s(0) & ((\mmap_shadow~25_regout\))) # (!a_s(0) & (\mmap_shadow~17_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mmap_shadow~17_regout\,
	datab => a_s(1),
	datac => \mmap_shadow~25_regout\,
	datad => a_s(0),
	combout => \mmap_shadow~67_combout\);

-- Location: LCCOMB_X9_Y4_N0
\Selector128~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector128~0_combout\ = (\Equal9~0_combout\ & (\io_state.ST_IORD~regout\ & (a_s(3) $ (!a_s(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => a_s(3),
	datac => \io_state.ST_IORD~regout\,
	datad => a_s(4),
	combout => \Selector128~0_combout\);

-- Location: LCFF_X14_Y9_N29
\inst_SPI_Master|Busy\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|Busy~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|Busy~regout\);

-- Location: LCCOMB_X13_Y5_N20
\Selector126~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector126~1_combout\ = (!a_s(0) & ((a_s(2) & ((\inst_CRC16_XModem|crc_reg\(7)))) # (!a_s(2) & (\inst_SPI_Master|Busy~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(2),
	datab => \inst_SPI_Master|Busy~regout\,
	datac => a_s(0),
	datad => \inst_CRC16_XModem|crc_reg\(7),
	combout => \Selector126~1_combout\);

-- Location: LCCOMB_X13_Y5_N24
\Selector126~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector126~3_combout\ = (a_s(4) & ((a_s(0) & ((\inst_I2C_Master|reg\(7)))) # (!a_s(0) & (\inst_I2C_Master|Busy~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|Busy~regout\,
	datab => a_s(4),
	datac => a_s(0),
	datad => \inst_I2C_Master|reg\(7),
	combout => \Selector126~3_combout\);

-- Location: LCFF_X12_Y2_N7
\mmap_shadow~42\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(7),
	sload => VCC,
	ena => \mmap_shadow~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~42_regout\);

-- Location: LCFF_X13_Y10_N11
\inst_I2C_Master|state.ST_START3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|Selector4~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|state.ST_START3~regout\);

-- Location: LCFF_X12_Y10_N15
\inst_I2C_Master|state.ST_START1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|state.ST_START1~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|Strb_I2C~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|state.ST_START1~regout\);

-- Location: LCFF_X12_Y10_N25
\inst_I2C_Master|state.ST_STOP1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_I2C_Master|state.ST_STOP~regout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \inst_Timing|Strb_I2C~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|state.ST_STOP1~regout\);

-- Location: LCFF_X12_Y10_N3
\inst_I2C_Master|state.ST_DATA2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_I2C_Master|state.ST_DATA1~regout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \inst_Timing|Strb_I2C~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|state.ST_DATA2~regout\);

-- Location: LCCOMB_X12_Y10_N24
\inst_I2C_Master|I2C_SCL~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|I2C_SCL~3_combout\ = (!\inst_I2C_Master|state.ST_START1~regout\ & (!\inst_I2C_Master|state.ST_STOP1~regout\ & !\inst_I2C_Master|state.ST_DATA2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_I2C_Master|state.ST_START1~regout\,
	datac => \inst_I2C_Master|state.ST_STOP1~regout\,
	datad => \inst_I2C_Master|state.ST_DATA2~regout\,
	combout => \inst_I2C_Master|I2C_SCL~3_combout\);

-- Location: LCFF_X12_Y10_N9
\inst_I2C_Master|state.ST_STOP2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|Selector7~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|state.ST_STOP2~regout\);

-- Location: LCFF_X12_Y10_N11
\inst_I2C_Master|state.ST_START\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|Selector1~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|state.ST_START~regout\);

-- Location: LCCOMB_X12_Y10_N20
\inst_I2C_Master|I2C_SDA~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|I2C_SDA~2_combout\ = (!\inst_I2C_Master|state.ST_START~regout\ & !\inst_I2C_Master|state.ST_STOP2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|state.ST_START~regout\,
	datac => \inst_I2C_Master|state.ST_STOP2~regout\,
	combout => \inst_I2C_Master|I2C_SDA~2_combout\);

-- Location: LCFF_X12_Y10_N31
\inst_I2C_Master|state.ST_START2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_I2C_Master|state.ST_START1~regout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \inst_Timing|Strb_I2C~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|state.ST_START2~regout\);

-- Location: LCCOMB_X12_Y10_N30
\inst_I2C_Master|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector26~0_combout\ = (\inst_I2C_Master|state.ST_START~regout\) # ((\inst_I2C_Master|state.ST_START2~regout\) # ((\inst_I2C_Master|state.ST_STOP2~regout\ & !\i2c_stop_strb~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|state.ST_START~regout\,
	datab => \inst_I2C_Master|state.ST_STOP2~regout\,
	datac => \inst_I2C_Master|state.ST_START2~regout\,
	datad => \i2c_stop_strb~regout\,
	combout => \inst_I2C_Master|Selector26~0_combout\);

-- Location: LCCOMB_X12_Y4_N24
\inst_IntControl|qual_req[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_IntControl|qual_req[2]~0_combout\ = (!\inst_FIFOs|contents[2][5]~regout\ & (int_enables(2) & !\inst_FIFOs|contents[2][4]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[2][5]~regout\,
	datac => int_enables(2),
	datad => \inst_FIFOs|contents[2][4]~regout\,
	combout => \inst_IntControl|qual_req[2]~0_combout\);

-- Location: LCCOMB_X9_Y5_N8
\trace_arm~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \trace_arm~0_combout\ = (\trace_arm~regout\) # ((d_s(0) & \Equal5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => d_s(0),
	datac => \trace_arm~regout\,
	datad => \Equal5~1_combout\,
	combout => \trace_arm~0_combout\);

-- Location: LCCOMB_X21_Y6_N22
\inst_NMI_Control|Selector17~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector17~2_combout\ = (\inst_NMI_Control|Selector17~1_combout\ & ((\prot_s~regout\) # ((\inst_NMI_Control|nmi_prot_viol~regout\ & !\inst_NMI_Control|Selector17~0_combout\)))) # (!\inst_NMI_Control|Selector17~1_combout\ & 
-- (((\inst_NMI_Control|nmi_prot_viol~regout\ & !\inst_NMI_Control|Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Selector17~1_combout\,
	datab => \prot_s~regout\,
	datac => \inst_NMI_Control|nmi_prot_viol~regout\,
	datad => \inst_NMI_Control|Selector17~0_combout\,
	combout => \inst_NMI_Control|Selector17~2_combout\);

-- Location: LCCOMB_X14_Y5_N28
\Selector76~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector76~0_combout\ = (\io_state.ST_IOWR~regout\ & d_s(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io_state.ST_IOWR~regout\,
	datad => d_s(0),
	combout => \Selector76~0_combout\);

-- Location: LCFF_X15_Y7_N23
\inst_OutExpander|reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_OutExpander|Selector4~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_OutExpander|reg[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_OutExpander|reg\(4));

-- Location: LCCOMB_X15_Y7_N20
\inst_OutExpander|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_OutExpander|Selector3~0_combout\ = (\inst_OutExpander|state.ST_BIT1~regout\ & (((\inst_OutExpander|reg\(4))))) # (!\inst_OutExpander|state.ST_BIT1~regout\ & (!\inst_Aux_Tx|Busy~regout\ & ((\inst_FIFOs|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Tx|Busy~regout\,
	datab => \inst_OutExpander|reg\(4),
	datac => \inst_FIFOs|Equal4~1_combout\,
	datad => \inst_OutExpander|state.ST_BIT1~regout\,
	combout => \inst_OutExpander|Selector3~0_combout\);

-- Location: LCCOMB_X19_Y7_N2
\inst_OutExpander|reg[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_OutExpander|reg[2]~0_combout\ = (!\inst_OutExpander|state.ST_BIT~regout\ & (!\inst_OutExpander|state.ST_DONE~regout\ & \inst_Timing|strb_1us_int~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_OutExpander|state.ST_BIT~regout\,
	datac => \inst_OutExpander|state.ST_DONE~regout\,
	datad => \inst_Timing|strb_1us_int~regout\,
	combout => \inst_OutExpander|reg[2]~0_combout\);

-- Location: LCFF_X9_Y10_N11
\inst_Con_Tx|reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Tx|Selector4~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Con_Tx|reg[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Tx|reg\(3));

-- Location: LCFF_X12_Y6_N25
\inst_FIFOs|DataOut[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|DataOut[0][2]~feeder_combout\,
	ena => \inst_FIFOs|DataOut[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[0][2]~regout\);

-- Location: LCCOMB_X9_Y10_N16
\inst_Con_Tx|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Tx|Selector5~0_combout\ = (\inst_Con_Tx|state.ST_DATA~regout\ & (\inst_Con_Tx|reg\(3))) # (!\inst_Con_Tx|state.ST_DATA~regout\ & ((\inst_FIFOs|DataOut[0][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Tx|reg\(3),
	datac => \inst_Con_Tx|state.ST_DATA~regout\,
	datad => \inst_FIFOs|DataOut[0][2]~regout\,
	combout => \inst_Con_Tx|Selector5~0_combout\);

-- Location: LCFF_X5_Y3_N9
\inst_Aux_Rx|Data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|Data[0]~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Aux_Rx|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|Data\(0));

-- Location: LCCOMB_X7_Y5_N12
\inst_FIFOs|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector6~0_combout\ = (\inst_FIFOs|op_fifo\(0) & (((\inst_FIFOs|op_fifo\(1))))) # (!\inst_FIFOs|op_fifo\(0) & ((\inst_FIFOs|op_fifo\(1) & ((\inst_FIFOs|rd_ptr[2][0]~regout\))) # (!\inst_FIFOs|op_fifo\(1) & 
-- (\inst_FIFOs|rd_ptr[0][0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|op_fifo\(0),
	datab => \inst_FIFOs|rd_ptr[0][0]~regout\,
	datac => \inst_FIFOs|rd_ptr[2][0]~regout\,
	datad => \inst_FIFOs|op_fifo\(1),
	combout => \inst_FIFOs|Selector6~0_combout\);

-- Location: LCCOMB_X7_Y6_N0
\inst_FIFOs|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector5~0_combout\ = (\inst_FIFOs|op_fifo\(0) & (((\inst_FIFOs|op_fifo\(1))))) # (!\inst_FIFOs|op_fifo\(0) & ((\inst_FIFOs|op_fifo\(1) & ((\inst_FIFOs|rd_ptr[2][1]~regout\))) # (!\inst_FIFOs|op_fifo\(1) & 
-- (\inst_FIFOs|rd_ptr[0][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|op_fifo\(0),
	datab => \inst_FIFOs|rd_ptr[0][1]~regout\,
	datac => \inst_FIFOs|rd_ptr[2][1]~regout\,
	datad => \inst_FIFOs|op_fifo\(1),
	combout => \inst_FIFOs|Selector5~0_combout\);

-- Location: LCFF_X8_Y10_N21
\inst_Timing|count_con[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|Add2~10_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_con\(5));

-- Location: LCCOMB_X8_Y10_N6
\inst_Timing|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Equal2~1_combout\ = (!\inst_Timing|count_con\(5) & (\inst_Timing|count_con\(3) & (!\inst_Timing|count_con\(2) & !\inst_Timing|count_con\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Timing|count_con\(5),
	datab => \inst_Timing|count_con\(3),
	datac => \inst_Timing|count_con\(2),
	datad => \inst_Timing|count_con\(4),
	combout => \inst_Timing|Equal2~1_combout\);

-- Location: LCFF_X18_Y6_N25
\inst_Con_Rx|inst_DeNoise|avg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|inst_DeNoise|avg~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|Strb_Con~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|inst_DeNoise|avg\(1));

-- Location: LCFF_X15_Y4_N31
\inst_Con_Rx|bd_div[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|bd_div~4_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Con_Rx|bd_div[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|bd_div\(2));

-- Location: LCCOMB_X14_Y4_N12
\inst_Con_Rx|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Add1~0_combout\ = (\inst_Con_Rx|bit_count\(0) & \inst_Con_Rx|bit_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Con_Rx|bit_count\(0),
	datac => \inst_Con_Rx|bit_count\(1),
	combout => \inst_Con_Rx|Add1~0_combout\);

-- Location: LCFF_X14_Y4_N17
\inst_Con_Rx|state.ST_INIT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|state.ST_INIT~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Con_Rx|Selector2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|state.ST_INIT~regout\);

-- Location: LCCOMB_X13_Y4_N8
\inst_Con_Rx|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Selector1~1_combout\ = (\inst_Con_Rx|state.ST_STOP~regout\ & \inst_Con_Rx|bd_halfway~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_Con_Rx|state.ST_STOP~regout\,
	datad => \inst_Con_Rx|bd_halfway~regout\,
	combout => \inst_Con_Rx|Selector1~1_combout\);

-- Location: LCCOMB_X13_Y4_N26
\inst_Con_Rx|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Selector1~2_combout\ = (\inst_Con_Rx|state.ST_IDLE~regout\ & (((!\inst_Con_Rx|inst_DeNoise|output_int~regout\ & \inst_Con_Rx|state.ST_START~regout\)))) # (!\inst_Con_Rx|state.ST_IDLE~regout\ & ((\inst_Con_Rx|Selector1~0_combout\) # 
-- ((!\inst_Con_Rx|inst_DeNoise|output_int~regout\ & \inst_Con_Rx|state.ST_START~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|state.ST_IDLE~regout\,
	datab => \inst_Con_Rx|Selector1~0_combout\,
	datac => \inst_Con_Rx|inst_DeNoise|output_int~regout\,
	datad => \inst_Con_Rx|state.ST_START~regout\,
	combout => \inst_Con_Rx|Selector1~2_combout\);

-- Location: LCCOMB_X14_Y4_N4
\inst_Con_Rx|Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Selector1~3_combout\ = (\inst_Con_Rx|state.ST_DATA~regout\ & (\inst_Con_Rx|Add1~0_combout\ & (\inst_Con_Rx|bit_count\(2)))) # (!\inst_Con_Rx|state.ST_DATA~regout\ & (((\inst_Con_Rx|bd_halfway~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|Add1~0_combout\,
	datab => \inst_Con_Rx|bit_count\(2),
	datac => \inst_Con_Rx|state.ST_DATA~regout\,
	datad => \inst_Con_Rx|bd_halfway~regout\,
	combout => \inst_Con_Rx|Selector1~3_combout\);

-- Location: LCCOMB_X13_Y4_N20
\inst_Con_Rx|Selector1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Selector1~4_combout\ = (\inst_Con_Rx|state.ST_IDLE~regout\ & (((\inst_Con_Rx|Selector1~2_combout\ & \inst_Con_Rx|Selector1~3_combout\)) # (!\inst_Con_Rx|inst_DeNoise|output_int~regout\))) # (!\inst_Con_Rx|state.ST_IDLE~regout\ & 
-- (\inst_Con_Rx|Selector1~2_combout\ & ((\inst_Con_Rx|Selector1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|state.ST_IDLE~regout\,
	datab => \inst_Con_Rx|Selector1~2_combout\,
	datac => \inst_Con_Rx|inst_DeNoise|output_int~regout\,
	datad => \inst_Con_Rx|Selector1~3_combout\,
	combout => \inst_Con_Rx|Selector1~4_combout\);

-- Location: LCFF_X18_Y6_N13
\inst_Aux_Rx|inst_DeNoise|avg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|inst_DeNoise|avg~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|Strb_Con~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|inst_DeNoise|avg\(2));

-- Location: LCFF_X8_Y2_N31
\inst_Aux_Rx|bd_div[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|bd_div~4_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Aux_Rx|bd_div[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|bd_div\(2));

-- Location: LCCOMB_X8_Y3_N10
\inst_Aux_Rx|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Selector5~1_combout\ = (\inst_Aux_Rx|bd_halfway~regout\ & \inst_Aux_Rx|state.ST_STOP~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Aux_Rx|bd_halfway~regout\,
	datac => \inst_Aux_Rx|state.ST_STOP~regout\,
	combout => \inst_Aux_Rx|Selector5~1_combout\);

-- Location: LCCOMB_X8_Y3_N28
\inst_Aux_Rx|Selector5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Selector5~5_combout\ = (\inst_Aux_Rx|inst_DeNoise|output_int~regout\ & ((\inst_Aux_Rx|state.ST_START~regout\) # ((!\inst_Aux_Rx|state.ST_INIT~regout\ & !\inst_Aux_Rx|state.ST_WTACK~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|inst_DeNoise|output_int~regout\,
	datab => \inst_Aux_Rx|state.ST_INIT~regout\,
	datac => \inst_Aux_Rx|state.ST_WTACK~regout\,
	datad => \inst_Aux_Rx|state.ST_START~regout\,
	combout => \inst_Aux_Rx|Selector5~5_combout\);

-- Location: LCFF_X14_Y6_N11
\inst_Aux_Tx|reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Tx|Selector4~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Aux_Tx|reg[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Tx|reg\(3));

-- Location: LCFF_X14_Y6_N5
\inst_FIFOs|DataOut[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|DataOut[2][2]~feeder_combout\,
	ena => \inst_FIFOs|DataOut[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[2][2]~regout\);

-- Location: LCCOMB_X14_Y6_N6
\inst_Aux_Tx|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|Selector5~0_combout\ = (\inst_Aux_Tx|state.ST_DATA~regout\ & (\inst_Aux_Tx|reg\(3))) # (!\inst_Aux_Tx|state.ST_DATA~regout\ & ((\inst_FIFOs|DataOut[2][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Tx|reg\(3),
	datac => \inst_FIFOs|DataOut[2][2]~regout\,
	datad => \inst_Aux_Tx|state.ST_DATA~regout\,
	combout => \inst_Aux_Tx|Selector5~0_combout\);

-- Location: LCCOMB_X14_Y10_N12
\inst_I2C_Master|Selector21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector21~1_combout\ = (\i2c_tx_strb~regout\ & ((\inst_I2C_Master|Selector9~1_combout\ & (d_s(0))) # (!\inst_I2C_Master|Selector9~1_combout\ & ((\inst_I2C_Master|reg\(0)))))) # (!\i2c_tx_strb~regout\ & (((\inst_I2C_Master|reg\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_tx_strb~regout\,
	datab => \inst_I2C_Master|Selector9~1_combout\,
	datac => d_s(0),
	datad => \inst_I2C_Master|reg\(0),
	combout => \inst_I2C_Master|Selector21~1_combout\);

-- Location: LCCOMB_X12_Y5_N10
\inst_CRC16_XModem|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector4~0_combout\ = (\inst_CRC16_XModem|state.ST_DATA~regout\ & ((\inst_CRC16_XModem|crc_reg\(10)))) # (!\inst_CRC16_XModem|state.ST_DATA~regout\ & (d_s(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|state.ST_DATA~regout\,
	datab => d_s(3),
	datad => \inst_CRC16_XModem|crc_reg\(10),
	combout => \inst_CRC16_XModem|Selector4~0_combout\);

-- Location: LCCOMB_X14_Y9_N28
\inst_SPI_Master|Busy~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|Busy~0_combout\ = (\inst_SPI_Master|state.ST_IDLE~regout\ & ((\inst_SPI_Master|Busy~regout\))) # (!\inst_SPI_Master|state.ST_IDLE~regout\ & (\spi_tx_strb~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \spi_tx_strb~regout\,
	datac => \inst_SPI_Master|Busy~regout\,
	datad => \inst_SPI_Master|state.ST_IDLE~regout\,
	combout => \inst_SPI_Master|Busy~0_combout\);

-- Location: LCCOMB_X13_Y10_N16
\inst_I2C_Master|Busy~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Busy~0_combout\ = (\i2c_stop_strb~regout\) # (\i2c_tx_strb~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_stop_strb~regout\,
	datad => \i2c_tx_strb~regout\,
	combout => \inst_I2C_Master|Busy~0_combout\);

-- Location: LCCOMB_X13_Y10_N10
\inst_I2C_Master|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector4~0_combout\ = (\inst_Timing|Strb_I2C~regout\ & ((\inst_I2C_Master|state.ST_START2~regout\) # ((\i2c_start_strb~regout\ & \inst_I2C_Master|state.ST_START3~regout\)))) # (!\inst_Timing|Strb_I2C~regout\ & 
-- (((\inst_I2C_Master|state.ST_START3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_start_strb~regout\,
	datab => \inst_I2C_Master|state.ST_START2~regout\,
	datac => \inst_I2C_Master|state.ST_START3~regout\,
	datad => \inst_Timing|Strb_I2C~regout\,
	combout => \inst_I2C_Master|Selector4~0_combout\);

-- Location: LCCOMB_X13_Y8_N0
\i2c_tx_ackn~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2c_tx_ackn~0_combout\ = (!\inst_Synch_Rst|Output\(0) & (\io_state.ST_IOWR~regout\ & (\Equal14~0_combout\ & \Equal3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Synch_Rst|Output\(0),
	datab => \io_state.ST_IOWR~regout\,
	datac => \Equal14~0_combout\,
	datad => \Equal3~7_combout\,
	combout => \i2c_tx_ackn~0_combout\);

-- Location: LCCOMB_X12_Y10_N8
\inst_I2C_Master|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector7~0_combout\ = (\inst_Timing|Strb_I2C~regout\ & ((\inst_I2C_Master|state.ST_STOP1~regout\) # ((\i2c_stop_strb~regout\ & \inst_I2C_Master|state.ST_STOP2~regout\)))) # (!\inst_Timing|Strb_I2C~regout\ & 
-- (((\inst_I2C_Master|state.ST_STOP2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_stop_strb~regout\,
	datab => \inst_Timing|Strb_I2C~regout\,
	datac => \inst_I2C_Master|state.ST_STOP2~regout\,
	datad => \inst_I2C_Master|state.ST_STOP1~regout\,
	combout => \inst_I2C_Master|Selector7~0_combout\);

-- Location: LCCOMB_X13_Y10_N24
\inst_I2C_Master|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector1~0_combout\ = (!\inst_I2C_Master|state.ST_IDLE~regout\ & \i2c_start_strb~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|state.ST_IDLE~regout\,
	datac => \i2c_start_strb~regout\,
	combout => \inst_I2C_Master|Selector1~0_combout\);

-- Location: LCCOMB_X13_Y10_N14
\inst_I2C_Master|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector0~2_combout\ = (!\inst_I2C_Master|state.ST_IDLE~regout\ & ((\i2c_stop_strb~regout\) # ((\i2c_start_strb~regout\) # (\i2c_tx_strb~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|state.ST_IDLE~regout\,
	datab => \i2c_stop_strb~regout\,
	datac => \i2c_start_strb~regout\,
	datad => \i2c_tx_strb~regout\,
	combout => \inst_I2C_Master|Selector0~2_combout\);

-- Location: LCCOMB_X14_Y10_N4
\inst_I2C_Master|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector0~3_combout\ = (\inst_I2C_Master|state.ST_IDLE~regout\ & (\inst_Timing|Strb_I2C~regout\ & ((\inst_I2C_Master|inst_Sync_scl|Output\(0)) # (!\inst_I2C_Master|state.ST_DATA3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|state.ST_IDLE~regout\,
	datab => \inst_Timing|Strb_I2C~regout\,
	datac => \inst_I2C_Master|inst_Sync_scl|Output\(0),
	datad => \inst_I2C_Master|state.ST_DATA3~regout\,
	combout => \inst_I2C_Master|Selector0~3_combout\);

-- Location: LCCOMB_X13_Y10_N8
\inst_I2C_Master|Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector0~4_combout\ = (!\inst_I2C_Master|state.ST_START3~regout\ & (!\inst_I2C_Master|state.ST_TXDN~regout\ & (!\inst_I2C_Master|state.ST_TX~regout\ & !\inst_I2C_Master|state.ST_STOP2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|state.ST_START3~regout\,
	datab => \inst_I2C_Master|state.ST_TXDN~regout\,
	datac => \inst_I2C_Master|state.ST_TX~regout\,
	datad => \inst_I2C_Master|state.ST_STOP2~regout\,
	combout => \inst_I2C_Master|Selector0~4_combout\);

-- Location: LCCOMB_X13_Y10_N26
\inst_I2C_Master|Selector0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector0~5_combout\ = (\inst_I2C_Master|Selector0~2_combout\) # ((\inst_I2C_Master|Selector0~1_combout\) # ((\inst_I2C_Master|Selector0~4_combout\ & \inst_I2C_Master|Selector0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|Selector0~2_combout\,
	datab => \inst_I2C_Master|Selector0~4_combout\,
	datac => \inst_I2C_Master|Selector0~1_combout\,
	datad => \inst_I2C_Master|Selector0~3_combout\,
	combout => \inst_I2C_Master|Selector0~5_combout\);

-- Location: LCCOMB_X12_Y10_N10
\inst_I2C_Master|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector1~1_combout\ = (!\inst_I2C_Master|state.ST_TX~regout\ & ((\inst_I2C_Master|Selector1~0_combout\) # ((!\inst_I2C_Master|Selector0~5_combout\ & \inst_I2C_Master|state.ST_START~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|Selector0~5_combout\,
	datab => \inst_I2C_Master|Selector1~0_combout\,
	datac => \inst_I2C_Master|state.ST_START~regout\,
	datad => \inst_I2C_Master|state.ST_TX~regout\,
	combout => \inst_I2C_Master|Selector1~1_combout\);

-- Location: LCFF_X10_Y2_N11
\inst_CRC16_XModem|bit_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|bit_count[0]~3_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|bit_count\(0));

-- Location: LCFF_X15_Y7_N9
\inst_OutExpander|reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_OutExpander|Selector5~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_OutExpander|reg[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_OutExpander|reg\(3));

-- Location: LCFF_X8_Y3_N9
\inst_Aux_Rx|Busy\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|Busy~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|Busy~regout\);

-- Location: LCCOMB_X15_Y7_N22
\inst_OutExpander|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_OutExpander|Selector4~0_combout\ = (\inst_OutExpander|state.ST_BIT1~regout\ & (((\inst_OutExpander|reg\(3))))) # (!\inst_OutExpander|state.ST_BIT1~regout\ & (!\inst_Aux_Rx|Busy~regout\ & ((!\inst_FIFOs|Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|Busy~regout\,
	datab => \inst_OutExpander|reg\(3),
	datac => \inst_FIFOs|Equal6~0_combout\,
	datad => \inst_OutExpander|state.ST_BIT1~regout\,
	combout => \inst_OutExpander|Selector4~0_combout\);

-- Location: LCFF_X9_Y10_N13
\inst_Con_Tx|reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Tx|Selector3~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Con_Tx|reg[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Tx|reg\(4));

-- Location: LCFF_X12_Y6_N11
\inst_FIFOs|DataOut[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \inst_FIFOs|DataOut[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[0][3]~regout\);

-- Location: LCCOMB_X9_Y10_N10
\inst_Con_Tx|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Tx|Selector4~0_combout\ = (\inst_Con_Tx|state.ST_DATA~regout\ & (\inst_Con_Tx|reg\(4))) # (!\inst_Con_Tx|state.ST_DATA~regout\ & ((\inst_FIFOs|DataOut[0][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Tx|reg\(4),
	datab => \inst_FIFOs|DataOut[0][3]~regout\,
	datac => \inst_Con_Tx|state.ST_DATA~regout\,
	combout => \inst_Con_Tx|Selector4~0_combout\);

-- Location: LCFF_X5_Y3_N27
\inst_Aux_Rx|reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_Aux_Rx|reg\(1),
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \inst_Aux_Rx|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|reg\(0));

-- Location: LCCOMB_X18_Y6_N24
\inst_Con_Rx|inst_DeNoise|avg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|inst_DeNoise|avg~0_combout\ = (\inst_Con_Rx|inst_DeNoise|avg\(0) & ((\inst_Con_Rx|inst_DeNoise|avg\(1) $ (\inst_Con_Rx|inst_Sync|Output\(0))))) # (!\inst_Con_Rx|inst_DeNoise|avg\(0) & ((\inst_Con_Rx|inst_DeNoise|avg\(1) & 
-- ((\inst_Con_Rx|inst_Sync|Output\(0)) # (!\inst_Con_Rx|inst_DeNoise|avg\(2)))) # (!\inst_Con_Rx|inst_DeNoise|avg\(1) & ((!\inst_Con_Rx|inst_Sync|Output\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|inst_DeNoise|avg\(2),
	datab => \inst_Con_Rx|inst_DeNoise|avg\(0),
	datac => \inst_Con_Rx|inst_DeNoise|avg\(1),
	datad => \inst_Con_Rx|inst_Sync|Output\(0),
	combout => \inst_Con_Rx|inst_DeNoise|avg~0_combout\);

-- Location: LCCOMB_X15_Y4_N30
\inst_Con_Rx|bd_div~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|bd_div~4_combout\ = (!\inst_Con_Rx|state.ST_IDLE~regout\ & (\inst_Con_Rx|bd_div\(2) $ (((\inst_Con_Rx|bd_div\(0) & \inst_Con_Rx|bd_div\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|state.ST_IDLE~regout\,
	datab => \inst_Con_Rx|bd_div\(0),
	datac => \inst_Con_Rx|bd_div\(2),
	datad => \inst_Con_Rx|bd_div\(1),
	combout => \inst_Con_Rx|bd_div~4_combout\);

-- Location: LCCOMB_X13_Y4_N12
\inst_Con_Rx|Selector1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Selector1~7_combout\ = (!\inst_Con_Rx|Selector1~1_combout\ & (((\inst_Con_Rx|inst_DeNoise|output_int~regout\ & \inst_Con_Rx|state.ST_START~regout\)) # (!\inst_Con_Rx|Selector1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|Selector1~4_combout\,
	datab => \inst_Con_Rx|Selector1~1_combout\,
	datac => \inst_Con_Rx|inst_DeNoise|output_int~regout\,
	datad => \inst_Con_Rx|state.ST_START~regout\,
	combout => \inst_Con_Rx|Selector1~7_combout\);

-- Location: LCCOMB_X14_Y4_N20
\inst_Con_Rx|Selector2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Selector2~8_combout\ = (\inst_Con_Rx|state.ST_IDLE~regout\ & !\inst_Con_Rx|inst_DeNoise|output_int~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Con_Rx|state.ST_IDLE~regout\,
	datac => \inst_Con_Rx|inst_DeNoise|output_int~regout\,
	combout => \inst_Con_Rx|Selector2~8_combout\);

-- Location: LCCOMB_X18_Y6_N12
\inst_Aux_Rx|inst_DeNoise|avg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|inst_DeNoise|avg~1_combout\ = (\inst_Aux_Rx|inst_DeNoise|avg\(0) & (\inst_Aux_Rx|inst_DeNoise|avg\(2) $ (((!\inst_Aux_Rx|inst_DeNoise|avg\(1) & \inst_Aux_Rx|inst_Sync|Output\(0)))))) # (!\inst_Aux_Rx|inst_DeNoise|avg\(0) & 
-- (\inst_Aux_Rx|inst_DeNoise|avg\(2) & ((\inst_Aux_Rx|inst_Sync|Output\(0)) # (!\inst_Aux_Rx|inst_DeNoise|avg\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|inst_DeNoise|avg\(0),
	datab => \inst_Aux_Rx|inst_DeNoise|avg\(1),
	datac => \inst_Aux_Rx|inst_DeNoise|avg\(2),
	datad => \inst_Aux_Rx|inst_Sync|Output\(0),
	combout => \inst_Aux_Rx|inst_DeNoise|avg~1_combout\);

-- Location: LCCOMB_X8_Y2_N30
\inst_Aux_Rx|bd_div~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|bd_div~4_combout\ = (!\inst_Aux_Rx|state.ST_IDLE~regout\ & (\inst_Aux_Rx|bd_div\(2) $ (((\inst_Aux_Rx|bd_div\(0) & \inst_Aux_Rx|bd_div\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|state.ST_IDLE~regout\,
	datab => \inst_Aux_Rx|bd_div\(0),
	datac => \inst_Aux_Rx|bd_div\(2),
	datad => \inst_Aux_Rx|bd_div\(1),
	combout => \inst_Aux_Rx|bd_div~4_combout\);

-- Location: LCCOMB_X9_Y3_N16
\inst_Aux_Rx|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Selector3~0_combout\ = (((!\inst_Aux_Rx|bit_count\(0)) # (!\inst_Aux_Rx|bit_count\(1))) # (!\inst_Aux_Rx|bit_count\(2))) # (!\inst_Aux_Rx|bd_halfway~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|bd_halfway~regout\,
	datab => \inst_Aux_Rx|bit_count\(2),
	datac => \inst_Aux_Rx|bit_count\(1),
	datad => \inst_Aux_Rx|bit_count\(0),
	combout => \inst_Aux_Rx|Selector3~0_combout\);

-- Location: LCCOMB_X9_Y3_N20
\inst_Aux_Rx|bit_count[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|bit_count[1]~3_combout\ = (\inst_Aux_Rx|bit_count[1]~2_combout\ & (((\inst_Aux_Rx|Add1~0_combout\ & \inst_Aux_Rx|bit_count\(2))) # (!\inst_Aux_Rx|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|Add1~0_combout\,
	datab => \inst_Aux_Rx|bit_count[1]~2_combout\,
	datac => \inst_Aux_Rx|bit_count\(2),
	datad => \inst_Aux_Rx|Selector5~0_combout\,
	combout => \inst_Aux_Rx|bit_count[1]~3_combout\);

-- Location: LCCOMB_X8_Y3_N12
\inst_Aux_Rx|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Selector1~0_combout\ = (!\inst_Aux_Rx|Selector5~1_combout\ & (((\inst_Aux_Rx|state.ST_START~regout\ & \inst_Aux_Rx|inst_DeNoise|output_int~regout\)) # (!\inst_Aux_Rx|Selector5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|Selector5~1_combout\,
	datab => \inst_Aux_Rx|Selector5~4_combout\,
	datac => \inst_Aux_Rx|state.ST_START~regout\,
	datad => \inst_Aux_Rx|inst_DeNoise|output_int~regout\,
	combout => \inst_Aux_Rx|Selector1~0_combout\);

-- Location: LCCOMB_X9_Y3_N6
\inst_Aux_Rx|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Selector2~0_combout\ = (\inst_Aux_Rx|state.ST_IDLE~regout\ & !\inst_Aux_Rx|inst_DeNoise|output_int~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_Aux_Rx|state.ST_IDLE~regout\,
	datad => \inst_Aux_Rx|inst_DeNoise|output_int~regout\,
	combout => \inst_Aux_Rx|Selector2~0_combout\);

-- Location: LCFF_X14_Y6_N23
\inst_Aux_Tx|reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Tx|Selector3~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Aux_Tx|reg[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Tx|reg\(4));

-- Location: LCFF_X14_Y6_N17
\inst_FIFOs|DataOut[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|DataOut[2][3]~feeder_combout\,
	ena => \inst_FIFOs|DataOut[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[2][3]~regout\);

-- Location: LCCOMB_X14_Y6_N10
\inst_Aux_Tx|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|Selector4~0_combout\ = (\inst_Aux_Tx|state.ST_DATA~regout\ & (\inst_Aux_Tx|reg\(4))) # (!\inst_Aux_Tx|state.ST_DATA~regout\ & ((\inst_FIFOs|DataOut[2][3]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Aux_Tx|reg\(4),
	datac => \inst_FIFOs|DataOut[2][3]~regout\,
	datad => \inst_Aux_Tx|state.ST_DATA~regout\,
	combout => \inst_Aux_Tx|Selector4~0_combout\);

-- Location: LCCOMB_X13_Y10_N22
\inst_I2C_Master|Selector0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector0~6_combout\ = (!\inst_I2C_Master|Selector0~2_combout\ & ((!\inst_I2C_Master|Selector0~3_combout\) # (!\inst_I2C_Master|Selector0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_I2C_Master|Selector0~2_combout\,
	datac => \inst_I2C_Master|Selector0~4_combout\,
	datad => \inst_I2C_Master|Selector0~3_combout\,
	combout => \inst_I2C_Master|Selector0~6_combout\);

-- Location: LCFF_X6_Y3_N11
\inst_Aux_Rx|Data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_Aux_Rx|reg\(4),
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \inst_Aux_Rx|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|Data\(4));

-- Location: LCFF_X7_Y3_N25
\inst_Con_Rx|Data[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|Data[4]~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Con_Rx|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|Data\(4));

-- Location: LCCOMB_X6_Y3_N10
\inst_FIFOs|ram_wrdata~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|ram_wrdata~8_combout\ = (\inst_FIFOs|op_fifo\(0) & ((\inst_FIFOs|op_fifo\(1) & ((\inst_Aux_Rx|Data\(4)))) # (!\inst_FIFOs|op_fifo\(1) & (\inst_Con_Rx|Data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|op_fifo\(0),
	datab => \inst_Con_Rx|Data\(4),
	datac => \inst_Aux_Rx|Data\(4),
	datad => \inst_FIFOs|op_fifo\(1),
	combout => \inst_FIFOs|ram_wrdata~8_combout\);

-- Location: LCFF_X6_Y3_N13
\inst_Aux_Rx|Data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|Data[5]~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Aux_Rx|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|Data\(5));

-- Location: LCFF_X7_Y3_N3
\inst_Con_Rx|Data[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_Con_Rx|reg\(5),
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \inst_Con_Rx|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|Data\(5));

-- Location: LCCOMB_X7_Y3_N2
\inst_FIFOs|ram_wrdata~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|ram_wrdata~10_combout\ = (\inst_FIFOs|op_fifo\(0) & ((\inst_FIFOs|op_fifo\(1) & (\inst_Aux_Rx|Data\(5))) # (!\inst_FIFOs|op_fifo\(1) & ((\inst_Con_Rx|Data\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|Data\(5),
	datab => \inst_FIFOs|op_fifo\(0),
	datac => \inst_Con_Rx|Data\(5),
	datad => \inst_FIFOs|op_fifo\(1),
	combout => \inst_FIFOs|ram_wrdata~10_combout\);

-- Location: LCCOMB_X10_Y2_N10
\inst_CRC16_XModem|bit_count[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|bit_count[0]~3_combout\ = (\inst_CRC16_XModem|bit_count\(0) & (\inst_CRC16_XModem|bit_count[2]~1_combout\)) # (!\inst_CRC16_XModem|bit_count\(0) & ((\inst_CRC16_XModem|state.ST_DATA~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_CRC16_XModem|bit_count[2]~1_combout\,
	datac => \inst_CRC16_XModem|bit_count\(0),
	datad => \inst_CRC16_XModem|state.ST_DATA~regout\,
	combout => \inst_CRC16_XModem|bit_count[0]~3_combout\);

-- Location: LCFF_X15_Y7_N27
\inst_OutExpander|reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_OutExpander|Selector6~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_OutExpander|reg[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_OutExpander|reg\(2));

-- Location: LCFF_X13_Y4_N23
\inst_Con_Rx|Busy\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|Busy~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|Busy~regout\);

-- Location: LCCOMB_X15_Y7_N8
\inst_OutExpander|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_OutExpander|Selector5~0_combout\ = (\inst_OutExpander|state.ST_BIT1~regout\ & (((\inst_OutExpander|reg\(2))))) # (!\inst_OutExpander|state.ST_BIT1~regout\ & (!\inst_Con_Rx|Busy~regout\ & ((!\inst_FIFOs|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|Busy~regout\,
	datab => \inst_OutExpander|reg\(2),
	datac => \inst_FIFOs|Equal2~0_combout\,
	datad => \inst_OutExpander|state.ST_BIT1~regout\,
	combout => \inst_OutExpander|Selector5~0_combout\);

-- Location: LCCOMB_X8_Y3_N8
\inst_Aux_Rx|Busy~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Busy~0_combout\ = (\inst_Aux_Rx|state.ST_START~regout\ & (!\inst_Aux_Rx|inst_DeNoise|output_int~regout\ & ((\inst_Aux_Rx|Busy~regout\)))) # (!\inst_Aux_Rx|state.ST_START~regout\ & ((\inst_Aux_Rx|state.ST_IDLE~regout\ & 
-- (!\inst_Aux_Rx|inst_DeNoise|output_int~regout\)) # (!\inst_Aux_Rx|state.ST_IDLE~regout\ & ((\inst_Aux_Rx|Busy~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|inst_DeNoise|output_int~regout\,
	datab => \inst_Aux_Rx|state.ST_IDLE~regout\,
	datac => \inst_Aux_Rx|Busy~regout\,
	datad => \inst_Aux_Rx|state.ST_START~regout\,
	combout => \inst_Aux_Rx|Busy~0_combout\);

-- Location: LCFF_X9_Y10_N23
\inst_Con_Tx|reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Tx|Selector2~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Con_Tx|reg[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Tx|reg\(5));

-- Location: LCFF_X12_Y6_N13
\inst_FIFOs|DataOut[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \inst_FIFOs|DataOut[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[0][4]~regout\);

-- Location: LCCOMB_X9_Y10_N12
\inst_Con_Tx|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Tx|Selector3~0_combout\ = (\inst_Con_Tx|state.ST_DATA~regout\ & (\inst_Con_Tx|reg\(5))) # (!\inst_Con_Tx|state.ST_DATA~regout\ & ((\inst_FIFOs|DataOut[0][4]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Con_Tx|reg\(5),
	datac => \inst_Con_Tx|state.ST_DATA~regout\,
	datad => \inst_FIFOs|DataOut[0][4]~regout\,
	combout => \inst_Con_Tx|Selector3~0_combout\);

-- Location: LCFF_X14_Y6_N19
\inst_Aux_Tx|reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Tx|Selector2~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Aux_Tx|reg[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Tx|reg\(5));

-- Location: LCFF_X14_Y6_N21
\inst_FIFOs|DataOut[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \inst_FIFOs|DataOut[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[2][4]~regout\);

-- Location: LCCOMB_X14_Y6_N22
\inst_Aux_Tx|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|Selector3~0_combout\ = (\inst_Aux_Tx|state.ST_DATA~regout\ & (\inst_Aux_Tx|reg\(5))) # (!\inst_Aux_Tx|state.ST_DATA~regout\ & ((\inst_FIFOs|DataOut[2][4]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Aux_Tx|reg\(5),
	datac => \inst_FIFOs|DataOut[2][4]~regout\,
	datad => \inst_Aux_Tx|state.ST_DATA~regout\,
	combout => \inst_Aux_Tx|Selector3~0_combout\);

-- Location: LCFF_X15_Y7_N13
\inst_OutExpander|reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_OutExpander|Selector7~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_OutExpander|reg[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_OutExpander|reg\(1));

-- Location: LCCOMB_X15_Y7_N26
\inst_OutExpander|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_OutExpander|Selector6~0_combout\ = (\inst_OutExpander|state.ST_BIT1~regout\ & (\inst_OutExpander|reg\(1))) # (!\inst_OutExpander|state.ST_BIT1~regout\ & (((!\inst_Con_Tx|Busy~regout\ & \inst_FIFOs|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_OutExpander|reg\(1),
	datab => \inst_Con_Tx|Busy~regout\,
	datac => \inst_FIFOs|Equal0~1_combout\,
	datad => \inst_OutExpander|state.ST_BIT1~regout\,
	combout => \inst_OutExpander|Selector6~0_combout\);

-- Location: LCCOMB_X13_Y4_N22
\inst_Con_Rx|Busy~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Busy~0_combout\ = (\inst_Con_Rx|state.ST_START~regout\ & (((!\inst_Con_Rx|inst_DeNoise|output_int~regout\ & \inst_Con_Rx|Busy~regout\)))) # (!\inst_Con_Rx|state.ST_START~regout\ & ((\inst_Con_Rx|state.ST_IDLE~regout\ & 
-- (!\inst_Con_Rx|inst_DeNoise|output_int~regout\)) # (!\inst_Con_Rx|state.ST_IDLE~regout\ & ((\inst_Con_Rx|Busy~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|state.ST_IDLE~regout\,
	datab => \inst_Con_Rx|inst_DeNoise|output_int~regout\,
	datac => \inst_Con_Rx|Busy~regout\,
	datad => \inst_Con_Rx|state.ST_START~regout\,
	combout => \inst_Con_Rx|Busy~0_combout\);

-- Location: LCFF_X9_Y10_N25
\inst_Con_Tx|reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Tx|Selector1~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Con_Tx|reg[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Tx|reg\(6));

-- Location: LCFF_X10_Y6_N1
\inst_FIFOs|DataOut[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \inst_FIFOs|DataOut[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[0][5]~regout\);

-- Location: LCCOMB_X9_Y10_N22
\inst_Con_Tx|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Tx|Selector2~0_combout\ = (\inst_Con_Tx|state.ST_DATA~regout\ & (\inst_Con_Tx|reg\(6))) # (!\inst_Con_Tx|state.ST_DATA~regout\ & ((\inst_FIFOs|DataOut[0][5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Tx|reg\(6),
	datac => \inst_Con_Tx|state.ST_DATA~regout\,
	datad => \inst_FIFOs|DataOut[0][5]~regout\,
	combout => \inst_Con_Tx|Selector2~0_combout\);

-- Location: LCFF_X14_Y6_N31
\inst_Aux_Tx|reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Tx|Selector1~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Aux_Tx|reg[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Tx|reg\(6));

-- Location: LCFF_X14_Y6_N25
\inst_FIFOs|DataOut[2][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|DataOut[2][5]~feeder_combout\,
	ena => \inst_FIFOs|DataOut[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[2][5]~regout\);

-- Location: LCCOMB_X14_Y6_N18
\inst_Aux_Tx|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|Selector2~0_combout\ = (\inst_Aux_Tx|state.ST_DATA~regout\ & (\inst_Aux_Tx|reg\(6))) # (!\inst_Aux_Tx|state.ST_DATA~regout\ & ((\inst_FIFOs|DataOut[2][5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Aux_Tx|reg\(6),
	datac => \inst_FIFOs|DataOut[2][5]~regout\,
	datad => \inst_Aux_Tx|state.ST_DATA~regout\,
	combout => \inst_Aux_Tx|Selector2~0_combout\);

-- Location: LCFF_X15_Y7_N31
\inst_OutExpander|reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_OutExpander|reg[0]~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_OutExpander|reg\(0));

-- Location: LCCOMB_X15_Y7_N12
\inst_OutExpander|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_OutExpander|Selector7~0_combout\ = (\inst_OutExpander|state.ST_BIT1~regout\ & (\inst_OutExpander|reg\(0))) # (!\inst_OutExpander|state.ST_BIT1~regout\ & ((!\spi_mc_ss~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_OutExpander|reg\(0),
	datac => \spi_mc_ss~regout\,
	datad => \inst_OutExpander|state.ST_BIT1~regout\,
	combout => \inst_OutExpander|Selector7~0_combout\);

-- Location: LCFF_X9_Y11_N31
\inst_Con_Tx|reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Tx|reg[7]~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Tx|reg\(7));

-- Location: LCFF_X10_Y6_N27
\inst_FIFOs|DataOut[0][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \inst_FIFOs|DataOut[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[0][6]~regout\);

-- Location: LCCOMB_X9_Y10_N24
\inst_Con_Tx|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Tx|Selector1~0_combout\ = (\inst_Con_Tx|state.ST_DATA~regout\ & (\inst_Con_Tx|reg\(7))) # (!\inst_Con_Tx|state.ST_DATA~regout\ & ((\inst_FIFOs|DataOut[0][6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Tx|reg\(7),
	datac => \inst_Con_Tx|state.ST_DATA~regout\,
	datad => \inst_FIFOs|DataOut[0][6]~regout\,
	combout => \inst_Con_Tx|Selector1~0_combout\);

-- Location: LCFF_X15_Y6_N5
\inst_Aux_Tx|reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Tx|reg[7]~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Tx|reg\(7));

-- Location: LCFF_X14_Y6_N3
\inst_FIFOs|DataOut[2][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|DataOut[2][6]~feeder_combout\,
	ena => \inst_FIFOs|DataOut[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[2][6]~regout\);

-- Location: LCCOMB_X14_Y6_N30
\inst_Aux_Tx|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|Selector1~0_combout\ = (\inst_Aux_Tx|state.ST_DATA~regout\ & (\inst_Aux_Tx|reg\(7))) # (!\inst_Aux_Tx|state.ST_DATA~regout\ & ((\inst_FIFOs|DataOut[2][6]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Tx|reg\(7),
	datab => \inst_FIFOs|DataOut[2][6]~regout\,
	datad => \inst_Aux_Tx|state.ST_DATA~regout\,
	combout => \inst_Aux_Tx|Selector1~0_combout\);

-- Location: LCCOMB_X15_Y7_N30
\inst_OutExpander|reg[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_OutExpander|reg[0]~1_combout\ = (\inst_OutExpander|state.ST_SETUP~regout\ & (((\inst_OutExpander|reg\(0))))) # (!\inst_OutExpander|state.ST_SETUP~regout\ & ((\inst_Timing|strb_1us_int~regout\ & (!\ctrl_mmap_en~regout\)) # 
-- (!\inst_Timing|strb_1us_int~regout\ & ((\inst_OutExpander|reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_OutExpander|state.ST_SETUP~regout\,
	datab => \ctrl_mmap_en~regout\,
	datac => \inst_OutExpander|reg\(0),
	datad => \inst_Timing|strb_1us_int~regout\,
	combout => \inst_OutExpander|reg[0]~1_combout\);

-- Location: LCFF_X10_Y6_N5
\inst_FIFOs|DataOut[0][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \inst_FIFOs|DataOut[0][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[0][7]~regout\);

-- Location: LCCOMB_X9_Y11_N30
\inst_Con_Tx|reg[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Tx|reg[7]~1_combout\ = (\inst_FIFOs|RdAck\(0) & ((\inst_Con_Tx|state.ST_IDLE~regout\ & (\inst_Con_Tx|reg\(7))) # (!\inst_Con_Tx|state.ST_IDLE~regout\ & ((\inst_FIFOs|DataOut[0][7]~regout\))))) # (!\inst_FIFOs|RdAck\(0) & 
-- (((\inst_Con_Tx|reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|RdAck\(0),
	datab => \inst_Con_Tx|state.ST_IDLE~regout\,
	datac => \inst_Con_Tx|reg\(7),
	datad => \inst_FIFOs|DataOut[0][7]~regout\,
	combout => \inst_Con_Tx|reg[7]~1_combout\);

-- Location: LCFF_X14_Y6_N29
\inst_FIFOs|DataOut[2][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|DataOut[2][7]~feeder_combout\,
	ena => \inst_FIFOs|DataOut[2][0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[2][7]~regout\);

-- Location: LCCOMB_X15_Y6_N4
\inst_Aux_Tx|reg[7]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|reg[7]~1_combout\ = (\inst_FIFOs|RdAck\(2) & ((\inst_Aux_Tx|state.ST_IDLE~regout\ & ((\inst_Aux_Tx|reg\(7)))) # (!\inst_Aux_Tx|state.ST_IDLE~regout\ & (\inst_FIFOs|DataOut[2][7]~regout\)))) # (!\inst_FIFOs|RdAck\(2) & 
-- (((\inst_Aux_Tx|reg\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|RdAck\(2),
	datab => \inst_FIFOs|DataOut[2][7]~regout\,
	datac => \inst_Aux_Tx|reg\(7),
	datad => \inst_Aux_Tx|state.ST_IDLE~regout\,
	combout => \inst_Aux_Tx|reg[7]~1_combout\);

-- Location: LCCOMB_X9_Y9_N6
\Selector52~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~25_combout\ = (\Selector52~15_combout\ & ((\io_state.ST_IOWW1~regout\ & ((\cpu_clk_s~regout\))) # (!\io_state.ST_IOWW1~regout\ & (\Selector52~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IOWW1~regout\,
	datab => \Selector52~15_combout\,
	datac => \Selector52~19_combout\,
	datad => \cpu_clk_s~regout\,
	combout => \Selector52~25_combout\);

-- Location: LCCOMB_X12_Y9_N20
\Selector49~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector49~3_combout\ = (\Selector41~31_combout\ & (\cpu_clk_s~regout\ & (\io_state.ST_IOWW1~regout\))) # (!\Selector41~31_combout\ & (((\io_state.ST_IOWW2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_clk_s~regout\,
	datab => \Selector41~31_combout\,
	datac => \io_state.ST_IOWW1~regout\,
	datad => \io_state.ST_IOWW2~regout\,
	combout => \Selector49~3_combout\);

-- Location: LCCOMB_X18_Y7_N14
\inst_NMI_Control|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector6~2_combout\ = (\inst_NMI_Control|mapa_state.MST_END~regout\ & (\inst_NMI_Control|bus_state.BST_IDLE~regout\ & ((\inst_NMI_Control|Selector4~1_combout\) # (!\inst_NMI_Control|Selector4~2_combout\)))) # 
-- (!\inst_NMI_Control|mapa_state.MST_END~regout\ & (\inst_NMI_Control|Selector4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Selector4~1_combout\,
	datab => \inst_NMI_Control|bus_state.BST_IDLE~regout\,
	datac => \inst_NMI_Control|mapa_state.MST_END~regout\,
	datad => \inst_NMI_Control|Selector4~2_combout\,
	combout => \inst_NMI_Control|Selector6~2_combout\);

-- Location: LCCOMB_X12_Y6_N8
\inst_FIFOs|DataOut[0][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|DataOut[0][0]~feeder_combout\ = \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst_FIFOs|DataOut[0][0]~feeder_combout\);

-- Location: LCCOMB_X14_Y6_N12
\inst_FIFOs|DataOut[2][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|DataOut[2][0]~feeder_combout\ = \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst_FIFOs|DataOut[2][0]~feeder_combout\);

-- Location: LCCOMB_X12_Y6_N2
\inst_FIFOs|DataOut[0][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|DataOut[0][1]~feeder_combout\ = \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst_FIFOs|DataOut[0][1]~feeder_combout\);

-- Location: LCCOMB_X14_Y6_N0
\inst_FIFOs|DataOut[2][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|DataOut[2][1]~feeder_combout\ = \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst_FIFOs|DataOut[2][1]~feeder_combout\);

-- Location: LCCOMB_X14_Y6_N4
\inst_FIFOs|DataOut[2][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|DataOut[2][2]~feeder_combout\ = \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(2),
	combout => \inst_FIFOs|DataOut[2][2]~feeder_combout\);

-- Location: LCCOMB_X12_Y6_N24
\inst_FIFOs|DataOut[0][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|DataOut[0][2]~feeder_combout\ = \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(2),
	combout => \inst_FIFOs|DataOut[0][2]~feeder_combout\);

-- Location: LCCOMB_X9_Y6_N12
\inst_FIFOs|DataOut[1][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|DataOut[1][3]~feeder_combout\ = \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst_FIFOs|DataOut[1][3]~feeder_combout\);

-- Location: LCCOMB_X14_Y6_N16
\inst_FIFOs|DataOut[2][3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|DataOut[2][3]~feeder_combout\ = \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst_FIFOs|DataOut[2][3]~feeder_combout\);

-- Location: LCCOMB_X14_Y6_N24
\inst_FIFOs|DataOut[2][5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|DataOut[2][5]~feeder_combout\ = \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst_FIFOs|DataOut[2][5]~feeder_combout\);

-- Location: LCCOMB_X14_Y6_N2
\inst_FIFOs|DataOut[2][6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|DataOut[2][6]~feeder_combout\ = \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst_FIFOs|DataOut[2][6]~feeder_combout\);

-- Location: LCCOMB_X14_Y6_N28
\inst_FIFOs|DataOut[2][7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|DataOut[2][7]~feeder_combout\ = \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(7),
	combout => \inst_FIFOs|DataOut[2][7]~feeder_combout\);

-- Location: LCCOMB_X12_Y3_N16
\mmap_shadow~29feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_shadow~29feeder_combout\ = d_s(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d_s(2),
	combout => \mmap_shadow~29feeder_combout\);

-- Location: LCCOMB_X13_Y3_N20
\mmap_shadow~17feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_shadow~17feeder_combout\ = d_s(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d_s(6),
	combout => \mmap_shadow~17feeder_combout\);

-- Location: LCCOMB_X12_Y10_N14
\inst_I2C_Master|state.ST_START1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|state.ST_START1~feeder_combout\ = \inst_I2C_Master|state.ST_START~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_I2C_Master|state.ST_START~regout\,
	combout => \inst_I2C_Master|state.ST_START1~feeder_combout\);

-- Location: LCCOMB_X14_Y5_N8
\nmi_reasons_clr[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \nmi_reasons_clr[2]~feeder_combout\ = \Selector80~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector80~0_combout\,
	combout => \nmi_reasons_clr[2]~feeder_combout\);

-- Location: LCCOMB_X14_Y5_N18
\nmi_reasons_clr[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \nmi_reasons_clr[1]~feeder_combout\ = \Selector79~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Selector79~0_combout\,
	combout => \nmi_reasons_clr[1]~feeder_combout\);

-- Location: LCCOMB_X5_Y3_N8
\inst_Aux_Rx|Data[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Data[0]~feeder_combout\ = \inst_Aux_Rx|reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_Aux_Rx|reg\(0),
	combout => \inst_Aux_Rx|Data[0]~feeder_combout\);

-- Location: LCCOMB_X7_Y3_N24
\inst_Con_Rx|Data[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Data[4]~feeder_combout\ = \inst_Con_Rx|reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_Con_Rx|reg\(4),
	combout => \inst_Con_Rx|Data[4]~feeder_combout\);

-- Location: LCCOMB_X6_Y3_N12
\inst_Aux_Rx|Data[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Data[5]~feeder_combout\ = \inst_Aux_Rx|reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_Aux_Rx|reg\(5),
	combout => \inst_Aux_Rx|Data[5]~feeder_combout\);

-- Location: LCCOMB_X14_Y4_N16
\inst_Con_Rx|state.ST_INIT~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|state.ST_INIT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst_Con_Rx|state.ST_INIT~feeder_combout\);

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "clear",
	oe_power_up => "low",
	oe_register_mode => "register",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector90~1_combout\,
	oe => \Selector91~3_combout\,
	outclk => \RClk~clkctrl_outclk\,
	outclkena => \Selector87~3_combout\,
	areset => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(0),
	combout => \D[0]~0\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "clear",
	oe_power_up => "low",
	oe_register_mode => "register",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector96~8_combout\,
	oe => \Selector91~3_combout\,
	outclk => \RClk~clkctrl_outclk\,
	outclkena => \Selector87~3_combout\,
	areset => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(1),
	combout => \D[1]~1\);

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "clear",
	oe_power_up => "low",
	oe_register_mode => "register",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector102~8_combout\,
	oe => \Selector91~3_combout\,
	outclk => \RClk~clkctrl_outclk\,
	outclkena => \Selector87~3_combout\,
	areset => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(2),
	combout => \D[2]~2\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "clear",
	oe_power_up => "low",
	oe_register_mode => "register",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector108~8_combout\,
	oe => \Selector91~3_combout\,
	outclk => \RClk~clkctrl_outclk\,
	outclkena => \Selector87~3_combout\,
	areset => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(3),
	combout => \D[3]~3\);

-- Location: PIN_47,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "clear",
	oe_power_up => "low",
	oe_register_mode => "register",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector114~1_combout\,
	oe => \Selector91~3_combout\,
	outclk => \RClk~clkctrl_outclk\,
	outclkena => \Selector87~3_combout\,
	areset => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(4),
	combout => \D[4]~4\);

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "clear",
	oe_power_up => "low",
	oe_register_mode => "register",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D[5]~reg0SLOAD_MUX_combout\,
	oe => \Selector91~3_combout\,
	outclk => \RClk~clkctrl_outclk\,
	outclkena => \Selector87~3_combout\,
	areset => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(5),
	combout => \D[5]~5\);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "clear",
	oe_power_up => "low",
	oe_register_mode => "register",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \D[6]~reg0SLOAD_MUX_combout\,
	oe => \Selector91~3_combout\,
	outclk => \RClk~clkctrl_outclk\,
	outclkena => \Selector87~3_combout\,
	areset => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(6),
	combout => \D[6]~6\);

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\D[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "clear",
	oe_power_up => "low",
	oe_register_mode => "register",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector128~3_combout\,
	oe => \Selector91~3_combout\,
	outclk => \RClk~clkctrl_outclk\,
	outclkena => \Selector87~3_combout\,
	areset => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => D(7),
	combout => \D[7]~7\);

-- Location: PIN_122,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\RTC_SCL~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst_I2C_Master|ALT_INV_I2C_SCL~en_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => RTC_SCL,
	combout => \RTC_SCL~0\);

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\RTC_SDA~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	open_drain_output => "true",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst_I2C_Master|ALT_INV_I2C_SDA~en_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => RTC_SDA,
	combout => \RTC_SDA~0\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LCFF_X10_Y4_N27
\a_s[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \A~combout\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_s(6));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: LCFF_X10_Y4_N29
\a_s[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \A~combout\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_s(7));

-- Location: LCCOMB_X10_Y4_N26
\Equal9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal9~0_combout\ = (!a_s(6) & !a_s(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => a_s(6),
	datad => a_s(7),
	combout => \Equal9~0_combout\);

-- Location: LCFF_X6_Y3_N23
\d_s[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \D[7]~7\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_s(7));

-- Location: LCFF_X6_Y3_N25
\d_s[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \D[6]~6\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_s(6));

-- Location: LCFF_X6_Y3_N27
\d_s[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \D[5]~5\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_s(5));

-- Location: LCFF_X6_Y3_N21
\d_s[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \D[4]~4\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_s(4));

-- Location: LCFF_X10_Y3_N25
\d_s[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \D[3]~3\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_s(3));

-- Location: LCFF_X6_Y3_N19
\d_s[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \D[2]~2\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_s(2));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LCFF_X10_Y4_N9
\a_s[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \A~combout\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_s(5));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LCFF_X10_Y4_N31
\a_s[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \A~combout\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_s(2));

-- Location: LCCOMB_X10_Y4_N2
\Equal18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal18~0_combout\ = (\Equal3~6_combout\ & (\Equal9~0_combout\ & (a_s(5) & a_s(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~6_combout\,
	datab => \Equal9~0_combout\,
	datac => a_s(5),
	datad => a_s(2),
	combout => \Equal18~0_combout\);

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCFF_X10_Y4_N17
\a_s[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \A~combout\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_s(1));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LCFF_X13_Y8_N31
\a_s[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \A~combout\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_s(0));

-- Location: LCCOMB_X13_Y8_N16
\Equal3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~7_combout\ = (!a_s(1) & !a_s(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => a_s(1),
	datad => a_s(0),
	combout => \Equal3~7_combout\);

-- Location: LCCOMB_X9_Y5_N2
\crc_set_low~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \crc_set_low~0_combout\ = (\crc_set_low~regout\) # ((!\inst_CRC16_XModem|Busy~regout\ & (\Equal18~0_combout\ & \Equal3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|Busy~regout\,
	datab => \Equal18~0_combout\,
	datac => \crc_set_low~regout\,
	datad => \Equal3~7_combout\,
	combout => \crc_set_low~0_combout\);

-- Location: PIN_79,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RESET~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RESET,
	combout => \RESET~combout\);

-- Location: LCCOMB_X8_Y9_N4
\inst_Synch_Rst|meta_reg[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Synch_Rst|meta_reg[0]~feeder_combout\ = \RESET~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RESET~combout\,
	combout => \inst_Synch_Rst|meta_reg[0]~feeder_combout\);

-- Location: LCFF_X8_Y9_N5
\inst_Synch_Rst|meta_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Synch_Rst|meta_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Synch_Rst|meta_reg\(0));

-- Location: LCFF_X8_Y9_N17
\inst_Synch_Rst|Output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_Synch_Rst|meta_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Synch_Rst|Output\(0));

-- Location: CLKCTRL_G0
\inst_Synch_Rst|Output[0]~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst_Synch_Rst|Output[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst_Synch_Rst|Output[0]~clkctrl_outclk\);

-- Location: LCCOMB_X10_Y4_N10
\Selector96~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector96~2_combout\ = (!a_s(5) & !a_s(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => a_s(5),
	datad => a_s(2),
	combout => \Selector96~2_combout\);

-- Location: LCCOMB_X10_Y4_N22
\Equal3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~8_combout\ = (\Equal3~6_combout\ & (!a_s(7) & (!a_s(6) & \Selector96~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~6_combout\,
	datab => a_s(7),
	datac => a_s(6),
	datad => \Selector96~2_combout\,
	combout => \Equal3~8_combout\);

-- Location: LCCOMB_X10_Y7_N2
\WideNor0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~7_combout\ = (!\Equal9~2_combout\ & (((a_s(0)) # (!\Equal3~8_combout\)) # (!a_s(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~2_combout\,
	datab => a_s(1),
	datac => \Equal3~8_combout\,
	datad => a_s(0),
	combout => \WideNor0~7_combout\);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LCFF_X10_Y4_N13
\a_s[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \A~combout\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_s(3));

-- Location: LCCOMB_X10_Y4_N18
\Equal10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal10~0_combout\ = (a_s(4) & (\Equal9~0_combout\ & (!a_s(3) & \Selector96~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(4),
	datab => \Equal9~0_combout\,
	datac => a_s(3),
	datad => \Selector96~2_combout\,
	combout => \Equal10~0_combout\);

-- Location: LCCOMB_X10_Y4_N20
\WideNor0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~8_combout\ = (a_s(0) & (((!\Equal3~8_combout\)))) # (!a_s(0) & (!\Equal10~0_combout\ & ((a_s(1)) # (!\Equal3~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(1),
	datab => \Equal3~8_combout\,
	datac => a_s(0),
	datad => \Equal10~0_combout\,
	combout => \WideNor0~8_combout\);

-- Location: LCCOMB_X10_Y4_N6
\WideNor0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~5_combout\ = (\WideNor0~4_combout\) # (((!\Selector96~2_combout\) # (!a_s(3))) # (!\Equal9~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~4_combout\,
	datab => \Equal9~0_combout\,
	datac => a_s(3),
	datad => \Selector96~2_combout\,
	combout => \WideNor0~5_combout\);

-- Location: LCCOMB_X10_Y9_N16
\WideNor0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~9_combout\ = (\WideNor0~11_combout\ & (\WideNor0~7_combout\ & (\WideNor0~8_combout\ & \WideNor0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~11_combout\,
	datab => \WideNor0~7_combout\,
	datac => \WideNor0~8_combout\,
	datad => \WideNor0~5_combout\,
	combout => \WideNor0~9_combout\);

-- Location: PIN_65,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\IORQn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_IORQn,
	combout => \IORQn~combout\);

-- Location: LCCOMB_X9_Y8_N8
\iorq_s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iorq_s~0_combout\ = !\IORQn~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IORQn~combout\,
	combout => \iorq_s~0_combout\);

-- Location: LCFF_X9_Y8_N9
iorq_s : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \iorq_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \iorq_s~regout\);

-- Location: LCCOMB_X13_Y8_N10
\Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!a_s(1) & a_s(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => a_s(1),
	datad => a_s(0),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X10_Y4_N16
\WideNor0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~6_combout\ = (a_s(5) & ((a_s(1)) # (a_s(2)))) # (!a_s(5) & ((!a_s(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => a_s(5),
	datac => a_s(1),
	datad => a_s(2),
	combout => \WideNor0~6_combout\);

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LCFF_X10_Y4_N15
\a_s[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \A~combout\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => a_s(4));

-- Location: LCCOMB_X10_Y4_N12
\Equal3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~6_combout\ = (!a_s(4) & !a_s(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => a_s(4),
	datac => a_s(3),
	combout => \Equal3~6_combout\);

-- Location: LCCOMB_X10_Y4_N28
\WideNor0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~11_combout\ = (a_s(6)) # ((\WideNor0~6_combout\) # ((a_s(7)) # (!\Equal3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(6),
	datab => \WideNor0~6_combout\,
	datac => a_s(7),
	datad => \Equal3~6_combout\,
	combout => \WideNor0~11_combout\);

-- Location: LCCOMB_X10_Y7_N4
\WideNor1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor1~0_combout\ = (a_s(0) & ((\Equal10~0_combout\) # ((\Equal18~0_combout\ & !a_s(1))))) # (!a_s(0) & (\Equal18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal18~0_combout\,
	datab => a_s(1),
	datac => \Equal10~0_combout\,
	datad => a_s(0),
	combout => \WideNor1~0_combout\);

-- Location: LCCOMB_X10_Y7_N6
WideNor1 : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor1~combout\ = (((\WideNor1~0_combout\) # (!\WideNor0~7_combout\)) # (!\WideNor0~11_combout\)) # (!\WideNor0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~5_combout\,
	datab => \WideNor0~11_combout\,
	datac => \WideNor1~0_combout\,
	datad => \WideNor0~7_combout\,
	combout => \WideNor1~combout\);

-- Location: LCCOMB_X10_Y8_N18
\Selector52~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~24_combout\ = (((\Equal10~0_combout\ & a_s(0))) # (!\WideNor1~combout\)) # (!\Selector41~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~12_combout\,
	datab => \Equal10~0_combout\,
	datac => \WideNor1~combout\,
	datad => a_s(0),
	combout => \Selector52~24_combout\);

-- Location: LCCOMB_X10_Y5_N8
\Selector52~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~7_combout\ = (a_s(1) & (\io_state.ST_IOWR~regout\ & (!a_s(0) & \Equal18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(1),
	datab => \io_state.ST_IOWR~regout\,
	datac => a_s(0),
	datad => \Equal18~0_combout\,
	combout => \Selector52~7_combout\);

-- Location: PIN_71,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SUPER~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SUPER,
	combout => \SUPER~combout\);

-- Location: LCCOMB_X9_Y7_N28
\super_s~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \super_s~feeder_combout\ = \SUPER~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SUPER~combout\,
	combout => \super_s~feeder_combout\);

-- Location: LCFF_X9_Y7_N29
super_s : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \super_s~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \super_s~regout\);

-- Location: PIN_67,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\MREQn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_MREQn,
	combout => \MREQn~combout\);

-- Location: LCCOMB_X24_Y7_N8
\mreq_s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mreq_s~0_combout\ = !\MREQn~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MREQn~combout\,
	combout => \mreq_s~0_combout\);

-- Location: LCFF_X24_Y7_N9
mreq_s : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \mreq_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mreq_s~regout\);

-- Location: LCCOMB_X19_Y9_N4
\inst_NMI_Control|Selector20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector20~1_combout\ = (\inst_NMI_Control|Selector20~0_combout\ & (!\inst_NMI_Control|bus_state.BST_IDLE~regout\ & \mreq_s~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Selector20~0_combout\,
	datab => \inst_NMI_Control|bus_state.BST_IDLE~regout\,
	datad => \mreq_s~regout\,
	combout => \inst_NMI_Control|Selector20~1_combout\);

-- Location: LCFF_X19_Y9_N5
\inst_NMI_Control|bus_state.BST_MEM1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Selector20~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|bus_state.BST_MEM1~regout\);

-- Location: LCCOMB_X19_Y9_N16
\inst_NMI_Control|Selector19~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector19~3_combout\ = (!\iorq_s~regout\ & ((\inst_NMI_Control|bus_state.BST_IO1~regout\) # ((!\inst_NMI_Control|bus_state.BST_IDLE~regout\ & !\mreq_s~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|bus_state.BST_IO1~regout\,
	datab => \inst_NMI_Control|bus_state.BST_IDLE~regout\,
	datac => \iorq_s~regout\,
	datad => \mreq_s~regout\,
	combout => \inst_NMI_Control|Selector19~3_combout\);

-- Location: LCCOMB_X19_Y9_N0
\inst_NMI_Control|Selector19~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector19~4_combout\ = (!\inst_NMI_Control|Selector19~2_combout\ & (!\inst_NMI_Control|Selector19~3_combout\ & ((\mreq_s~regout\) # (!\inst_NMI_Control|bus_state.BST_MEM1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Selector19~2_combout\,
	datab => \inst_NMI_Control|bus_state.BST_MEM1~regout\,
	datac => \inst_NMI_Control|Selector19~3_combout\,
	datad => \mreq_s~regout\,
	combout => \inst_NMI_Control|Selector19~4_combout\);

-- Location: LCFF_X19_Y9_N1
\inst_NMI_Control|bus_state.BST_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Selector19~4_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|bus_state.BST_IDLE~regout\);

-- Location: LCCOMB_X21_Y6_N14
\inst_NMI_Control|cyc_timer[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|cyc_timer[2]~0_combout\ = (\inst_NMI_Control|bus_state.BST_IDLE~regout\ & ((\inst_NMI_Control|cyc_timer\(2)) # ((\inst_NMI_Control|cyc_timer\(0) & \inst_NMI_Control|cyc_timer\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|cyc_timer\(0),
	datab => \inst_NMI_Control|cyc_timer\(1),
	datac => \inst_NMI_Control|cyc_timer\(2),
	datad => \inst_NMI_Control|bus_state.BST_IDLE~regout\,
	combout => \inst_NMI_Control|cyc_timer[2]~0_combout\);

-- Location: LCFF_X21_Y6_N15
\inst_NMI_Control|cyc_timer[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|cyc_timer[2]~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|cyc_timer\(2));

-- Location: LCCOMB_X21_Y6_N2
\inst_NMI_Control|cyc_timer[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|cyc_timer[1]~2_combout\ = (\inst_NMI_Control|bus_state.BST_IDLE~regout\ & ((\inst_NMI_Control|cyc_timer\(0) & ((\inst_NMI_Control|cyc_timer\(2)) # (!\inst_NMI_Control|cyc_timer\(1)))) # (!\inst_NMI_Control|cyc_timer\(0) & 
-- (\inst_NMI_Control|cyc_timer\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|cyc_timer\(0),
	datab => \inst_NMI_Control|bus_state.BST_IDLE~regout\,
	datac => \inst_NMI_Control|cyc_timer\(1),
	datad => \inst_NMI_Control|cyc_timer\(2),
	combout => \inst_NMI_Control|cyc_timer[1]~2_combout\);

-- Location: LCFF_X21_Y6_N3
\inst_NMI_Control|cyc_timer[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|cyc_timer[1]~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|cyc_timer\(1));

-- Location: PIN_64,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\M1n~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_M1n,
	combout => \M1n~combout\);

-- Location: LCCOMB_X25_Y6_N4
\m1_s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \m1_s~0_combout\ = !\M1n~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \M1n~combout\,
	combout => \m1_s~0_combout\);

-- Location: LCFF_X25_Y6_N5
m1_s : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \m1_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \m1_s~regout\);

-- Location: LCCOMB_X12_Y9_N2
\inst_NMI_Control|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector18~0_combout\ = (\inst_NMI_Control|nmi_super_viol~regout\ & ((\inst_NMI_Control|bus_state.BST_IO2~regout\) # (\inst_NMI_Control|bus_state.BST_IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|bus_state.BST_IO2~regout\,
	datac => \inst_NMI_Control|nmi_super_viol~regout\,
	datad => \inst_NMI_Control|bus_state.BST_IDLE~regout\,
	combout => \inst_NMI_Control|Selector18~0_combout\);

-- Location: LCCOMB_X12_Y9_N8
\inst_NMI_Control|Selector18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector18~1_combout\ = (\inst_NMI_Control|Selector18~0_combout\) # ((\inst_NMI_Control|bus_state.BST_IO2~regout\ & (!\inst_NMI_Control|super_instr_out~regout\ & !\m1_s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|bus_state.BST_IO2~regout\,
	datab => \inst_NMI_Control|super_instr_out~regout\,
	datac => \m1_s~regout\,
	datad => \inst_NMI_Control|Selector18~0_combout\,
	combout => \inst_NMI_Control|Selector18~1_combout\);

-- Location: LCFF_X12_Y9_N9
\inst_NMI_Control|nmi_super_viol\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Selector18~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|nmi_super_viol~regout\);

-- Location: LCCOMB_X12_Y9_N28
\inst_NMI_Control|nmi_reasons~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|nmi_reasons~1_combout\ = (\inst_NMI_Control|nmi_super_viol~regout\) # ((!nmi_reasons_clr(2) & \inst_NMI_Control|nmi_reasons\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nmi_reasons_clr(2),
	datab => \inst_NMI_Control|nmi_super_viol~regout\,
	datac => \inst_NMI_Control|nmi_reasons\(2),
	combout => \inst_NMI_Control|nmi_reasons~1_combout\);

-- Location: LCFF_X12_Y9_N29
\inst_NMI_Control|nmi_reasons[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|nmi_reasons~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|nmi_reasons\(2));

-- Location: LCCOMB_X17_Y7_N30
\Selector73~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector73~0_combout\ = (\io_state.ST_IOWR~regout\ & d_s(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io_state.ST_IOWR~regout\,
	datad => d_s(3),
	combout => \Selector73~0_combout\);

-- Location: LCCOMB_X10_Y7_N18
\Selector73~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector73~1_combout\ = (\io_state.ST_IOWR~regout\ & (\Equal9~2_combout\)) # (!\io_state.ST_IOWR~regout\ & ((\io_state.ST_DONE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~2_combout\,
	datab => \io_state.ST_IOWR~regout\,
	datac => \io_state.ST_DONE~regout\,
	combout => \Selector73~1_combout\);

-- Location: LCFF_X17_Y7_N31
\nmi_reasons_clr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Selector73~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \Selector73~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nmi_reasons_clr(3));

-- Location: LCCOMB_X19_Y9_N18
\inst_NMI_Control|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector21~0_combout\ = (\inst_NMI_Control|bus_state.BST_MEM1~regout\ & \mreq_s~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_NMI_Control|bus_state.BST_MEM1~regout\,
	datad => \mreq_s~regout\,
	combout => \inst_NMI_Control|Selector21~0_combout\);

-- Location: LCFF_X19_Y9_N19
\inst_NMI_Control|bus_state.BST_MEM2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Selector21~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|bus_state.BST_MEM2~regout\);

-- Location: LCCOMB_X17_Y7_N10
\inst_NMI_Control|trace_counter[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|trace_counter[3]~0_combout\ = (!\inst_NMI_Control|Selector13~0_combout\ & (((\inst_NMI_Control|Equal1~0_combout\) # (!\inst_NMI_Control|bus_state.BST_MEM2~regout\)) # (!\inst_NMI_Control|tra_state.TST_ARM~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Selector13~0_combout\,
	datab => \inst_NMI_Control|tra_state.TST_ARM~regout\,
	datac => \inst_NMI_Control|Equal1~0_combout\,
	datad => \inst_NMI_Control|bus_state.BST_MEM2~regout\,
	combout => \inst_NMI_Control|trace_counter[3]~0_combout\);

-- Location: LCCOMB_X17_Y7_N14
\inst_NMI_Control|trace_counter[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|trace_counter[0]~5_combout\ = (\inst_NMI_Control|trace_counter\(0) & ((\inst_NMI_Control|trace_counter[3]~0_combout\) # (!\inst_NMI_Control|tra_state.TST_ARM~regout\))) # (!\inst_NMI_Control|trace_counter\(0) & 
-- ((!\inst_NMI_Control|trace_counter[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_NMI_Control|tra_state.TST_ARM~regout\,
	datac => \inst_NMI_Control|trace_counter\(0),
	datad => \inst_NMI_Control|trace_counter[3]~0_combout\,
	combout => \inst_NMI_Control|trace_counter[0]~5_combout\);

-- Location: LCFF_X17_Y7_N15
\inst_NMI_Control|trace_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|trace_counter[0]~5_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|trace_counter\(0));

-- Location: LCCOMB_X17_Y7_N26
\inst_NMI_Control|trace_counter[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|trace_counter[2]~3_combout\ = (\inst_NMI_Control|trace_counter[3]~0_combout\ & ((\inst_NMI_Control|trace_counter\(2)))) # (!\inst_NMI_Control|trace_counter[3]~0_combout\ & (\inst_NMI_Control|trace_counter[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|trace_counter[2]~2_combout\,
	datac => \inst_NMI_Control|trace_counter\(2),
	datad => \inst_NMI_Control|trace_counter[3]~0_combout\,
	combout => \inst_NMI_Control|trace_counter[2]~3_combout\);

-- Location: LCFF_X17_Y7_N27
\inst_NMI_Control|trace_counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|trace_counter[2]~3_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|trace_counter\(2));

-- Location: LCCOMB_X17_Y7_N28
\inst_NMI_Control|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Add1~0_combout\ = \inst_NMI_Control|trace_counter\(3) $ (((\inst_NMI_Control|trace_counter\(1)) # ((\inst_NMI_Control|trace_counter\(0)) # (\inst_NMI_Control|trace_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|trace_counter\(1),
	datab => \inst_NMI_Control|trace_counter\(0),
	datac => \inst_NMI_Control|trace_counter\(3),
	datad => \inst_NMI_Control|trace_counter\(2),
	combout => \inst_NMI_Control|Add1~0_combout\);

-- Location: LCCOMB_X17_Y7_N24
\inst_NMI_Control|trace_counter[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|trace_counter[3]~1_combout\ = (\inst_NMI_Control|trace_counter[3]~0_combout\ & (((\inst_NMI_Control|trace_counter\(3))))) # (!\inst_NMI_Control|trace_counter[3]~0_combout\ & (((!\inst_NMI_Control|Add1~0_combout\)) # 
-- (!\inst_NMI_Control|tra_state.TST_ARM~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|trace_counter[3]~0_combout\,
	datab => \inst_NMI_Control|tra_state.TST_ARM~regout\,
	datac => \inst_NMI_Control|trace_counter\(3),
	datad => \inst_NMI_Control|Add1~0_combout\,
	combout => \inst_NMI_Control|trace_counter[3]~1_combout\);

-- Location: LCFF_X17_Y7_N25
\inst_NMI_Control|trace_counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|trace_counter[3]~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|trace_counter\(3));

-- Location: LCCOMB_X17_Y7_N8
\inst_NMI_Control|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Equal1~0_combout\ = (!\inst_NMI_Control|trace_counter\(1) & (!\inst_NMI_Control|trace_counter\(0) & (!\inst_NMI_Control|trace_counter\(3) & !\inst_NMI_Control|trace_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|trace_counter\(1),
	datab => \inst_NMI_Control|trace_counter\(0),
	datac => \inst_NMI_Control|trace_counter\(3),
	datad => \inst_NMI_Control|trace_counter\(2),
	combout => \inst_NMI_Control|Equal1~0_combout\);

-- Location: LCCOMB_X17_Y7_N22
\inst_NMI_Control|Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector13~1_combout\ = (\inst_NMI_Control|Selector13~0_combout\) # ((\inst_NMI_Control|tra_state.TST_ARM~regout\ & ((!\inst_NMI_Control|bus_state.BST_MEM2~regout\) # (!\inst_NMI_Control|Equal1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Selector13~0_combout\,
	datab => \inst_NMI_Control|Equal1~0_combout\,
	datac => \inst_NMI_Control|tra_state.TST_ARM~regout\,
	datad => \inst_NMI_Control|bus_state.BST_MEM2~regout\,
	combout => \inst_NMI_Control|Selector13~1_combout\);

-- Location: LCFF_X17_Y7_N23
\inst_NMI_Control|tra_state.TST_ARM\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Selector13~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|tra_state.TST_ARM~regout\);

-- Location: LCCOMB_X17_Y7_N2
\inst_NMI_Control|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector14~0_combout\ = (\inst_NMI_Control|tra_state.TST_ARM~regout\ & (\inst_NMI_Control|Equal1~0_combout\ & \inst_NMI_Control|bus_state.BST_MEM2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_NMI_Control|tra_state.TST_ARM~regout\,
	datac => \inst_NMI_Control|Equal1~0_combout\,
	datad => \inst_NMI_Control|bus_state.BST_MEM2~regout\,
	combout => \inst_NMI_Control|Selector14~0_combout\);

-- Location: LCCOMB_X17_Y7_N0
\inst_NMI_Control|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector15~0_combout\ = (\inst_NMI_Control|Selector14~0_combout\) # ((\inst_NMI_Control|nmi_trace~regout\ & ((\inst_NMI_Control|tra_state.TST_ARM~regout\) # (!\inst_NMI_Control|tra_state.TST_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|tra_state.TST_IDLE~regout\,
	datab => \inst_NMI_Control|tra_state.TST_ARM~regout\,
	datac => \inst_NMI_Control|nmi_trace~regout\,
	datad => \inst_NMI_Control|Selector14~0_combout\,
	combout => \inst_NMI_Control|Selector15~0_combout\);

-- Location: LCFF_X17_Y7_N1
\inst_NMI_Control|nmi_trace\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Selector15~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|nmi_trace~regout\);

-- Location: LCCOMB_X17_Y7_N12
\inst_NMI_Control|nmi_reasons~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|nmi_reasons~0_combout\ = (\inst_NMI_Control|nmi_trace~regout\) # ((!nmi_reasons_clr(3) & \inst_NMI_Control|nmi_reasons\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nmi_reasons_clr(3),
	datac => \inst_NMI_Control|nmi_reasons\(3),
	datad => \inst_NMI_Control|nmi_trace~regout\,
	combout => \inst_NMI_Control|nmi_reasons~0_combout\);

-- Location: LCFF_X17_Y7_N13
\inst_NMI_Control|nmi_reasons[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|nmi_reasons~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|nmi_reasons\(3));

-- Location: PIN_75,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\NMI_SWITCHn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_NMI_SWITCHn,
	combout => \NMI_SWITCHn~combout\);

-- Location: LCCOMB_X14_Y8_N2
\inst_NMI_Control|nmi_switch_s~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|nmi_switch_s~feeder_combout\ = \NMI_SWITCHn~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \NMI_SWITCHn~combout\,
	combout => \inst_NMI_Control|nmi_switch_s~feeder_combout\);

-- Location: LCFF_X14_Y8_N3
\inst_NMI_Control|nmi_switch_s\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|nmi_switch_s~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|nmi_switch_s~regout\);

-- Location: LCCOMB_X14_Y8_N28
\inst_NMI_Control|nmi_switch_dly~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|nmi_switch_dly~feeder_combout\ = \inst_NMI_Control|nmi_switch_s~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_NMI_Control|nmi_switch_s~regout\,
	combout => \inst_NMI_Control|nmi_switch_dly~feeder_combout\);

-- Location: LCFF_X14_Y8_N29
\inst_NMI_Control|nmi_switch_dly\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|nmi_switch_dly~feeder_combout\,
	ena => \inst_Synch_Rst|ALT_INV_Output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|nmi_switch_dly~regout\);

-- Location: LCCOMB_X14_Y8_N24
\inst_NMI_Control|nmi_reasons~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|nmi_reasons~3_combout\ = (nmi_reasons_clr(0) & (!\inst_NMI_Control|nmi_switch_dly~regout\ & ((\inst_NMI_Control|nmi_switch_s~regout\)))) # (!nmi_reasons_clr(0) & ((\inst_NMI_Control|nmi_reasons\(0)) # 
-- ((!\inst_NMI_Control|nmi_switch_dly~regout\ & \inst_NMI_Control|nmi_switch_s~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nmi_reasons_clr(0),
	datab => \inst_NMI_Control|nmi_switch_dly~regout\,
	datac => \inst_NMI_Control|nmi_reasons\(0),
	datad => \inst_NMI_Control|nmi_switch_s~regout\,
	combout => \inst_NMI_Control|nmi_reasons~3_combout\);

-- Location: LCFF_X14_Y8_N25
\inst_NMI_Control|nmi_reasons[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|nmi_reasons~3_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|nmi_reasons\(0));

-- Location: LCCOMB_X13_Y5_N0
\inst_NMI_Control|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Equal6~0_combout\ = (\inst_NMI_Control|nmi_reasons\(1)) # ((\inst_NMI_Control|nmi_reasons\(2)) # ((\inst_NMI_Control|nmi_reasons\(3)) # (\inst_NMI_Control|nmi_reasons\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|nmi_reasons\(1),
	datab => \inst_NMI_Control|nmi_reasons\(2),
	datac => \inst_NMI_Control|nmi_reasons\(3),
	datad => \inst_NMI_Control|nmi_reasons\(0),
	combout => \inst_NMI_Control|Equal6~0_combout\);

-- Location: LCFF_X13_Y5_N1
\inst_NMI_Control|nmi_req\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Equal6~0_combout\,
	ena => \inst_Synch_Rst|ALT_INV_Output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|nmi_req~regout\);

-- Location: LCCOMB_X21_Y6_N16
\inst_NMI_Control|cyc_timer[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|cyc_timer[0]~1_combout\ = (\inst_NMI_Control|bus_state.BST_IDLE~regout\ & (((\inst_NMI_Control|cyc_timer\(1) & \inst_NMI_Control|cyc_timer\(2))) # (!\inst_NMI_Control|cyc_timer\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|bus_state.BST_IDLE~regout\,
	datab => \inst_NMI_Control|cyc_timer\(1),
	datac => \inst_NMI_Control|cyc_timer\(0),
	datad => \inst_NMI_Control|cyc_timer\(2),
	combout => \inst_NMI_Control|cyc_timer[0]~1_combout\);

-- Location: LCFF_X21_Y6_N17
\inst_NMI_Control|cyc_timer[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|cyc_timer[0]~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|cyc_timer\(0));

-- Location: LCCOMB_X12_Y8_N4
\wr_s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \wr_s~0_combout\ = !\WRn~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WRn~combout\,
	combout => \wr_s~0_combout\);

-- Location: LCFF_X12_Y8_N5
wr_s : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \wr_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \wr_s~regout\);

-- Location: PIN_70,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RDn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RDn,
	combout => \RDn~combout\);

-- Location: LCCOMB_X25_Y6_N22
\rd_s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \rd_s~0_combout\ = !\RDn~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RDn~combout\,
	combout => \rd_s~0_combout\);

-- Location: LCFF_X25_Y6_N23
rd_s : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \rd_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rd_s~regout\);

-- Location: LCCOMB_X18_Y9_N4
\inst_NMI_Control|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector28~0_combout\ = (\inst_NMI_Control|bus_state.BST_IO2~regout\ & (!\rd_s~regout\ & !\m1_s~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_NMI_Control|bus_state.BST_IO2~regout\,
	datac => \rd_s~regout\,
	datad => \m1_s~regout\,
	combout => \inst_NMI_Control|Selector28~0_combout\);

-- Location: LCCOMB_X19_Y9_N30
\inst_NMI_Control|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector27~0_combout\ = (\inst_NMI_Control|Selector20~0_combout\ & (!\inst_NMI_Control|bus_state.BST_IDLE~regout\ & (\iorq_s~regout\ & !\mreq_s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Selector20~0_combout\,
	datab => \inst_NMI_Control|bus_state.BST_IDLE~regout\,
	datac => \iorq_s~regout\,
	datad => \mreq_s~regout\,
	combout => \inst_NMI_Control|Selector27~0_combout\);

-- Location: LCFF_X19_Y9_N31
\inst_NMI_Control|bus_state.BST_IO1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Selector27~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|bus_state.BST_IO1~regout\);

-- Location: LCCOMB_X18_Y9_N0
\inst_NMI_Control|Selector28~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector28~1_combout\ = (\iorq_s~regout\ & ((\inst_NMI_Control|bus_state.BST_IO1~regout\) # ((!\wr_s~regout\ & \inst_NMI_Control|Selector28~0_combout\)))) # (!\iorq_s~regout\ & (!\wr_s~regout\ & 
-- (\inst_NMI_Control|Selector28~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iorq_s~regout\,
	datab => \wr_s~regout\,
	datac => \inst_NMI_Control|Selector28~0_combout\,
	datad => \inst_NMI_Control|bus_state.BST_IO1~regout\,
	combout => \inst_NMI_Control|Selector28~1_combout\);

-- Location: LCFF_X18_Y9_N1
\inst_NMI_Control|bus_state.BST_IO2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Selector28~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|bus_state.BST_IO2~regout\);

-- Location: LCCOMB_X18_Y9_N26
\inst_NMI_Control|Selector32~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector32~0_combout\ = (!\rd_s~regout\ & (\inst_NMI_Control|bus_state.BST_IO2~regout\ & (\wr_s~regout\ & !\m1_s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_s~regout\,
	datab => \inst_NMI_Control|bus_state.BST_IO2~regout\,
	datac => \wr_s~regout\,
	datad => \m1_s~regout\,
	combout => \inst_NMI_Control|Selector32~0_combout\);

-- Location: LCCOMB_X12_Y9_N0
\Selector46~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~3_combout\ = (!\rd_s~regout\ & !\m1_s~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_s~regout\,
	datac => \m1_s~regout\,
	combout => \Selector46~3_combout\);

-- Location: LCCOMB_X12_Y8_N10
\Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (a_s(1) & !a_s(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => a_s(1),
	datad => a_s(0),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X10_Y4_N0
\Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (\Equal3~6_combout\ & (\Equal9~0_combout\ & (\Equal5~0_combout\ & \Selector96~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~6_combout\,
	datab => \Equal9~0_combout\,
	datac => \Equal5~0_combout\,
	datad => \Selector96~2_combout\,
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X15_Y5_N28
\ctrl_mmap_en~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctrl_mmap_en~2_combout\ = (\io_state.ST_IOWR~regout\ & \Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \io_state.ST_IOWR~regout\,
	datad => \Equal5~1_combout\,
	combout => \ctrl_mmap_en~2_combout\);

-- Location: LCFF_X15_Y5_N1
\prefix_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(5),
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \ctrl_mmap_en~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => prefix_count(0));

-- Location: LCCOMB_X17_Y7_N18
\inst_NMI_Control|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector16~0_combout\ = (\inst_NMI_Control|nmi_trace~regout\ & \inst_NMI_Control|bus_state.BST_M1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_NMI_Control|nmi_trace~regout\,
	datac => \inst_NMI_Control|bus_state.BST_M1~regout\,
	combout => \inst_NMI_Control|Selector16~0_combout\);

-- Location: LCCOMB_X25_Y6_N10
\inst_NMI_Control|mmap_on_nmi~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|mmap_on_nmi~0_combout\ = (\inst_NMI_Control|nmi_trigd~regout\ & (\m1_s~regout\ & \inst_NMI_Control|bus_state.BST_MEM2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|nmi_trigd~regout\,
	datab => \m1_s~regout\,
	datac => \inst_NMI_Control|bus_state.BST_MEM2~regout\,
	combout => \inst_NMI_Control|mmap_on_nmi~0_combout\);

-- Location: LCCOMB_X19_Y6_N30
\inst_NMI_Control|prefix_counter[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|prefix_counter[0]~0_combout\ = (!\inst_Synch_Rst|Output\(0) & ((\inst_NMI_Control|Selector16~0_combout\) # ((!\inst_NMI_Control|busi~0_combout\ & \inst_NMI_Control|mmap_on_nmi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|busi~0_combout\,
	datab => \inst_Synch_Rst|Output\(0),
	datac => \inst_NMI_Control|Selector16~0_combout\,
	datad => \inst_NMI_Control|mmap_on_nmi~0_combout\,
	combout => \inst_NMI_Control|prefix_counter[0]~0_combout\);

-- Location: LCCOMB_X19_Y6_N26
\inst_NMI_Control|prefix_counter[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|prefix_counter[0]~1_combout\ = (\inst_NMI_Control|prefix_counter[0]~0_combout\ & ((\inst_NMI_Control|bus_state.BST_M1~regout\ & (prefix_count(0))) # (!\inst_NMI_Control|bus_state.BST_M1~regout\ & 
-- ((!\inst_NMI_Control|prefix_counter\(0)))))) # (!\inst_NMI_Control|prefix_counter[0]~0_combout\ & (((\inst_NMI_Control|prefix_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|bus_state.BST_M1~regout\,
	datab => prefix_count(0),
	datac => \inst_NMI_Control|prefix_counter\(0),
	datad => \inst_NMI_Control|prefix_counter[0]~0_combout\,
	combout => \inst_NMI_Control|prefix_counter[0]~1_combout\);

-- Location: LCFF_X19_Y6_N27
\inst_NMI_Control|prefix_counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|prefix_counter[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|prefix_counter\(0));

-- Location: LCCOMB_X19_Y6_N16
\inst_NMI_Control|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Add3~0_combout\ = \inst_NMI_Control|prefix_counter\(1) $ (!\inst_NMI_Control|prefix_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_NMI_Control|prefix_counter\(1),
	datad => \inst_NMI_Control|prefix_counter\(0),
	combout => \inst_NMI_Control|Add3~0_combout\);

-- Location: LCFF_X15_Y5_N3
\prefix_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(6),
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \ctrl_mmap_en~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => prefix_count(1));

-- Location: LCFF_X19_Y6_N17
\inst_NMI_Control|prefix_counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Add3~0_combout\,
	sdata => prefix_count(1),
	sload => \inst_NMI_Control|bus_state.BST_M1~regout\,
	ena => \inst_NMI_Control|prefix_counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|prefix_counter\(1));

-- Location: LCCOMB_X19_Y6_N20
\inst_NMI_Control|busi~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|busi~0_combout\ = ((!\inst_NMI_Control|prefix_counter\(1) & !\inst_NMI_Control|prefix_counter\(0))) # (!\inst_NMI_Control|nmi_reasons\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_NMI_Control|nmi_reasons\(3),
	datac => \inst_NMI_Control|prefix_counter\(1),
	datad => \inst_NMI_Control|prefix_counter\(0),
	combout => \inst_NMI_Control|busi~0_combout\);

-- Location: LCCOMB_X19_Y9_N26
\inst_NMI_Control|Selector24~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector24~1_combout\ = (!\mreq_s~regout\ & (((\inst_NMI_Control|bus_state.BST_M1~regout\) # (\inst_NMI_Control|bus_state.BST_NACK~regout\)) # (!\inst_NMI_Control|Selector24~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Selector24~0_combout\,
	datab => \mreq_s~regout\,
	datac => \inst_NMI_Control|bus_state.BST_M1~regout\,
	datad => \inst_NMI_Control|bus_state.BST_NACK~regout\,
	combout => \inst_NMI_Control|Selector24~1_combout\);

-- Location: LCCOMB_X18_Y9_N18
\inst_NMI_Control|Selector22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector22~1_combout\ = (\inst_NMI_Control|Selector24~1_combout\) # ((\inst_NMI_Control|bus_state.BST_IO2~regout\ & ((\wr_s~regout\))) # (!\inst_NMI_Control|bus_state.BST_IO2~regout\ & (\inst_NMI_Control|Selector24~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Selector24~2_combout\,
	datab => \inst_NMI_Control|bus_state.BST_IO2~regout\,
	datac => \inst_NMI_Control|Selector24~1_combout\,
	datad => \wr_s~regout\,
	combout => \inst_NMI_Control|Selector22~1_combout\);

-- Location: LCCOMB_X19_Y9_N14
\inst_NMI_Control|Selector22~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector22~2_combout\ = (\inst_NMI_Control|bus_state.BST_M1WE~regout\ & (((\mreq_s~regout\)))) # (!\inst_NMI_Control|bus_state.BST_M1WE~regout\ & ((\inst_NMI_Control|bus_state.BST_IDLE~regout\ & (\inst_NMI_Control|Selector22~1_combout\)) 
-- # (!\inst_NMI_Control|bus_state.BST_IDLE~regout\ & ((\mreq_s~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|bus_state.BST_M1WE~regout\,
	datab => \inst_NMI_Control|Selector22~1_combout\,
	datac => \inst_NMI_Control|bus_state.BST_IDLE~regout\,
	datad => \mreq_s~regout\,
	combout => \inst_NMI_Control|Selector22~2_combout\);

-- Location: LCCOMB_X19_Y9_N8
\inst_NMI_Control|Selector22~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector22~3_combout\ = (\inst_NMI_Control|bus_state.BST_IDLE~regout\ & (((\inst_NMI_Control|Selector22~2_combout\)))) # (!\inst_NMI_Control|bus_state.BST_IDLE~regout\ & ((\iorq_s~regout\) # ((!\inst_NMI_Control|bus_state.BST_IO2~regout\ 
-- & \inst_NMI_Control|Selector22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|bus_state.BST_IO2~regout\,
	datab => \inst_NMI_Control|Selector22~2_combout\,
	datac => \iorq_s~regout\,
	datad => \inst_NMI_Control|bus_state.BST_IDLE~regout\,
	combout => \inst_NMI_Control|Selector22~3_combout\);

-- Location: LCCOMB_X19_Y9_N24
\inst_NMI_Control|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector22~0_combout\ = (!\inst_NMI_Control|bus_state.BST_MEM1~regout\ & (!\inst_NMI_Control|bus_state.BST_MEM2~regout\ & !\inst_NMI_Control|bus_state.BST_IO1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_NMI_Control|bus_state.BST_MEM1~regout\,
	datac => \inst_NMI_Control|bus_state.BST_MEM2~regout\,
	datad => \inst_NMI_Control|bus_state.BST_IO1~regout\,
	combout => \inst_NMI_Control|Selector22~0_combout\);

-- Location: LCCOMB_X19_Y9_N2
\inst_NMI_Control|Selector22~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector22~4_combout\ = (!\inst_NMI_Control|Selector22~3_combout\ & (\inst_NMI_Control|Selector22~0_combout\ & ((\Selector46~3_combout\) # (!\inst_NMI_Control|bus_state.BST_IO2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|bus_state.BST_IO2~regout\,
	datab => \inst_NMI_Control|Selector22~3_combout\,
	datac => \inst_NMI_Control|Selector22~0_combout\,
	datad => \Selector46~3_combout\,
	combout => \inst_NMI_Control|Selector22~4_combout\);

-- Location: LCCOMB_X25_Y6_N6
\inst_NMI_Control|Selector30~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector30~1_combout\ = (\inst_NMI_Control|Selector30~0_combout\ & ((\inst_NMI_Control|Selector22~4_combout\) # ((\inst_NMI_Control|busi~0_combout\ & \inst_NMI_Control|mmap_on_nmi~0_combout\)))) # 
-- (!\inst_NMI_Control|Selector30~0_combout\ & (\inst_NMI_Control|busi~0_combout\ & ((\inst_NMI_Control|mmap_on_nmi~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Selector30~0_combout\,
	datab => \inst_NMI_Control|busi~0_combout\,
	datac => \inst_NMI_Control|Selector22~4_combout\,
	datad => \inst_NMI_Control|mmap_on_nmi~0_combout\,
	combout => \inst_NMI_Control|Selector30~1_combout\);

-- Location: LCFF_X25_Y6_N7
\inst_NMI_Control|bus_state.BST_NACK\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Selector30~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|bus_state.BST_NACK~regout\);

-- Location: LCCOMB_X19_Y9_N12
\inst_NMI_Control|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector23~0_combout\ = (\mreq_s~regout\ & (\inst_NMI_Control|bus_state.BST_M1WE~regout\ & ((\inst_NMI_Control|bus_state.BST_M1~regout\) # (\inst_NMI_Control|bus_state.BST_NACK~regout\)))) # (!\mreq_s~regout\ & 
-- ((\inst_NMI_Control|bus_state.BST_M1~regout\) # ((\inst_NMI_Control|bus_state.BST_M1WE~regout\) # (\inst_NMI_Control|bus_state.BST_NACK~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|bus_state.BST_M1~regout\,
	datab => \mreq_s~regout\,
	datac => \inst_NMI_Control|bus_state.BST_M1WE~regout\,
	datad => \inst_NMI_Control|bus_state.BST_NACK~regout\,
	combout => \inst_NMI_Control|Selector23~0_combout\);

-- Location: LCFF_X19_Y9_N13
\inst_NMI_Control|bus_state.BST_M1WE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Selector23~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|bus_state.BST_M1WE~regout\);

-- Location: LCCOMB_X19_Y9_N22
\inst_NMI_Control|Selector24~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector24~5_combout\ = (\inst_NMI_Control|bus_state.BST_IDLE~regout\ & (!\inst_NMI_Control|bus_state.BST_IO2~regout\ & !\inst_NMI_Control|bus_state.BST_M1WE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_NMI_Control|bus_state.BST_IDLE~regout\,
	datac => \inst_NMI_Control|bus_state.BST_IO2~regout\,
	datad => \inst_NMI_Control|bus_state.BST_M1WE~regout\,
	combout => \inst_NMI_Control|Selector24~5_combout\);

-- Location: LCCOMB_X19_Y9_N28
\inst_NMI_Control|Selector24~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector24~4_combout\ = (\inst_NMI_Control|Selector24~3_combout\) # ((\inst_NMI_Control|bus_state.BST_MEM1~regout\) # ((\inst_NMI_Control|bus_state.BST_MEM2~regout\) # (\inst_NMI_Control|bus_state.BST_IO1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Selector24~3_combout\,
	datab => \inst_NMI_Control|bus_state.BST_MEM1~regout\,
	datac => \inst_NMI_Control|bus_state.BST_MEM2~regout\,
	datad => \inst_NMI_Control|bus_state.BST_IO1~regout\,
	combout => \inst_NMI_Control|Selector24~4_combout\);

-- Location: LCCOMB_X18_Y9_N14
\inst_NMI_Control|Selector24~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector24~6_combout\ = (\inst_NMI_Control|Selector24~4_combout\) # ((\inst_NMI_Control|Selector24~5_combout\ & ((\inst_NMI_Control|Selector24~2_combout\) # (\inst_NMI_Control|Selector24~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Selector24~2_combout\,
	datab => \inst_NMI_Control|Selector24~5_combout\,
	datac => \inst_NMI_Control|Selector24~1_combout\,
	datad => \inst_NMI_Control|Selector24~4_combout\,
	combout => \inst_NMI_Control|Selector24~6_combout\);

-- Location: LCCOMB_X18_Y9_N8
\inst_NMI_Control|Selector24~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector24~7_combout\ = (\inst_NMI_Control|Selector24~6_combout\) # ((\inst_NMI_Control|bus_state.BST_IO2~regout\ & ((\wr_s~regout\) # (!\Selector46~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_s~regout\,
	datab => \Selector46~3_combout\,
	datac => \inst_NMI_Control|Selector24~6_combout\,
	datad => \inst_NMI_Control|bus_state.BST_IO2~regout\,
	combout => \inst_NMI_Control|Selector24~7_combout\);

-- Location: LCFF_X18_Y9_N27
\inst_NMI_Control|bus_state.BST_OUT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Selector32~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_NMI_Control|Selector24~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|bus_state.BST_OUT~regout\);

-- Location: LCCOMB_X18_Y9_N16
\inst_NMI_Control|Selector31~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector31~0_combout\ = (\inst_NMI_Control|bus_state.BST_IO2~regout\ & (\rd_s~regout\ & !\m1_s~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_NMI_Control|bus_state.BST_IO2~regout\,
	datac => \rd_s~regout\,
	datad => \m1_s~regout\,
	combout => \inst_NMI_Control|Selector31~0_combout\);

-- Location: LCFF_X18_Y9_N17
\inst_NMI_Control|bus_state.BST_IN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Selector31~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_NMI_Control|Selector24~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|bus_state.BST_IN~regout\);

-- Location: LCCOMB_X18_Y9_N20
\inst_NMI_Control|Selector16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector16~3_combout\ = (\inst_NMI_Control|bus_state.BST_MRD~regout\) # ((\inst_NMI_Control|bus_state.BST_OUT~regout\) # (\inst_NMI_Control|bus_state.BST_IN~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|bus_state.BST_MRD~regout\,
	datab => \inst_NMI_Control|bus_state.BST_OUT~regout\,
	datac => \inst_NMI_Control|bus_state.BST_IN~regout\,
	combout => \inst_NMI_Control|Selector16~3_combout\);

-- Location: PIN_72,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\PROT~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_PROT,
	combout => \PROT~combout\);

-- Location: LCFF_X21_Y6_N31
prot_s : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \PROT~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \prot_s~regout\);

-- Location: LCCOMB_X25_Y6_N0
\inst_NMI_Control|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector25~0_combout\ = (\inst_NMI_Control|bus_state.BST_MEM2~regout\ & (\m1_s~regout\)) # (!\inst_NMI_Control|bus_state.BST_MEM2~regout\ & ((!\inst_NMI_Control|Selector22~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|bus_state.BST_MEM2~regout\,
	datab => \m1_s~regout\,
	datac => \inst_NMI_Control|Selector22~4_combout\,
	combout => \inst_NMI_Control|Selector25~0_combout\);

-- Location: LCCOMB_X25_Y6_N24
\inst_NMI_Control|Selector26~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector26~0_combout\ = (!\inst_NMI_Control|Selector25~0_combout\ & ((\inst_NMI_Control|bus_state.BST_MEM2~regout\ & (!\rd_s~regout\)) # (!\inst_NMI_Control|bus_state.BST_MEM2~regout\ & ((\inst_NMI_Control|bus_state.BST_MWR~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_s~regout\,
	datab => \inst_NMI_Control|bus_state.BST_MEM2~regout\,
	datac => \inst_NMI_Control|bus_state.BST_MWR~regout\,
	datad => \inst_NMI_Control|Selector25~0_combout\,
	combout => \inst_NMI_Control|Selector26~0_combout\);

-- Location: LCFF_X25_Y6_N25
\inst_NMI_Control|bus_state.BST_MWR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Selector26~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|bus_state.BST_MWR~regout\);

-- Location: LCCOMB_X21_Y6_N26
\inst_NMI_Control|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector17~0_combout\ = (!\inst_NMI_Control|bus_state.BST_IDLE~regout\ & !\inst_NMI_Control|bus_state.BST_MWR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|bus_state.BST_IDLE~regout\,
	datac => \inst_NMI_Control|bus_state.BST_MWR~regout\,
	combout => \inst_NMI_Control|Selector17~0_combout\);

-- Location: LCCOMB_X21_Y6_N12
\inst_NMI_Control|Selector16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector16~1_combout\ = (\inst_NMI_Control|nmi_out~_Duplicate_1_regout\ & ((\inst_NMI_Control|nmi_req~regout\) # ((\inst_NMI_Control|bus_state.BST_M1~regout\) # (!\inst_NMI_Control|Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|nmi_req~regout\,
	datab => \inst_NMI_Control|Selector17~0_combout\,
	datac => \inst_NMI_Control|bus_state.BST_M1~regout\,
	datad => \inst_NMI_Control|nmi_out~_Duplicate_1_regout\,
	combout => \inst_NMI_Control|Selector16~1_combout\);

-- Location: LCCOMB_X21_Y6_N30
\inst_NMI_Control|Selector16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector16~2_combout\ = (\inst_NMI_Control|Selector16~1_combout\) # ((\inst_NMI_Control|Selector17~1_combout\ & ((\inst_NMI_Control|nmi_req~regout\) # (\prot_s~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Selector17~1_combout\,
	datab => \inst_NMI_Control|nmi_req~regout\,
	datac => \prot_s~regout\,
	datad => \inst_NMI_Control|Selector16~1_combout\,
	combout => \inst_NMI_Control|Selector16~2_combout\);

-- Location: LCCOMB_X21_Y6_N0
\inst_NMI_Control|Selector16~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector16~5_combout\ = (\inst_NMI_Control|Selector16~0_combout\) # ((\inst_NMI_Control|Selector16~2_combout\) # ((\inst_NMI_Control|Selector16~4_combout\ & \inst_NMI_Control|Selector16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Selector16~4_combout\,
	datab => \inst_NMI_Control|Selector16~3_combout\,
	datac => \inst_NMI_Control|Selector16~0_combout\,
	datad => \inst_NMI_Control|Selector16~2_combout\,
	combout => \inst_NMI_Control|Selector16~5_combout\);

-- Location: LCFF_X21_Y6_N1
\inst_NMI_Control|nmi_out~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Selector16~5_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|nmi_out~_Duplicate_1_regout\);

-- Location: LCCOMB_X21_Y6_N4
\inst_NMI_Control|busi~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|busi~1_combout\ = (\inst_NMI_Control|Equal2~0_combout\ & (\inst_NMI_Control|nmi_req~regout\ & (!\inst_NMI_Control|cyc_timer\(0) & !\inst_NMI_Control|nmi_out~_Duplicate_1_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Equal2~0_combout\,
	datab => \inst_NMI_Control|nmi_req~regout\,
	datac => \inst_NMI_Control|cyc_timer\(0),
	datad => \inst_NMI_Control|nmi_out~_Duplicate_1_regout\,
	combout => \inst_NMI_Control|busi~1_combout\);

-- Location: LCCOMB_X21_Y6_N28
\inst_NMI_Control|Selector35~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector35~3_combout\ = (\inst_NMI_Control|Selector35~2_combout\) # ((\inst_NMI_Control|Selector16~3_combout\ & ((\inst_NMI_Control|busi~1_combout\) # (\inst_NMI_Control|nmi_trigd~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Selector35~2_combout\,
	datab => \inst_NMI_Control|busi~1_combout\,
	datac => \inst_NMI_Control|nmi_trigd~regout\,
	datad => \inst_NMI_Control|Selector16~3_combout\,
	combout => \inst_NMI_Control|Selector35~3_combout\);

-- Location: LCFF_X21_Y6_N29
\inst_NMI_Control|nmi_trigd\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Selector35~3_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|nmi_trigd~regout\);

-- Location: LCCOMB_X25_Y6_N28
\inst_NMI_Control|Selector22~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector22~5_combout\ = (\m1_s~regout\ & \inst_NMI_Control|nmi_trigd~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \m1_s~regout\,
	datac => \inst_NMI_Control|nmi_trigd~regout\,
	combout => \inst_NMI_Control|Selector22~5_combout\);

-- Location: LCCOMB_X25_Y6_N8
\inst_NMI_Control|bus_state.BST_M1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|bus_state.BST_M1~0_combout\ = (\inst_NMI_Control|Selector22~5_combout\ & (!\inst_NMI_Control|busi~0_combout\)) # (!\inst_NMI_Control|Selector22~5_combout\ & ((\m1_s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|busi~0_combout\,
	datab => \m1_s~regout\,
	datad => \inst_NMI_Control|Selector22~5_combout\,
	combout => \inst_NMI_Control|bus_state.BST_M1~0_combout\);

-- Location: LCCOMB_X25_Y6_N14
\inst_NMI_Control|Selector22~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector22~6_combout\ = (\inst_NMI_Control|Selector22~4_combout\ & \inst_NMI_Control|bus_state.BST_M1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_NMI_Control|Selector22~4_combout\,
	datad => \inst_NMI_Control|bus_state.BST_M1~regout\,
	combout => \inst_NMI_Control|Selector22~6_combout\);

-- Location: LCFF_X25_Y6_N9
\inst_NMI_Control|bus_state.BST_M1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|bus_state.BST_M1~0_combout\,
	sdata => \inst_NMI_Control|Selector22~6_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => \inst_NMI_Control|ALT_INV_bus_state.BST_MEM2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|bus_state.BST_M1~regout\);

-- Location: LCCOMB_X21_Y6_N6
\inst_NMI_Control|super_instr_out~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|super_instr_out~0_combout\ = (\inst_NMI_Control|cyc_timer\(0) & (!\inst_NMI_Control|cyc_timer\(1) & (\inst_NMI_Control|bus_state.BST_M1~regout\ & \inst_NMI_Control|cyc_timer\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|cyc_timer\(0),
	datab => \inst_NMI_Control|cyc_timer\(1),
	datac => \inst_NMI_Control|bus_state.BST_M1~regout\,
	datad => \inst_NMI_Control|cyc_timer\(2),
	combout => \inst_NMI_Control|super_instr_out~0_combout\);

-- Location: LCCOMB_X9_Y7_N24
\inst_NMI_Control|super_instr_out~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|super_instr_out~1_combout\ = (\inst_NMI_Control|super_instr_out~0_combout\ & (\super_s~regout\)) # (!\inst_NMI_Control|super_instr_out~0_combout\ & ((\inst_NMI_Control|super_instr_out~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \super_s~regout\,
	datac => \inst_NMI_Control|super_instr_out~regout\,
	datad => \inst_NMI_Control|super_instr_out~0_combout\,
	combout => \inst_NMI_Control|super_instr_out~1_combout\);

-- Location: LCFF_X9_Y7_N25
\inst_NMI_Control|super_instr_out\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|super_instr_out~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|super_instr_out~regout\);

-- Location: LCCOMB_X12_Y9_N26
\Selector52~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~13_combout\ = (\io_state.ST_IDLE~regout\) # ((\inst_NMI_Control|super_instr_out~regout\ & (\iorq_s~regout\ & \Selector46~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IDLE~regout\,
	datab => \inst_NMI_Control|super_instr_out~regout\,
	datac => \iorq_s~regout\,
	datad => \Selector46~3_combout\,
	combout => \Selector52~13_combout\);

-- Location: LCCOMB_X9_Y9_N4
\Selector52~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~14_combout\ = (!\Selector52~9_combout\ & (\Selector52~24_combout\ & (!\Selector52~7_combout\ & \Selector52~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector52~9_combout\,
	datab => \Selector52~24_combout\,
	datac => \Selector52~7_combout\,
	datad => \Selector52~13_combout\,
	combout => \Selector52~14_combout\);

-- Location: LCCOMB_X9_Y9_N8
\Selector52~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~21_combout\ = (\io_state.ST_IDLE~regout\ & (\Selector52~20_combout\ & (\io_state.ST_IORD~regout\))) # (!\io_state.ST_IDLE~regout\ & (((\wr_s~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector52~20_combout\,
	datab => \io_state.ST_IDLE~regout\,
	datac => \io_state.ST_IORD~regout\,
	datad => \wr_s~regout\,
	combout => \Selector52~21_combout\);

-- Location: LCCOMB_X10_Y5_N12
\Selector41~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~12_combout\ = (\io_state.ST_IOWR~regout\ & (((a_s(1) & a_s(0))) # (!\Equal18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(1),
	datab => \io_state.ST_IOWR~regout\,
	datac => a_s(0),
	datad => \Equal18~0_combout\,
	combout => \Selector41~12_combout\);

-- Location: LCCOMB_X10_Y9_N30
\Selector52~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~11_combout\ = (\Selector41~12_combout\ & (((!\WideNor0~11_combout\) # (!\WideNor0~7_combout\)) # (!\WideNor0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~5_combout\,
	datab => \WideNor0~7_combout\,
	datac => \WideNor0~11_combout\,
	datad => \Selector41~12_combout\,
	combout => \Selector52~11_combout\);

-- Location: LCCOMB_X12_Y9_N12
\Selector41~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~13_combout\ = (\iorq_s~regout\ & !\io_state.ST_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \iorq_s~regout\,
	datad => \io_state.ST_IDLE~regout\,
	combout => \Selector41~13_combout\);

-- Location: LCCOMB_X12_Y9_N30
\Selector46~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~1_combout\ = (\Selector41~13_combout\ & ((\m1_s~regout\) # ((\rd_s~regout\ & \inst_NMI_Control|super_instr_out~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_s~regout\,
	datab => \inst_NMI_Control|super_instr_out~regout\,
	datac => \m1_s~regout\,
	datad => \Selector41~13_combout\,
	combout => \Selector46~1_combout\);

-- Location: LCCOMB_X10_Y9_N18
\Selector52~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~4_combout\ = (!\WideNor0~9_combout\ & \Selector41~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \WideNor0~9_combout\,
	datad => \Selector41~8_combout\,
	combout => \Selector52~4_combout\);

-- Location: LCCOMB_X9_Y9_N2
\Selector52~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~12_combout\ = (\Selector52~10_combout\) # ((\Selector52~11_combout\) # ((\Selector46~1_combout\) # (\Selector52~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector52~10_combout\,
	datab => \Selector52~11_combout\,
	datac => \Selector46~1_combout\,
	datad => \Selector52~4_combout\,
	combout => \Selector52~12_combout\);

-- Location: LCCOMB_X9_Y9_N26
\Selector52~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~22_combout\ = (\Selector52~12_combout\) # ((\Selector52~14_combout\ & ((\Selector52~25_combout\) # (\Selector52~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector52~25_combout\,
	datab => \Selector52~14_combout\,
	datac => \Selector52~21_combout\,
	datad => \Selector52~12_combout\,
	combout => \Selector52~22_combout\);

-- Location: LCCOMB_X10_Y4_N8
\iosm~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \iosm~0_combout\ = (\Equal3~6_combout\ & (\Equal9~0_combout\ & (!a_s(5) & a_s(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~6_combout\,
	datab => \Equal9~0_combout\,
	datac => a_s(5),
	datad => a_s(2),
	combout => \iosm~0_combout\);

-- Location: LCCOMB_X9_Y9_N12
\Selector52~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector52~23_combout\ = (\iosm~0_combout\ & (!\io_state.ST_WAIT~regout\ & \Selector52~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \iosm~0_combout\,
	datac => \io_state.ST_WAIT~regout\,
	datad => \Selector52~11_combout\,
	combout => \Selector52~23_combout\);

-- Location: LCFF_X9_Y9_N13
\io_state.ST_WAIT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Selector52~23_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \io_state.ST_WAIT~regout\);

-- Location: LCCOMB_X9_Y9_N16
\Selector53~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector53~1_combout\ = (\io_state.ST_WAIT~regout\) # ((\Selector52~22_combout\ & (\Selector53~0_combout\)) # (!\Selector52~22_combout\ & ((\io_state.ST_DONE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector53~0_combout\,
	datab => \Selector52~22_combout\,
	datac => \io_state.ST_DONE~regout\,
	datad => \io_state.ST_WAIT~regout\,
	combout => \Selector53~1_combout\);

-- Location: LCFF_X9_Y9_N17
\io_state.ST_DONE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Selector53~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \io_state.ST_DONE~regout\);

-- Location: LCCOMB_X10_Y7_N14
\Selector41~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~30_combout\ = (\io_state.ST_DONE~regout\) # ((\Selector41~12_combout\ & !\WideNor1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~12_combout\,
	datac => \io_state.ST_DONE~regout\,
	datad => \WideNor1~combout\,
	combout => \Selector41~30_combout\);

-- Location: LCCOMB_X10_Y5_N10
\Selector41~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~33_combout\ = (a_s(1)) # (!\Equal18~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(1),
	datad => \Equal18~0_combout\,
	combout => \Selector41~33_combout\);

-- Location: LCCOMB_X10_Y7_N0
\WideNor0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~10_combout\ = (\WideNor0~5_combout\ & (\WideNor0~11_combout\ & \WideNor0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~5_combout\,
	datab => \WideNor0~11_combout\,
	datad => \WideNor0~7_combout\,
	combout => \WideNor0~10_combout\);

-- Location: LCCOMB_X10_Y7_N10
WideNor0 : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~combout\ = (((!\WideNor0~10_combout\) # (!\WideNor0~8_combout\)) # (!\Selector41~33_combout\)) # (!\Selector46~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector46~2_combout\,
	datab => \Selector41~33_combout\,
	datac => \WideNor0~8_combout\,
	datad => \WideNor0~10_combout\,
	combout => \WideNor0~combout\);

-- Location: LCCOMB_X10_Y10_N12
\Selector41~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~31_combout\ = (!\iorq_s~regout\ & ((\Selector41~30_combout\) # ((\Selector41~8_combout\ & !\WideNor0~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iorq_s~regout\,
	datab => \Selector41~30_combout\,
	datac => \Selector41~8_combout\,
	datad => \WideNor0~combout\,
	combout => \Selector41~31_combout\);

-- Location: LCCOMB_X10_Y10_N26
\Selector43~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~1_combout\ = (\Selector41~29_combout\ & !\Selector41~31_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Selector41~29_combout\,
	datad => \Selector41~31_combout\,
	combout => \Selector43~1_combout\);

-- Location: LCCOMB_X18_Y9_N22
\Selector41~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~19_combout\ = (\m1_s~regout\) # ((\inst_NMI_Control|super_instr_out~regout\ & ((\rd_s~regout\) # (\wr_s~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rd_s~regout\,
	datab => \wr_s~regout\,
	datac => \inst_NMI_Control|super_instr_out~regout\,
	datad => \m1_s~regout\,
	combout => \Selector41~19_combout\);

-- Location: LCCOMB_X10_Y8_N20
\Equal13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal13~0_combout\ = (\Equal10~0_combout\ & (a_s(1) & a_s(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal10~0_combout\,
	datac => a_s(1),
	datad => a_s(0),
	combout => \Equal13~0_combout\);

-- Location: LCCOMB_X12_Y9_N22
\Selector45~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (!\Selector41~31_combout\ & (!\io_state.ST_WAIT~regout\ & \io_state.ST_IORD_AUX~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector41~31_combout\,
	datac => \io_state.ST_WAIT~regout\,
	datad => \io_state.ST_IORD_AUX~regout\,
	combout => \Selector45~0_combout\);

-- Location: LCCOMB_X12_Y9_N18
\Selector45~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector45~1_combout\ = (\Selector44~0_combout\ & ((\Equal13~0_combout\) # ((\Selector41~29_combout\ & \Selector45~0_combout\)))) # (!\Selector44~0_combout\ & (\Selector41~29_combout\ & ((\Selector45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~0_combout\,
	datab => \Selector41~29_combout\,
	datac => \Equal13~0_combout\,
	datad => \Selector45~0_combout\,
	combout => \Selector45~1_combout\);

-- Location: LCFF_X12_Y9_N19
\io_state.ST_IORD_AUX\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Selector45~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \io_state.ST_IORD_AUX~regout\);

-- Location: LCCOMB_X10_Y6_N20
\fifos_rdreq[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifos_rdreq[3]~3_combout\ = (fifos_rdreq(3) & (((\inst_Synch_Rst|Output\(0)) # (!\io_state.ST_IORD_AUX~regout\)) # (!\inst_FIFOs|RdAck\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|RdAck\(3),
	datab => \inst_Synch_Rst|Output\(0),
	datac => fifos_rdreq(3),
	datad => \io_state.ST_IORD_AUX~regout\,
	combout => \fifos_rdreq[3]~3_combout\);

-- Location: LCCOMB_X8_Y9_N26
\fifos_rdreq[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifos_rdreq[3]~4_combout\ = (\io_state.ST_IORD~regout\ & (!\inst_Synch_Rst|Output\(0) & !\io_state.ST_IORD_AUX~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IORD~regout\,
	datac => \inst_Synch_Rst|Output\(0),
	datad => \io_state.ST_IORD_AUX~regout\,
	combout => \fifos_rdreq[3]~4_combout\);

-- Location: LCCOMB_X8_Y9_N22
\fifos_rdreq[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifos_rdreq[3]~5_combout\ = (\fifos_rdreq[3]~3_combout\) # ((\inst_FIFOs|Equal6~0_combout\ & (\fifos_rdreq[3]~4_combout\ & \Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Equal6~0_combout\,
	datab => \fifos_rdreq[3]~3_combout\,
	datac => \fifos_rdreq[3]~4_combout\,
	datad => \Equal13~0_combout\,
	combout => \fifos_rdreq[3]~5_combout\);

-- Location: LCFF_X8_Y9_N23
\fifos_rdreq[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \fifos_rdreq[3]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => fifos_rdreq(3));

-- Location: LCCOMB_X7_Y7_N16
\inst_FIFOs|contents[1][0]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[1][0]~28_combout\ = \inst_FIFOs|contents[1][0]~regout\ $ (VCC)
-- \inst_FIFOs|contents[1][0]~29\ = CARRY(\inst_FIFOs|contents[1][0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[1][0]~regout\,
	datad => VCC,
	combout => \inst_FIFOs|contents[1][0]~28_combout\,
	cout => \inst_FIFOs|contents[1][0]~29\);

-- Location: LCCOMB_X7_Y7_N18
\inst_FIFOs|contents[1][1]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[1][1]~30_combout\ = (\inst_FIFOs|state.ST_RD_DONE~regout\ & ((\inst_FIFOs|contents[1][1]~regout\ & (\inst_FIFOs|contents[1][0]~29\ & VCC)) # (!\inst_FIFOs|contents[1][1]~regout\ & (!\inst_FIFOs|contents[1][0]~29\)))) # 
-- (!\inst_FIFOs|state.ST_RD_DONE~regout\ & ((\inst_FIFOs|contents[1][1]~regout\ & (!\inst_FIFOs|contents[1][0]~29\)) # (!\inst_FIFOs|contents[1][1]~regout\ & ((\inst_FIFOs|contents[1][0]~29\) # (GND)))))
-- \inst_FIFOs|contents[1][1]~31\ = CARRY((\inst_FIFOs|state.ST_RD_DONE~regout\ & (!\inst_FIFOs|contents[1][1]~regout\ & !\inst_FIFOs|contents[1][0]~29\)) # (!\inst_FIFOs|state.ST_RD_DONE~regout\ & ((!\inst_FIFOs|contents[1][0]~29\) # 
-- (!\inst_FIFOs|contents[1][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datab => \inst_FIFOs|contents[1][1]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|contents[1][0]~29\,
	combout => \inst_FIFOs|contents[1][1]~30_combout\,
	cout => \inst_FIFOs|contents[1][1]~31\);

-- Location: LCCOMB_X8_Y2_N28
\inst_Aux_Rx|bd_div~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|bd_div~3_combout\ = (!\inst_Aux_Rx|state.ST_IDLE~regout\ & !\inst_Aux_Rx|bd_div\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|state.ST_IDLE~regout\,
	datac => \inst_Aux_Rx|bd_div\(0),
	combout => \inst_Aux_Rx|bd_div~3_combout\);

-- Location: LCCOMB_X8_Y10_N8
\inst_Timing|count_con~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|count_con~3_combout\ = (\inst_Timing|Add2~2_combout\ & !\inst_Timing|Equal2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Timing|Add2~2_combout\,
	datad => \inst_Timing|Equal2~2_combout\,
	combout => \inst_Timing|count_con~3_combout\);

-- Location: LCFF_X8_Y10_N9
\inst_Timing|count_con[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|count_con~3_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_con\(1));

-- Location: LCCOMB_X8_Y10_N30
\inst_Timing|count_con~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|count_con~4_combout\ = (\inst_Timing|Add2~0_combout\ & !\inst_Timing|Equal2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Timing|Add2~0_combout\,
	datad => \inst_Timing|Equal2~2_combout\,
	combout => \inst_Timing|count_con~4_combout\);

-- Location: LCFF_X8_Y10_N31
\inst_Timing|count_con[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|count_con~4_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_con\(0));

-- Location: LCCOMB_X8_Y10_N14
\inst_Timing|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add2~4_combout\ = (\inst_Timing|count_con\(2) & (\inst_Timing|Add2~3\ $ (GND))) # (!\inst_Timing|count_con\(2) & (!\inst_Timing|Add2~3\ & VCC))
-- \inst_Timing|Add2~5\ = CARRY((\inst_Timing|count_con\(2) & !\inst_Timing|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_Timing|count_con\(2),
	datad => VCC,
	cin => \inst_Timing|Add2~3\,
	combout => \inst_Timing|Add2~4_combout\,
	cout => \inst_Timing|Add2~5\);

-- Location: LCFF_X8_Y10_N15
\inst_Timing|count_con[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|Add2~4_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_con\(2));

-- Location: LCCOMB_X8_Y10_N16
\inst_Timing|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add2~6_combout\ = (\inst_Timing|count_con\(3) & (!\inst_Timing|Add2~5\)) # (!\inst_Timing|count_con\(3) & ((\inst_Timing|Add2~5\) # (GND)))
-- \inst_Timing|Add2~7\ = CARRY((!\inst_Timing|Add2~5\) # (!\inst_Timing|count_con\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_Timing|count_con\(3),
	datad => VCC,
	cin => \inst_Timing|Add2~5\,
	combout => \inst_Timing|Add2~6_combout\,
	cout => \inst_Timing|Add2~7\);

-- Location: LCCOMB_X8_Y10_N4
\inst_Timing|count_con~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|count_con~2_combout\ = (\inst_Timing|Add2~6_combout\ & !\inst_Timing|Equal2~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_Timing|Add2~6_combout\,
	datad => \inst_Timing|Equal2~2_combout\,
	combout => \inst_Timing|count_con~2_combout\);

-- Location: LCFF_X8_Y10_N5
\inst_Timing|count_con[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|count_con~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_con\(3));

-- Location: LCCOMB_X8_Y10_N18
\inst_Timing|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add2~8_combout\ = (\inst_Timing|count_con\(4) & (\inst_Timing|Add2~7\ $ (GND))) # (!\inst_Timing|count_con\(4) & (!\inst_Timing|Add2~7\ & VCC))
-- \inst_Timing|Add2~9\ = CARRY((\inst_Timing|count_con\(4) & !\inst_Timing|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_Timing|count_con\(4),
	datad => VCC,
	cin => \inst_Timing|Add2~7\,
	combout => \inst_Timing|Add2~8_combout\,
	cout => \inst_Timing|Add2~9\);

-- Location: LCFF_X8_Y10_N19
\inst_Timing|count_con[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|Add2~8_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_con\(4));

-- Location: LCCOMB_X8_Y10_N22
\inst_Timing|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add2~12_combout\ = (\inst_Timing|count_con\(6) & (\inst_Timing|Add2~11\ $ (GND))) # (!\inst_Timing|count_con\(6) & (!\inst_Timing|Add2~11\ & VCC))
-- \inst_Timing|Add2~13\ = CARRY((\inst_Timing|count_con\(6) & !\inst_Timing|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_Timing|count_con\(6),
	datad => VCC,
	cin => \inst_Timing|Add2~11\,
	combout => \inst_Timing|Add2~12_combout\,
	cout => \inst_Timing|Add2~13\);

-- Location: LCFF_X8_Y10_N23
\inst_Timing|count_con[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|Add2~12_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_con\(6));

-- Location: LCCOMB_X8_Y10_N24
\inst_Timing|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add2~14_combout\ = (\inst_Timing|count_con\(7) & (!\inst_Timing|Add2~13\)) # (!\inst_Timing|count_con\(7) & ((\inst_Timing|Add2~13\) # (GND)))
-- \inst_Timing|Add2~15\ = CARRY((!\inst_Timing|Add2~13\) # (!\inst_Timing|count_con\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_Timing|count_con\(7),
	datad => VCC,
	cin => \inst_Timing|Add2~13\,
	combout => \inst_Timing|Add2~14_combout\,
	cout => \inst_Timing|Add2~15\);

-- Location: LCCOMB_X7_Y10_N18
\inst_Timing|count_con~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|count_con~1_combout\ = (!\inst_Timing|Equal2~2_combout\ & \inst_Timing|Add2~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_Timing|Equal2~2_combout\,
	datad => \inst_Timing|Add2~14_combout\,
	combout => \inst_Timing|count_con~1_combout\);

-- Location: LCFF_X7_Y10_N19
\inst_Timing|count_con[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|count_con~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_con\(7));

-- Location: LCCOMB_X8_Y10_N26
\inst_Timing|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add2~16_combout\ = (\inst_Timing|count_con\(8) & (\inst_Timing|Add2~15\ $ (GND))) # (!\inst_Timing|count_con\(8) & (!\inst_Timing|Add2~15\ & VCC))
-- \inst_Timing|Add2~17\ = CARRY((\inst_Timing|count_con\(8) & !\inst_Timing|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_Timing|count_con\(8),
	datad => VCC,
	cin => \inst_Timing|Add2~15\,
	combout => \inst_Timing|Add2~16_combout\,
	cout => \inst_Timing|Add2~17\);

-- Location: LCFF_X8_Y10_N27
\inst_Timing|count_con[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|Add2~16_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_con\(8));

-- Location: LCCOMB_X8_Y10_N28
\inst_Timing|Add2~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add2~18_combout\ = \inst_Timing|Add2~17\ $ (\inst_Timing|count_con\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst_Timing|count_con\(9),
	cin => \inst_Timing|Add2~17\,
	combout => \inst_Timing|Add2~18_combout\);

-- Location: LCCOMB_X7_Y10_N16
\inst_Timing|count_con~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|count_con~0_combout\ = (!\inst_Timing|Equal2~2_combout\ & \inst_Timing|Add2~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_Timing|Equal2~2_combout\,
	datad => \inst_Timing|Add2~18_combout\,
	combout => \inst_Timing|count_con~0_combout\);

-- Location: LCFF_X7_Y10_N17
\inst_Timing|count_con[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|count_con~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_con\(9));

-- Location: LCCOMB_X8_Y10_N2
\inst_Timing|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Equal2~0_combout\ = (!\inst_Timing|count_con\(8) & (\inst_Timing|count_con\(7) & (\inst_Timing|count_con\(9) & !\inst_Timing|count_con\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Timing|count_con\(8),
	datab => \inst_Timing|count_con\(7),
	datac => \inst_Timing|count_con\(9),
	datad => \inst_Timing|count_con\(6),
	combout => \inst_Timing|Equal2~0_combout\);

-- Location: LCCOMB_X8_Y10_N0
\inst_Timing|Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Equal2~2_combout\ = (\inst_Timing|Equal2~1_combout\ & (\inst_Timing|Equal2~0_combout\ & (\inst_Timing|count_con\(1) & !\inst_Timing|count_con\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Timing|Equal2~1_combout\,
	datab => \inst_Timing|Equal2~0_combout\,
	datac => \inst_Timing|count_con\(1),
	datad => \inst_Timing|count_con\(0),
	combout => \inst_Timing|Equal2~2_combout\);

-- Location: LCFF_X8_Y10_N1
\inst_Timing|Strb_Con\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|Equal2~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|Strb_Con~regout\);

-- Location: LCCOMB_X8_Y3_N2
\inst_Aux_Rx|state.ST_INIT~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|state.ST_INIT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst_Aux_Rx|state.ST_INIT~feeder_combout\);

-- Location: LCCOMB_X9_Y3_N8
\inst_Aux_Rx|Selector4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Selector4~7_combout\ = (\inst_Aux_Rx|Selector4~6_combout\) # (\inst_Aux_Rx|Selector4~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Aux_Rx|Selector4~6_combout\,
	datad => \inst_Aux_Rx|Selector4~8_combout\,
	combout => \inst_Aux_Rx|Selector4~7_combout\);

-- Location: LCFF_X8_Y3_N3
\inst_Aux_Rx|state.ST_INIT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|state.ST_INIT~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Aux_Rx|Selector4~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|state.ST_INIT~regout\);

-- Location: LCCOMB_X8_Y5_N26
\inst_FIFOs|WrAck[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|WrAck[3]~11_combout\ = (\inst_FIFOs|WrAck\(3) & ((\inst_FIFOs|fsm~1_combout\) # ((!\inst_FIFOs|Equal8~1_combout\) # (!\inst_FIFOs|state.ST_WR_DONE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|fsm~1_combout\,
	datab => \inst_FIFOs|WrAck\(3),
	datac => \inst_FIFOs|state.ST_WR_DONE~regout\,
	datad => \inst_FIFOs|Equal8~1_combout\,
	combout => \inst_FIFOs|WrAck[3]~11_combout\);

-- Location: LCCOMB_X8_Y4_N10
\inst_FIFOs|WrAck[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|WrAck[3]~12_combout\ = (\inst_FIFOs|WrAck[3]~11_combout\) # ((\inst_FIFOs|WrAck[0]~4_combout\ & (\inst_FIFOs|op_fifo\(1) & \inst_FIFOs|op_fifo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|WrAck[0]~4_combout\,
	datab => \inst_FIFOs|op_fifo\(1),
	datac => \inst_FIFOs|op_fifo\(0),
	datad => \inst_FIFOs|WrAck[3]~11_combout\,
	combout => \inst_FIFOs|WrAck[3]~12_combout\);

-- Location: LCFF_X8_Y4_N11
\inst_FIFOs|WrAck[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|WrAck[3]~12_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|WrAck\(3));

-- Location: LCCOMB_X9_Y3_N28
\inst_Aux_Rx|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Selector5~0_combout\ = (\inst_Aux_Rx|bd_halfway~regout\ & \inst_Aux_Rx|state.ST_DATA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_Aux_Rx|bd_halfway~regout\,
	datad => \inst_Aux_Rx|state.ST_DATA~regout\,
	combout => \inst_Aux_Rx|Selector5~0_combout\);

-- Location: LCCOMB_X9_Y3_N26
\inst_Aux_Rx|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Selector5~2_combout\ = (\inst_Aux_Rx|inst_DeNoise|output_int~regout\ & (((!\inst_Aux_Rx|state.ST_IDLE~regout\ & \inst_Aux_Rx|Selector5~0_combout\)))) # (!\inst_Aux_Rx|inst_DeNoise|output_int~regout\ & ((\inst_Aux_Rx|state.ST_START~regout\) # 
-- ((!\inst_Aux_Rx|state.ST_IDLE~regout\ & \inst_Aux_Rx|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|inst_DeNoise|output_int~regout\,
	datab => \inst_Aux_Rx|state.ST_START~regout\,
	datac => \inst_Aux_Rx|state.ST_IDLE~regout\,
	datad => \inst_Aux_Rx|Selector5~0_combout\,
	combout => \inst_Aux_Rx|Selector5~2_combout\);

-- Location: LCCOMB_X9_Y3_N4
\inst_Aux_Rx|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Selector5~3_combout\ = (\inst_Aux_Rx|state.ST_DATA~regout\ & (\inst_Aux_Rx|Add1~0_combout\ & (\inst_Aux_Rx|bit_count\(2)))) # (!\inst_Aux_Rx|state.ST_DATA~regout\ & (((\inst_Aux_Rx|bd_halfway~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|Add1~0_combout\,
	datab => \inst_Aux_Rx|bit_count\(2),
	datac => \inst_Aux_Rx|bd_halfway~regout\,
	datad => \inst_Aux_Rx|state.ST_DATA~regout\,
	combout => \inst_Aux_Rx|Selector5~3_combout\);

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ARxDn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ARxDn,
	combout => \ARxDn~combout\);

-- Location: LCCOMB_X18_Y6_N14
\inst_Aux_Rx|inst_Sync|meta_reg[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|inst_Sync|meta_reg[0]~feeder_combout\ = \ARxDn~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ARxDn~combout\,
	combout => \inst_Aux_Rx|inst_Sync|meta_reg[0]~feeder_combout\);

-- Location: LCFF_X18_Y6_N15
\inst_Aux_Rx|inst_Sync|meta_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|inst_Sync|meta_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|inst_Sync|meta_reg\(0));

-- Location: LCFF_X18_Y6_N3
\inst_Aux_Rx|inst_Sync|Output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_Aux_Rx|inst_Sync|meta_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|inst_Sync|Output\(0));

-- Location: LCCOMB_X18_Y6_N6
\inst_Aux_Rx|inst_DeNoise|avg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|inst_DeNoise|avg~2_combout\ = (!\inst_Aux_Rx|inst_DeNoise|avg\(0) & ((\inst_Aux_Rx|inst_DeNoise|avg\(2) $ (\inst_Aux_Rx|inst_Sync|Output\(0))) # (!\inst_Aux_Rx|inst_DeNoise|avg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|inst_DeNoise|avg\(2),
	datab => \inst_Aux_Rx|inst_DeNoise|avg\(1),
	datac => \inst_Aux_Rx|inst_DeNoise|avg\(0),
	datad => \inst_Aux_Rx|inst_Sync|Output\(0),
	combout => \inst_Aux_Rx|inst_DeNoise|avg~2_combout\);

-- Location: LCFF_X18_Y6_N7
\inst_Aux_Rx|inst_DeNoise|avg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|inst_DeNoise|avg~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|Strb_Con~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|inst_DeNoise|avg\(0));

-- Location: LCCOMB_X18_Y6_N26
\inst_Aux_Rx|inst_DeNoise|avg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|inst_DeNoise|avg~0_combout\ = (\inst_Aux_Rx|inst_Sync|Output\(0) & ((\inst_Aux_Rx|inst_DeNoise|avg\(1) $ (\inst_Aux_Rx|inst_DeNoise|avg\(0))))) # (!\inst_Aux_Rx|inst_Sync|Output\(0) & ((\inst_Aux_Rx|inst_DeNoise|avg\(1) & 
-- ((\inst_Aux_Rx|inst_DeNoise|avg\(0)) # (!\inst_Aux_Rx|inst_DeNoise|avg\(2)))) # (!\inst_Aux_Rx|inst_DeNoise|avg\(1) & ((!\inst_Aux_Rx|inst_DeNoise|avg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|inst_DeNoise|avg\(2),
	datab => \inst_Aux_Rx|inst_Sync|Output\(0),
	datac => \inst_Aux_Rx|inst_DeNoise|avg\(1),
	datad => \inst_Aux_Rx|inst_DeNoise|avg\(0),
	combout => \inst_Aux_Rx|inst_DeNoise|avg~0_combout\);

-- Location: LCFF_X18_Y6_N27
\inst_Aux_Rx|inst_DeNoise|avg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|inst_DeNoise|avg~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|Strb_Con~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|inst_DeNoise|avg\(1));

-- Location: LCCOMB_X18_Y6_N2
\inst_Aux_Rx|inst_DeNoise|output_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|inst_DeNoise|output_int~0_combout\ = (\inst_Aux_Rx|inst_DeNoise|avg\(1) & (!\inst_Aux_Rx|inst_DeNoise|avg\(0) & (\inst_Aux_Rx|inst_DeNoise|avg\(2) $ (!\inst_Aux_Rx|inst_Sync|Output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|inst_DeNoise|avg\(2),
	datab => \inst_Aux_Rx|inst_DeNoise|avg\(1),
	datac => \inst_Aux_Rx|inst_Sync|Output\(0),
	datad => \inst_Aux_Rx|inst_DeNoise|avg\(0),
	combout => \inst_Aux_Rx|inst_DeNoise|output_int~0_combout\);

-- Location: LCCOMB_X18_Y6_N28
\inst_Aux_Rx|inst_DeNoise|output_int~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|inst_DeNoise|output_int~1_combout\ = (\inst_Timing|Strb_Con~regout\ & ((\inst_Aux_Rx|inst_DeNoise|output_int~0_combout\ & ((\inst_Aux_Rx|inst_Sync|Output\(0)))) # (!\inst_Aux_Rx|inst_DeNoise|output_int~0_combout\ & 
-- (\inst_Aux_Rx|inst_DeNoise|output_int~regout\)))) # (!\inst_Timing|Strb_Con~regout\ & (((\inst_Aux_Rx|inst_DeNoise|output_int~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Timing|Strb_Con~regout\,
	datab => \inst_Aux_Rx|inst_DeNoise|output_int~0_combout\,
	datac => \inst_Aux_Rx|inst_DeNoise|output_int~regout\,
	datad => \inst_Aux_Rx|inst_Sync|Output\(0),
	combout => \inst_Aux_Rx|inst_DeNoise|output_int~1_combout\);

-- Location: LCFF_X18_Y6_N29
\inst_Aux_Rx|inst_DeNoise|output_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|inst_DeNoise|output_int~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|inst_DeNoise|output_int~regout\);

-- Location: LCCOMB_X9_Y3_N30
\inst_Aux_Rx|Selector5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Selector5~4_combout\ = (\inst_Aux_Rx|state.ST_IDLE~regout\ & (((\inst_Aux_Rx|Selector5~2_combout\ & \inst_Aux_Rx|Selector5~3_combout\)) # (!\inst_Aux_Rx|inst_DeNoise|output_int~regout\))) # (!\inst_Aux_Rx|state.ST_IDLE~regout\ & 
-- (\inst_Aux_Rx|Selector5~2_combout\ & (\inst_Aux_Rx|Selector5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|state.ST_IDLE~regout\,
	datab => \inst_Aux_Rx|Selector5~2_combout\,
	datac => \inst_Aux_Rx|Selector5~3_combout\,
	datad => \inst_Aux_Rx|inst_DeNoise|output_int~regout\,
	combout => \inst_Aux_Rx|Selector5~4_combout\);

-- Location: LCCOMB_X8_Y3_N6
\inst_Aux_Rx|Selector5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Selector5~6_combout\ = (\inst_Aux_Rx|Selector5~5_combout\) # ((\inst_Aux_Rx|Selector5~4_combout\) # ((\inst_FIFOs|WrAck\(3) & \inst_Aux_Rx|state.ST_WTACK~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|Selector5~5_combout\,
	datab => \inst_FIFOs|WrAck\(3),
	datac => \inst_Aux_Rx|state.ST_WTACK~regout\,
	datad => \inst_Aux_Rx|Selector5~4_combout\,
	combout => \inst_Aux_Rx|Selector5~6_combout\);

-- Location: LCCOMB_X8_Y3_N20
\inst_Aux_Rx|Selector5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Selector5~7_combout\ = (\inst_Aux_Rx|Selector10~0_combout\) # ((!\inst_Aux_Rx|Selector5~1_combout\ & (\inst_Aux_Rx|state.ST_WTACK~regout\ & !\inst_Aux_Rx|Selector5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|Selector5~1_combout\,
	datab => \inst_Aux_Rx|Selector10~0_combout\,
	datac => \inst_Aux_Rx|state.ST_WTACK~regout\,
	datad => \inst_Aux_Rx|Selector5~6_combout\,
	combout => \inst_Aux_Rx|Selector5~7_combout\);

-- Location: LCFF_X8_Y3_N21
\inst_Aux_Rx|state.ST_WTACK\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|Selector5~7_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|state.ST_WTACK~regout\);

-- Location: LCCOMB_X8_Y3_N4
\inst_Aux_Rx|Selector4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Selector4~4_combout\ = (\inst_Aux_Rx|state.ST_WTACK~regout\ & ((\inst_FIFOs|WrAck\(3)))) # (!\inst_Aux_Rx|state.ST_WTACK~regout\ & (\inst_Aux_Rx|bd_halfway~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Aux_Rx|bd_halfway~regout\,
	datac => \inst_Aux_Rx|state.ST_WTACK~regout\,
	datad => \inst_FIFOs|WrAck\(3),
	combout => \inst_Aux_Rx|Selector4~4_combout\);

-- Location: LCCOMB_X8_Y3_N14
\inst_Aux_Rx|Selector4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Selector4~5_combout\ = (\inst_Aux_Rx|state.ST_DATA~regout\ & (\inst_Aux_Rx|inst_DeNoise|output_int~regout\)) # (!\inst_Aux_Rx|state.ST_DATA~regout\ & (\inst_Aux_Rx|state.ST_INIT~regout\ & (\inst_Aux_Rx|inst_DeNoise|output_int~regout\ $ 
-- (\inst_Aux_Rx|Selector4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|inst_DeNoise|output_int~regout\,
	datab => \inst_Aux_Rx|state.ST_INIT~regout\,
	datac => \inst_Aux_Rx|Selector4~4_combout\,
	datad => \inst_Aux_Rx|state.ST_DATA~regout\,
	combout => \inst_Aux_Rx|Selector4~5_combout\);

-- Location: LCCOMB_X8_Y3_N16
\inst_Aux_Rx|Selector4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Selector4~6_combout\ = (\inst_Aux_Rx|inst_DeNoise|output_int~regout\ & ((\inst_Aux_Rx|state.ST_START~regout\) # ((!\inst_Aux_Rx|state.ST_IDLE~regout\ & !\inst_Aux_Rx|Selector4~5_combout\)))) # (!\inst_Aux_Rx|inst_DeNoise|output_int~regout\ & 
-- ((\inst_Aux_Rx|state.ST_IDLE~regout\) # ((\inst_Aux_Rx|Selector4~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|inst_DeNoise|output_int~regout\,
	datab => \inst_Aux_Rx|state.ST_IDLE~regout\,
	datac => \inst_Aux_Rx|Selector4~5_combout\,
	datad => \inst_Aux_Rx|state.ST_START~regout\,
	combout => \inst_Aux_Rx|Selector4~6_combout\);

-- Location: LCCOMB_X9_Y3_N22
\inst_Aux_Rx|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Selector2~1_combout\ = (!\inst_Aux_Rx|Selector4~8_combout\ & ((\inst_Aux_Rx|Selector4~6_combout\ & (\inst_Aux_Rx|Selector2~0_combout\)) # (!\inst_Aux_Rx|Selector4~6_combout\ & ((\inst_Aux_Rx|state.ST_START~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|Selector2~0_combout\,
	datab => \inst_Aux_Rx|Selector4~6_combout\,
	datac => \inst_Aux_Rx|state.ST_START~regout\,
	datad => \inst_Aux_Rx|Selector4~8_combout\,
	combout => \inst_Aux_Rx|Selector2~1_combout\);

-- Location: LCFF_X9_Y3_N23
\inst_Aux_Rx|state.ST_START\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|Selector2~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|state.ST_START~regout\);

-- Location: LCCOMB_X9_Y3_N2
\inst_Aux_Rx|bit_count[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|bit_count[1]~2_combout\ = ((\inst_Aux_Rx|inst_DeNoise|output_int~regout\) # (!\inst_Aux_Rx|bd_halfway~regout\)) # (!\inst_Aux_Rx|state.ST_START~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Aux_Rx|state.ST_START~regout\,
	datac => \inst_Aux_Rx|bd_halfway~regout\,
	datad => \inst_Aux_Rx|inst_DeNoise|output_int~regout\,
	combout => \inst_Aux_Rx|bit_count[1]~2_combout\);

-- Location: LCCOMB_X9_Y3_N18
\inst_Aux_Rx|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Selector3~1_combout\ = ((\inst_Aux_Rx|Selector3~0_combout\ & \inst_Aux_Rx|state.ST_DATA~regout\)) # (!\inst_Aux_Rx|bit_count[1]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|Selector3~0_combout\,
	datab => \inst_Aux_Rx|bit_count[1]~2_combout\,
	datac => \inst_Aux_Rx|state.ST_DATA~regout\,
	combout => \inst_Aux_Rx|Selector3~1_combout\);

-- Location: LCFF_X9_Y3_N19
\inst_Aux_Rx|state.ST_DATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|Selector3~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|state.ST_DATA~regout\);

-- Location: LCCOMB_X9_Y3_N10
\inst_Aux_Rx|bit_count[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|bit_count[0]~6_combout\ = (\inst_Aux_Rx|bit_count\(0) & (\inst_Aux_Rx|bit_count[1]~3_combout\)) # (!\inst_Aux_Rx|bit_count\(0) & (((\inst_Aux_Rx|bd_halfway~regout\ & \inst_Aux_Rx|state.ST_DATA~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|bit_count[1]~3_combout\,
	datab => \inst_Aux_Rx|bd_halfway~regout\,
	datac => \inst_Aux_Rx|bit_count\(0),
	datad => \inst_Aux_Rx|state.ST_DATA~regout\,
	combout => \inst_Aux_Rx|bit_count[0]~6_combout\);

-- Location: LCFF_X9_Y3_N11
\inst_Aux_Rx|bit_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|bit_count[0]~6_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|bit_count\(0));

-- Location: LCCOMB_X9_Y3_N24
\inst_Aux_Rx|bit_count[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|bit_count[1]~5_combout\ = (\inst_Aux_Rx|bit_count[1]~3_combout\ & (((\inst_Aux_Rx|bit_count\(1))))) # (!\inst_Aux_Rx|bit_count[1]~3_combout\ & (\inst_Aux_Rx|state.ST_DATA~regout\ & (\inst_Aux_Rx|bit_count\(1) $ (\inst_Aux_Rx|bit_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|bit_count[1]~3_combout\,
	datab => \inst_Aux_Rx|state.ST_DATA~regout\,
	datac => \inst_Aux_Rx|bit_count\(1),
	datad => \inst_Aux_Rx|bit_count\(0),
	combout => \inst_Aux_Rx|bit_count[1]~5_combout\);

-- Location: LCFF_X9_Y3_N25
\inst_Aux_Rx|bit_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|bit_count[1]~5_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|bit_count\(1));

-- Location: LCCOMB_X9_Y3_N12
\inst_Aux_Rx|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Add1~0_combout\ = (\inst_Aux_Rx|bit_count\(0) & \inst_Aux_Rx|bit_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|bit_count\(0),
	datac => \inst_Aux_Rx|bit_count\(1),
	combout => \inst_Aux_Rx|Add1~0_combout\);

-- Location: LCCOMB_X9_Y3_N14
\inst_Aux_Rx|bit_count[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|bit_count[2]~4_combout\ = (\inst_Aux_Rx|bit_count[1]~3_combout\ & (((\inst_Aux_Rx|bit_count\(2))))) # (!\inst_Aux_Rx|bit_count[1]~3_combout\ & (\inst_Aux_Rx|state.ST_DATA~regout\ & (\inst_Aux_Rx|bit_count\(2) $ 
-- (\inst_Aux_Rx|Add1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|bit_count[1]~3_combout\,
	datab => \inst_Aux_Rx|state.ST_DATA~regout\,
	datac => \inst_Aux_Rx|bit_count\(2),
	datad => \inst_Aux_Rx|Add1~0_combout\,
	combout => \inst_Aux_Rx|bit_count[2]~4_combout\);

-- Location: LCFF_X9_Y3_N15
\inst_Aux_Rx|bit_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|bit_count[2]~4_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|bit_count\(2));

-- Location: LCCOMB_X9_Y3_N0
\inst_Aux_Rx|Selector4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Selector4~8_combout\ = (\inst_Aux_Rx|Add1~0_combout\ & (\inst_Aux_Rx|bit_count\(2) & (\inst_Aux_Rx|bd_halfway~regout\ & \inst_Aux_Rx|state.ST_DATA~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|Add1~0_combout\,
	datab => \inst_Aux_Rx|bit_count\(2),
	datac => \inst_Aux_Rx|bd_halfway~regout\,
	datad => \inst_Aux_Rx|state.ST_DATA~regout\,
	combout => \inst_Aux_Rx|Selector4~8_combout\);

-- Location: LCFF_X9_Y3_N1
\inst_Aux_Rx|state.ST_STOP\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|Selector4~8_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Aux_Rx|Selector4~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|state.ST_STOP~regout\);

-- Location: LCCOMB_X8_Y3_N18
\inst_Aux_Rx|FrameErr~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|FrameErr~1_combout\ = (\inst_Aux_Rx|bd_halfway~regout\ & (\inst_Aux_Rx|state.ST_STOP~regout\ & !\inst_Aux_Rx|inst_DeNoise|output_int~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Aux_Rx|bd_halfway~regout\,
	datac => \inst_Aux_Rx|state.ST_STOP~regout\,
	datad => \inst_Aux_Rx|inst_DeNoise|output_int~regout\,
	combout => \inst_Aux_Rx|FrameErr~1_combout\);

-- Location: LCCOMB_X8_Y3_N0
\inst_Aux_Rx|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Selector1~1_combout\ = (\inst_Aux_Rx|FrameErr~1_combout\) # ((\inst_Aux_Rx|Selector1~0_combout\ & ((\inst_Aux_Rx|state.ST_IDLE~regout\) # (\inst_Aux_Rx|Selector5~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|Selector1~0_combout\,
	datab => \inst_Aux_Rx|FrameErr~1_combout\,
	datac => \inst_Aux_Rx|state.ST_IDLE~regout\,
	datad => \inst_Aux_Rx|Selector5~6_combout\,
	combout => \inst_Aux_Rx|Selector1~1_combout\);

-- Location: LCFF_X8_Y3_N1
\inst_Aux_Rx|state.ST_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|Selector1~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|state.ST_IDLE~regout\);

-- Location: LCCOMB_X8_Y2_N24
\inst_Aux_Rx|bd_div[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|bd_div[0]~2_combout\ = (\inst_Timing|Strb_Con~regout\) # (\inst_Aux_Rx|state.ST_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Timing|Strb_Con~regout\,
	datac => \inst_Aux_Rx|state.ST_IDLE~regout\,
	combout => \inst_Aux_Rx|bd_div[0]~2_combout\);

-- Location: LCFF_X8_Y2_N29
\inst_Aux_Rx|bd_div[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|bd_div~3_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Aux_Rx|bd_div[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|bd_div\(0));

-- Location: LCCOMB_X8_Y2_N26
\inst_Aux_Rx|bd_div~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|bd_div~1_combout\ = (!\inst_Aux_Rx|state.ST_IDLE~regout\ & (\inst_Aux_Rx|bd_div\(0) $ (\inst_Aux_Rx|bd_div\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|state.ST_IDLE~regout\,
	datab => \inst_Aux_Rx|bd_div\(0),
	datac => \inst_Aux_Rx|bd_div\(1),
	combout => \inst_Aux_Rx|bd_div~1_combout\);

-- Location: LCFF_X8_Y2_N27
\inst_Aux_Rx|bd_div[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|bd_div~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Aux_Rx|bd_div[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|bd_div\(1));

-- Location: LCCOMB_X8_Y2_N0
\inst_Aux_Rx|brgen~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|brgen~0_combout\ = (!\inst_Aux_Rx|bd_div\(2) & (\inst_Aux_Rx|bd_div\(0) & (\inst_Timing|Strb_Con~regout\ & \inst_Aux_Rx|bd_div\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|bd_div\(2),
	datab => \inst_Aux_Rx|bd_div\(0),
	datac => \inst_Timing|Strb_Con~regout\,
	datad => \inst_Aux_Rx|bd_div\(1),
	combout => \inst_Aux_Rx|brgen~0_combout\);

-- Location: LCFF_X8_Y2_N1
\inst_Aux_Rx|bd_halfway\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|brgen~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|bd_halfway~regout\);

-- Location: LCCOMB_X8_Y3_N26
\inst_Aux_Rx|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Selector10~0_combout\ = (\inst_Aux_Rx|bd_halfway~regout\ & (\inst_Aux_Rx|state.ST_STOP~regout\ & \inst_Aux_Rx|inst_DeNoise|output_int~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Aux_Rx|bd_halfway~regout\,
	datac => \inst_Aux_Rx|state.ST_STOP~regout\,
	datad => \inst_Aux_Rx|inst_DeNoise|output_int~regout\,
	combout => \inst_Aux_Rx|Selector10~0_combout\);

-- Location: LCCOMB_X8_Y3_N24
\inst_Aux_Rx|Rx_Ready~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Rx_Ready~0_combout\ = (\inst_Aux_Rx|state.ST_WTACK~regout\ & (((\inst_Aux_Rx|Rx_Ready~regout\ & !\inst_FIFOs|WrAck\(3))))) # (!\inst_Aux_Rx|state.ST_WTACK~regout\ & ((\inst_Aux_Rx|Selector10~0_combout\) # ((\inst_Aux_Rx|Rx_Ready~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|state.ST_WTACK~regout\,
	datab => \inst_Aux_Rx|Selector10~0_combout\,
	datac => \inst_Aux_Rx|Rx_Ready~regout\,
	datad => \inst_FIFOs|WrAck\(3),
	combout => \inst_Aux_Rx|Rx_Ready~0_combout\);

-- Location: LCFF_X8_Y3_N25
\inst_Aux_Rx|Rx_Ready\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|Rx_Ready~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|Rx_Ready~regout\);

-- Location: LCCOMB_X8_Y4_N12
\inst_FIFOs|contents[3][0]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[3][0]~41_combout\ = \inst_FIFOs|contents[3][0]~regout\ $ (VCC)
-- \inst_FIFOs|contents[3][0]~42\ = CARRY(\inst_FIFOs|contents[3][0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[3][0]~regout\,
	datad => VCC,
	combout => \inst_FIFOs|contents[3][0]~41_combout\,
	cout => \inst_FIFOs|contents[3][0]~42\);

-- Location: LCCOMB_X8_Y4_N14
\inst_FIFOs|contents[3][1]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[3][1]~43_combout\ = (\inst_FIFOs|state.ST_RD_DONE~regout\ & ((\inst_FIFOs|contents[3][1]~regout\ & (\inst_FIFOs|contents[3][0]~42\ & VCC)) # (!\inst_FIFOs|contents[3][1]~regout\ & (!\inst_FIFOs|contents[3][0]~42\)))) # 
-- (!\inst_FIFOs|state.ST_RD_DONE~regout\ & ((\inst_FIFOs|contents[3][1]~regout\ & (!\inst_FIFOs|contents[3][0]~42\)) # (!\inst_FIFOs|contents[3][1]~regout\ & ((\inst_FIFOs|contents[3][0]~42\) # (GND)))))
-- \inst_FIFOs|contents[3][1]~44\ = CARRY((\inst_FIFOs|state.ST_RD_DONE~regout\ & (!\inst_FIFOs|contents[3][1]~regout\ & !\inst_FIFOs|contents[3][0]~42\)) # (!\inst_FIFOs|state.ST_RD_DONE~regout\ & ((!\inst_FIFOs|contents[3][0]~42\) # 
-- (!\inst_FIFOs|contents[3][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datab => \inst_FIFOs|contents[3][1]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|contents[3][0]~42\,
	combout => \inst_FIFOs|contents[3][1]~43_combout\,
	cout => \inst_FIFOs|contents[3][1]~44\);

-- Location: LCCOMB_X7_Y5_N10
\inst_FIFOs|contents[3][0]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[3][0]~51_combout\ = (\inst_FIFOs|op_fifo\(0) & (\inst_FIFOs|op_fifo\(1) & (\inst_FIFOs|state.ST_RD_DONE~regout\ & !fifos_rdreq(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|op_fifo\(0),
	datab => \inst_FIFOs|op_fifo\(1),
	datac => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datad => fifos_rdreq(3),
	combout => \inst_FIFOs|contents[3][0]~51_combout\);

-- Location: LCCOMB_X8_Y7_N16
\inst_FIFOs|Selector16~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector16~2_combout\ = (!\inst_FIFOs|state.ST_WRITE~regout\ & (!\inst_FIFOs|state.ST_READ~regout\ & !\inst_FIFOs|state.ST_RD1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|state.ST_WRITE~regout\,
	datab => \inst_FIFOs|state.ST_READ~regout\,
	datac => \inst_FIFOs|state.ST_RD1~regout\,
	combout => \inst_FIFOs|Selector16~2_combout\);

-- Location: LCCOMB_X8_Y8_N8
\inst_FIFOs|contents[0][0]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[0][0]~54_combout\ = \inst_FIFOs|contents[0][0]~regout\ $ (VCC)
-- \inst_FIFOs|contents[0][0]~55\ = CARRY(\inst_FIFOs|contents[0][0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|contents[0][0]~regout\,
	datad => VCC,
	combout => \inst_FIFOs|contents[0][0]~54_combout\,
	cout => \inst_FIFOs|contents[0][0]~55\);

-- Location: LCCOMB_X7_Y8_N8
\inst_FIFOs|Equal14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Equal14~0_combout\ = (\inst_FIFOs|op_fifo\(0)) # (\inst_FIFOs|op_fifo\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|op_fifo\(0),
	datad => \inst_FIFOs|op_fifo\(1),
	combout => \inst_FIFOs|Equal14~0_combout\);

-- Location: LCCOMB_X10_Y6_N6
\inst_FIFOs|RdAck[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|RdAck[1]~0_combout\ = (!\inst_FIFOs|state.ST_RD_DONE~regout\ & \inst_FIFOs|state.ST_RD1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datad => \inst_FIFOs|state.ST_RD1~regout\,
	combout => \inst_FIFOs|RdAck[1]~0_combout\);

-- Location: LCCOMB_X7_Y8_N4
\inst_FIFOs|RdAck[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|RdAck[0]~3_combout\ = (\inst_FIFOs|rd_ptr[0][0]~54_combout\ & (!\inst_FIFOs|Equal14~0_combout\ & ((\inst_FIFOs|RdAck[1]~0_combout\)))) # (!\inst_FIFOs|rd_ptr[0][0]~54_combout\ & ((\inst_FIFOs|RdAck\(0)) # ((!\inst_FIFOs|Equal14~0_combout\ & 
-- \inst_FIFOs|RdAck[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|rd_ptr[0][0]~54_combout\,
	datab => \inst_FIFOs|Equal14~0_combout\,
	datac => \inst_FIFOs|RdAck\(0),
	datad => \inst_FIFOs|RdAck[1]~0_combout\,
	combout => \inst_FIFOs|RdAck[0]~3_combout\);

-- Location: LCFF_X7_Y8_N5
\inst_FIFOs|RdAck[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|RdAck[0]~3_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|RdAck\(0));

-- Location: LCCOMB_X9_Y11_N14
\inst_Con_Tx|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Tx|Selector8~1_combout\ = (!\inst_FIFOs|RdAck\(0) & !\inst_Con_Tx|state.ST_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_FIFOs|RdAck\(0),
	datad => \inst_Con_Tx|state.ST_IDLE~regout\,
	combout => \inst_Con_Tx|Selector8~1_combout\);

-- Location: LCCOMB_X18_Y6_N16
\inst_Aux_Tx|br_div[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|br_div[0]~2_combout\ = !\inst_Aux_Tx|br_div\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_Aux_Tx|br_div\(0),
	combout => \inst_Aux_Tx|br_div[0]~2_combout\);

-- Location: LCFF_X18_Y6_N17
\inst_Aux_Tx|br_div[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Tx|br_div[0]~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|Strb_Con~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Tx|br_div\(0));

-- Location: LCCOMB_X18_Y6_N10
\inst_Aux_Tx|br_div[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|br_div[1]~1_combout\ = \inst_Aux_Tx|br_div\(1) $ (((\inst_Aux_Tx|br_div\(0) & \inst_Timing|Strb_Con~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Tx|br_div\(0),
	datac => \inst_Aux_Tx|br_div\(1),
	datad => \inst_Timing|Strb_Con~regout\,
	combout => \inst_Aux_Tx|br_div[1]~1_combout\);

-- Location: LCFF_X18_Y6_N11
\inst_Aux_Tx|br_div[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Tx|br_div[1]~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Tx|br_div\(1));

-- Location: LCCOMB_X18_Y6_N18
\inst_Aux_Tx|br_div[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|br_div[2]~0_combout\ = \inst_Aux_Tx|br_div\(2) $ (((\inst_Timing|Strb_Con~regout\ & (\inst_Aux_Tx|br_div\(0) & \inst_Aux_Tx|br_div\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Timing|Strb_Con~regout\,
	datab => \inst_Aux_Tx|br_div\(0),
	datac => \inst_Aux_Tx|br_div\(2),
	datad => \inst_Aux_Tx|br_div\(1),
	combout => \inst_Aux_Tx|br_div[2]~0_combout\);

-- Location: LCFF_X18_Y6_N19
\inst_Aux_Tx|br_div[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Tx|br_div[2]~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Tx|br_div\(2));

-- Location: LCCOMB_X18_Y6_N0
\inst_Aux_Tx|divb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|divb~0_combout\ = (\inst_Timing|Strb_Con~regout\ & (\inst_Aux_Tx|br_div\(2) & (\inst_Aux_Tx|br_div\(0) & \inst_Aux_Tx|br_div\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Timing|Strb_Con~regout\,
	datab => \inst_Aux_Tx|br_div\(2),
	datac => \inst_Aux_Tx|br_div\(0),
	datad => \inst_Aux_Tx|br_div\(1),
	combout => \inst_Aux_Tx|divb~0_combout\);

-- Location: LCFF_X18_Y6_N1
\inst_Aux_Tx|br_strb\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Tx|divb~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Tx|br_strb~regout\);

-- Location: LCCOMB_X9_Y11_N0
\inst_Con_Tx|Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Tx|Selector10~1_combout\ = (\inst_Con_Tx|state.ST_IDLE~regout\) # ((\inst_Con_Tx|state.ST_DATA~regout\ & (!\inst_Con_Tx|Equal1~0_combout\)) # (!\inst_Con_Tx|state.ST_DATA~regout\ & ((!\inst_FIFOs|RdAck\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Tx|Equal1~0_combout\,
	datab => \inst_Con_Tx|state.ST_DATA~regout\,
	datac => \inst_FIFOs|RdAck\(0),
	datad => \inst_Con_Tx|state.ST_IDLE~regout\,
	combout => \inst_Con_Tx|Selector10~1_combout\);

-- Location: LCCOMB_X9_Y11_N20
\inst_Con_Tx|bit_count[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Tx|bit_count[0]~0_combout\ = ((!\inst_Con_Tx|state.ST_START~regout\ & ((\inst_Con_Tx|Equal1~0_combout\) # (!\inst_Con_Tx|state.ST_DATA~regout\)))) # (!\inst_Aux_Tx|br_strb~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Tx|Equal1~0_combout\,
	datab => \inst_Con_Tx|state.ST_START~regout\,
	datac => \inst_Aux_Tx|br_strb~regout\,
	datad => \inst_Con_Tx|state.ST_DATA~regout\,
	combout => \inst_Con_Tx|bit_count[0]~0_combout\);

-- Location: LCCOMB_X9_Y11_N24
\inst_Con_Tx|bit_count[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Tx|bit_count[0]~3_combout\ = (\inst_Con_Tx|bit_count\(0) & (((\inst_Con_Tx|bit_count[0]~0_combout\)))) # (!\inst_Con_Tx|bit_count\(0) & (\inst_Aux_Tx|br_strb~regout\ & (\inst_Con_Tx|state.ST_DATA~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Tx|br_strb~regout\,
	datab => \inst_Con_Tx|state.ST_DATA~regout\,
	datac => \inst_Con_Tx|bit_count\(0),
	datad => \inst_Con_Tx|bit_count[0]~0_combout\,
	combout => \inst_Con_Tx|bit_count[0]~3_combout\);

-- Location: LCFF_X9_Y11_N25
\inst_Con_Tx|bit_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Tx|bit_count[0]~3_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Tx|bit_count\(0));

-- Location: LCCOMB_X9_Y11_N18
\inst_Con_Tx|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Tx|Add1~0_combout\ = \inst_Con_Tx|bit_count\(2) $ (((\inst_Con_Tx|bit_count\(1) & \inst_Con_Tx|bit_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Tx|bit_count\(1),
	datab => \inst_Con_Tx|bit_count\(2),
	datac => \inst_Con_Tx|bit_count\(0),
	combout => \inst_Con_Tx|Add1~0_combout\);

-- Location: LCCOMB_X9_Y11_N4
\inst_Con_Tx|bit_count[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Tx|bit_count[2]~1_combout\ = (\inst_Con_Tx|bit_count[0]~0_combout\ & (((\inst_Con_Tx|bit_count\(2))))) # (!\inst_Con_Tx|bit_count[0]~0_combout\ & (\inst_Con_Tx|Add1~0_combout\ & ((\inst_Con_Tx|state.ST_DATA~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Tx|bit_count[0]~0_combout\,
	datab => \inst_Con_Tx|Add1~0_combout\,
	datac => \inst_Con_Tx|bit_count\(2),
	datad => \inst_Con_Tx|state.ST_DATA~regout\,
	combout => \inst_Con_Tx|bit_count[2]~1_combout\);

-- Location: LCFF_X9_Y11_N5
\inst_Con_Tx|bit_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Tx|bit_count[2]~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Tx|bit_count\(2));

-- Location: LCCOMB_X9_Y11_N10
\inst_Con_Tx|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Tx|Equal1~0_combout\ = (\inst_Con_Tx|bit_count\(1) & (\inst_Con_Tx|bit_count\(2) & \inst_Con_Tx|bit_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Tx|bit_count\(1),
	datab => \inst_Con_Tx|bit_count\(2),
	datac => \inst_Con_Tx|bit_count\(0),
	combout => \inst_Con_Tx|Equal1~0_combout\);

-- Location: LCCOMB_X9_Y11_N26
\inst_Con_Tx|Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Tx|Selector9~1_combout\ = (\inst_Con_Tx|Selector9~0_combout\ & (((!\inst_Con_Tx|Equal1~0_combout\) # (!\inst_Aux_Tx|br_strb~regout\)) # (!\inst_Con_Tx|state.ST_DATA~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Tx|Selector9~0_combout\,
	datab => \inst_Con_Tx|state.ST_DATA~regout\,
	datac => \inst_Aux_Tx|br_strb~regout\,
	datad => \inst_Con_Tx|Equal1~0_combout\,
	combout => \inst_Con_Tx|Selector9~1_combout\);

-- Location: LCFF_X9_Y11_N27
\inst_Con_Tx|state.ST_TRIGD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Tx|Selector9~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Tx|state.ST_TRIGD~regout\);

-- Location: LCCOMB_X9_Y11_N2
\inst_Con_Tx|Selector10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Tx|Selector10~2_combout\ = (\inst_Aux_Tx|br_strb~regout\ & (((!\inst_Con_Tx|state.ST_START~regout\ & \inst_Con_Tx|state.ST_TRIGD~regout\)))) # (!\inst_Aux_Tx|br_strb~regout\ & (\inst_Con_Tx|Selector10~1_combout\ & 
-- (\inst_Con_Tx|state.ST_START~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Tx|br_strb~regout\,
	datab => \inst_Con_Tx|Selector10~1_combout\,
	datac => \inst_Con_Tx|state.ST_START~regout\,
	datad => \inst_Con_Tx|state.ST_TRIGD~regout\,
	combout => \inst_Con_Tx|Selector10~2_combout\);

-- Location: LCFF_X9_Y11_N3
\inst_Con_Tx|state.ST_START\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Tx|Selector10~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Tx|state.ST_START~regout\);

-- Location: LCCOMB_X9_Y11_N16
\inst_Con_Tx|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Tx|Selector11~0_combout\ = (\inst_Aux_Tx|br_strb~regout\ & ((\inst_Con_Tx|state.ST_START~regout\) # ((\inst_Con_Tx|state.ST_DATA~regout\ & !\inst_Con_Tx|Equal1~0_combout\)))) # (!\inst_Aux_Tx|br_strb~regout\ & 
-- (((\inst_Con_Tx|state.ST_DATA~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Tx|br_strb~regout\,
	datab => \inst_Con_Tx|state.ST_START~regout\,
	datac => \inst_Con_Tx|state.ST_DATA~regout\,
	datad => \inst_Con_Tx|Equal1~0_combout\,
	combout => \inst_Con_Tx|Selector11~0_combout\);

-- Location: LCFF_X9_Y11_N17
\inst_Con_Tx|state.ST_DATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Tx|Selector11~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Tx|state.ST_DATA~regout\);

-- Location: LCCOMB_X9_Y11_N28
\inst_Con_Tx|Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Tx|Selector8~2_combout\ = (!\inst_Con_Tx|Selector8~1_combout\ & (((!\inst_Con_Tx|state.ST_DATA~regout\) # (!\inst_Aux_Tx|br_strb~regout\)) # (!\inst_Con_Tx|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Tx|Equal1~0_combout\,
	datab => \inst_Con_Tx|Selector8~1_combout\,
	datac => \inst_Aux_Tx|br_strb~regout\,
	datad => \inst_Con_Tx|state.ST_DATA~regout\,
	combout => \inst_Con_Tx|Selector8~2_combout\);

-- Location: LCFF_X9_Y11_N29
\inst_Con_Tx|state.ST_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Tx|Selector8~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Tx|state.ST_IDLE~regout\);

-- Location: LCCOMB_X9_Y11_N22
\inst_Con_Tx|Busy~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Tx|Busy~0_combout\ = (\inst_Con_Tx|state.ST_IDLE~regout\ & ((\inst_Con_Tx|Busy~regout\))) # (!\inst_Con_Tx|state.ST_IDLE~regout\ & (\inst_FIFOs|RdAck\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|RdAck\(0),
	datac => \inst_Con_Tx|Busy~regout\,
	datad => \inst_Con_Tx|state.ST_IDLE~regout\,
	combout => \inst_Con_Tx|Busy~0_combout\);

-- Location: LCFF_X9_Y11_N23
\inst_Con_Tx|Busy\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Tx|Busy~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Tx|Busy~regout\);

-- Location: LCCOMB_X8_Y8_N10
\inst_FIFOs|contents[0][1]~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[0][1]~56_combout\ = (\inst_FIFOs|contents[0][1]~regout\ & ((\inst_FIFOs|state.ST_RD_DONE~regout\ & (\inst_FIFOs|contents[0][0]~55\ & VCC)) # (!\inst_FIFOs|state.ST_RD_DONE~regout\ & (!\inst_FIFOs|contents[0][0]~55\)))) # 
-- (!\inst_FIFOs|contents[0][1]~regout\ & ((\inst_FIFOs|state.ST_RD_DONE~regout\ & (!\inst_FIFOs|contents[0][0]~55\)) # (!\inst_FIFOs|state.ST_RD_DONE~regout\ & ((\inst_FIFOs|contents[0][0]~55\) # (GND)))))
-- \inst_FIFOs|contents[0][1]~57\ = CARRY((\inst_FIFOs|contents[0][1]~regout\ & (!\inst_FIFOs|state.ST_RD_DONE~regout\ & !\inst_FIFOs|contents[0][0]~55\)) # (!\inst_FIFOs|contents[0][1]~regout\ & ((!\inst_FIFOs|contents[0][0]~55\) # 
-- (!\inst_FIFOs|state.ST_RD_DONE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[0][1]~regout\,
	datab => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datad => VCC,
	cin => \inst_FIFOs|contents[0][0]~55\,
	combout => \inst_FIFOs|contents[0][1]~56_combout\,
	cout => \inst_FIFOs|contents[0][1]~57\);

-- Location: LCCOMB_X8_Y8_N12
\inst_FIFOs|contents[0][2]~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[0][2]~58_combout\ = ((\inst_FIFOs|contents[0][2]~regout\ $ (\inst_FIFOs|state.ST_RD_DONE~regout\ $ (!\inst_FIFOs|contents[0][1]~57\)))) # (GND)
-- \inst_FIFOs|contents[0][2]~59\ = CARRY((\inst_FIFOs|contents[0][2]~regout\ & ((\inst_FIFOs|state.ST_RD_DONE~regout\) # (!\inst_FIFOs|contents[0][1]~57\))) # (!\inst_FIFOs|contents[0][2]~regout\ & (\inst_FIFOs|state.ST_RD_DONE~regout\ & 
-- !\inst_FIFOs|contents[0][1]~57\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[0][2]~regout\,
	datab => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datad => VCC,
	cin => \inst_FIFOs|contents[0][1]~57\,
	combout => \inst_FIFOs|contents[0][2]~58_combout\,
	cout => \inst_FIFOs|contents[0][2]~59\);

-- Location: LCCOMB_X8_Y8_N14
\inst_FIFOs|contents[0][3]~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[0][3]~60_combout\ = (\inst_FIFOs|contents[0][3]~regout\ & ((\inst_FIFOs|state.ST_RD_DONE~regout\ & (\inst_FIFOs|contents[0][2]~59\ & VCC)) # (!\inst_FIFOs|state.ST_RD_DONE~regout\ & (!\inst_FIFOs|contents[0][2]~59\)))) # 
-- (!\inst_FIFOs|contents[0][3]~regout\ & ((\inst_FIFOs|state.ST_RD_DONE~regout\ & (!\inst_FIFOs|contents[0][2]~59\)) # (!\inst_FIFOs|state.ST_RD_DONE~regout\ & ((\inst_FIFOs|contents[0][2]~59\) # (GND)))))
-- \inst_FIFOs|contents[0][3]~61\ = CARRY((\inst_FIFOs|contents[0][3]~regout\ & (!\inst_FIFOs|state.ST_RD_DONE~regout\ & !\inst_FIFOs|contents[0][2]~59\)) # (!\inst_FIFOs|contents[0][3]~regout\ & ((!\inst_FIFOs|contents[0][2]~59\) # 
-- (!\inst_FIFOs|state.ST_RD_DONE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[0][3]~regout\,
	datab => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datad => VCC,
	cin => \inst_FIFOs|contents[0][2]~59\,
	combout => \inst_FIFOs|contents[0][3]~60_combout\,
	cout => \inst_FIFOs|contents[0][3]~61\);

-- Location: LCFF_X8_Y8_N15
\inst_FIFOs|contents[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|contents[0][3]~60_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[0][3]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|contents[0][3]~regout\);

-- Location: LCCOMB_X8_Y8_N16
\inst_FIFOs|contents[0][4]~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[0][4]~62_combout\ = ((\inst_FIFOs|contents[0][4]~regout\ $ (\inst_FIFOs|state.ST_RD_DONE~regout\ $ (!\inst_FIFOs|contents[0][3]~61\)))) # (GND)
-- \inst_FIFOs|contents[0][4]~63\ = CARRY((\inst_FIFOs|contents[0][4]~regout\ & ((\inst_FIFOs|state.ST_RD_DONE~regout\) # (!\inst_FIFOs|contents[0][3]~61\))) # (!\inst_FIFOs|contents[0][4]~regout\ & (\inst_FIFOs|state.ST_RD_DONE~regout\ & 
-- !\inst_FIFOs|contents[0][3]~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[0][4]~regout\,
	datab => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datad => VCC,
	cin => \inst_FIFOs|contents[0][3]~61\,
	combout => \inst_FIFOs|contents[0][4]~62_combout\,
	cout => \inst_FIFOs|contents[0][4]~63\);

-- Location: LCCOMB_X8_Y8_N18
\inst_FIFOs|contents[0][5]~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[0][5]~65_combout\ = \inst_FIFOs|state.ST_RD_DONE~regout\ $ (\inst_FIFOs|contents[0][4]~63\ $ (\inst_FIFOs|contents[0][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datad => \inst_FIFOs|contents[0][5]~regout\,
	cin => \inst_FIFOs|contents[0][4]~63\,
	combout => \inst_FIFOs|contents[0][5]~65_combout\);

-- Location: LCFF_X8_Y8_N19
\inst_FIFOs|contents[0][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|contents[0][5]~65_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[0][3]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|contents[0][5]~regout\);

-- Location: LCCOMB_X8_Y8_N22
\inst_FIFOs|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Equal0~1_combout\ = (\inst_FIFOs|Equal0~0_combout\ & (!\inst_FIFOs|contents[0][3]~regout\ & !\inst_FIFOs|contents[0][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|Equal0~0_combout\,
	datac => \inst_FIFOs|contents[0][3]~regout\,
	datad => \inst_FIFOs|contents[0][5]~regout\,
	combout => \inst_FIFOs|Equal0~1_combout\);

-- Location: PIN_115,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CCTSn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CCTSn,
	combout => \CCTSn~combout\);

-- Location: LCCOMB_X15_Y7_N0
\ccts_s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ccts_s~0_combout\ = !\CCTSn~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CCTSn~combout\,
	combout => \ccts_s~0_combout\);

-- Location: LCFF_X15_Y7_N1
ccts_s : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \ccts_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ccts_s~regout\);

-- Location: LCCOMB_X15_Y7_N2
\inst_FIFOs|fsm~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|fsm~0_combout\ = (!\inst_Con_Tx|Busy~regout\ & (!\inst_FIFOs|Equal0~1_combout\ & \ccts_s~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Con_Tx|Busy~regout\,
	datac => \inst_FIFOs|Equal0~1_combout\,
	datad => \ccts_s~regout\,
	combout => \inst_FIFOs|fsm~0_combout\);

-- Location: LCCOMB_X7_Y8_N2
\inst_FIFOs|contents[0][3]~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[0][3]~64_combout\ = (!\inst_FIFOs|Equal14~0_combout\ & ((\inst_FIFOs|state.ST_WRITE~regout\) # ((\inst_FIFOs|state.ST_RD_DONE~regout\ & !\inst_FIFOs|fsm~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|state.ST_WRITE~regout\,
	datab => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datac => \inst_FIFOs|Equal14~0_combout\,
	datad => \inst_FIFOs|fsm~0_combout\,
	combout => \inst_FIFOs|contents[0][3]~64_combout\);

-- Location: LCFF_X8_Y8_N9
\inst_FIFOs|contents[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|contents[0][0]~54_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[0][3]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|contents[0][0]~regout\);

-- Location: LCFF_X8_Y8_N17
\inst_FIFOs|contents[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|contents[0][4]~62_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[0][3]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|contents[0][4]~regout\);

-- Location: LCFF_X8_Y8_N13
\inst_FIFOs|contents[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|contents[0][2]~58_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[0][3]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|contents[0][2]~regout\);

-- Location: LCCOMB_X8_Y8_N4
\inst_FIFOs|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Equal0~0_combout\ = (!\inst_FIFOs|contents[0][1]~regout\ & (!\inst_FIFOs|contents[0][0]~regout\ & (!\inst_FIFOs|contents[0][4]~regout\ & !\inst_FIFOs|contents[0][2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[0][1]~regout\,
	datab => \inst_FIFOs|contents[0][0]~regout\,
	datac => \inst_FIFOs|contents[0][4]~regout\,
	datad => \inst_FIFOs|contents[0][2]~regout\,
	combout => \inst_FIFOs|Equal0~0_combout\);

-- Location: LCCOMB_X8_Y8_N0
\inst_FIFOs|fsm~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|fsm~3_combout\ = (fifos_wrreq(0) & (((\inst_FIFOs|contents[0][3]~regout\) # (!\inst_FIFOs|contents[0][5]~regout\)) # (!\inst_FIFOs|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifos_wrreq(0),
	datab => \inst_FIFOs|Equal0~0_combout\,
	datac => \inst_FIFOs|contents[0][3]~regout\,
	datad => \inst_FIFOs|contents[0][5]~regout\,
	combout => \inst_FIFOs|fsm~3_combout\);

-- Location: LCCOMB_X8_Y6_N10
\inst_FIFOs|contents[2][0]~67\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[2][0]~67_combout\ = \inst_FIFOs|contents[2][0]~regout\ $ (VCC)
-- \inst_FIFOs|contents[2][0]~68\ = CARRY(\inst_FIFOs|contents[2][0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[2][0]~regout\,
	datad => VCC,
	combout => \inst_FIFOs|contents[2][0]~67_combout\,
	cout => \inst_FIFOs|contents[2][0]~68\);

-- Location: LCCOMB_X8_Y6_N14
\inst_FIFOs|contents[2][2]~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[2][2]~71_combout\ = ((\inst_FIFOs|contents[2][2]~regout\ $ (\inst_FIFOs|state.ST_RD_DONE~regout\ $ (!\inst_FIFOs|contents[2][1]~70\)))) # (GND)
-- \inst_FIFOs|contents[2][2]~72\ = CARRY((\inst_FIFOs|contents[2][2]~regout\ & ((\inst_FIFOs|state.ST_RD_DONE~regout\) # (!\inst_FIFOs|contents[2][1]~70\))) # (!\inst_FIFOs|contents[2][2]~regout\ & (\inst_FIFOs|state.ST_RD_DONE~regout\ & 
-- !\inst_FIFOs|contents[2][1]~70\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[2][2]~regout\,
	datab => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datad => VCC,
	cin => \inst_FIFOs|contents[2][1]~70\,
	combout => \inst_FIFOs|contents[2][2]~71_combout\,
	cout => \inst_FIFOs|contents[2][2]~72\);

-- Location: LCCOMB_X8_Y6_N16
\inst_FIFOs|contents[2][3]~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[2][3]~73_combout\ = (\inst_FIFOs|contents[2][3]~regout\ & ((\inst_FIFOs|state.ST_RD_DONE~regout\ & (\inst_FIFOs|contents[2][2]~72\ & VCC)) # (!\inst_FIFOs|state.ST_RD_DONE~regout\ & (!\inst_FIFOs|contents[2][2]~72\)))) # 
-- (!\inst_FIFOs|contents[2][3]~regout\ & ((\inst_FIFOs|state.ST_RD_DONE~regout\ & (!\inst_FIFOs|contents[2][2]~72\)) # (!\inst_FIFOs|state.ST_RD_DONE~regout\ & ((\inst_FIFOs|contents[2][2]~72\) # (GND)))))
-- \inst_FIFOs|contents[2][3]~74\ = CARRY((\inst_FIFOs|contents[2][3]~regout\ & (!\inst_FIFOs|state.ST_RD_DONE~regout\ & !\inst_FIFOs|contents[2][2]~72\)) # (!\inst_FIFOs|contents[2][3]~regout\ & ((!\inst_FIFOs|contents[2][2]~72\) # 
-- (!\inst_FIFOs|state.ST_RD_DONE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[2][3]~regout\,
	datab => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datad => VCC,
	cin => \inst_FIFOs|contents[2][2]~72\,
	combout => \inst_FIFOs|contents[2][3]~73_combout\,
	cout => \inst_FIFOs|contents[2][3]~74\);

-- Location: LCCOMB_X8_Y6_N18
\inst_FIFOs|contents[2][4]~75\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[2][4]~75_combout\ = ((\inst_FIFOs|contents[2][4]~regout\ $ (\inst_FIFOs|state.ST_RD_DONE~regout\ $ (!\inst_FIFOs|contents[2][3]~74\)))) # (GND)
-- \inst_FIFOs|contents[2][4]~76\ = CARRY((\inst_FIFOs|contents[2][4]~regout\ & ((\inst_FIFOs|state.ST_RD_DONE~regout\) # (!\inst_FIFOs|contents[2][3]~74\))) # (!\inst_FIFOs|contents[2][4]~regout\ & (\inst_FIFOs|state.ST_RD_DONE~regout\ & 
-- !\inst_FIFOs|contents[2][3]~74\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[2][4]~regout\,
	datab => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datad => VCC,
	cin => \inst_FIFOs|contents[2][3]~74\,
	combout => \inst_FIFOs|contents[2][4]~75_combout\,
	cout => \inst_FIFOs|contents[2][4]~76\);

-- Location: LCFF_X8_Y6_N19
\inst_FIFOs|contents[2][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|contents[2][4]~75_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[2][5]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|contents[2][4]~regout\);

-- Location: LCFF_X8_Y6_N15
\inst_FIFOs|contents[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|contents[2][2]~71_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[2][5]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|contents[2][2]~regout\);

-- Location: LCFF_X8_Y6_N11
\inst_FIFOs|contents[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|contents[2][0]~67_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[2][5]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|contents[2][0]~regout\);

-- Location: LCCOMB_X8_Y6_N2
\inst_FIFOs|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Equal4~0_combout\ = (!\inst_FIFOs|contents[2][1]~regout\ & (!\inst_FIFOs|contents[2][4]~regout\ & (!\inst_FIFOs|contents[2][2]~regout\ & !\inst_FIFOs|contents[2][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[2][1]~regout\,
	datab => \inst_FIFOs|contents[2][4]~regout\,
	datac => \inst_FIFOs|contents[2][2]~regout\,
	datad => \inst_FIFOs|contents[2][0]~regout\,
	combout => \inst_FIFOs|Equal4~0_combout\);

-- Location: LCCOMB_X8_Y6_N22
\inst_FIFOs|Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Equal4~1_combout\ = (!\inst_FIFOs|contents[2][5]~regout\ & (!\inst_FIFOs|contents[2][3]~regout\ & \inst_FIFOs|Equal4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[2][5]~regout\,
	datac => \inst_FIFOs|contents[2][3]~regout\,
	datad => \inst_FIFOs|Equal4~0_combout\,
	combout => \inst_FIFOs|Equal4~1_combout\);

-- Location: LCCOMB_X8_Y5_N28
\inst_FIFOs|Equal8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Equal8~2_combout\ = (!\inst_FIFOs|op_fifo\(0) & \inst_FIFOs|op_fifo\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_FIFOs|op_fifo\(0),
	datad => \inst_FIFOs|op_fifo\(1),
	combout => \inst_FIFOs|Equal8~2_combout\);

-- Location: LCCOMB_X8_Y6_N28
\inst_FIFOs|contents[2][5]~80\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[2][5]~80_combout\ = (\inst_FIFOs|Selector15~0_combout\ & \inst_FIFOs|state.ST_RD_DONE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_FIFOs|Selector15~0_combout\,
	datad => \inst_FIFOs|state.ST_RD_DONE~regout\,
	combout => \inst_FIFOs|contents[2][5]~80_combout\);

-- Location: LCCOMB_X15_Y6_N2
\inst_FIFOs|RdAck[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|RdAck[2]~4_combout\ = (\inst_FIFOs|Equal8~2_combout\ & ((\inst_FIFOs|RdAck[1]~0_combout\) # ((!\inst_FIFOs|contents[2][5]~80_combout\ & \inst_FIFOs|RdAck\(2))))) # (!\inst_FIFOs|Equal8~2_combout\ & (!\inst_FIFOs|contents[2][5]~80_combout\ & 
-- (\inst_FIFOs|RdAck\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Equal8~2_combout\,
	datab => \inst_FIFOs|contents[2][5]~80_combout\,
	datac => \inst_FIFOs|RdAck\(2),
	datad => \inst_FIFOs|RdAck[1]~0_combout\,
	combout => \inst_FIFOs|RdAck[2]~4_combout\);

-- Location: LCFF_X15_Y6_N3
\inst_FIFOs|RdAck[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|RdAck[2]~4_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|RdAck\(2));

-- Location: LCCOMB_X17_Y6_N16
\inst_Aux_Tx|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|Selector8~1_combout\ = (!\inst_Aux_Tx|state.ST_IDLE~regout\ & !\inst_FIFOs|RdAck\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Aux_Tx|state.ST_IDLE~regout\,
	datac => \inst_FIFOs|RdAck\(2),
	combout => \inst_Aux_Tx|Selector8~1_combout\);

-- Location: LCCOMB_X17_Y6_N10
\inst_Aux_Tx|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|Selector11~0_combout\ = (\inst_Aux_Tx|br_strb~regout\ & ((\inst_Aux_Tx|state.ST_START~regout\) # ((!\inst_Aux_Tx|Equal1~0_combout\ & \inst_Aux_Tx|state.ST_DATA~regout\)))) # (!\inst_Aux_Tx|br_strb~regout\ & 
-- (((\inst_Aux_Tx|state.ST_DATA~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Tx|Equal1~0_combout\,
	datab => \inst_Aux_Tx|br_strb~regout\,
	datac => \inst_Aux_Tx|state.ST_DATA~regout\,
	datad => \inst_Aux_Tx|state.ST_START~regout\,
	combout => \inst_Aux_Tx|Selector11~0_combout\);

-- Location: LCFF_X17_Y6_N11
\inst_Aux_Tx|state.ST_DATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Tx|Selector11~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Tx|state.ST_DATA~regout\);

-- Location: LCCOMB_X17_Y6_N18
\inst_Aux_Tx|Selector10~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|Selector10~1_combout\ = (\inst_Aux_Tx|state.ST_IDLE~regout\) # ((\inst_Aux_Tx|state.ST_DATA~regout\ & (!\inst_Aux_Tx|Equal1~0_combout\)) # (!\inst_Aux_Tx|state.ST_DATA~regout\ & ((!\inst_FIFOs|RdAck\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Tx|Equal1~0_combout\,
	datab => \inst_Aux_Tx|state.ST_IDLE~regout\,
	datac => \inst_FIFOs|RdAck\(2),
	datad => \inst_Aux_Tx|state.ST_DATA~regout\,
	combout => \inst_Aux_Tx|Selector10~1_combout\);

-- Location: LCCOMB_X17_Y6_N28
\inst_Aux_Tx|Selector10~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|Selector10~2_combout\ = (\inst_Aux_Tx|br_strb~regout\ & (\inst_Aux_Tx|state.ST_TRIGD~regout\ & (!\inst_Aux_Tx|state.ST_START~regout\))) # (!\inst_Aux_Tx|br_strb~regout\ & (((\inst_Aux_Tx|state.ST_START~regout\ & 
-- \inst_Aux_Tx|Selector10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Tx|state.ST_TRIGD~regout\,
	datab => \inst_Aux_Tx|br_strb~regout\,
	datac => \inst_Aux_Tx|state.ST_START~regout\,
	datad => \inst_Aux_Tx|Selector10~1_combout\,
	combout => \inst_Aux_Tx|Selector10~2_combout\);

-- Location: LCFF_X17_Y6_N29
\inst_Aux_Tx|state.ST_START\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Tx|Selector10~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Tx|state.ST_START~regout\);

-- Location: LCCOMB_X17_Y6_N22
\inst_Aux_Tx|bit_count[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|bit_count[1]~0_combout\ = ((!\inst_Aux_Tx|state.ST_START~regout\ & ((\inst_Aux_Tx|Equal1~0_combout\) # (!\inst_Aux_Tx|state.ST_DATA~regout\)))) # (!\inst_Aux_Tx|br_strb~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Tx|state.ST_DATA~regout\,
	datab => \inst_Aux_Tx|state.ST_START~regout\,
	datac => \inst_Aux_Tx|br_strb~regout\,
	datad => \inst_Aux_Tx|Equal1~0_combout\,
	combout => \inst_Aux_Tx|bit_count[1]~0_combout\);

-- Location: LCCOMB_X17_Y6_N26
\inst_Aux_Tx|bit_count[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|bit_count[0]~3_combout\ = (\inst_Aux_Tx|bit_count\(0) & (((\inst_Aux_Tx|bit_count[1]~0_combout\)))) # (!\inst_Aux_Tx|bit_count\(0) & (\inst_Aux_Tx|state.ST_DATA~regout\ & (\inst_Aux_Tx|br_strb~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Tx|state.ST_DATA~regout\,
	datab => \inst_Aux_Tx|br_strb~regout\,
	datac => \inst_Aux_Tx|bit_count\(0),
	datad => \inst_Aux_Tx|bit_count[1]~0_combout\,
	combout => \inst_Aux_Tx|bit_count[0]~3_combout\);

-- Location: LCFF_X17_Y6_N27
\inst_Aux_Tx|bit_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Tx|bit_count[0]~3_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Tx|bit_count\(0));

-- Location: LCCOMB_X17_Y6_N24
\inst_Aux_Tx|bit_count[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|bit_count[1]~2_combout\ = (\inst_Aux_Tx|bit_count[1]~0_combout\ & (((\inst_Aux_Tx|bit_count\(1))))) # (!\inst_Aux_Tx|bit_count[1]~0_combout\ & (\inst_Aux_Tx|state.ST_DATA~regout\ & (\inst_Aux_Tx|bit_count\(0) $ (\inst_Aux_Tx|bit_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Tx|state.ST_DATA~regout\,
	datab => \inst_Aux_Tx|bit_count\(0),
	datac => \inst_Aux_Tx|bit_count\(1),
	datad => \inst_Aux_Tx|bit_count[1]~0_combout\,
	combout => \inst_Aux_Tx|bit_count[1]~2_combout\);

-- Location: LCFF_X17_Y6_N25
\inst_Aux_Tx|bit_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Tx|bit_count[1]~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Tx|bit_count\(1));

-- Location: LCCOMB_X17_Y6_N4
\inst_Aux_Tx|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|Add1~0_combout\ = \inst_Aux_Tx|bit_count\(2) $ (((\inst_Aux_Tx|bit_count\(0) & \inst_Aux_Tx|bit_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Aux_Tx|bit_count\(0),
	datac => \inst_Aux_Tx|bit_count\(1),
	datad => \inst_Aux_Tx|bit_count\(2),
	combout => \inst_Aux_Tx|Add1~0_combout\);

-- Location: LCCOMB_X17_Y6_N30
\inst_Aux_Tx|bit_count[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|bit_count[2]~1_combout\ = (\inst_Aux_Tx|bit_count[1]~0_combout\ & (((\inst_Aux_Tx|bit_count\(2))))) # (!\inst_Aux_Tx|bit_count[1]~0_combout\ & (\inst_Aux_Tx|state.ST_DATA~regout\ & (\inst_Aux_Tx|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Tx|state.ST_DATA~regout\,
	datab => \inst_Aux_Tx|Add1~0_combout\,
	datac => \inst_Aux_Tx|bit_count\(2),
	datad => \inst_Aux_Tx|bit_count[1]~0_combout\,
	combout => \inst_Aux_Tx|bit_count[2]~1_combout\);

-- Location: LCFF_X17_Y6_N31
\inst_Aux_Tx|bit_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Tx|bit_count[2]~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Tx|bit_count\(2));

-- Location: LCCOMB_X17_Y6_N20
\inst_Aux_Tx|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|Equal1~0_combout\ = (\inst_Aux_Tx|bit_count\(0) & (\inst_Aux_Tx|bit_count\(1) & \inst_Aux_Tx|bit_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Aux_Tx|bit_count\(0),
	datac => \inst_Aux_Tx|bit_count\(1),
	datad => \inst_Aux_Tx|bit_count\(2),
	combout => \inst_Aux_Tx|Equal1~0_combout\);

-- Location: LCCOMB_X17_Y6_N8
\inst_Aux_Tx|Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|Selector8~2_combout\ = (!\inst_Aux_Tx|Selector8~1_combout\ & (((!\inst_Aux_Tx|Equal1~0_combout\) # (!\inst_Aux_Tx|br_strb~regout\)) # (!\inst_Aux_Tx|state.ST_DATA~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Tx|state.ST_DATA~regout\,
	datab => \inst_Aux_Tx|Selector8~1_combout\,
	datac => \inst_Aux_Tx|br_strb~regout\,
	datad => \inst_Aux_Tx|Equal1~0_combout\,
	combout => \inst_Aux_Tx|Selector8~2_combout\);

-- Location: LCFF_X17_Y6_N9
\inst_Aux_Tx|state.ST_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Tx|Selector8~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Tx|state.ST_IDLE~regout\);

-- Location: LCCOMB_X15_Y6_N24
\inst_Aux_Tx|Busy~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|Busy~0_combout\ = (\inst_Aux_Tx|state.ST_IDLE~regout\ & ((\inst_Aux_Tx|Busy~regout\))) # (!\inst_Aux_Tx|state.ST_IDLE~regout\ & (\inst_FIFOs|RdAck\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|RdAck\(2),
	datac => \inst_Aux_Tx|Busy~regout\,
	datad => \inst_Aux_Tx|state.ST_IDLE~regout\,
	combout => \inst_Aux_Tx|Busy~0_combout\);

-- Location: LCFF_X15_Y6_N25
\inst_Aux_Tx|Busy\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Tx|Busy~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Tx|Busy~regout\);

-- Location: LCCOMB_X8_Y6_N6
\inst_FIFOs|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector15~0_combout\ = (\inst_FIFOs|Equal8~2_combout\ & (((\inst_FIFOs|Equal4~1_combout\) # (\inst_Aux_Tx|Busy~regout\)) # (!\acts_s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acts_s~regout\,
	datab => \inst_FIFOs|Equal4~1_combout\,
	datac => \inst_FIFOs|Equal8~2_combout\,
	datad => \inst_Aux_Tx|Busy~regout\,
	combout => \inst_FIFOs|Selector15~0_combout\);

-- Location: LCCOMB_X8_Y6_N0
\inst_FIFOs|contents[2][5]~77\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[2][5]~77_combout\ = (\inst_FIFOs|state.ST_WRITE~regout\ & ((\inst_FIFOs|Equal8~2_combout\) # ((\inst_FIFOs|Selector15~0_combout\ & \inst_FIFOs|state.ST_RD_DONE~regout\)))) # (!\inst_FIFOs|state.ST_WRITE~regout\ & 
-- (\inst_FIFOs|Selector15~0_combout\ & ((\inst_FIFOs|state.ST_RD_DONE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|state.ST_WRITE~regout\,
	datab => \inst_FIFOs|Selector15~0_combout\,
	datac => \inst_FIFOs|Equal8~2_combout\,
	datad => \inst_FIFOs|state.ST_RD_DONE~regout\,
	combout => \inst_FIFOs|contents[2][5]~77_combout\);

-- Location: LCFF_X8_Y6_N17
\inst_FIFOs|contents[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|contents[2][3]~73_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[2][5]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|contents[2][3]~regout\);

-- Location: LCCOMB_X8_Y6_N4
\inst_FIFOs|Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Equal5~0_combout\ = ((\inst_FIFOs|contents[2][3]~regout\) # (!\inst_FIFOs|Equal4~0_combout\)) # (!\inst_FIFOs|contents[2][5]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[2][5]~regout\,
	datac => \inst_FIFOs|contents[2][3]~regout\,
	datad => \inst_FIFOs|Equal4~0_combout\,
	combout => \inst_FIFOs|Equal5~0_combout\);

-- Location: LCCOMB_X8_Y8_N28
\inst_FIFOs|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Equal1~0_combout\ = ((\inst_FIFOs|contents[0][3]~regout\) # (!\inst_FIFOs|contents[0][5]~regout\)) # (!\inst_FIFOs|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|Equal0~0_combout\,
	datac => \inst_FIFOs|contents[0][3]~regout\,
	datad => \inst_FIFOs|contents[0][5]~regout\,
	combout => \inst_FIFOs|Equal1~0_combout\);

-- Location: LCCOMB_X10_Y8_N30
\Selector41~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~16_combout\ = (\Equal11~0_combout\ & ((\inst_FIFOs|Equal1~0_combout\) # ((\inst_FIFOs|Equal5~0_combout\ & \Equal13~0_combout\)))) # (!\Equal11~0_combout\ & (\inst_FIFOs|Equal5~0_combout\ & (\Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datab => \inst_FIFOs|Equal5~0_combout\,
	datac => \Equal13~0_combout\,
	datad => \inst_FIFOs|Equal1~0_combout\,
	combout => \Selector41~16_combout\);

-- Location: LCCOMB_X10_Y8_N0
\Selector41~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~17_combout\ = (\Selector41~12_combout\ & (\WideNor1~combout\ & ((\Selector41~16_combout\) # (!\WideNor0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~12_combout\,
	datab => \WideNor0~10_combout\,
	datac => \WideNor1~combout\,
	datad => \Selector41~16_combout\,
	combout => \Selector41~17_combout\);

-- Location: LCCOMB_X10_Y8_N8
\Selector51~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector51~1_combout\ = (!\io_state.ST_WAIT~regout\ & (\Equal13~0_combout\ & \Selector41~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io_state.ST_WAIT~regout\,
	datac => \Equal13~0_combout\,
	datad => \Selector41~17_combout\,
	combout => \Selector51~1_combout\);

-- Location: LCCOMB_X10_Y10_N22
\Selector51~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector51~2_combout\ = (\Selector41~29_combout\ & ((\Selector41~31_combout\ & ((\Selector51~1_combout\))) # (!\Selector41~31_combout\ & (\Selector51~0_combout\)))) # (!\Selector41~29_combout\ & (((\Selector51~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector51~0_combout\,
	datab => \Selector41~29_combout\,
	datac => \Selector51~1_combout\,
	datad => \Selector41~31_combout\,
	combout => \Selector51~2_combout\);

-- Location: LCFF_X10_Y10_N23
\io_state.ST_IOWR_AUX\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Selector51~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \io_state.ST_IOWR_AUX~regout\);

-- Location: LCCOMB_X8_Y9_N0
\fifos_wrreq[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifos_wrreq[2]~3_combout\ = (\io_state.ST_IOWR~regout\ & (!\inst_Synch_Rst|Output\(0) & !\io_state.ST_IOWR_AUX~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io_state.ST_IOWR~regout\,
	datac => \inst_Synch_Rst|Output\(0),
	datad => \io_state.ST_IOWR_AUX~regout\,
	combout => \fifos_wrreq[2]~3_combout\);

-- Location: LCCOMB_X8_Y9_N12
\fifos_wrreq[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifos_wrreq[2]~4_combout\ = (\fifos_wrreq[2]~2_combout\) # ((\fifos_wrreq[2]~3_combout\ & (\inst_FIFOs|Equal5~0_combout\ & \Equal13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifos_wrreq[2]~2_combout\,
	datab => \fifos_wrreq[2]~3_combout\,
	datac => \inst_FIFOs|Equal5~0_combout\,
	datad => \Equal13~0_combout\,
	combout => \fifos_wrreq[2]~4_combout\);

-- Location: LCFF_X8_Y9_N13
\fifos_wrreq[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \fifos_wrreq[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => fifos_wrreq(2));

-- Location: LCCOMB_X8_Y9_N28
\inst_FIFOs|Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector15~1_combout\ = (\inst_FIFOs|Selector16~0_combout\ & (!\inst_FIFOs|fsm~3_combout\ & ((!fifos_wrreq(2)) # (!\inst_FIFOs|Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Selector16~0_combout\,
	datab => \inst_FIFOs|fsm~3_combout\,
	datac => \inst_FIFOs|Equal5~0_combout\,
	datad => fifos_wrreq(2),
	combout => \inst_FIFOs|Selector15~1_combout\);

-- Location: LCCOMB_X8_Y7_N20
\inst_FIFOs|Selector16~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector16~1_combout\ = ((\inst_FIFOs|Selector16~0_combout\ & !\inst_FIFOs|Selector15~1_combout\)) # (!\inst_FIFOs|Selector18~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|Selector16~0_combout\,
	datac => \inst_FIFOs|Selector15~1_combout\,
	datad => \inst_FIFOs|Selector18~1_combout\,
	combout => \inst_FIFOs|Selector16~1_combout\);

-- Location: LCCOMB_X8_Y7_N12
\inst_FIFOs|op_fifo[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|op_fifo[1]~6_combout\ = (!\inst_FIFOs|state.ST_IDLE~regout\ & ((\inst_FIFOs|fsm~1_combout\) # ((!\inst_FIFOs|Selector18~0_combout\) # (!\inst_FIFOs|Selector15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|fsm~1_combout\,
	datab => \inst_FIFOs|state.ST_IDLE~regout\,
	datac => \inst_FIFOs|Selector15~1_combout\,
	datad => \inst_FIFOs|Selector18~0_combout\,
	combout => \inst_FIFOs|op_fifo[1]~6_combout\);

-- Location: LCCOMB_X8_Y7_N30
\inst_FIFOs|Selector15~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector15~7_combout\ = (\inst_FIFOs|Selector15~6_combout\ & (((\inst_FIFOs|op_fifo[1]~6_combout\)) # (!\inst_FIFOs|Selector16~2_combout\))) # (!\inst_FIFOs|Selector15~6_combout\ & (((\inst_FIFOs|state.ST_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Selector15~6_combout\,
	datab => \inst_FIFOs|Selector16~2_combout\,
	datac => \inst_FIFOs|state.ST_IDLE~regout\,
	datad => \inst_FIFOs|op_fifo[1]~6_combout\,
	combout => \inst_FIFOs|Selector15~7_combout\);

-- Location: LCFF_X8_Y7_N31
\inst_FIFOs|state.ST_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|Selector15~7_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|state.ST_IDLE~regout\);

-- Location: LCCOMB_X8_Y7_N6
\inst_FIFOs|Selector16~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector16~3_combout\ = (\inst_FIFOs|Selector15~6_combout\ & (\inst_FIFOs|Selector16~2_combout\ & (\inst_FIFOs|Selector16~1_combout\ & !\inst_FIFOs|state.ST_IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Selector15~6_combout\,
	datab => \inst_FIFOs|Selector16~2_combout\,
	datac => \inst_FIFOs|Selector16~1_combout\,
	datad => \inst_FIFOs|state.ST_IDLE~regout\,
	combout => \inst_FIFOs|Selector16~3_combout\);

-- Location: LCFF_X8_Y7_N7
\inst_FIFOs|state.ST_WRITE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|Selector16~3_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|state.ST_WRITE~regout\);

-- Location: LCCOMB_X8_Y4_N30
\inst_FIFOs|contents[3][0]~82\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[3][0]~82_combout\ = (\inst_FIFOs|contents[3][0]~51_combout\) # ((\inst_FIFOs|op_fifo\(0) & (\inst_FIFOs|op_fifo\(1) & \inst_FIFOs|state.ST_WRITE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|op_fifo\(0),
	datab => \inst_FIFOs|op_fifo\(1),
	datac => \inst_FIFOs|contents[3][0]~51_combout\,
	datad => \inst_FIFOs|state.ST_WRITE~regout\,
	combout => \inst_FIFOs|contents[3][0]~82_combout\);

-- Location: LCFF_X8_Y4_N15
\inst_FIFOs|contents[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|contents[3][1]~43_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[3][0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|contents[3][1]~regout\);

-- Location: LCCOMB_X8_Y4_N16
\inst_FIFOs|contents[3][2]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[3][2]~45_combout\ = ((\inst_FIFOs|state.ST_RD_DONE~regout\ $ (\inst_FIFOs|contents[3][2]~regout\ $ (!\inst_FIFOs|contents[3][1]~44\)))) # (GND)
-- \inst_FIFOs|contents[3][2]~46\ = CARRY((\inst_FIFOs|state.ST_RD_DONE~regout\ & ((\inst_FIFOs|contents[3][2]~regout\) # (!\inst_FIFOs|contents[3][1]~44\))) # (!\inst_FIFOs|state.ST_RD_DONE~regout\ & (\inst_FIFOs|contents[3][2]~regout\ & 
-- !\inst_FIFOs|contents[3][1]~44\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datab => \inst_FIFOs|contents[3][2]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|contents[3][1]~44\,
	combout => \inst_FIFOs|contents[3][2]~45_combout\,
	cout => \inst_FIFOs|contents[3][2]~46\);

-- Location: LCFF_X8_Y4_N17
\inst_FIFOs|contents[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|contents[3][2]~45_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[3][0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|contents[3][2]~regout\);

-- Location: LCFF_X8_Y4_N13
\inst_FIFOs|contents[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|contents[3][0]~41_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[3][0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|contents[3][0]~regout\);

-- Location: LCCOMB_X8_Y4_N2
\inst_FIFOs|Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Equal7~0_combout\ = (!\inst_FIFOs|contents[3][4]~regout\ & (!\inst_FIFOs|contents[3][1]~regout\ & (!\inst_FIFOs|contents[3][2]~regout\ & !\inst_FIFOs|contents[3][0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[3][4]~regout\,
	datab => \inst_FIFOs|contents[3][1]~regout\,
	datac => \inst_FIFOs|contents[3][2]~regout\,
	datad => \inst_FIFOs|contents[3][0]~regout\,
	combout => \inst_FIFOs|Equal7~0_combout\);

-- Location: LCCOMB_X8_Y4_N18
\inst_FIFOs|contents[3][3]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[3][3]~47_combout\ = (\inst_FIFOs|state.ST_RD_DONE~regout\ & ((\inst_FIFOs|contents[3][3]~regout\ & (\inst_FIFOs|contents[3][2]~46\ & VCC)) # (!\inst_FIFOs|contents[3][3]~regout\ & (!\inst_FIFOs|contents[3][2]~46\)))) # 
-- (!\inst_FIFOs|state.ST_RD_DONE~regout\ & ((\inst_FIFOs|contents[3][3]~regout\ & (!\inst_FIFOs|contents[3][2]~46\)) # (!\inst_FIFOs|contents[3][3]~regout\ & ((\inst_FIFOs|contents[3][2]~46\) # (GND)))))
-- \inst_FIFOs|contents[3][3]~48\ = CARRY((\inst_FIFOs|state.ST_RD_DONE~regout\ & (!\inst_FIFOs|contents[3][3]~regout\ & !\inst_FIFOs|contents[3][2]~46\)) # (!\inst_FIFOs|state.ST_RD_DONE~regout\ & ((!\inst_FIFOs|contents[3][2]~46\) # 
-- (!\inst_FIFOs|contents[3][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datab => \inst_FIFOs|contents[3][3]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|contents[3][2]~46\,
	combout => \inst_FIFOs|contents[3][3]~47_combout\,
	cout => \inst_FIFOs|contents[3][3]~48\);

-- Location: LCFF_X8_Y4_N19
\inst_FIFOs|contents[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|contents[3][3]~47_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[3][0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|contents[3][3]~regout\);

-- Location: LCCOMB_X8_Y4_N26
\inst_FIFOs|Equal7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Equal7~1_combout\ = (\inst_FIFOs|contents[3][5]~regout\ & (\inst_FIFOs|Equal7~0_combout\ & !\inst_FIFOs|contents[3][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|contents[3][5]~regout\,
	datac => \inst_FIFOs|Equal7~0_combout\,
	datad => \inst_FIFOs|contents[3][3]~regout\,
	combout => \inst_FIFOs|Equal7~1_combout\);

-- Location: LCCOMB_X12_Y7_N10
\inst_FIFOs|Selector18~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector18~1_combout\ = (\inst_FIFOs|Equal3~1_combout\ & (((\inst_FIFOs|Equal7~1_combout\)) # (!\inst_Aux_Rx|Rx_Ready~regout\))) # (!\inst_FIFOs|Equal3~1_combout\ & (!\inst_Con_Rx|Rx_Ready~regout\ & ((\inst_FIFOs|Equal7~1_combout\) # 
-- (!\inst_Aux_Rx|Rx_Ready~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Equal3~1_combout\,
	datab => \inst_Aux_Rx|Rx_Ready~regout\,
	datac => \inst_FIFOs|Equal7~1_combout\,
	datad => \inst_Con_Rx|Rx_Ready~regout\,
	combout => \inst_FIFOs|Selector18~1_combout\);

-- Location: LCCOMB_X8_Y5_N20
\inst_FIFOs|op_fifo~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|op_fifo~5_combout\ = (!\inst_FIFOs|op_fifo~3_combout\) # (!\inst_FIFOs|Selector18~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_FIFOs|Selector18~1_combout\,
	datad => \inst_FIFOs|op_fifo~3_combout\,
	combout => \inst_FIFOs|op_fifo~5_combout\);

-- Location: LCCOMB_X8_Y7_N28
\inst_FIFOs|op_fifo[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|op_fifo[1]~4_combout\ = (!\inst_FIFOs|state.ST_IDLE~regout\ & (!\inst_Synch_Rst|Output\(0) & ((!\inst_FIFOs|Selector15~1_combout\) # (!\inst_FIFOs|Selector18~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Selector18~1_combout\,
	datab => \inst_FIFOs|state.ST_IDLE~regout\,
	datac => \inst_FIFOs|Selector15~1_combout\,
	datad => \inst_Synch_Rst|Output\(0),
	combout => \inst_FIFOs|op_fifo[1]~4_combout\);

-- Location: LCFF_X8_Y5_N21
\inst_FIFOs|op_fifo[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|op_fifo~5_combout\,
	ena => \inst_FIFOs|op_fifo[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|op_fifo\(0));

-- Location: LCCOMB_X8_Y5_N10
\inst_FIFOs|Equal8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Equal8~1_combout\ = (\inst_FIFOs|op_fifo\(0) & \inst_FIFOs|op_fifo\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_FIFOs|op_fifo\(0),
	datad => \inst_FIFOs|op_fifo\(1),
	combout => \inst_FIFOs|Equal8~1_combout\);

-- Location: LCCOMB_X8_Y4_N0
\inst_FIFOs|fsm~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|fsm~1_combout\ = (\inst_Aux_Rx|Rx_Ready~regout\ & (((\inst_FIFOs|contents[3][3]~regout\) # (!\inst_FIFOs|Equal7~0_combout\)) # (!\inst_FIFOs|contents[3][5]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|Rx_Ready~regout\,
	datab => \inst_FIFOs|contents[3][5]~regout\,
	datac => \inst_FIFOs|Equal7~0_combout\,
	datad => \inst_FIFOs|contents[3][3]~regout\,
	combout => \inst_FIFOs|fsm~1_combout\);

-- Location: LCCOMB_X8_Y7_N22
\inst_FIFOs|Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector17~1_combout\ = (\inst_FIFOs|state.ST_WRITE~regout\) # ((\inst_FIFOs|Selector17~0_combout\ & ((\inst_FIFOs|fsm~1_combout\) # (!\inst_FIFOs|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Selector17~0_combout\,
	datab => \inst_FIFOs|Equal8~1_combout\,
	datac => \inst_FIFOs|fsm~1_combout\,
	datad => \inst_FIFOs|state.ST_WRITE~regout\,
	combout => \inst_FIFOs|Selector17~1_combout\);

-- Location: LCFF_X8_Y7_N23
\inst_FIFOs|state.ST_WR_DONE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|Selector17~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|state.ST_WR_DONE~regout\);

-- Location: LCCOMB_X7_Y7_N24
\inst_FIFOs|contents[1][4]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[1][4]~36_combout\ = ((\inst_FIFOs|state.ST_RD_DONE~regout\ $ (\inst_FIFOs|contents[1][4]~regout\ $ (!\inst_FIFOs|contents[1][3]~35\)))) # (GND)
-- \inst_FIFOs|contents[1][4]~37\ = CARRY((\inst_FIFOs|state.ST_RD_DONE~regout\ & ((\inst_FIFOs|contents[1][4]~regout\) # (!\inst_FIFOs|contents[1][3]~35\))) # (!\inst_FIFOs|state.ST_RD_DONE~regout\ & (\inst_FIFOs|contents[1][4]~regout\ & 
-- !\inst_FIFOs|contents[1][3]~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datab => \inst_FIFOs|contents[1][4]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|contents[1][3]~35\,
	combout => \inst_FIFOs|contents[1][4]~36_combout\,
	cout => \inst_FIFOs|contents[1][4]~37\);

-- Location: LCCOMB_X7_Y7_N26
\inst_FIFOs|contents[1][5]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[1][5]~39_combout\ = \inst_FIFOs|state.ST_RD_DONE~regout\ $ (\inst_FIFOs|contents[1][4]~37\ $ (\inst_FIFOs|contents[1][5]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datad => \inst_FIFOs|contents[1][5]~regout\,
	cin => \inst_FIFOs|contents[1][4]~37\,
	combout => \inst_FIFOs|contents[1][5]~39_combout\);

-- Location: LCFF_X7_Y7_N27
\inst_FIFOs|contents[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|contents[1][5]~39_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[1][4]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|contents[1][5]~regout\);

-- Location: LCCOMB_X12_Y7_N16
\inst_FIFOs|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Equal3~1_combout\ = (\inst_FIFOs|Equal3~0_combout\ & (\inst_FIFOs|contents[1][5]~regout\ & !\inst_FIFOs|contents[1][3]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|Equal3~0_combout\,
	datac => \inst_FIFOs|contents[1][5]~regout\,
	datad => \inst_FIFOs|contents[1][3]~regout\,
	combout => \inst_FIFOs|Equal3~1_combout\);

-- Location: LCCOMB_X8_Y5_N24
\inst_FIFOs|Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Equal8~0_combout\ = (\inst_FIFOs|op_fifo\(0) & !\inst_FIFOs|op_fifo\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_FIFOs|op_fifo\(0),
	datad => \inst_FIFOs|op_fifo\(1),
	combout => \inst_FIFOs|Equal8~0_combout\);

-- Location: LCCOMB_X8_Y4_N28
\inst_FIFOs|WrAck[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|WrAck[1]~9_combout\ = (((\inst_Con_Rx|Rx_Ready~regout\ & !\inst_FIFOs|Equal3~1_combout\)) # (!\inst_FIFOs|Equal8~0_combout\)) # (!\inst_FIFOs|state.ST_WR_DONE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|Rx_Ready~regout\,
	datab => \inst_FIFOs|state.ST_WR_DONE~regout\,
	datac => \inst_FIFOs|Equal3~1_combout\,
	datad => \inst_FIFOs|Equal8~0_combout\,
	combout => \inst_FIFOs|WrAck[1]~9_combout\);

-- Location: LCCOMB_X8_Y4_N24
\inst_FIFOs|WrAck[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|WrAck[1]~10_combout\ = (\inst_FIFOs|WrAck[0]~4_combout\ & ((\inst_FIFOs|Equal8~0_combout\) # ((\inst_FIFOs|WrAck[1]~9_combout\ & \inst_FIFOs|WrAck\(1))))) # (!\inst_FIFOs|WrAck[0]~4_combout\ & (\inst_FIFOs|WrAck[1]~9_combout\ & 
-- (\inst_FIFOs|WrAck\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|WrAck[0]~4_combout\,
	datab => \inst_FIFOs|WrAck[1]~9_combout\,
	datac => \inst_FIFOs|WrAck\(1),
	datad => \inst_FIFOs|Equal8~0_combout\,
	combout => \inst_FIFOs|WrAck[1]~10_combout\);

-- Location: LCFF_X8_Y4_N25
\inst_FIFOs|WrAck[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|WrAck[1]~10_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|WrAck\(1));

-- Location: PIN_113,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CRxDn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CRxDn,
	combout => \CRxDn~combout\);

-- Location: LCCOMB_X18_Y6_N4
\inst_Con_Rx|inst_Sync|meta_reg[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|inst_Sync|meta_reg[0]~feeder_combout\ = \CRxDn~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CRxDn~combout\,
	combout => \inst_Con_Rx|inst_Sync|meta_reg[0]~feeder_combout\);

-- Location: LCFF_X18_Y6_N5
\inst_Con_Rx|inst_Sync|meta_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|inst_Sync|meta_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|inst_Sync|meta_reg\(0));

-- Location: LCFF_X18_Y6_N31
\inst_Con_Rx|inst_Sync|Output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_Con_Rx|inst_Sync|meta_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|inst_Sync|Output\(0));

-- Location: LCCOMB_X18_Y6_N22
\inst_Con_Rx|inst_DeNoise|avg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|inst_DeNoise|avg~2_combout\ = (!\inst_Con_Rx|inst_DeNoise|avg\(0) & ((\inst_Con_Rx|inst_DeNoise|avg\(2) $ (\inst_Con_Rx|inst_Sync|Output\(0))) # (!\inst_Con_Rx|inst_DeNoise|avg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|inst_DeNoise|avg\(1),
	datab => \inst_Con_Rx|inst_DeNoise|avg\(2),
	datac => \inst_Con_Rx|inst_DeNoise|avg\(0),
	datad => \inst_Con_Rx|inst_Sync|Output\(0),
	combout => \inst_Con_Rx|inst_DeNoise|avg~2_combout\);

-- Location: LCFF_X18_Y6_N23
\inst_Con_Rx|inst_DeNoise|avg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|inst_DeNoise|avg~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|Strb_Con~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|inst_DeNoise|avg\(0));

-- Location: LCCOMB_X18_Y6_N8
\inst_Con_Rx|inst_DeNoise|avg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|inst_DeNoise|avg~1_combout\ = (\inst_Con_Rx|inst_DeNoise|avg\(1) & (\inst_Con_Rx|inst_DeNoise|avg\(2) & ((\inst_Con_Rx|inst_DeNoise|avg\(0)) # (\inst_Con_Rx|inst_Sync|Output\(0))))) # (!\inst_Con_Rx|inst_DeNoise|avg\(1) & 
-- (\inst_Con_Rx|inst_DeNoise|avg\(2) $ (((\inst_Con_Rx|inst_DeNoise|avg\(0) & \inst_Con_Rx|inst_Sync|Output\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|inst_DeNoise|avg\(1),
	datab => \inst_Con_Rx|inst_DeNoise|avg\(0),
	datac => \inst_Con_Rx|inst_DeNoise|avg\(2),
	datad => \inst_Con_Rx|inst_Sync|Output\(0),
	combout => \inst_Con_Rx|inst_DeNoise|avg~1_combout\);

-- Location: LCFF_X18_Y6_N9
\inst_Con_Rx|inst_DeNoise|avg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|inst_DeNoise|avg~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|Strb_Con~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|inst_DeNoise|avg\(2));

-- Location: LCCOMB_X18_Y6_N30
\inst_Con_Rx|inst_DeNoise|output_int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|inst_DeNoise|output_int~0_combout\ = (\inst_Con_Rx|inst_DeNoise|avg\(1) & (!\inst_Con_Rx|inst_DeNoise|avg\(0) & (\inst_Con_Rx|inst_DeNoise|avg\(2) $ (!\inst_Con_Rx|inst_Sync|Output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|inst_DeNoise|avg\(1),
	datab => \inst_Con_Rx|inst_DeNoise|avg\(2),
	datac => \inst_Con_Rx|inst_Sync|Output\(0),
	datad => \inst_Con_Rx|inst_DeNoise|avg\(0),
	combout => \inst_Con_Rx|inst_DeNoise|output_int~0_combout\);

-- Location: LCCOMB_X18_Y6_N20
\inst_Con_Rx|inst_DeNoise|output_int~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|inst_DeNoise|output_int~1_combout\ = (\inst_Timing|Strb_Con~regout\ & ((\inst_Con_Rx|inst_DeNoise|output_int~0_combout\ & ((\inst_Con_Rx|inst_Sync|Output\(0)))) # (!\inst_Con_Rx|inst_DeNoise|output_int~0_combout\ & 
-- (\inst_Con_Rx|inst_DeNoise|output_int~regout\)))) # (!\inst_Timing|Strb_Con~regout\ & (((\inst_Con_Rx|inst_DeNoise|output_int~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Timing|Strb_Con~regout\,
	datab => \inst_Con_Rx|inst_DeNoise|output_int~0_combout\,
	datac => \inst_Con_Rx|inst_DeNoise|output_int~regout\,
	datad => \inst_Con_Rx|inst_Sync|Output\(0),
	combout => \inst_Con_Rx|inst_DeNoise|output_int~1_combout\);

-- Location: LCFF_X18_Y6_N21
\inst_Con_Rx|inst_DeNoise|output_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|inst_DeNoise|output_int~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|inst_DeNoise|output_int~regout\);

-- Location: LCCOMB_X14_Y4_N10
\inst_Con_Rx|Selector2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Selector2~7_combout\ = (\inst_Con_Rx|Selector2~6_combout\) # (\inst_Con_Rx|Selector2~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|Selector2~6_combout\,
	datac => \inst_Con_Rx|Selector2~10_combout\,
	combout => \inst_Con_Rx|Selector2~7_combout\);

-- Location: LCFF_X14_Y4_N9
\inst_Con_Rx|state.ST_STOP\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|Selector2~10_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Con_Rx|Selector2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|state.ST_STOP~regout\);

-- Location: LCCOMB_X13_Y4_N2
\inst_Con_Rx|FrameErr~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|FrameErr~1_combout\ = (\inst_Con_Rx|state.ST_STOP~regout\ & (!\inst_Con_Rx|inst_DeNoise|output_int~regout\ & \inst_Con_Rx|bd_halfway~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Con_Rx|state.ST_STOP~regout\,
	datac => \inst_Con_Rx|inst_DeNoise|output_int~regout\,
	datad => \inst_Con_Rx|bd_halfway~regout\,
	combout => \inst_Con_Rx|FrameErr~1_combout\);

-- Location: LCCOMB_X13_Y4_N16
\inst_Con_Rx|Selector1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Selector1~8_combout\ = (\inst_Con_Rx|FrameErr~1_combout\) # ((\inst_Con_Rx|Selector1~7_combout\ & ((\inst_Con_Rx|state.ST_IDLE~regout\) # (\inst_Con_Rx|Selector1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|Selector1~7_combout\,
	datab => \inst_Con_Rx|FrameErr~1_combout\,
	datac => \inst_Con_Rx|state.ST_IDLE~regout\,
	datad => \inst_Con_Rx|Selector1~6_combout\,
	combout => \inst_Con_Rx|Selector1~8_combout\);

-- Location: LCFF_X13_Y4_N17
\inst_Con_Rx|state.ST_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|Selector1~8_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|state.ST_IDLE~regout\);

-- Location: LCCOMB_X15_Y4_N28
\inst_Con_Rx|bd_div~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|bd_div~3_combout\ = (!\inst_Con_Rx|bd_div\(0) & !\inst_Con_Rx|state.ST_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_Con_Rx|bd_div\(0),
	datad => \inst_Con_Rx|state.ST_IDLE~regout\,
	combout => \inst_Con_Rx|bd_div~3_combout\);

-- Location: LCCOMB_X15_Y4_N0
\inst_Con_Rx|bd_div[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|bd_div[0]~2_combout\ = (\inst_Timing|Strb_Con~regout\) # (\inst_Con_Rx|state.ST_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_Timing|Strb_Con~regout\,
	datad => \inst_Con_Rx|state.ST_IDLE~regout\,
	combout => \inst_Con_Rx|bd_div[0]~2_combout\);

-- Location: LCFF_X15_Y4_N29
\inst_Con_Rx|bd_div[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|bd_div~3_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Con_Rx|bd_div[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|bd_div\(0));

-- Location: LCCOMB_X15_Y4_N26
\inst_Con_Rx|bd_div~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|bd_div~1_combout\ = (!\inst_Con_Rx|state.ST_IDLE~regout\ & (\inst_Con_Rx|bd_div\(1) $ (\inst_Con_Rx|bd_div\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Con_Rx|state.ST_IDLE~regout\,
	datac => \inst_Con_Rx|bd_div\(1),
	datad => \inst_Con_Rx|bd_div\(0),
	combout => \inst_Con_Rx|bd_div~1_combout\);

-- Location: LCFF_X15_Y4_N27
\inst_Con_Rx|bd_div[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|bd_div~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Con_Rx|bd_div[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|bd_div\(1));

-- Location: LCCOMB_X15_Y4_N16
\inst_Con_Rx|brgen~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|brgen~0_combout\ = (!\inst_Con_Rx|bd_div\(2) & (\inst_Con_Rx|bd_div\(0) & (\inst_Timing|Strb_Con~regout\ & \inst_Con_Rx|bd_div\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|bd_div\(2),
	datab => \inst_Con_Rx|bd_div\(0),
	datac => \inst_Timing|Strb_Con~regout\,
	datad => \inst_Con_Rx|bd_div\(1),
	combout => \inst_Con_Rx|brgen~0_combout\);

-- Location: LCFF_X15_Y4_N17
\inst_Con_Rx|bd_halfway\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|brgen~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|bd_halfway~regout\);

-- Location: LCCOMB_X14_Y4_N2
\inst_Con_Rx|bit_count[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|bit_count[0]~6_combout\ = (\inst_Con_Rx|bit_count\(0) & (((\inst_Con_Rx|bit_count[0]~3_combout\)))) # (!\inst_Con_Rx|bit_count\(0) & (\inst_Con_Rx|state.ST_DATA~regout\ & ((\inst_Con_Rx|bd_halfway~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|state.ST_DATA~regout\,
	datab => \inst_Con_Rx|bit_count[0]~3_combout\,
	datac => \inst_Con_Rx|bit_count\(0),
	datad => \inst_Con_Rx|bd_halfway~regout\,
	combout => \inst_Con_Rx|bit_count[0]~6_combout\);

-- Location: LCFF_X14_Y4_N3
\inst_Con_Rx|bit_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|bit_count[0]~6_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|bit_count\(0));

-- Location: LCCOMB_X14_Y4_N24
\inst_Con_Rx|bit_count[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|bit_count[1]~5_combout\ = (\inst_Con_Rx|bit_count[0]~3_combout\ & (((\inst_Con_Rx|bit_count\(1))))) # (!\inst_Con_Rx|bit_count[0]~3_combout\ & (\inst_Con_Rx|state.ST_DATA~regout\ & (\inst_Con_Rx|bit_count\(1) $ (\inst_Con_Rx|bit_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|state.ST_DATA~regout\,
	datab => \inst_Con_Rx|bit_count[0]~3_combout\,
	datac => \inst_Con_Rx|bit_count\(1),
	datad => \inst_Con_Rx|bit_count\(0),
	combout => \inst_Con_Rx|bit_count[1]~5_combout\);

-- Location: LCFF_X14_Y4_N25
\inst_Con_Rx|bit_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|bit_count[1]~5_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|bit_count\(1));

-- Location: LCCOMB_X14_Y4_N14
\inst_Con_Rx|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Selector3~0_combout\ = (((!\inst_Con_Rx|bit_count\(0)) # (!\inst_Con_Rx|bit_count\(1))) # (!\inst_Con_Rx|bit_count\(2))) # (!\inst_Con_Rx|bd_halfway~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|bd_halfway~regout\,
	datab => \inst_Con_Rx|bit_count\(2),
	datac => \inst_Con_Rx|bit_count\(1),
	datad => \inst_Con_Rx|bit_count\(0),
	combout => \inst_Con_Rx|Selector3~0_combout\);

-- Location: LCCOMB_X14_Y4_N0
\inst_Con_Rx|bit_count[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|bit_count[0]~2_combout\ = ((\inst_Con_Rx|inst_DeNoise|output_int~regout\) # (!\inst_Con_Rx|bd_halfway~regout\)) # (!\inst_Con_Rx|state.ST_START~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Con_Rx|state.ST_START~regout\,
	datac => \inst_Con_Rx|inst_DeNoise|output_int~regout\,
	datad => \inst_Con_Rx|bd_halfway~regout\,
	combout => \inst_Con_Rx|bit_count[0]~2_combout\);

-- Location: LCCOMB_X14_Y4_N18
\inst_Con_Rx|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Selector3~1_combout\ = ((\inst_Con_Rx|Selector3~0_combout\ & \inst_Con_Rx|state.ST_DATA~regout\)) # (!\inst_Con_Rx|bit_count[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Con_Rx|Selector3~0_combout\,
	datac => \inst_Con_Rx|state.ST_DATA~regout\,
	datad => \inst_Con_Rx|bit_count[0]~2_combout\,
	combout => \inst_Con_Rx|Selector3~1_combout\);

-- Location: LCFF_X14_Y4_N19
\inst_Con_Rx|state.ST_DATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|Selector3~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|state.ST_DATA~regout\);

-- Location: LCCOMB_X14_Y4_N28
\inst_Con_Rx|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Selector1~0_combout\ = (\inst_Con_Rx|state.ST_DATA~regout\ & \inst_Con_Rx|bd_halfway~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Con_Rx|state.ST_DATA~regout\,
	datad => \inst_Con_Rx|bd_halfway~regout\,
	combout => \inst_Con_Rx|Selector1~0_combout\);

-- Location: LCCOMB_X14_Y4_N26
\inst_Con_Rx|bit_count[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|bit_count[0]~3_combout\ = (\inst_Con_Rx|bit_count[0]~2_combout\ & (((\inst_Con_Rx|Add1~0_combout\ & \inst_Con_Rx|bit_count\(2))) # (!\inst_Con_Rx|Selector1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|Add1~0_combout\,
	datab => \inst_Con_Rx|bit_count\(2),
	datac => \inst_Con_Rx|Selector1~0_combout\,
	datad => \inst_Con_Rx|bit_count[0]~2_combout\,
	combout => \inst_Con_Rx|bit_count[0]~3_combout\);

-- Location: LCCOMB_X14_Y4_N22
\inst_Con_Rx|bit_count[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|bit_count[2]~4_combout\ = (\inst_Con_Rx|bit_count[0]~3_combout\ & (((\inst_Con_Rx|bit_count\(2))))) # (!\inst_Con_Rx|bit_count[0]~3_combout\ & (\inst_Con_Rx|state.ST_DATA~regout\ & (\inst_Con_Rx|Add1~0_combout\ $ 
-- (\inst_Con_Rx|bit_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|Add1~0_combout\,
	datab => \inst_Con_Rx|bit_count[0]~3_combout\,
	datac => \inst_Con_Rx|bit_count\(2),
	datad => \inst_Con_Rx|state.ST_DATA~regout\,
	combout => \inst_Con_Rx|bit_count[2]~4_combout\);

-- Location: LCFF_X14_Y4_N23
\inst_Con_Rx|bit_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|bit_count[2]~4_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|bit_count\(2));

-- Location: LCCOMB_X14_Y4_N8
\inst_Con_Rx|Selector2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Selector2~10_combout\ = (\inst_Con_Rx|Add1~0_combout\ & (\inst_Con_Rx|bit_count\(2) & (\inst_Con_Rx|state.ST_DATA~regout\ & \inst_Con_Rx|bd_halfway~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|Add1~0_combout\,
	datab => \inst_Con_Rx|bit_count\(2),
	datac => \inst_Con_Rx|state.ST_DATA~regout\,
	datad => \inst_Con_Rx|bd_halfway~regout\,
	combout => \inst_Con_Rx|Selector2~10_combout\);

-- Location: LCCOMB_X13_Y4_N10
\inst_Con_Rx|Selector2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Selector2~4_combout\ = (\inst_Con_Rx|state.ST_WTACK~regout\ & (\inst_FIFOs|WrAck\(1))) # (!\inst_Con_Rx|state.ST_WTACK~regout\ & ((\inst_Con_Rx|bd_halfway~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Con_Rx|state.ST_WTACK~regout\,
	datac => \inst_FIFOs|WrAck\(1),
	datad => \inst_Con_Rx|bd_halfway~regout\,
	combout => \inst_Con_Rx|Selector2~4_combout\);

-- Location: LCCOMB_X13_Y4_N28
\inst_Con_Rx|Selector2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Selector2~5_combout\ = (\inst_Con_Rx|state.ST_DATA~regout\ & (((\inst_Con_Rx|inst_DeNoise|output_int~regout\)))) # (!\inst_Con_Rx|state.ST_DATA~regout\ & (\inst_Con_Rx|state.ST_INIT~regout\ & (\inst_Con_Rx|inst_DeNoise|output_int~regout\ $ 
-- (\inst_Con_Rx|Selector2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|state.ST_INIT~regout\,
	datab => \inst_Con_Rx|state.ST_DATA~regout\,
	datac => \inst_Con_Rx|inst_DeNoise|output_int~regout\,
	datad => \inst_Con_Rx|Selector2~4_combout\,
	combout => \inst_Con_Rx|Selector2~5_combout\);

-- Location: LCCOMB_X13_Y4_N14
\inst_Con_Rx|Selector2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Selector2~6_combout\ = (\inst_Con_Rx|inst_DeNoise|output_int~regout\ & ((\inst_Con_Rx|state.ST_START~regout\) # ((!\inst_Con_Rx|state.ST_IDLE~regout\ & !\inst_Con_Rx|Selector2~5_combout\)))) # (!\inst_Con_Rx|inst_DeNoise|output_int~regout\ & 
-- ((\inst_Con_Rx|state.ST_IDLE~regout\) # ((\inst_Con_Rx|Selector2~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|state.ST_IDLE~regout\,
	datab => \inst_Con_Rx|Selector2~5_combout\,
	datac => \inst_Con_Rx|inst_DeNoise|output_int~regout\,
	datad => \inst_Con_Rx|state.ST_START~regout\,
	combout => \inst_Con_Rx|Selector2~6_combout\);

-- Location: LCCOMB_X14_Y4_N30
\inst_Con_Rx|Selector2~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Selector2~9_combout\ = (!\inst_Con_Rx|Selector2~10_combout\ & ((\inst_Con_Rx|Selector2~6_combout\ & (\inst_Con_Rx|Selector2~8_combout\)) # (!\inst_Con_Rx|Selector2~6_combout\ & ((\inst_Con_Rx|state.ST_START~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|Selector2~8_combout\,
	datab => \inst_Con_Rx|Selector2~10_combout\,
	datac => \inst_Con_Rx|state.ST_START~regout\,
	datad => \inst_Con_Rx|Selector2~6_combout\,
	combout => \inst_Con_Rx|Selector2~9_combout\);

-- Location: LCFF_X14_Y4_N31
\inst_Con_Rx|state.ST_START\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|Selector2~9_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|state.ST_START~regout\);

-- Location: LCCOMB_X13_Y4_N30
\inst_Con_Rx|Selector1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Selector1~5_combout\ = (\inst_Con_Rx|inst_DeNoise|output_int~regout\ & ((\inst_Con_Rx|state.ST_START~regout\) # ((!\inst_Con_Rx|state.ST_INIT~regout\ & !\inst_Con_Rx|state.ST_WTACK~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|state.ST_INIT~regout\,
	datab => \inst_Con_Rx|state.ST_WTACK~regout\,
	datac => \inst_Con_Rx|inst_DeNoise|output_int~regout\,
	datad => \inst_Con_Rx|state.ST_START~regout\,
	combout => \inst_Con_Rx|Selector1~5_combout\);

-- Location: LCCOMB_X13_Y4_N0
\inst_Con_Rx|Selector1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Selector1~6_combout\ = (\inst_Con_Rx|Selector1~4_combout\) # ((\inst_Con_Rx|Selector1~5_combout\) # ((\inst_Con_Rx|state.ST_WTACK~regout\ & \inst_FIFOs|WrAck\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|Selector1~4_combout\,
	datab => \inst_Con_Rx|state.ST_WTACK~regout\,
	datac => \inst_FIFOs|WrAck\(1),
	datad => \inst_Con_Rx|Selector1~5_combout\,
	combout => \inst_Con_Rx|Selector1~6_combout\);

-- Location: LCCOMB_X13_Y4_N18
\inst_Con_Rx|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Selector10~0_combout\ = (\inst_Con_Rx|state.ST_STOP~regout\ & (\inst_Con_Rx|inst_DeNoise|output_int~regout\ & \inst_Con_Rx|bd_halfway~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Con_Rx|state.ST_STOP~regout\,
	datac => \inst_Con_Rx|inst_DeNoise|output_int~regout\,
	datad => \inst_Con_Rx|bd_halfway~regout\,
	combout => \inst_Con_Rx|Selector10~0_combout\);

-- Location: LCCOMB_X13_Y4_N4
\inst_Con_Rx|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Selector5~0_combout\ = (\inst_Con_Rx|Selector10~0_combout\) # ((!\inst_Con_Rx|Selector1~1_combout\ & (!\inst_Con_Rx|Selector1~6_combout\ & \inst_Con_Rx|state.ST_WTACK~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|Selector1~1_combout\,
	datab => \inst_Con_Rx|Selector1~6_combout\,
	datac => \inst_Con_Rx|state.ST_WTACK~regout\,
	datad => \inst_Con_Rx|Selector10~0_combout\,
	combout => \inst_Con_Rx|Selector5~0_combout\);

-- Location: LCFF_X13_Y4_N5
\inst_Con_Rx|state.ST_WTACK\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|Selector5~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|state.ST_WTACK~regout\);

-- Location: LCCOMB_X13_Y4_N24
\inst_Con_Rx|Rx_Ready~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Rx_Ready~0_combout\ = (\inst_Con_Rx|state.ST_WTACK~regout\ & (!\inst_FIFOs|WrAck\(1) & (\inst_Con_Rx|Rx_Ready~regout\))) # (!\inst_Con_Rx|state.ST_WTACK~regout\ & (((\inst_Con_Rx|Rx_Ready~regout\) # (\inst_Con_Rx|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|WrAck\(1),
	datab => \inst_Con_Rx|state.ST_WTACK~regout\,
	datac => \inst_Con_Rx|Rx_Ready~regout\,
	datad => \inst_Con_Rx|Selector10~0_combout\,
	combout => \inst_Con_Rx|Rx_Ready~0_combout\);

-- Location: LCFF_X13_Y4_N25
\inst_Con_Rx|Rx_Ready\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|Rx_Ready~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|Rx_Ready~regout\);

-- Location: LCCOMB_X7_Y7_N12
\inst_FIFOs|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector18~0_combout\ = ((\inst_FIFOs|contents[1][5]~regout\ & (\inst_FIFOs|Equal3~0_combout\ & !\inst_FIFOs|contents[1][3]~regout\))) # (!\inst_Con_Rx|Rx_Ready~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[1][5]~regout\,
	datab => \inst_FIFOs|Equal3~0_combout\,
	datac => \inst_Con_Rx|Rx_Ready~regout\,
	datad => \inst_FIFOs|contents[1][3]~regout\,
	combout => \inst_FIFOs|Selector18~0_combout\);

-- Location: LCCOMB_X10_Y9_N4
\Selector44~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~1_combout\ = (\io_state.ST_IORD_CON~regout\ & (!\io_state.ST_WAIT~regout\ & !\Selector41~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IORD_CON~regout\,
	datac => \io_state.ST_WAIT~regout\,
	datad => \Selector41~31_combout\,
	combout => \Selector44~1_combout\);

-- Location: LCCOMB_X9_Y4_N10
\D[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[5]~16_combout\ = (!a_s(3) & a_s(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => a_s(3),
	datad => a_s(4),
	combout => \D[5]~16_combout\);

-- Location: LCCOMB_X8_Y8_N26
\Equal11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal11~0_combout\ = (\Selector96~2_combout\ & (\D[5]~16_combout\ & (\Equal9~0_combout\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector96~2_combout\,
	datab => \D[5]~16_combout\,
	datac => \Equal9~0_combout\,
	datad => \Equal4~0_combout\,
	combout => \Equal11~0_combout\);

-- Location: LCCOMB_X10_Y9_N20
\Selector44~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector44~2_combout\ = (\Selector44~0_combout\ & ((\Equal11~0_combout\) # ((\Selector44~1_combout\ & \Selector41~29_combout\)))) # (!\Selector44~0_combout\ & (\Selector44~1_combout\ & ((\Selector41~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~0_combout\,
	datab => \Selector44~1_combout\,
	datac => \Equal11~0_combout\,
	datad => \Selector41~29_combout\,
	combout => \Selector44~2_combout\);

-- Location: LCFF_X10_Y9_N21
\io_state.ST_IORD_CON\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Selector44~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \io_state.ST_IORD_CON~regout\);

-- Location: LCCOMB_X8_Y9_N30
\fifos_rdreq[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifos_rdreq[1]~1_combout\ = (\io_state.ST_IORD~regout\ & (!\io_state.ST_IORD_CON~regout\ & !\inst_Synch_Rst|Output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IORD~regout\,
	datab => \io_state.ST_IORD_CON~regout\,
	datac => \inst_Synch_Rst|Output\(0),
	combout => \fifos_rdreq[1]~1_combout\);

-- Location: LCCOMB_X9_Y6_N0
\inst_FIFOs|RdAck[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|RdAck[1]~1_combout\ = (\inst_FIFOs|contents[1][4]~38_combout\ & (\inst_FIFOs|RdAck[1]~0_combout\ & ((\inst_FIFOs|Equal8~0_combout\)))) # (!\inst_FIFOs|contents[1][4]~38_combout\ & ((\inst_FIFOs|RdAck\(1)) # ((\inst_FIFOs|RdAck[1]~0_combout\ & 
-- \inst_FIFOs|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[1][4]~38_combout\,
	datab => \inst_FIFOs|RdAck[1]~0_combout\,
	datac => \inst_FIFOs|RdAck\(1),
	datad => \inst_FIFOs|Equal8~0_combout\,
	combout => \inst_FIFOs|RdAck[1]~1_combout\);

-- Location: LCFF_X9_Y6_N1
\inst_FIFOs|RdAck[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|RdAck[1]~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|RdAck\(1));

-- Location: LCCOMB_X8_Y9_N10
\fifos_rdreq[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifos_rdreq[1]~0_combout\ = (fifos_rdreq(1) & (((\inst_Synch_Rst|Output\(0)) # (!\io_state.ST_IORD_CON~regout\)) # (!\inst_FIFOs|RdAck\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifos_rdreq(1),
	datab => \inst_FIFOs|RdAck\(1),
	datac => \inst_Synch_Rst|Output\(0),
	datad => \io_state.ST_IORD_CON~regout\,
	combout => \fifos_rdreq[1]~0_combout\);

-- Location: LCCOMB_X8_Y9_N2
\fifos_rdreq[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifos_rdreq[1]~2_combout\ = (\fifos_rdreq[1]~0_combout\) # ((\Equal11~0_combout\ & (\fifos_rdreq[1]~1_combout\ & \inst_FIFOs|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal11~0_combout\,
	datab => \fifos_rdreq[1]~1_combout\,
	datac => \fifos_rdreq[1]~0_combout\,
	datad => \inst_FIFOs|Equal2~0_combout\,
	combout => \fifos_rdreq[1]~2_combout\);

-- Location: LCFF_X8_Y9_N3
\fifos_rdreq[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \fifos_rdreq[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => fifos_rdreq(1));

-- Location: LCCOMB_X7_Y7_N14
\inst_FIFOs|fsm~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|fsm~4_combout\ = (fifos_rdreq(1) & ((\inst_FIFOs|contents[1][3]~regout\) # ((\inst_FIFOs|contents[1][5]~regout\) # (!\inst_FIFOs|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[1][3]~regout\,
	datab => \inst_FIFOs|Equal3~0_combout\,
	datac => \inst_FIFOs|contents[1][5]~regout\,
	datad => fifos_rdreq(1),
	combout => \inst_FIFOs|fsm~4_combout\);

-- Location: LCCOMB_X8_Y5_N30
\inst_FIFOs|op_fifo~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|op_fifo~1_combout\ = (!\inst_FIFOs|fsm~4_combout\ & ((\inst_FIFOs|op_fifo~0_combout\) # ((\inst_FIFOs|Equal6~0_combout\ & fifos_rdreq(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|op_fifo~0_combout\,
	datab => \inst_FIFOs|Equal6~0_combout\,
	datac => \inst_FIFOs|fsm~4_combout\,
	datad => fifos_rdreq(3),
	combout => \inst_FIFOs|op_fifo~1_combout\);

-- Location: LCCOMB_X8_Y5_N18
\inst_FIFOs|op_fifo~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|op_fifo~2_combout\ = (\inst_FIFOs|Selector18~0_combout\ & ((\inst_FIFOs|fsm~1_combout\) # (\inst_FIFOs|op_fifo~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|Selector18~0_combout\,
	datac => \inst_FIFOs|fsm~1_combout\,
	datad => \inst_FIFOs|op_fifo~1_combout\,
	combout => \inst_FIFOs|op_fifo~2_combout\);

-- Location: LCFF_X8_Y5_N19
\inst_FIFOs|op_fifo[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|op_fifo~2_combout\,
	ena => \inst_FIFOs|op_fifo[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|op_fifo\(1));

-- Location: LCCOMB_X8_Y5_N12
\inst_FIFOs|contents[1][4]~81\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[1][4]~81_combout\ = (\inst_FIFOs|contents[1][4]~38_combout\) # ((!\inst_FIFOs|op_fifo\(1) & (\inst_FIFOs|op_fifo\(0) & \inst_FIFOs|state.ST_WRITE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[1][4]~38_combout\,
	datab => \inst_FIFOs|op_fifo\(1),
	datac => \inst_FIFOs|op_fifo\(0),
	datad => \inst_FIFOs|state.ST_WRITE~regout\,
	combout => \inst_FIFOs|contents[1][4]~81_combout\);

-- Location: LCFF_X7_Y7_N19
\inst_FIFOs|contents[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|contents[1][1]~30_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[1][4]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|contents[1][1]~regout\);

-- Location: LCCOMB_X7_Y7_N20
\inst_FIFOs|contents[1][2]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[1][2]~32_combout\ = ((\inst_FIFOs|state.ST_RD_DONE~regout\ $ (\inst_FIFOs|contents[1][2]~regout\ $ (!\inst_FIFOs|contents[1][1]~31\)))) # (GND)
-- \inst_FIFOs|contents[1][2]~33\ = CARRY((\inst_FIFOs|state.ST_RD_DONE~regout\ & ((\inst_FIFOs|contents[1][2]~regout\) # (!\inst_FIFOs|contents[1][1]~31\))) # (!\inst_FIFOs|state.ST_RD_DONE~regout\ & (\inst_FIFOs|contents[1][2]~regout\ & 
-- !\inst_FIFOs|contents[1][1]~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datab => \inst_FIFOs|contents[1][2]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|contents[1][1]~31\,
	combout => \inst_FIFOs|contents[1][2]~32_combout\,
	cout => \inst_FIFOs|contents[1][2]~33\);

-- Location: LCFF_X7_Y7_N21
\inst_FIFOs|contents[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|contents[1][2]~32_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[1][4]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|contents[1][2]~regout\);

-- Location: LCCOMB_X7_Y7_N22
\inst_FIFOs|contents[1][3]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[1][3]~34_combout\ = (\inst_FIFOs|state.ST_RD_DONE~regout\ & ((\inst_FIFOs|contents[1][3]~regout\ & (\inst_FIFOs|contents[1][2]~33\ & VCC)) # (!\inst_FIFOs|contents[1][3]~regout\ & (!\inst_FIFOs|contents[1][2]~33\)))) # 
-- (!\inst_FIFOs|state.ST_RD_DONE~regout\ & ((\inst_FIFOs|contents[1][3]~regout\ & (!\inst_FIFOs|contents[1][2]~33\)) # (!\inst_FIFOs|contents[1][3]~regout\ & ((\inst_FIFOs|contents[1][2]~33\) # (GND)))))
-- \inst_FIFOs|contents[1][3]~35\ = CARRY((\inst_FIFOs|state.ST_RD_DONE~regout\ & (!\inst_FIFOs|contents[1][3]~regout\ & !\inst_FIFOs|contents[1][2]~33\)) # (!\inst_FIFOs|state.ST_RD_DONE~regout\ & ((!\inst_FIFOs|contents[1][2]~33\) # 
-- (!\inst_FIFOs|contents[1][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datab => \inst_FIFOs|contents[1][3]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|contents[1][2]~33\,
	combout => \inst_FIFOs|contents[1][3]~34_combout\,
	cout => \inst_FIFOs|contents[1][3]~35\);

-- Location: LCFF_X7_Y7_N23
\inst_FIFOs|contents[1][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|contents[1][3]~34_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[1][4]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|contents[1][3]~regout\);

-- Location: LCFF_X7_Y7_N25
\inst_FIFOs|contents[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|contents[1][4]~36_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[1][4]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|contents[1][4]~regout\);

-- Location: LCFF_X7_Y7_N17
\inst_FIFOs|contents[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|contents[1][0]~28_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[1][4]~81_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|contents[1][0]~regout\);

-- Location: LCCOMB_X7_Y7_N28
\inst_FIFOs|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Equal3~0_combout\ = (!\inst_FIFOs|contents[1][2]~regout\ & (!\inst_FIFOs|contents[1][4]~regout\ & (!\inst_FIFOs|contents[1][0]~regout\ & !\inst_FIFOs|contents[1][1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[1][2]~regout\,
	datab => \inst_FIFOs|contents[1][4]~regout\,
	datac => \inst_FIFOs|contents[1][0]~regout\,
	datad => \inst_FIFOs|contents[1][1]~regout\,
	combout => \inst_FIFOs|Equal3~0_combout\);

-- Location: LCCOMB_X7_Y7_N30
\inst_FIFOs|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Equal2~0_combout\ = ((\inst_FIFOs|contents[1][5]~regout\) # (\inst_FIFOs|contents[1][3]~regout\)) # (!\inst_FIFOs|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|Equal3~0_combout\,
	datac => \inst_FIFOs|contents[1][5]~regout\,
	datad => \inst_FIFOs|contents[1][3]~regout\,
	combout => \inst_FIFOs|Equal2~0_combout\);

-- Location: LCCOMB_X8_Y9_N18
\inst_FIFOs|op_fifo~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|op_fifo~3_combout\ = (fifos_rdreq(1) & (!\inst_FIFOs|Equal2~0_combout\ & ((!\inst_FIFOs|Equal6~0_combout\) # (!fifos_rdreq(3))))) # (!fifos_rdreq(1) & (((!\inst_FIFOs|Equal6~0_combout\)) # (!fifos_rdreq(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifos_rdreq(1),
	datab => fifos_rdreq(3),
	datac => \inst_FIFOs|Equal6~0_combout\,
	datad => \inst_FIFOs|Equal2~0_combout\,
	combout => \inst_FIFOs|op_fifo~3_combout\);

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ACTSn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_ACTSn,
	combout => \ACTSn~combout\);

-- Location: LCCOMB_X8_Y6_N24
\acts_s~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \acts_s~0_combout\ = !\ACTSn~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ACTSn~combout\,
	combout => \acts_s~0_combout\);

-- Location: LCFF_X8_Y6_N25
acts_s : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \acts_s~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \acts_s~regout\);

-- Location: LCCOMB_X8_Y6_N26
\inst_FIFOs|fsm~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|fsm~2_combout\ = (!\inst_FIFOs|Equal4~1_combout\ & (\acts_s~regout\ & !\inst_Aux_Tx|Busy~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|Equal4~1_combout\,
	datac => \acts_s~regout\,
	datad => \inst_Aux_Tx|Busy~regout\,
	combout => \inst_FIFOs|fsm~2_combout\);

-- Location: LCCOMB_X8_Y9_N6
\inst_FIFOs|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector16~0_combout\ = (\inst_FIFOs|op_fifo~3_combout\ & (!\inst_FIFOs|fsm~2_combout\ & !\inst_FIFOs|fsm~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|op_fifo~3_combout\,
	datac => \inst_FIFOs|fsm~2_combout\,
	datad => \inst_FIFOs|fsm~0_combout\,
	combout => \inst_FIFOs|Selector16~0_combout\);

-- Location: LCCOMB_X8_Y7_N0
\inst_FIFOs|Selector18~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector18~2_combout\ = (!\inst_FIFOs|Selector16~0_combout\ & (!\inst_FIFOs|Selector15~1_combout\ & \inst_FIFOs|Selector18~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|Selector16~0_combout\,
	datac => \inst_FIFOs|Selector15~1_combout\,
	datad => \inst_FIFOs|Selector18~1_combout\,
	combout => \inst_FIFOs|Selector18~2_combout\);

-- Location: LCCOMB_X8_Y7_N2
\inst_FIFOs|Selector15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector15~2_combout\ = (\inst_FIFOs|op_fifo\(0) & (\inst_FIFOs|fsm~1_combout\)) # (!\inst_FIFOs|op_fifo\(0) & ((fifos_wrreq(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|fsm~1_combout\,
	datab => \inst_FIFOs|op_fifo\(0),
	datad => fifos_wrreq(2),
	combout => \inst_FIFOs|Selector15~2_combout\);

-- Location: LCCOMB_X8_Y7_N4
\inst_FIFOs|Selector15~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector15~3_combout\ = (\inst_FIFOs|Selector16~2_combout\ & ((\inst_FIFOs|Selector15~2_combout\) # ((!\inst_FIFOs|state.ST_WR_DONE~regout\) # (!\inst_FIFOs|op_fifo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Selector16~2_combout\,
	datab => \inst_FIFOs|Selector15~2_combout\,
	datac => \inst_FIFOs|op_fifo\(1),
	datad => \inst_FIFOs|state.ST_WR_DONE~regout\,
	combout => \inst_FIFOs|Selector15~3_combout\);

-- Location: LCCOMB_X9_Y7_N26
\inst_FIFOs|WrAck[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|WrAck[0]~7_combout\ = (\inst_FIFOs|op_fifo\(0)) # (((\inst_FIFOs|op_fifo\(1)) # (fifos_wrreq(0))) # (!\inst_FIFOs|state.ST_WR_DONE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|op_fifo\(0),
	datab => \inst_FIFOs|state.ST_WR_DONE~regout\,
	datac => \inst_FIFOs|op_fifo\(1),
	datad => fifos_wrreq(0),
	combout => \inst_FIFOs|WrAck[0]~7_combout\);

-- Location: LCCOMB_X9_Y7_N10
\inst_FIFOs|WrAck[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|WrAck[0]~8_combout\ = (\inst_FIFOs|WrAck[0]~4_combout\ & (((\inst_FIFOs|WrAck\(0) & \inst_FIFOs|WrAck[0]~7_combout\)) # (!\inst_FIFOs|Equal14~0_combout\))) # (!\inst_FIFOs|WrAck[0]~4_combout\ & (((\inst_FIFOs|WrAck\(0) & 
-- \inst_FIFOs|WrAck[0]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|WrAck[0]~4_combout\,
	datab => \inst_FIFOs|Equal14~0_combout\,
	datac => \inst_FIFOs|WrAck\(0),
	datad => \inst_FIFOs|WrAck[0]~7_combout\,
	combout => \inst_FIFOs|WrAck[0]~8_combout\);

-- Location: LCFF_X9_Y7_N11
\inst_FIFOs|WrAck[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|WrAck[0]~8_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|WrAck\(0));

-- Location: LCCOMB_X10_Y8_N22
\Selector50~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector50~1_combout\ = (!\io_state.ST_WAIT~regout\ & (\Equal11~0_combout\ & \Selector41~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io_state.ST_WAIT~regout\,
	datac => \Equal11~0_combout\,
	datad => \Selector41~17_combout\,
	combout => \Selector50~1_combout\);

-- Location: LCCOMB_X10_Y10_N28
\Selector50~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (!\io_state.ST_WAIT~regout\ & ((\io_state.ST_IOWR_CON~regout\) # (\Selector41~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_WAIT~regout\,
	datac => \io_state.ST_IOWR_CON~regout\,
	datad => \Selector41~31_combout\,
	combout => \Selector50~0_combout\);

-- Location: LCCOMB_X10_Y10_N20
\Selector50~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector50~2_combout\ = (\Selector41~31_combout\ & (\Selector50~1_combout\)) # (!\Selector41~31_combout\ & ((\Selector41~29_combout\ & ((\Selector50~0_combout\))) # (!\Selector41~29_combout\ & (\Selector50~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~31_combout\,
	datab => \Selector50~1_combout\,
	datac => \Selector41~29_combout\,
	datad => \Selector50~0_combout\,
	combout => \Selector50~2_combout\);

-- Location: LCFF_X10_Y10_N21
\io_state.ST_IOWR_CON\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Selector50~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \io_state.ST_IOWR_CON~regout\);

-- Location: LCCOMB_X9_Y7_N30
\fifos_wrreq[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifos_wrreq[0]~0_combout\ = (fifos_wrreq(0) & (((\inst_Synch_Rst|Output\(0)) # (!\io_state.ST_IOWR_CON~regout\)) # (!\inst_FIFOs|WrAck\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifos_wrreq(0),
	datab => \inst_FIFOs|WrAck\(0),
	datac => \inst_Synch_Rst|Output\(0),
	datad => \io_state.ST_IOWR_CON~regout\,
	combout => \fifos_wrreq[0]~0_combout\);

-- Location: LCCOMB_X8_Y9_N16
\mmap_shadow~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_shadow~55_combout\ = (!\inst_Synch_Rst|Output\(0) & \io_state.ST_IOWR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_Synch_Rst|Output\(0),
	datad => \io_state.ST_IOWR~regout\,
	combout => \mmap_shadow~55_combout\);

-- Location: LCCOMB_X9_Y7_N6
\fifos_wrreq[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \fifos_wrreq[0]~1_combout\ = (\fifos_wrreq[0]~0_combout\) # ((\Selector41~15_combout\ & (\mmap_shadow~55_combout\ & !\io_state.ST_IOWR_CON~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~15_combout\,
	datab => \fifos_wrreq[0]~0_combout\,
	datac => \mmap_shadow~55_combout\,
	datad => \io_state.ST_IOWR_CON~regout\,
	combout => \fifos_wrreq[0]~1_combout\);

-- Location: LCFF_X9_Y7_N7
\fifos_wrreq[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \fifos_wrreq[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => fifos_wrreq(0));

-- Location: LCCOMB_X8_Y7_N24
\inst_FIFOs|Selector15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector15~4_combout\ = (\inst_FIFOs|op_fifo\(1)) # ((\inst_FIFOs|op_fifo\(0) & (!\inst_FIFOs|Selector18~0_combout\)) # (!\inst_FIFOs|op_fifo\(0) & ((fifos_wrreq(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Selector18~0_combout\,
	datab => \inst_FIFOs|op_fifo\(1),
	datac => \inst_FIFOs|op_fifo\(0),
	datad => fifos_wrreq(0),
	combout => \inst_FIFOs|Selector15~4_combout\);

-- Location: LCCOMB_X7_Y8_N30
\inst_FIFOs|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector20~0_combout\ = ((\inst_FIFOs|op_fifo\(1) & (fifos_rdreq(3))) # (!\inst_FIFOs|op_fifo\(1) & ((fifos_rdreq(1))))) # (!\inst_FIFOs|op_fifo\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|op_fifo\(1),
	datab => \inst_FIFOs|op_fifo\(0),
	datac => fifos_rdreq(3),
	datad => fifos_rdreq(1),
	combout => \inst_FIFOs|Selector20~0_combout\);

-- Location: LCCOMB_X7_Y8_N0
\inst_FIFOs|Selector20~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector20~1_combout\ = (!\inst_FIFOs|Selector15~0_combout\ & (\inst_FIFOs|Selector20~0_combout\ & ((\inst_FIFOs|Equal14~0_combout\) # (\inst_FIFOs|fsm~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Selector15~0_combout\,
	datab => \inst_FIFOs|Selector20~0_combout\,
	datac => \inst_FIFOs|Equal14~0_combout\,
	datad => \inst_FIFOs|fsm~0_combout\,
	combout => \inst_FIFOs|Selector20~1_combout\);

-- Location: LCCOMB_X8_Y7_N18
\inst_FIFOs|Selector15~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector15~5_combout\ = (\inst_FIFOs|state.ST_RD_DONE~regout\ & (((!\inst_FIFOs|Selector20~1_combout\)))) # (!\inst_FIFOs|state.ST_RD_DONE~regout\ & (!\inst_FIFOs|Selector15~4_combout\ & ((\inst_FIFOs|state.ST_WR_DONE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datab => \inst_FIFOs|Selector15~4_combout\,
	datac => \inst_FIFOs|Selector20~1_combout\,
	datad => \inst_FIFOs|state.ST_WR_DONE~regout\,
	combout => \inst_FIFOs|Selector15~5_combout\);

-- Location: LCCOMB_X8_Y7_N14
\inst_FIFOs|Selector15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector15~6_combout\ = (\inst_FIFOs|op_fifo[1]~6_combout\) # ((\inst_FIFOs|Selector15~5_combout\) # (!\inst_FIFOs|Selector15~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|op_fifo[1]~6_combout\,
	datac => \inst_FIFOs|Selector15~3_combout\,
	datad => \inst_FIFOs|Selector15~5_combout\,
	combout => \inst_FIFOs|Selector15~6_combout\);

-- Location: LCCOMB_X8_Y7_N8
\inst_FIFOs|Selector18~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector18~3_combout\ = (\inst_FIFOs|Selector16~2_combout\ & (\inst_FIFOs|Selector18~2_combout\ & (\inst_FIFOs|Selector15~6_combout\ & !\inst_FIFOs|state.ST_IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Selector16~2_combout\,
	datab => \inst_FIFOs|Selector18~2_combout\,
	datac => \inst_FIFOs|Selector15~6_combout\,
	datad => \inst_FIFOs|state.ST_IDLE~regout\,
	combout => \inst_FIFOs|Selector18~3_combout\);

-- Location: LCFF_X8_Y7_N9
\inst_FIFOs|state.ST_READ\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|Selector18~3_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|state.ST_READ~regout\);

-- Location: LCFF_X8_Y7_N17
\inst_FIFOs|state.ST_RD1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_FIFOs|state.ST_READ~regout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|state.ST_RD1~regout\);

-- Location: LCCOMB_X8_Y7_N26
\inst_FIFOs|Selector20~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector20~2_combout\ = (\inst_FIFOs|state.ST_RD1~regout\) # ((\inst_FIFOs|Selector20~1_combout\ & \inst_FIFOs|state.ST_RD_DONE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Selector20~1_combout\,
	datac => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datad => \inst_FIFOs|state.ST_RD1~regout\,
	combout => \inst_FIFOs|Selector20~2_combout\);

-- Location: LCFF_X8_Y7_N27
\inst_FIFOs|state.ST_RD_DONE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|Selector20~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|state.ST_RD_DONE~regout\);

-- Location: LCCOMB_X8_Y4_N20
\inst_FIFOs|contents[3][4]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[3][4]~49_combout\ = ((\inst_FIFOs|contents[3][4]~regout\ $ (\inst_FIFOs|state.ST_RD_DONE~regout\ $ (!\inst_FIFOs|contents[3][3]~48\)))) # (GND)
-- \inst_FIFOs|contents[3][4]~50\ = CARRY((\inst_FIFOs|contents[3][4]~regout\ & ((\inst_FIFOs|state.ST_RD_DONE~regout\) # (!\inst_FIFOs|contents[3][3]~48\))) # (!\inst_FIFOs|contents[3][4]~regout\ & (\inst_FIFOs|state.ST_RD_DONE~regout\ & 
-- !\inst_FIFOs|contents[3][3]~48\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[3][4]~regout\,
	datab => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datad => VCC,
	cin => \inst_FIFOs|contents[3][3]~48\,
	combout => \inst_FIFOs|contents[3][4]~49_combout\,
	cout => \inst_FIFOs|contents[3][4]~50\);

-- Location: LCCOMB_X8_Y4_N22
\inst_FIFOs|contents[3][5]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[3][5]~52_combout\ = \inst_FIFOs|contents[3][5]~regout\ $ (\inst_FIFOs|contents[3][4]~50\ $ (\inst_FIFOs|state.ST_RD_DONE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|contents[3][5]~regout\,
	datad => \inst_FIFOs|state.ST_RD_DONE~regout\,
	cin => \inst_FIFOs|contents[3][4]~50\,
	combout => \inst_FIFOs|contents[3][5]~52_combout\);

-- Location: LCFF_X8_Y4_N23
\inst_FIFOs|contents[3][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|contents[3][5]~52_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[3][0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|contents[3][5]~regout\);

-- Location: LCCOMB_X8_Y4_N6
\inst_FIFOs|Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Equal6~0_combout\ = (\inst_FIFOs|contents[3][5]~regout\) # ((\inst_FIFOs|contents[3][3]~regout\) # (!\inst_FIFOs|Equal7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|contents[3][5]~regout\,
	datac => \inst_FIFOs|Equal7~0_combout\,
	datad => \inst_FIFOs|contents[3][3]~regout\,
	combout => \inst_FIFOs|Equal6~0_combout\);

-- Location: LCCOMB_X8_Y9_N24
\Selector41~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~27_combout\ = (\inst_FIFOs|Equal2~0_combout\ & ((\Equal11~0_combout\) # ((\inst_FIFOs|Equal6~0_combout\ & \Equal13~0_combout\)))) # (!\inst_FIFOs|Equal2~0_combout\ & (\inst_FIFOs|Equal6~0_combout\ & ((\Equal13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Equal2~0_combout\,
	datab => \inst_FIFOs|Equal6~0_combout\,
	datac => \Equal11~0_combout\,
	datad => \Equal13~0_combout\,
	combout => \Selector41~27_combout\);

-- Location: LCCOMB_X10_Y9_N14
\Selector42~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\WideNor0~combout\ & (\Selector41~8_combout\ & ((\Selector41~27_combout\) # (!\WideNor0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~combout\,
	datab => \Selector41~27_combout\,
	datac => \WideNor0~9_combout\,
	datad => \Selector41~8_combout\,
	combout => \Selector42~0_combout\);

-- Location: LCCOMB_X10_Y9_N0
\Selector42~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~1_combout\ = (\Selector41~13_combout\ & (\Selector41~19_combout\ & (!\Selector42~0_combout\ & !\Selector41~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~13_combout\,
	datab => \Selector41~19_combout\,
	datac => \Selector42~0_combout\,
	datad => \Selector41~17_combout\,
	combout => \Selector42~1_combout\);

-- Location: LCCOMB_X10_Y10_N0
\Selector43~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\rd_s~regout\ & (!\m1_s~regout\ & \Selector42~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rd_s~regout\,
	datac => \m1_s~regout\,
	datad => \Selector42~1_combout\,
	combout => \Selector43~0_combout\);

-- Location: LCCOMB_X10_Y10_N2
\Selector43~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector43~2_combout\ = (!\io_state.ST_WAIT~regout\ & ((\Selector43~1_combout\ & (\io_state.ST_IORD~regout\)) # (!\Selector43~1_combout\ & ((\Selector43~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_WAIT~regout\,
	datab => \Selector43~1_combout\,
	datac => \io_state.ST_IORD~regout\,
	datad => \Selector43~0_combout\,
	combout => \Selector43~2_combout\);

-- Location: LCFF_X10_Y10_N3
\io_state.ST_IORD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Selector43~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \io_state.ST_IORD~regout\);

-- Location: LCCOMB_X13_Y8_N12
\Selector41~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~8_combout\ = (\io_state.ST_IORD~regout\ & (((!\Equal4~0_combout\ & !\Equal3~7_combout\)) # (!\Equal18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal18~0_combout\,
	datab => \Equal4~0_combout\,
	datac => \io_state.ST_IORD~regout\,
	datad => \Equal3~7_combout\,
	combout => \Selector41~8_combout\);

-- Location: LCCOMB_X9_Y6_N2
\Selector41~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~9_combout\ = (\inst_FIFOs|RdAck\(1) & \io_state.ST_IORD_CON~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|RdAck\(1),
	datac => \io_state.ST_IORD_CON~regout\,
	combout => \Selector41~9_combout\);

-- Location: LCCOMB_X9_Y7_N18
\Selector41~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~21_combout\ = (\io_state.ST_IORD~regout\) # ((\io_state.ST_IOWR_AUX~regout\) # ((\io_state.ST_IOWR~regout\) # (\io_state.ST_IOWR_CON~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IORD~regout\,
	datab => \io_state.ST_IOWR_AUX~regout\,
	datac => \io_state.ST_IOWR~regout\,
	datad => \io_state.ST_IOWR_CON~regout\,
	combout => \Selector41~21_combout\);

-- Location: LCCOMB_X9_Y7_N0
\inst_FIFOs|WrAck[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|WrAck[2]~5_combout\ = (\inst_FIFOs|op_fifo\(0)) # (((fifos_wrreq(2)) # (!\inst_FIFOs|state.ST_WR_DONE~regout\)) # (!\inst_FIFOs|op_fifo\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|op_fifo\(0),
	datab => \inst_FIFOs|op_fifo\(1),
	datac => fifos_wrreq(2),
	datad => \inst_FIFOs|state.ST_WR_DONE~regout\,
	combout => \inst_FIFOs|WrAck[2]~5_combout\);

-- Location: LCCOMB_X9_Y7_N16
\inst_FIFOs|WrAck[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|WrAck[2]~6_combout\ = (\inst_FIFOs|WrAck[0]~4_combout\ & ((\inst_FIFOs|Equal8~2_combout\) # ((\inst_FIFOs|WrAck\(2) & \inst_FIFOs|WrAck[2]~5_combout\)))) # (!\inst_FIFOs|WrAck[0]~4_combout\ & (((\inst_FIFOs|WrAck\(2) & 
-- \inst_FIFOs|WrAck[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|WrAck[0]~4_combout\,
	datab => \inst_FIFOs|Equal8~2_combout\,
	datac => \inst_FIFOs|WrAck\(2),
	datad => \inst_FIFOs|WrAck[2]~5_combout\,
	combout => \inst_FIFOs|WrAck[2]~6_combout\);

-- Location: LCFF_X9_Y7_N17
\inst_FIFOs|WrAck[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|WrAck[2]~6_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|WrAck\(2));

-- Location: LCCOMB_X9_Y7_N4
\Selector41~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~10_combout\ = (\io_state.ST_IOWR_AUX~regout\ & (((\inst_FIFOs|WrAck\(2))))) # (!\io_state.ST_IOWR_AUX~regout\ & (\inst_FIFOs|WrAck\(0) & ((\io_state.ST_IOWR_CON~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|WrAck\(0),
	datab => \io_state.ST_IOWR_AUX~regout\,
	datac => \inst_FIFOs|WrAck\(2),
	datad => \io_state.ST_IOWR_CON~regout\,
	combout => \Selector41~10_combout\);

-- Location: LCCOMB_X9_Y7_N22
\Selector41~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~11_combout\ = (\Selector41~10_combout\) # ((!\inst_CRC16_XModem|Busy~regout\ & ((\io_state.ST_IOWR~regout\) # (\io_state.ST_IORD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|Busy~regout\,
	datab => \io_state.ST_IOWR~regout\,
	datac => \Selector41~10_combout\,
	datad => \io_state.ST_IORD~regout\,
	combout => \Selector41~11_combout\);

-- Location: LCCOMB_X9_Y6_N22
\Selector41~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~22_combout\ = (!\io_state.ST_IORD_AUX~regout\ & ((\Selector46~4_combout\) # ((\Selector41~21_combout\ & \Selector41~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector46~4_combout\,
	datab => \Selector41~21_combout\,
	datac => \Selector41~11_combout\,
	datad => \io_state.ST_IORD_AUX~regout\,
	combout => \Selector41~22_combout\);

-- Location: LCCOMB_X9_Y6_N20
\inst_FIFOs|RdAck[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|RdAck[3]~2_combout\ = (\inst_FIFOs|contents[3][0]~51_combout\ & (\inst_FIFOs|RdAck[1]~0_combout\ & ((\inst_FIFOs|Equal8~1_combout\)))) # (!\inst_FIFOs|contents[3][0]~51_combout\ & ((\inst_FIFOs|RdAck\(3)) # ((\inst_FIFOs|RdAck[1]~0_combout\ & 
-- \inst_FIFOs|Equal8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[3][0]~51_combout\,
	datab => \inst_FIFOs|RdAck[1]~0_combout\,
	datac => \inst_FIFOs|RdAck\(3),
	datad => \inst_FIFOs|Equal8~1_combout\,
	combout => \inst_FIFOs|RdAck[3]~2_combout\);

-- Location: LCFF_X9_Y6_N21
\inst_FIFOs|RdAck[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|RdAck[3]~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|RdAck\(3));

-- Location: LCCOMB_X9_Y6_N24
\Selector41~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~23_combout\ = (!\io_state.ST_IORD_CON~regout\ & ((\Selector41~22_combout\) # ((\inst_FIFOs|RdAck\(3) & \io_state.ST_IORD_AUX~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IORD_CON~regout\,
	datab => \Selector41~22_combout\,
	datac => \inst_FIFOs|RdAck\(3),
	datad => \io_state.ST_IORD_AUX~regout\,
	combout => \Selector41~23_combout\);

-- Location: LCCOMB_X10_Y10_N24
\Selector42~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~2_combout\ = (!\io_state.ST_WAIT~regout\ & ((\io_state.ST_INTACK~regout\) # (\Selector41~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_WAIT~regout\,
	datac => \io_state.ST_INTACK~regout\,
	datad => \Selector41~31_combout\,
	combout => \Selector42~2_combout\);

-- Location: LCCOMB_X10_Y10_N16
\Selector42~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector42~4_combout\ = (\Selector41~29_combout\ & ((\Selector41~31_combout\ & (\Selector42~3_combout\)) # (!\Selector41~31_combout\ & ((\Selector42~2_combout\))))) # (!\Selector41~29_combout\ & (\Selector42~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector42~3_combout\,
	datab => \Selector41~29_combout\,
	datac => \Selector42~2_combout\,
	datad => \Selector41~31_combout\,
	combout => \Selector42~4_combout\);

-- Location: LCFF_X10_Y10_N17
\io_state.ST_INTACK\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Selector42~4_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \io_state.ST_INTACK~regout\);

-- Location: LCCOMB_X9_Y6_N26
\Selector41~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~24_combout\ = (\io_state.ST_INTACK~regout\ & (\inst_IntControl|VecValid~regout\)) # (!\io_state.ST_INTACK~regout\ & (((\Selector41~9_combout\) # (\Selector41~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_IntControl|VecValid~regout\,
	datab => \Selector41~9_combout\,
	datac => \Selector41~23_combout\,
	datad => \io_state.ST_INTACK~regout\,
	combout => \Selector41~24_combout\);

-- Location: LCCOMB_X10_Y10_N4
\Selector47~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector47~2_combout\ = (!\io_state.ST_WAIT~regout\ & ((\io_state.ST_IOWRWT~regout\) # (\Selector41~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_WAIT~regout\,
	datab => \io_state.ST_IOWRWT~regout\,
	datad => \Selector41~31_combout\,
	combout => \Selector47~2_combout\);

-- Location: LCCOMB_X10_Y10_N30
\Selector47~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector47~4_combout\ = (!\io_state.ST_WAIT~regout\ & (!\rd_s~regout\ & (!\m1_s~regout\ & \Selector42~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_WAIT~regout\,
	datab => \rd_s~regout\,
	datac => \m1_s~regout\,
	datad => \Selector42~1_combout\,
	combout => \Selector47~4_combout\);

-- Location: LCCOMB_X10_Y10_N18
\Selector47~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector47~3_combout\ = (\Selector41~31_combout\ & (((\Selector47~4_combout\)))) # (!\Selector41~31_combout\ & ((\Selector41~29_combout\ & (\Selector47~2_combout\)) # (!\Selector41~29_combout\ & ((\Selector47~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~31_combout\,
	datab => \Selector41~29_combout\,
	datac => \Selector47~2_combout\,
	datad => \Selector47~4_combout\,
	combout => \Selector47~3_combout\);

-- Location: LCFF_X10_Y10_N19
\io_state.ST_IOWRWT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Selector47~3_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \io_state.ST_IOWRWT~regout\);

-- Location: LCCOMB_X9_Y9_N0
\Selector48~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\Selector46~28_combout\ & (((\io_state.ST_IOWW1~regout\)))) # (!\Selector46~28_combout\ & (\Selector46~5_combout\ & ((\io_state.ST_IOWRWT~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector46~5_combout\,
	datab => \Selector46~28_combout\,
	datac => \io_state.ST_IOWW1~regout\,
	datad => \io_state.ST_IOWRWT~regout\,
	combout => \Selector48~0_combout\);

-- Location: LCFF_X9_Y9_N1
\io_state.ST_IOWW1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Selector48~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \io_state.ST_IOWW1~regout\);

-- Location: LCCOMB_X10_Y9_N12
\Selector41~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~25_combout\ = (!\io_state.ST_WAIT~regout\ & (!\io_state.ST_DONE~regout\ & (!\io_state.ST_IOWW1~regout\ & \io_state.ST_IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_WAIT~regout\,
	datab => \io_state.ST_DONE~regout\,
	datac => \io_state.ST_IOWW1~regout\,
	datad => \io_state.ST_IDLE~regout\,
	combout => \Selector41~25_combout\);

-- Location: LCCOMB_X10_Y9_N22
\Selector41~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~26_combout\ = (!\Selector41~12_combout\ & (!\Selector41~8_combout\ & (\Selector41~24_combout\ & \Selector41~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~12_combout\,
	datab => \Selector41~8_combout\,
	datac => \Selector41~24_combout\,
	datad => \Selector41~25_combout\,
	combout => \Selector41~26_combout\);

-- Location: LCCOMB_X10_Y9_N8
\Selector41~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~18_combout\ = (!\Selector41~17_combout\ & ((!\io_state.ST_IOWW1~regout\) # (!\cpu_clk_s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_clk_s~regout\,
	datac => \io_state.ST_IOWW1~regout\,
	datad => \Selector41~17_combout\,
	combout => \Selector41~18_combout\);

-- Location: LCCOMB_X10_Y9_N10
\Selector41~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~20_combout\ = (!\io_state.ST_IDLE~regout\ & (\iorq_s~regout\ & \Selector41~19_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io_state.ST_IDLE~regout\,
	datac => \iorq_s~regout\,
	datad => \Selector41~19_combout\,
	combout => \Selector41~20_combout\);

-- Location: LCCOMB_X10_Y9_N26
\Selector41~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~29_combout\ = (!\Selector41~28_combout\ & (!\Selector41~26_combout\ & (\Selector41~18_combout\ & !\Selector41~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~28_combout\,
	datab => \Selector41~26_combout\,
	datac => \Selector41~18_combout\,
	datad => \Selector41~20_combout\,
	combout => \Selector41~29_combout\);

-- Location: LCCOMB_X10_Y10_N8
\Selector41~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~32_combout\ = (\io_state.ST_WAIT~regout\) # (((\io_state.ST_IDLE~regout\ & !\Selector41~31_combout\)) # (!\Selector41~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_WAIT~regout\,
	datab => \Selector41~29_combout\,
	datac => \io_state.ST_IDLE~regout\,
	datad => \Selector41~31_combout\,
	combout => \Selector41~32_combout\);

-- Location: LCFF_X10_Y10_N9
\io_state.ST_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Selector41~32_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \io_state.ST_IDLE~regout\);

-- Location: LCCOMB_X12_Y8_N26
\int_ack~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \int_ack~2_combout\ = (\int_ack~regout\ & (((\iorq_s~regout\) # (!\io_state.ST_IDLE~regout\)) # (!\io_state.ST_DONE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_DONE~regout\,
	datab => \iorq_s~regout\,
	datac => \int_ack~regout\,
	datad => \io_state.ST_IDLE~regout\,
	combout => \int_ack~2_combout\);

-- Location: LCCOMB_X12_Y8_N20
\int_ack~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \int_ack~3_combout\ = (\int_ack~2_combout\) # ((!\io_state.ST_IDLE~regout\ & (\iorq_s~regout\ & \m1_s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IDLE~regout\,
	datab => \int_ack~2_combout\,
	datac => \iorq_s~regout\,
	datad => \m1_s~regout\,
	combout => \int_ack~3_combout\);

-- Location: LCFF_X12_Y8_N21
int_ack : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \int_ack~3_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \int_ack~regout\);

-- Location: LCFF_X9_Y8_N17
\inst_IntControl|state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \int_ack~regout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_IntControl|state~regout\);

-- Location: LCFF_X9_Y8_N1
\inst_IntControl|VecValid\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_IntControl|state~regout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_IntControl|VecValid~regout\);

-- Location: LCCOMB_X8_Y9_N8
\Selector46~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~23_combout\ = (\Equal11~0_combout\ & (\inst_FIFOs|Equal2~0_combout\)) # (!\Equal11~0_combout\ & (((\inst_FIFOs|Equal6~0_combout\ & \Equal13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Equal2~0_combout\,
	datab => \inst_FIFOs|Equal6~0_combout\,
	datac => \Equal11~0_combout\,
	datad => \Equal13~0_combout\,
	combout => \Selector46~23_combout\);

-- Location: LCCOMB_X9_Y8_N22
\Selector46~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~24_combout\ = (\io_state.ST_INTACK~regout\ & (((\inst_IntControl|VecValid~regout\)))) # (!\io_state.ST_INTACK~regout\ & (\io_state.ST_IORD~regout\ & ((\Selector46~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IORD~regout\,
	datab => \inst_IntControl|VecValid~regout\,
	datac => \io_state.ST_INTACK~regout\,
	datad => \Selector46~23_combout\,
	combout => \Selector46~24_combout\);

-- Location: LCCOMB_X9_Y8_N2
\Selector46~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~25_combout\ = (\io_state.ST_IDLE~regout\ & (\Selector46~24_combout\)) # (!\io_state.ST_IDLE~regout\ & ((\wr_s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector46~24_combout\,
	datac => \wr_s~regout\,
	datad => \io_state.ST_IDLE~regout\,
	combout => \Selector46~25_combout\);

-- Location: LCCOMB_X10_Y9_N28
\Selector46~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~6_combout\ = (\io_state.ST_IOWR~regout\ & (((!\WideNor0~7_combout\) # (!\WideNor0~11_combout\)) # (!\WideNor0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~5_combout\,
	datab => \io_state.ST_IOWR~regout\,
	datac => \WideNor0~11_combout\,
	datad => \WideNor0~7_combout\,
	combout => \Selector46~6_combout\);

-- Location: LCCOMB_X12_Y9_N4
\Selector41~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector41~14_combout\ = (\cpu_clk_s~regout\ & \io_state.ST_IOWW1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cpu_clk_s~regout\,
	datac => \io_state.ST_IOWW1~regout\,
	combout => \Selector41~14_combout\);

-- Location: LCCOMB_X12_Y9_N6
\Selector49~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector49~2_combout\ = (!\io_state.ST_WAIT~regout\ & ((\Selector41~29_combout\ & (\Selector49~3_combout\)) # (!\Selector41~29_combout\ & ((\Selector41~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector49~3_combout\,
	datab => \Selector41~29_combout\,
	datac => \Selector41~14_combout\,
	datad => \io_state.ST_WAIT~regout\,
	combout => \Selector49~2_combout\);

-- Location: LCFF_X12_Y9_N7
\io_state.ST_IOWW2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Selector49~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \io_state.ST_IOWW2~regout\);

-- Location: LCCOMB_X12_Y9_N16
\Selector46~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~7_combout\ = (\io_state.ST_IOWRWT~regout\) # (((\Selector46~6_combout\) # (\io_state.ST_IOWW2~regout\)) # (!\Selector52~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IOWRWT~regout\,
	datab => \Selector52~13_combout\,
	datac => \Selector46~6_combout\,
	datad => \io_state.ST_IOWW2~regout\,
	combout => \Selector46~7_combout\);

-- Location: LCCOMB_X10_Y10_N14
\Selector46~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~14_combout\ = (!\io_state.ST_IOWR_AUX~regout\ & (!\io_state.ST_IOWR_CON~regout\ & !\iorq_s~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io_state.ST_IOWR_AUX~regout\,
	datac => \io_state.ST_IOWR_CON~regout\,
	datad => \iorq_s~regout\,
	combout => \Selector46~14_combout\);

-- Location: LCCOMB_X10_Y7_N8
\Selector46~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~15_combout\ = (\WideNor0~11_combout\ & (\io_state.ST_IOWR~regout\ & \WideNor0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WideNor0~11_combout\,
	datac => \io_state.ST_IOWR~regout\,
	datad => \WideNor0~5_combout\,
	combout => \Selector46~15_combout\);

-- Location: LCCOMB_X10_Y7_N26
\Selector46~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~16_combout\ = (\io_state.ST_DONE~regout\) # ((\Selector46~15_combout\ & (!\WideNor1~0_combout\ & \WideNor0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_DONE~regout\,
	datab => \Selector46~15_combout\,
	datac => \WideNor1~0_combout\,
	datad => \WideNor0~7_combout\,
	combout => \Selector46~16_combout\);

-- Location: LCCOMB_X10_Y7_N28
\Selector46~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~17_combout\ = (\Selector46~14_combout\ & ((\Selector46~16_combout\) # ((!\WideNor0~combout\ & \io_state.ST_IORD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~combout\,
	datab => \io_state.ST_IORD~regout\,
	datac => \Selector46~14_combout\,
	datad => \Selector46~16_combout\,
	combout => \Selector46~17_combout\);

-- Location: LCCOMB_X9_Y5_N16
\crc_set_high~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \crc_set_high~0_combout\ = (\crc_set_high~regout\) # ((!\inst_CRC16_XModem|Busy~regout\ & (\Equal18~0_combout\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|Busy~regout\,
	datab => \Equal18~0_combout\,
	datac => \crc_set_high~regout\,
	datad => \Equal4~0_combout\,
	combout => \crc_set_high~0_combout\);

-- Location: LCCOMB_X9_Y5_N10
\Selector91~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector91~2_combout\ = (\io_state.ST_DONE~regout\) # (\io_state.ST_IOWR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io_state.ST_DONE~regout\,
	datad => \io_state.ST_IOWR~regout\,
	combout => \Selector91~2_combout\);

-- Location: LCFF_X9_Y5_N17
crc_set_high : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \crc_set_high~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sclr => \ALT_INV_io_state.ST_IOWR~regout\,
	ena => \Selector91~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \crc_set_high~regout\);

-- Location: LCCOMB_X9_Y5_N28
\inst_CRC16_XModem|Selector26~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector26~3_combout\ = (!\inst_CRC16_XModem|state.ST_IDLE~regout\ & (((\crc_set_low~regout\) # (\crc_set_high~regout\)) # (!\crc_strb~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc_strb~regout\,
	datab => \crc_set_low~regout\,
	datac => \crc_set_high~regout\,
	datad => \inst_CRC16_XModem|state.ST_IDLE~regout\,
	combout => \inst_CRC16_XModem|Selector26~3_combout\);

-- Location: LCCOMB_X10_Y2_N8
\inst_CRC16_XModem|bit_count[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|bit_count[2]~1_combout\ = (!\inst_CRC16_XModem|Selector26~2_combout\ & (((\inst_CRC16_XModem|Add0~0_combout\ & \inst_CRC16_XModem|bit_count\(2))) # (!\inst_CRC16_XModem|state.ST_DATA~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|state.ST_DATA~regout\,
	datab => \inst_CRC16_XModem|Add0~0_combout\,
	datac => \inst_CRC16_XModem|Selector26~2_combout\,
	datad => \inst_CRC16_XModem|bit_count\(2),
	combout => \inst_CRC16_XModem|bit_count[2]~1_combout\);

-- Location: LCCOMB_X9_Y5_N20
\crc_strb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \crc_strb~0_combout\ = (\crc_strb~regout\) # ((!\inst_CRC16_XModem|Busy~regout\ & (\Equal18~0_combout\ & \Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|Busy~regout\,
	datab => \Equal18~0_combout\,
	datac => \crc_strb~regout\,
	datad => \Equal5~0_combout\,
	combout => \crc_strb~0_combout\);

-- Location: LCFF_X9_Y5_N21
crc_strb : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \crc_strb~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sclr => \ALT_INV_io_state.ST_IOWR~regout\,
	ena => \Selector91~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \crc_strb~regout\);

-- Location: LCCOMB_X10_Y2_N26
\inst_CRC16_XModem|Selector26~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector26~4_combout\ = (!\crc_strb~regout\ & \inst_CRC16_XModem|state.ST_DONE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc_strb~regout\,
	datad => \inst_CRC16_XModem|state.ST_DONE~regout\,
	combout => \inst_CRC16_XModem|Selector26~4_combout\);

-- Location: LCCOMB_X10_Y2_N12
\inst_CRC16_XModem|Selector27~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector27~0_combout\ = (!\inst_CRC16_XModem|Selector26~5_combout\ & (!\inst_CRC16_XModem|Selector26~4_combout\ & ((\inst_CRC16_XModem|Selector26~2_combout\) # (\inst_CRC16_XModem|state.ST_DATA~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|Selector26~2_combout\,
	datab => \inst_CRC16_XModem|Selector26~5_combout\,
	datac => \inst_CRC16_XModem|state.ST_DATA~regout\,
	datad => \inst_CRC16_XModem|Selector26~4_combout\,
	combout => \inst_CRC16_XModem|Selector27~0_combout\);

-- Location: LCFF_X10_Y2_N13
\inst_CRC16_XModem|state.ST_DATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|Selector27~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|state.ST_DATA~regout\);

-- Location: LCCOMB_X10_Y2_N24
\inst_CRC16_XModem|bit_count[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|bit_count[1]~2_combout\ = (\inst_CRC16_XModem|bit_count[2]~1_combout\ & (((\inst_CRC16_XModem|bit_count\(1))))) # (!\inst_CRC16_XModem|bit_count[2]~1_combout\ & (\inst_CRC16_XModem|state.ST_DATA~regout\ & 
-- (\inst_CRC16_XModem|bit_count\(0) $ (\inst_CRC16_XModem|bit_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|bit_count\(0),
	datab => \inst_CRC16_XModem|bit_count[2]~1_combout\,
	datac => \inst_CRC16_XModem|bit_count\(1),
	datad => \inst_CRC16_XModem|state.ST_DATA~regout\,
	combout => \inst_CRC16_XModem|bit_count[1]~2_combout\);

-- Location: LCFF_X10_Y2_N25
\inst_CRC16_XModem|bit_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|bit_count[1]~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|bit_count\(1));

-- Location: LCCOMB_X10_Y2_N30
\inst_CRC16_XModem|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Add0~0_combout\ = (\inst_CRC16_XModem|bit_count\(0) & \inst_CRC16_XModem|bit_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|bit_count\(0),
	datac => \inst_CRC16_XModem|bit_count\(1),
	combout => \inst_CRC16_XModem|Add0~0_combout\);

-- Location: LCCOMB_X10_Y2_N22
\inst_CRC16_XModem|bit_count[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|bit_count[2]~0_combout\ = (\inst_CRC16_XModem|bit_count\(2) & (((\inst_CRC16_XModem|state.ST_DATA~regout\ & !\inst_CRC16_XModem|Add0~0_combout\)) # (!\inst_CRC16_XModem|Selector26~2_combout\))) # (!\inst_CRC16_XModem|bit_count\(2) & 
-- (\inst_CRC16_XModem|state.ST_DATA~regout\ & ((\inst_CRC16_XModem|Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|state.ST_DATA~regout\,
	datab => \inst_CRC16_XModem|Selector26~2_combout\,
	datac => \inst_CRC16_XModem|bit_count\(2),
	datad => \inst_CRC16_XModem|Add0~0_combout\,
	combout => \inst_CRC16_XModem|bit_count[2]~0_combout\);

-- Location: LCFF_X10_Y2_N23
\inst_CRC16_XModem|bit_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|bit_count[2]~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|bit_count\(2));

-- Location: LCCOMB_X10_Y2_N28
\inst_CRC16_XModem|Selector26~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector26~5_combout\ = (\inst_CRC16_XModem|bit_count\(0) & (\inst_CRC16_XModem|bit_count\(2) & (\inst_CRC16_XModem|bit_count\(1) & \inst_CRC16_XModem|state.ST_DATA~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|bit_count\(0),
	datab => \inst_CRC16_XModem|bit_count\(2),
	datac => \inst_CRC16_XModem|bit_count\(1),
	datad => \inst_CRC16_XModem|state.ST_DATA~regout\,
	combout => \inst_CRC16_XModem|Selector26~5_combout\);

-- Location: LCCOMB_X10_Y2_N0
\inst_CRC16_XModem|Selector28~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector28~0_combout\ = (\inst_CRC16_XModem|state.ST_DONE~regout\ & (\crc_strb~regout\ & ((\inst_CRC16_XModem|Selector26~5_combout\) # (!\inst_CRC16_XModem|Selector26~2_combout\)))) # (!\inst_CRC16_XModem|state.ST_DONE~regout\ & 
-- (((\inst_CRC16_XModem|Selector26~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc_strb~regout\,
	datab => \inst_CRC16_XModem|Selector26~2_combout\,
	datac => \inst_CRC16_XModem|state.ST_DONE~regout\,
	datad => \inst_CRC16_XModem|Selector26~5_combout\,
	combout => \inst_CRC16_XModem|Selector28~0_combout\);

-- Location: LCFF_X10_Y2_N1
\inst_CRC16_XModem|state.ST_DONE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|Selector28~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|state.ST_DONE~regout\);

-- Location: LCCOMB_X9_Y5_N30
\inst_CRC16_XModem|Selector26~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector26~6_combout\ = (!\inst_CRC16_XModem|Selector26~3_combout\ & ((\crc_strb~regout\) # (!\inst_CRC16_XModem|state.ST_DONE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc_strb~regout\,
	datab => \inst_CRC16_XModem|Selector26~3_combout\,
	datac => \inst_CRC16_XModem|state.ST_DONE~regout\,
	combout => \inst_CRC16_XModem|Selector26~6_combout\);

-- Location: LCFF_X9_Y5_N31
\inst_CRC16_XModem|state.ST_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|Selector26~6_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|state.ST_IDLE~regout\);

-- Location: LCCOMB_X9_Y5_N24
\inst_CRC16_XModem|Busy~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Busy~0_combout\ = (\inst_CRC16_XModem|Busy~regout\ & ((\crc_set_low~regout\) # ((\crc_set_high~regout\) # (\inst_CRC16_XModem|state.ST_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|Busy~regout\,
	datab => \crc_set_low~regout\,
	datac => \crc_set_high~regout\,
	datad => \inst_CRC16_XModem|state.ST_IDLE~regout\,
	combout => \inst_CRC16_XModem|Busy~0_combout\);

-- Location: LCCOMB_X9_Y5_N12
\inst_CRC16_XModem|Busy~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Busy~1_combout\ = (\inst_CRC16_XModem|Busy~0_combout\) # (\inst_CRC16_XModem|Selector26~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_CRC16_XModem|Busy~0_combout\,
	datad => \inst_CRC16_XModem|Selector26~2_combout\,
	combout => \inst_CRC16_XModem|Busy~1_combout\);

-- Location: LCFF_X9_Y5_N13
\inst_CRC16_XModem|Busy\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|Busy~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|Busy~regout\);

-- Location: LCCOMB_X10_Y7_N30
\Selector46~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~19_combout\ = (\Selector46~18_combout\) # ((\io_state.ST_IOWR~regout\ & (!\inst_CRC16_XModem|Busy~regout\ & \WideNor1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector46~18_combout\,
	datab => \io_state.ST_IOWR~regout\,
	datac => \inst_CRC16_XModem|Busy~regout\,
	datad => \WideNor1~combout\,
	combout => \Selector46~19_combout\);

-- Location: LCCOMB_X10_Y7_N16
\Selector46~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~20_combout\ = (\Selector46~19_combout\) # ((\WideNor0~combout\ & (!\inst_CRC16_XModem|Busy~regout\ & \io_state.ST_IORD~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~combout\,
	datab => \inst_CRC16_XModem|Busy~regout\,
	datac => \io_state.ST_IORD~regout\,
	datad => \Selector46~19_combout\,
	combout => \Selector46~20_combout\);

-- Location: LCCOMB_X10_Y6_N18
\Selector46~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (!\io_state.ST_IORD_CON~regout\ & !\io_state.ST_IORD_AUX~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io_state.ST_IORD_CON~regout\,
	datad => \io_state.ST_IORD_AUX~regout\,
	combout => \Selector46~0_combout\);

-- Location: LCCOMB_X10_Y8_N26
\Selector46~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~2_combout\ = (!a_s(0)) # (!\Equal10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal10~0_combout\,
	datad => a_s(0),
	combout => \Selector46~2_combout\);

-- Location: LCCOMB_X10_Y8_N10
\Selector46~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~13_combout\ = (\Selector46~0_combout\ & (!\io_state.ST_IOWW1~regout\ & ((\Selector46~2_combout\) # (!\io_state.ST_IOWR~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IOWR~regout\,
	datab => \Selector46~0_combout\,
	datac => \io_state.ST_IOWW1~regout\,
	datad => \Selector46~2_combout\,
	combout => \Selector46~13_combout\);

-- Location: LCCOMB_X10_Y8_N12
\Selector46~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~21_combout\ = (\Selector46~12_combout\) # ((\Selector46~13_combout\ & ((\Selector46~17_combout\) # (\Selector46~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector46~12_combout\,
	datab => \Selector46~17_combout\,
	datac => \Selector46~20_combout\,
	datad => \Selector46~13_combout\,
	combout => \Selector46~21_combout\);

-- Location: LCCOMB_X9_Y8_N24
\Selector46~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~26_combout\ = (\Selector46~7_combout\) # ((!\Selector46~25_combout\ & ((!\Selector46~21_combout\) # (!\Selector46~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector46~22_combout\,
	datab => \Selector46~25_combout\,
	datac => \Selector46~7_combout\,
	datad => \Selector46~21_combout\,
	combout => \Selector46~26_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CPU_CLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_CPU_CLK,
	combout => \CPU_CLK~combout\);

-- Location: LCFF_X12_Y9_N25
cpu_clk_s : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \CPU_CLK~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \cpu_clk_s~regout\);

-- Location: LCCOMB_X12_Y9_N24
\Selector46~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~4_combout\ = (!\cpu_clk_s~regout\ & ((\io_state.ST_IOWRWT~regout\) # (\io_state.ST_IOWW2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IOWRWT~regout\,
	datac => \cpu_clk_s~regout\,
	datad => \io_state.ST_IOWW2~regout\,
	combout => \Selector46~4_combout\);

-- Location: LCCOMB_X12_Y9_N10
\Selector46~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~27_combout\ = (!\Selector46~6_combout\ & (!\Selector46~1_combout\ & (!\io_state.ST_WAIT~regout\ & !\Selector46~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector46~6_combout\,
	datab => \Selector46~1_combout\,
	datac => \io_state.ST_WAIT~regout\,
	datad => \Selector46~4_combout\,
	combout => \Selector46~27_combout\);

-- Location: LCCOMB_X9_Y8_N30
\Selector46~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~28_combout\ = (\Selector46~26_combout\ & (\Selector46~27_combout\ & ((\WideNor0~9_combout\) # (!\io_state.ST_IORD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IORD~regout\,
	datab => \WideNor0~9_combout\,
	datac => \Selector46~26_combout\,
	datad => \Selector46~27_combout\,
	combout => \Selector46~28_combout\);

-- Location: LCCOMB_X9_Y9_N18
\Selector46~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector46~29_combout\ = (\Selector46~28_combout\ & (((\io_state.ST_IOWR~regout\)))) # (!\Selector46~28_combout\ & (\Selector46~5_combout\ & ((\io_state.ST_IOWW2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector46~5_combout\,
	datab => \Selector46~28_combout\,
	datac => \io_state.ST_IOWR~regout\,
	datad => \io_state.ST_IOWW2~regout\,
	combout => \Selector46~29_combout\);

-- Location: LCFF_X9_Y9_N19
\io_state.ST_IOWR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Selector46~29_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \io_state.ST_IOWR~regout\);

-- Location: LCFF_X9_Y5_N3
crc_set_low : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \crc_set_low~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sclr => \ALT_INV_io_state.ST_IOWR~regout\,
	ena => \Selector91~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \crc_set_low~regout\);

-- Location: LCCOMB_X9_Y5_N18
\inst_CRC16_XModem|Selector26~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector26~2_combout\ = (\crc_strb~regout\ & (!\crc_set_low~regout\ & (!\crc_set_high~regout\ & !\inst_CRC16_XModem|state.ST_IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc_strb~regout\,
	datab => \crc_set_low~regout\,
	datac => \crc_set_high~regout\,
	datad => \inst_CRC16_XModem|state.ST_IDLE~regout\,
	combout => \inst_CRC16_XModem|Selector26~2_combout\);

-- Location: LCFF_X14_Y10_N13
\d_s[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \D[0]~0\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_s(0));

-- Location: LCCOMB_X10_Y3_N8
\inst_CRC16_XModem|data_reg[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|data_reg[0]~1_combout\ = (\inst_CRC16_XModem|Selector26~2_combout\ & ((d_s(0)))) # (!\inst_CRC16_XModem|Selector26~2_combout\ & (\inst_CRC16_XModem|data_reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_CRC16_XModem|Selector26~2_combout\,
	datac => \inst_CRC16_XModem|data_reg\(0),
	datad => d_s(0),
	combout => \inst_CRC16_XModem|data_reg[0]~1_combout\);

-- Location: LCFF_X10_Y3_N9
\inst_CRC16_XModem|data_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|data_reg[0]~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|data_reg\(0));

-- Location: LCFF_X6_Y3_N1
\d_s[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \D[1]~1\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => d_s(1));

-- Location: LCCOMB_X10_Y3_N30
\inst_CRC16_XModem|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector22~0_combout\ = (\inst_CRC16_XModem|state.ST_DATA~regout\ & (\inst_CRC16_XModem|data_reg\(0))) # (!\inst_CRC16_XModem|state.ST_DATA~regout\ & ((d_s(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|state.ST_DATA~regout\,
	datab => \inst_CRC16_XModem|data_reg\(0),
	datac => d_s(1),
	combout => \inst_CRC16_XModem|Selector22~0_combout\);

-- Location: LCCOMB_X9_Y5_N26
\inst_CRC16_XModem|data_reg[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|data_reg[6]~0_combout\ = (!\inst_CRC16_XModem|Selector26~3_combout\ & !\inst_CRC16_XModem|state.ST_DONE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_CRC16_XModem|Selector26~3_combout\,
	datac => \inst_CRC16_XModem|state.ST_DONE~regout\,
	combout => \inst_CRC16_XModem|data_reg[6]~0_combout\);

-- Location: LCFF_X10_Y3_N31
\inst_CRC16_XModem|data_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|Selector22~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_CRC16_XModem|data_reg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|data_reg\(1));

-- Location: LCCOMB_X10_Y3_N12
\inst_CRC16_XModem|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector21~0_combout\ = (\inst_CRC16_XModem|state.ST_DATA~regout\ & ((\inst_CRC16_XModem|data_reg\(1)))) # (!\inst_CRC16_XModem|state.ST_DATA~regout\ & (d_s(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|state.ST_DATA~regout\,
	datac => d_s(2),
	datad => \inst_CRC16_XModem|data_reg\(1),
	combout => \inst_CRC16_XModem|Selector21~0_combout\);

-- Location: LCFF_X10_Y3_N13
\inst_CRC16_XModem|data_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|Selector21~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_CRC16_XModem|data_reg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|data_reg\(2));

-- Location: LCCOMB_X10_Y3_N26
\inst_CRC16_XModem|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector20~0_combout\ = (\inst_CRC16_XModem|state.ST_DATA~regout\ & ((\inst_CRC16_XModem|data_reg\(2)))) # (!\inst_CRC16_XModem|state.ST_DATA~regout\ & (d_s(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|state.ST_DATA~regout\,
	datac => d_s(3),
	datad => \inst_CRC16_XModem|data_reg\(2),
	combout => \inst_CRC16_XModem|Selector20~0_combout\);

-- Location: LCFF_X10_Y3_N27
\inst_CRC16_XModem|data_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|Selector20~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_CRC16_XModem|data_reg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|data_reg\(3));

-- Location: LCCOMB_X10_Y3_N16
\inst_CRC16_XModem|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector19~0_combout\ = (\inst_CRC16_XModem|state.ST_DATA~regout\ & ((\inst_CRC16_XModem|data_reg\(3)))) # (!\inst_CRC16_XModem|state.ST_DATA~regout\ & (d_s(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|state.ST_DATA~regout\,
	datab => d_s(4),
	datad => \inst_CRC16_XModem|data_reg\(3),
	combout => \inst_CRC16_XModem|Selector19~0_combout\);

-- Location: LCFF_X10_Y3_N17
\inst_CRC16_XModem|data_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|Selector19~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_CRC16_XModem|data_reg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|data_reg\(4));

-- Location: LCCOMB_X10_Y3_N22
\inst_CRC16_XModem|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector18~0_combout\ = (\inst_CRC16_XModem|state.ST_DATA~regout\ & ((\inst_CRC16_XModem|data_reg\(4)))) # (!\inst_CRC16_XModem|state.ST_DATA~regout\ & (d_s(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|state.ST_DATA~regout\,
	datab => d_s(5),
	datac => \inst_CRC16_XModem|data_reg\(4),
	combout => \inst_CRC16_XModem|Selector18~0_combout\);

-- Location: LCFF_X10_Y3_N23
\inst_CRC16_XModem|data_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|Selector18~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_CRC16_XModem|data_reg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|data_reg\(5));

-- Location: LCCOMB_X10_Y3_N28
\inst_CRC16_XModem|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector17~0_combout\ = (\inst_CRC16_XModem|state.ST_DATA~regout\ & ((\inst_CRC16_XModem|data_reg\(5)))) # (!\inst_CRC16_XModem|state.ST_DATA~regout\ & (d_s(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|state.ST_DATA~regout\,
	datab => d_s(6),
	datad => \inst_CRC16_XModem|data_reg\(5),
	combout => \inst_CRC16_XModem|Selector17~0_combout\);

-- Location: LCFF_X10_Y3_N29
\inst_CRC16_XModem|data_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|Selector17~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_CRC16_XModem|data_reg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|data_reg\(6));

-- Location: LCCOMB_X10_Y3_N10
\inst_CRC16_XModem|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector16~0_combout\ = (\inst_CRC16_XModem|state.ST_DATA~regout\ & ((\inst_CRC16_XModem|data_reg\(6)))) # (!\inst_CRC16_XModem|state.ST_DATA~regout\ & (d_s(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|state.ST_DATA~regout\,
	datab => d_s(7),
	datad => \inst_CRC16_XModem|data_reg\(6),
	combout => \inst_CRC16_XModem|Selector16~0_combout\);

-- Location: LCFF_X10_Y3_N11
\inst_CRC16_XModem|data_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|Selector16~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_CRC16_XModem|data_reg[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|data_reg\(7));

-- Location: LCCOMB_X12_Y5_N0
\inst_CRC16_XModem|crc_reg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|crc_reg~2_combout\ = \inst_CRC16_XModem|crc_reg\(11) $ (\inst_CRC16_XModem|data_reg\(7) $ (\inst_CRC16_XModem|crc_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|crc_reg\(11),
	datab => \inst_CRC16_XModem|data_reg\(7),
	datad => \inst_CRC16_XModem|crc_reg\(15),
	combout => \inst_CRC16_XModem|crc_reg~2_combout\);

-- Location: LCCOMB_X9_Y5_N0
\inst_CRC16_XModem|crc_reg[13]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|crc_reg[13]~1_combout\ = (!\inst_CRC16_XModem|state.ST_DONE~regout\ & ((\inst_CRC16_XModem|state.ST_IDLE~regout\) # ((\crc_set_high~regout\ & !\crc_set_low~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \crc_set_high~regout\,
	datab => \crc_set_low~regout\,
	datac => \inst_CRC16_XModem|state.ST_DONE~regout\,
	datad => \inst_CRC16_XModem|state.ST_IDLE~regout\,
	combout => \inst_CRC16_XModem|crc_reg[13]~1_combout\);

-- Location: LCFF_X12_Y5_N1
\inst_CRC16_XModem|crc_reg[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|crc_reg~2_combout\,
	sdata => d_s(4),
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => \inst_CRC16_XModem|ALT_INV_state.ST_DATA~regout\,
	ena => \inst_CRC16_XModem|crc_reg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|crc_reg\(12));

-- Location: LCCOMB_X12_Y5_N30
\inst_CRC16_XModem|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector2~0_combout\ = (\inst_CRC16_XModem|state.ST_DATA~regout\ & (\inst_CRC16_XModem|crc_reg\(12))) # (!\inst_CRC16_XModem|state.ST_DATA~regout\ & ((d_s(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|state.ST_DATA~regout\,
	datab => \inst_CRC16_XModem|crc_reg\(12),
	datac => d_s(5),
	combout => \inst_CRC16_XModem|Selector2~0_combout\);

-- Location: LCFF_X12_Y5_N31
\inst_CRC16_XModem|crc_reg[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|Selector2~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_CRC16_XModem|crc_reg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|crc_reg\(13));

-- Location: LCCOMB_X12_Y5_N2
\inst_CRC16_XModem|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector1~0_combout\ = (\inst_CRC16_XModem|state.ST_DATA~regout\ & ((\inst_CRC16_XModem|crc_reg\(13)))) # (!\inst_CRC16_XModem|state.ST_DATA~regout\ & (d_s(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|state.ST_DATA~regout\,
	datac => d_s(6),
	datad => \inst_CRC16_XModem|crc_reg\(13),
	combout => \inst_CRC16_XModem|Selector1~0_combout\);

-- Location: LCFF_X12_Y5_N3
\inst_CRC16_XModem|crc_reg[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|Selector1~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_CRC16_XModem|crc_reg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|crc_reg\(14));

-- Location: LCCOMB_X12_Y5_N20
\inst_CRC16_XModem|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector0~0_combout\ = (\inst_CRC16_XModem|state.ST_DATA~regout\ & ((\inst_CRC16_XModem|crc_reg\(14)))) # (!\inst_CRC16_XModem|state.ST_DATA~regout\ & (d_s(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|state.ST_DATA~regout\,
	datac => d_s(7),
	datad => \inst_CRC16_XModem|crc_reg\(14),
	combout => \inst_CRC16_XModem|Selector0~0_combout\);

-- Location: LCFF_X12_Y5_N21
\inst_CRC16_XModem|crc_reg[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|Selector0~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_CRC16_XModem|crc_reg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|crc_reg\(15));

-- Location: LCCOMB_X12_Y5_N28
\inst_CRC16_XModem|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector15~0_combout\ = (\inst_CRC16_XModem|state.ST_DATA~regout\ & (\inst_CRC16_XModem|crc_reg\(15) $ ((\inst_CRC16_XModem|data_reg\(7))))) # (!\inst_CRC16_XModem|state.ST_DATA~regout\ & (((d_s(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|state.ST_DATA~regout\,
	datab => \inst_CRC16_XModem|crc_reg\(15),
	datac => \inst_CRC16_XModem|data_reg\(7),
	datad => d_s(0),
	combout => \inst_CRC16_XModem|Selector15~0_combout\);

-- Location: LCCOMB_X9_Y5_N6
\inst_CRC16_XModem|crc_reg[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|crc_reg[0]~0_combout\ = (!\inst_CRC16_XModem|state.ST_DONE~regout\ & ((\crc_set_low~regout\) # (\inst_CRC16_XModem|state.ST_IDLE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \crc_set_low~regout\,
	datac => \inst_CRC16_XModem|state.ST_DONE~regout\,
	datad => \inst_CRC16_XModem|state.ST_IDLE~regout\,
	combout => \inst_CRC16_XModem|crc_reg[0]~0_combout\);

-- Location: LCFF_X12_Y5_N29
\inst_CRC16_XModem|crc_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|Selector15~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_CRC16_XModem|crc_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|crc_reg\(0));

-- Location: LCCOMB_X13_Y7_N0
\spi_mc_ss~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_mc_ss~2_combout\ = (\Equal17~0_combout\ & (\io_state.ST_IOWR~regout\ & (!a_s(0) & !a_s(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal17~0_combout\,
	datab => \io_state.ST_IOWR~regout\,
	datac => a_s(0),
	datad => a_s(1),
	combout => \spi_mc_ss~2_combout\);

-- Location: LCFF_X13_Y7_N21
spi_fast_mode : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(0),
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \spi_mc_ss~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_fast_mode~regout\);

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SPI_MISO~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_SPI_MISO,
	combout => \SPI_MISO~combout\);

-- Location: LCCOMB_X13_Y9_N20
\inst_SPI_Master|inst_Sync_sda|meta_reg[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|inst_Sync_sda|meta_reg[0]~feeder_combout\ = \SPI_MISO~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SPI_MISO~combout\,
	combout => \inst_SPI_Master|inst_Sync_sda|meta_reg[0]~feeder_combout\);

-- Location: LCFF_X13_Y9_N21
\inst_SPI_Master|inst_Sync_sda|meta_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|inst_Sync_sda|meta_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|inst_Sync_sda|meta_reg\(0));

-- Location: LCCOMB_X13_Y9_N18
\inst_SPI_Master|inst_Sync_sda|Output[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|inst_Sync_sda|Output[0]~feeder_combout\ = \inst_SPI_Master|inst_Sync_sda|meta_reg\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_SPI_Master|inst_Sync_sda|meta_reg\(0),
	combout => \inst_SPI_Master|inst_Sync_sda|Output[0]~feeder_combout\);

-- Location: LCFF_X13_Y9_N19
\inst_SPI_Master|inst_Sync_sda|Output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|inst_Sync_sda|Output[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|inst_Sync_sda|Output\(0));

-- Location: LCCOMB_X13_Y9_N2
\inst_SPI_Master|count_spi[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|count_spi[1]~8_combout\ = (\inst_SPI_Master|count_spi\(1) & (!\inst_SPI_Master|count_spi[0]~7\)) # (!\inst_SPI_Master|count_spi\(1) & ((\inst_SPI_Master|count_spi[0]~7\) # (GND)))
-- \inst_SPI_Master|count_spi[1]~9\ = CARRY((!\inst_SPI_Master|count_spi[0]~7\) # (!\inst_SPI_Master|count_spi\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_SPI_Master|count_spi\(1),
	datad => VCC,
	cin => \inst_SPI_Master|count_spi[0]~7\,
	combout => \inst_SPI_Master|count_spi[1]~8_combout\,
	cout => \inst_SPI_Master|count_spi[1]~9\);

-- Location: LCFF_X13_Y9_N3
\inst_SPI_Master|count_spi[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|count_spi[1]~8_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sclr => \inst_SPI_Master|sspi~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|count_spi\(1));

-- Location: LCCOMB_X13_Y9_N4
\inst_SPI_Master|count_spi[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|count_spi[2]~10_combout\ = (\inst_SPI_Master|count_spi\(2) & (\inst_SPI_Master|count_spi[1]~9\ $ (GND))) # (!\inst_SPI_Master|count_spi\(2) & (!\inst_SPI_Master|count_spi[1]~9\ & VCC))
-- \inst_SPI_Master|count_spi[2]~11\ = CARRY((\inst_SPI_Master|count_spi\(2) & !\inst_SPI_Master|count_spi[1]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_SPI_Master|count_spi\(2),
	datad => VCC,
	cin => \inst_SPI_Master|count_spi[1]~9\,
	combout => \inst_SPI_Master|count_spi[2]~10_combout\,
	cout => \inst_SPI_Master|count_spi[2]~11\);

-- Location: LCFF_X13_Y9_N5
\inst_SPI_Master|count_spi[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|count_spi[2]~10_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sclr => \inst_SPI_Master|sspi~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|count_spi\(2));

-- Location: LCCOMB_X13_Y9_N6
\inst_SPI_Master|count_spi[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|count_spi[3]~12_combout\ = (\inst_SPI_Master|count_spi\(3) & (!\inst_SPI_Master|count_spi[2]~11\)) # (!\inst_SPI_Master|count_spi\(3) & ((\inst_SPI_Master|count_spi[2]~11\) # (GND)))
-- \inst_SPI_Master|count_spi[3]~13\ = CARRY((!\inst_SPI_Master|count_spi[2]~11\) # (!\inst_SPI_Master|count_spi\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SPI_Master|count_spi\(3),
	datad => VCC,
	cin => \inst_SPI_Master|count_spi[2]~11\,
	combout => \inst_SPI_Master|count_spi[3]~12_combout\,
	cout => \inst_SPI_Master|count_spi[3]~13\);

-- Location: LCCOMB_X13_Y9_N8
\inst_SPI_Master|count_spi[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|count_spi[4]~14_combout\ = (\inst_SPI_Master|count_spi\(4) & (\inst_SPI_Master|count_spi[3]~13\ $ (GND))) # (!\inst_SPI_Master|count_spi\(4) & (!\inst_SPI_Master|count_spi[3]~13\ & VCC))
-- \inst_SPI_Master|count_spi[4]~15\ = CARRY((\inst_SPI_Master|count_spi\(4) & !\inst_SPI_Master|count_spi[3]~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_SPI_Master|count_spi\(4),
	datad => VCC,
	cin => \inst_SPI_Master|count_spi[3]~13\,
	combout => \inst_SPI_Master|count_spi[4]~14_combout\,
	cout => \inst_SPI_Master|count_spi[4]~15\);

-- Location: LCFF_X13_Y9_N9
\inst_SPI_Master|count_spi[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|count_spi[4]~14_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sclr => \inst_SPI_Master|sspi~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|count_spi\(4));

-- Location: LCFF_X13_Y9_N7
\inst_SPI_Master|count_spi[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|count_spi[3]~12_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sclr => \inst_SPI_Master|sspi~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|count_spi\(3));

-- Location: LCCOMB_X13_Y9_N24
\inst_SPI_Master|sspi~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|sspi~0_combout\ = (\inst_SPI_Master|count_spi\(0) & ((!\inst_SPI_Master|count_spi\(3)))) # (!\inst_SPI_Master|count_spi\(0) & (\inst_SPI_Master|count_spi\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SPI_Master|count_spi\(0),
	datac => \inst_SPI_Master|count_spi\(4),
	datad => \inst_SPI_Master|count_spi\(3),
	combout => \inst_SPI_Master|sspi~0_combout\);

-- Location: LCCOMB_X13_Y9_N10
\inst_SPI_Master|count_spi[5]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|count_spi[5]~16_combout\ = \inst_SPI_Master|count_spi[4]~15\ $ (\inst_SPI_Master|count_spi\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst_SPI_Master|count_spi\(5),
	cin => \inst_SPI_Master|count_spi[4]~15\,
	combout => \inst_SPI_Master|count_spi[5]~16_combout\);

-- Location: LCFF_X13_Y9_N11
\inst_SPI_Master|count_spi[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|count_spi[5]~16_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sclr => \inst_SPI_Master|sspi~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|count_spi\(5));

-- Location: LCCOMB_X13_Y9_N26
\inst_SPI_Master|sspi~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|sspi~2_combout\ = (\inst_SPI_Master|sspi~1_combout\ & (\inst_SPI_Master|count_spi\(1) & (\inst_SPI_Master|sspi~0_combout\ $ (!\inst_SPI_Master|count_spi\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SPI_Master|sspi~1_combout\,
	datab => \inst_SPI_Master|count_spi\(1),
	datac => \inst_SPI_Master|sspi~0_combout\,
	datad => \inst_SPI_Master|count_spi\(5),
	combout => \inst_SPI_Master|sspi~2_combout\);

-- Location: LCFF_X13_Y9_N27
\inst_SPI_Master|tstrb\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|sspi~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|tstrb~regout\);

-- Location: LCCOMB_X13_Y9_N28
\inst_SPI_Master|Selector13~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|Selector13~1_combout\ = (\inst_SPI_Master|Selector13~0_combout\) # ((\inst_SPI_Master|state.ST_TX~regout\ & !\inst_SPI_Master|tstrb~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SPI_Master|Selector13~0_combout\,
	datac => \inst_SPI_Master|state.ST_TX~regout\,
	datad => \inst_SPI_Master|tstrb~regout\,
	combout => \inst_SPI_Master|Selector13~1_combout\);

-- Location: LCFF_X13_Y9_N29
\inst_SPI_Master|state.ST_TX\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|Selector13~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|state.ST_TX~regout\);

-- Location: LCCOMB_X14_Y9_N8
\inst_SPI_Master|bit_count[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|bit_count[1]~6_combout\ = (\inst_SPI_Master|bit_count\(1) & (!\inst_SPI_Master|bit_count[0]~5\)) # (!\inst_SPI_Master|bit_count\(1) & ((\inst_SPI_Master|bit_count[0]~5\) # (GND)))
-- \inst_SPI_Master|bit_count[1]~7\ = CARRY((!\inst_SPI_Master|bit_count[0]~5\) # (!\inst_SPI_Master|bit_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_SPI_Master|bit_count\(1),
	datad => VCC,
	cin => \inst_SPI_Master|bit_count[0]~5\,
	combout => \inst_SPI_Master|bit_count[1]~6_combout\,
	cout => \inst_SPI_Master|bit_count[1]~7\);

-- Location: LCCOMB_X10_Y4_N30
\Equal17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal17~0_combout\ = (a_s(5) & (\Equal9~0_combout\ & (!a_s(2) & \Equal3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(5),
	datab => \Equal9~0_combout\,
	datac => a_s(2),
	datad => \Equal3~6_combout\,
	combout => \Equal17~0_combout\);

-- Location: LCCOMB_X13_Y8_N14
\Selector82~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector82~1_combout\ = (\Selector82~0_combout\) # ((\Equal17~0_combout\ & (\io_state.ST_IOWR~regout\ & \Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector82~0_combout\,
	datab => \Equal17~0_combout\,
	datac => \io_state.ST_IOWR~regout\,
	datad => \Equal4~0_combout\,
	combout => \Selector82~1_combout\);

-- Location: LCFF_X13_Y8_N15
spi_tx_strb : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Selector82~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_tx_strb~regout\);

-- Location: LCCOMB_X14_Y9_N2
\inst_SPI_Master|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|Selector12~0_combout\ = (\spi_tx_strb~regout\) # ((\inst_SPI_Master|state.ST_IDLE~regout\ & ((!\inst_SPI_Master|tstrb~regout\) # (!\inst_SPI_Master|state.ST_TXDN~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SPI_Master|state.ST_TXDN~regout\,
	datab => \spi_tx_strb~regout\,
	datac => \inst_SPI_Master|state.ST_IDLE~regout\,
	datad => \inst_SPI_Master|tstrb~regout\,
	combout => \inst_SPI_Master|Selector12~0_combout\);

-- Location: LCFF_X14_Y9_N3
\inst_SPI_Master|state.ST_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|Selector12~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|state.ST_IDLE~regout\);

-- Location: LCCOMB_X14_Y9_N18
\inst_SPI_Master|bit_count[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|bit_count[2]~12_combout\ = (!\inst_SPI_Master|state.ST_TXDN~regout\ & (!\inst_SPI_Master|state.ST_TX~regout\ & ((\spi_tx_strb~regout\) # (\inst_SPI_Master|state.ST_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SPI_Master|state.ST_TXDN~regout\,
	datab => \inst_SPI_Master|state.ST_TX~regout\,
	datac => \spi_tx_strb~regout\,
	datad => \inst_SPI_Master|state.ST_IDLE~regout\,
	combout => \inst_SPI_Master|bit_count[2]~12_combout\);

-- Location: LCFF_X14_Y9_N9
\inst_SPI_Master|bit_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|bit_count[1]~6_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sclr => \inst_SPI_Master|ALT_INV_state.ST_DATA~regout\,
	ena => \inst_SPI_Master|bit_count[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|bit_count\(1));

-- Location: LCCOMB_X14_Y9_N10
\inst_SPI_Master|bit_count[2]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|bit_count[2]~8_combout\ = (\inst_SPI_Master|bit_count\(2) & (\inst_SPI_Master|bit_count[1]~7\ $ (GND))) # (!\inst_SPI_Master|bit_count\(2) & (!\inst_SPI_Master|bit_count[1]~7\ & VCC))
-- \inst_SPI_Master|bit_count[2]~9\ = CARRY((\inst_SPI_Master|bit_count\(2) & !\inst_SPI_Master|bit_count[1]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SPI_Master|bit_count\(2),
	datad => VCC,
	cin => \inst_SPI_Master|bit_count[1]~7\,
	combout => \inst_SPI_Master|bit_count[2]~8_combout\,
	cout => \inst_SPI_Master|bit_count[2]~9\);

-- Location: LCFF_X14_Y9_N11
\inst_SPI_Master|bit_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|bit_count[2]~8_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sclr => \inst_SPI_Master|ALT_INV_state.ST_DATA~regout\,
	ena => \inst_SPI_Master|bit_count[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|bit_count\(2));

-- Location: LCCOMB_X14_Y9_N12
\inst_SPI_Master|bit_count[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|bit_count[3]~10_combout\ = \inst_SPI_Master|bit_count[2]~9\ $ (\inst_SPI_Master|bit_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst_SPI_Master|bit_count\(3),
	cin => \inst_SPI_Master|bit_count[2]~9\,
	combout => \inst_SPI_Master|bit_count[3]~10_combout\);

-- Location: LCFF_X14_Y9_N13
\inst_SPI_Master|bit_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|bit_count[3]~10_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sclr => \inst_SPI_Master|ALT_INV_state.ST_DATA~regout\,
	ena => \inst_SPI_Master|bit_count[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|bit_count\(3));

-- Location: LCCOMB_X14_Y9_N24
\inst_SPI_Master|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|Selector15~0_combout\ = (!\inst_SPI_Master|bit_count\(0) & (!\inst_SPI_Master|bit_count\(2) & (!\inst_SPI_Master|bit_count\(1) & \inst_SPI_Master|bit_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SPI_Master|bit_count\(0),
	datab => \inst_SPI_Master|bit_count\(2),
	datac => \inst_SPI_Master|bit_count\(1),
	datad => \inst_SPI_Master|bit_count\(3),
	combout => \inst_SPI_Master|Selector15~0_combout\);

-- Location: LCCOMB_X13_Y9_N16
\inst_SPI_Master|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|Selector14~0_combout\ = (\inst_SPI_Master|tstrb~regout\ & (\inst_SPI_Master|state.ST_TX~regout\ & !\inst_SPI_Master|Selector15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_SPI_Master|tstrb~regout\,
	datac => \inst_SPI_Master|state.ST_TX~regout\,
	datad => \inst_SPI_Master|Selector15~0_combout\,
	combout => \inst_SPI_Master|Selector14~0_combout\);

-- Location: LCCOMB_X14_Y9_N30
\inst_SPI_Master|Selector14~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|Selector14~2_combout\ = (\inst_SPI_Master|Selector14~1_combout\ & (\inst_SPI_Master|tstrb~regout\ & ((!\inst_SPI_Master|state.ST_IDLE~regout\) # (!\spi_tx_strb~regout\)))) # (!\inst_SPI_Master|Selector14~1_combout\ & 
-- ((\inst_SPI_Master|state.ST_IDLE~regout\ & (\inst_SPI_Master|tstrb~regout\)) # (!\inst_SPI_Master|state.ST_IDLE~regout\ & ((\spi_tx_strb~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SPI_Master|Selector14~1_combout\,
	datab => \inst_SPI_Master|tstrb~regout\,
	datac => \spi_tx_strb~regout\,
	datad => \inst_SPI_Master|state.ST_IDLE~regout\,
	combout => \inst_SPI_Master|Selector14~2_combout\);

-- Location: LCFF_X13_Y9_N17
\inst_SPI_Master|state.ST_DATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|Selector14~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_SPI_Master|Selector14~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|state.ST_DATA~regout\);

-- Location: LCCOMB_X13_Y7_N12
\inst_SPI_Master|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|Selector7~0_combout\ = (\inst_SPI_Master|state.ST_DATA~regout\ & (\inst_SPI_Master|inst_Sync_sda|Output\(0))) # (!\inst_SPI_Master|state.ST_DATA~regout\ & ((d_s(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_SPI_Master|inst_Sync_sda|Output\(0),
	datac => d_s(0),
	datad => \inst_SPI_Master|state.ST_DATA~regout\,
	combout => \inst_SPI_Master|Selector7~0_combout\);

-- Location: LCCOMB_X14_Y9_N16
\inst_SPI_Master|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|Selector13~0_combout\ = (\inst_SPI_Master|state.ST_DATA~regout\ & ((\inst_SPI_Master|tstrb~regout\) # ((\spi_tx_strb~regout\ & !\inst_SPI_Master|state.ST_IDLE~regout\)))) # (!\inst_SPI_Master|state.ST_DATA~regout\ & 
-- (((\spi_tx_strb~regout\ & !\inst_SPI_Master|state.ST_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SPI_Master|state.ST_DATA~regout\,
	datab => \inst_SPI_Master|tstrb~regout\,
	datac => \spi_tx_strb~regout\,
	datad => \inst_SPI_Master|state.ST_IDLE~regout\,
	combout => \inst_SPI_Master|Selector13~0_combout\);

-- Location: LCFF_X13_Y7_N13
\inst_SPI_Master|reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|Selector7~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_SPI_Master|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|reg\(0));

-- Location: LCCOMB_X13_Y7_N20
\Selector88~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector88~0_combout\ = (a_s(2) & (a_s(0))) # (!a_s(2) & ((a_s(0) & ((\inst_SPI_Master|reg\(0)))) # (!a_s(0) & (\spi_fast_mode~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(2),
	datab => a_s(0),
	datac => \spi_fast_mode~regout\,
	datad => \inst_SPI_Master|reg\(0),
	combout => \Selector88~0_combout\);

-- Location: LCCOMB_X10_Y5_N30
\Selector88~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector88~1_combout\ = (a_s(2) & ((\Selector88~0_combout\ & (\inst_CRC16_XModem|crc_reg\(8))) # (!\Selector88~0_combout\ & ((\inst_CRC16_XModem|crc_reg\(0)))))) # (!a_s(2) & (((\Selector88~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|crc_reg\(8),
	datab => \inst_CRC16_XModem|crc_reg\(0),
	datac => a_s(2),
	datad => \Selector88~0_combout\,
	combout => \Selector88~1_combout\);

-- Location: LCCOMB_X9_Y4_N2
\Equal14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal14~0_combout\ = (a_s(4) & (a_s(3) & (\Equal9~0_combout\ & \Selector96~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(4),
	datab => a_s(3),
	datac => \Equal9~0_combout\,
	datad => \Selector96~2_combout\,
	combout => \Equal14~0_combout\);

-- Location: LCCOMB_X13_Y8_N28
\Selector81~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector81~0_combout\ = (\i2c_tx_strb~regout\ & ((\io_state.ST_IOWR~regout\) # (!\io_state.ST_DONE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io_state.ST_IOWR~regout\,
	datac => \io_state.ST_DONE~regout\,
	datad => \i2c_tx_strb~regout\,
	combout => \Selector81~0_combout\);

-- Location: LCCOMB_X13_Y8_N26
\Selector81~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector81~1_combout\ = (\Selector81~0_combout\) # ((\Equal4~0_combout\ & (\io_state.ST_IOWR~regout\ & \Equal14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \io_state.ST_IOWR~regout\,
	datac => \Equal14~0_combout\,
	datad => \Selector81~0_combout\,
	combout => \Selector81~1_combout\);

-- Location: LCFF_X13_Y8_N27
i2c_tx_strb : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Selector81~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_tx_strb~regout\);

-- Location: LCCOMB_X14_Y5_N0
\Selector80~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector80~0_combout\ = (\io_state.ST_IOWR~regout\ & d_s(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IOWR~regout\,
	datad => d_s(2),
	combout => \Selector80~0_combout\);

-- Location: LCCOMB_X13_Y8_N22
\Selector79~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector79~1_combout\ = (\io_state.ST_IOWR~regout\ & (\Equal14~0_combout\ & ((\Equal3~7_combout\)))) # (!\io_state.ST_IOWR~regout\ & (((\io_state.ST_DONE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal14~0_combout\,
	datab => \io_state.ST_IOWR~regout\,
	datac => \io_state.ST_DONE~regout\,
	datad => \Equal3~7_combout\,
	combout => \Selector79~1_combout\);

-- Location: LCFF_X14_Y5_N1
i2c_stop_strb : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Selector80~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \Selector79~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_stop_strb~regout\);

-- Location: LCCOMB_X14_Y5_N22
\Selector79~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector79~0_combout\ = (\io_state.ST_IOWR~regout\ & d_s(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IOWR~regout\,
	datac => d_s(1),
	combout => \Selector79~0_combout\);

-- Location: LCFF_X14_Y5_N23
i2c_start_strb : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Selector79~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \Selector79~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_start_strb~regout\);

-- Location: LCCOMB_X14_Y10_N28
\inst_I2C_Master|Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector9~1_combout\ = (!\i2c_stop_strb~regout\ & !\i2c_start_strb~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_stop_strb~regout\,
	datad => \i2c_start_strb~regout\,
	combout => \inst_I2C_Master|Selector9~1_combout\);

-- Location: LCCOMB_X14_Y10_N20
\inst_I2C_Master|inst_Sync_scl|meta_reg[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|inst_Sync_scl|meta_reg[0]~feeder_combout\ = \RTC_SCL~0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RTC_SCL~0\,
	combout => \inst_I2C_Master|inst_Sync_scl|meta_reg[0]~feeder_combout\);

-- Location: LCFF_X14_Y10_N21
\inst_I2C_Master|inst_Sync_scl|meta_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|inst_Sync_scl|meta_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|inst_Sync_scl|meta_reg\(0));

-- Location: LCFF_X14_Y10_N5
\inst_I2C_Master|inst_Sync_scl|Output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_I2C_Master|inst_Sync_scl|meta_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|inst_Sync_scl|Output\(0));

-- Location: LCCOMB_X20_Y8_N8
\inst_Timing|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add1~2_combout\ = (\inst_Timing|count_1ms\(1) & (!\inst_Timing|Add1~1\)) # (!\inst_Timing|count_1ms\(1) & ((\inst_Timing|Add1~1\) # (GND)))
-- \inst_Timing|Add1~3\ = CARRY((!\inst_Timing|Add1~1\) # (!\inst_Timing|count_1ms\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_Timing|count_1ms\(1),
	datad => VCC,
	cin => \inst_Timing|Add1~1\,
	combout => \inst_Timing|Add1~2_combout\,
	cout => \inst_Timing|Add1~3\);

-- Location: LCCOMB_X19_Y8_N0
\inst_Timing|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add0~0_combout\ = \inst_Timing|count_1us\(0) $ (VCC)
-- \inst_Timing|Add0~1\ = CARRY(\inst_Timing|count_1us\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Timing|count_1us\(0),
	datad => VCC,
	combout => \inst_Timing|Add0~0_combout\,
	cout => \inst_Timing|Add0~1\);

-- Location: LCFF_X19_Y8_N1
\inst_Timing|count_1us[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|Add0~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_1us\(0));

-- Location: LCCOMB_X19_Y8_N2
\inst_Timing|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add0~2_combout\ = (\inst_Timing|count_1us\(1) & (!\inst_Timing|Add0~1\)) # (!\inst_Timing|count_1us\(1) & ((\inst_Timing|Add0~1\) # (GND)))
-- \inst_Timing|Add0~3\ = CARRY((!\inst_Timing|Add0~1\) # (!\inst_Timing|count_1us\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_Timing|count_1us\(1),
	datad => VCC,
	cin => \inst_Timing|Add0~1\,
	combout => \inst_Timing|Add0~2_combout\,
	cout => \inst_Timing|Add0~3\);

-- Location: LCCOMB_X19_Y8_N30
\inst_Timing|count_1us~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|count_1us~2_combout\ = (\inst_Timing|Add0~2_combout\ & (((\inst_Timing|count_1us\(1)) # (!\inst_Timing|count_1us\(0))) # (!\inst_Timing|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Timing|Equal0~0_combout\,
	datab => \inst_Timing|count_1us\(0),
	datac => \inst_Timing|count_1us\(1),
	datad => \inst_Timing|Add0~2_combout\,
	combout => \inst_Timing|count_1us~2_combout\);

-- Location: LCFF_X19_Y8_N31
\inst_Timing|count_1us[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|count_1us~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_1us\(1));

-- Location: LCCOMB_X19_Y8_N4
\inst_Timing|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add0~4_combout\ = (\inst_Timing|count_1us\(2) & (\inst_Timing|Add0~3\ $ (GND))) # (!\inst_Timing|count_1us\(2) & (!\inst_Timing|Add0~3\ & VCC))
-- \inst_Timing|Add0~5\ = CARRY((\inst_Timing|count_1us\(2) & !\inst_Timing|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_Timing|count_1us\(2),
	datad => VCC,
	cin => \inst_Timing|Add0~3\,
	combout => \inst_Timing|Add0~4_combout\,
	cout => \inst_Timing|Add0~5\);

-- Location: LCFF_X19_Y8_N5
\inst_Timing|count_1us[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|Add0~4_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_1us\(2));

-- Location: LCCOMB_X19_Y8_N6
\inst_Timing|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add0~6_combout\ = (\inst_Timing|count_1us\(3) & (!\inst_Timing|Add0~5\)) # (!\inst_Timing|count_1us\(3) & ((\inst_Timing|Add0~5\) # (GND)))
-- \inst_Timing|Add0~7\ = CARRY((!\inst_Timing|Add0~5\) # (!\inst_Timing|count_1us\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Timing|count_1us\(3),
	datad => VCC,
	cin => \inst_Timing|Add0~5\,
	combout => \inst_Timing|Add0~6_combout\,
	cout => \inst_Timing|Add0~7\);

-- Location: LCCOMB_X19_Y8_N26
\inst_Timing|count_1us~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|count_1us~1_combout\ = (\inst_Timing|Add0~8_combout\ & (((\inst_Timing|count_1us\(1)) # (!\inst_Timing|count_1us\(0))) # (!\inst_Timing|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Timing|Equal0~0_combout\,
	datab => \inst_Timing|count_1us\(1),
	datac => \inst_Timing|Add0~8_combout\,
	datad => \inst_Timing|count_1us\(0),
	combout => \inst_Timing|count_1us~1_combout\);

-- Location: LCFF_X19_Y8_N27
\inst_Timing|count_1us[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|count_1us~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_1us\(4));

-- Location: LCFF_X19_Y8_N7
\inst_Timing|count_1us[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|Add0~6_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_1us\(3));

-- Location: LCCOMB_X19_Y8_N20
\inst_Timing|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Equal0~0_combout\ = (\inst_Timing|count_1us\(5) & (\inst_Timing|count_1us\(4) & (!\inst_Timing|count_1us\(2) & !\inst_Timing|count_1us\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Timing|count_1us\(5),
	datab => \inst_Timing|count_1us\(4),
	datac => \inst_Timing|count_1us\(2),
	datad => \inst_Timing|count_1us\(3),
	combout => \inst_Timing|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y8_N22
\inst_Timing|Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Equal0~1_combout\ = (!\inst_Timing|count_1us\(1) & (\inst_Timing|Equal0~0_combout\ & \inst_Timing|count_1us\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Timing|count_1us\(1),
	datac => \inst_Timing|Equal0~0_combout\,
	datad => \inst_Timing|count_1us\(0),
	combout => \inst_Timing|Equal0~1_combout\);

-- Location: LCFF_X19_Y8_N23
\inst_Timing|strb_1us_int\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|Equal0~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|strb_1us_int~regout\);

-- Location: LCFF_X20_Y8_N9
\inst_Timing|count_1ms[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|Add1~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|strb_1us_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_1ms\(1));

-- Location: LCCOMB_X20_Y8_N0
\inst_Timing|Strb_I2C~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Strb_I2C~0_combout\ = (\inst_Timing|Strb_I2C~regout\) # ((\inst_Timing|count_1ms\(0) & \inst_Timing|count_1ms\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Timing|count_1ms\(0),
	datab => \inst_Timing|count_1ms\(1),
	datac => \inst_Timing|Strb_I2C~regout\,
	combout => \inst_Timing|Strb_I2C~0_combout\);

-- Location: LCFF_X20_Y8_N1
\inst_Timing|Strb_I2C\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|Strb_I2C~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sclr => \inst_Timing|ALT_INV_strb_1us_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|Strb_I2C~regout\);

-- Location: LCCOMB_X14_Y10_N30
\inst_I2C_Master|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector12~0_combout\ = (\inst_Timing|Strb_I2C~regout\ & ((\inst_I2C_Master|state.ST_DATA2~regout\) # ((!\inst_I2C_Master|inst_Sync_scl|Output\(0) & \inst_I2C_Master|state.ST_DATA3~regout\)))) # (!\inst_Timing|Strb_I2C~regout\ & 
-- (((\inst_I2C_Master|state.ST_DATA3~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|state.ST_DATA2~regout\,
	datab => \inst_I2C_Master|inst_Sync_scl|Output\(0),
	datac => \inst_I2C_Master|state.ST_DATA3~regout\,
	datad => \inst_Timing|Strb_I2C~regout\,
	combout => \inst_I2C_Master|Selector12~0_combout\);

-- Location: LCFF_X14_Y10_N31
\inst_I2C_Master|state.ST_DATA3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|Selector12~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|state.ST_DATA3~regout\);

-- Location: LCCOMB_X14_Y10_N26
\inst_I2C_Master|Selector9~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector9~5_combout\ = (\inst_I2C_Master|Selector9~1_combout\ & ((\inst_I2C_Master|state.ST_DATA3~regout\) # ((!\i2c_tx_strb~regout\ & !\inst_I2C_Master|state.ST_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_tx_strb~regout\,
	datab => \inst_I2C_Master|Selector9~1_combout\,
	datac => \inst_I2C_Master|state.ST_IDLE~regout\,
	datad => \inst_I2C_Master|state.ST_DATA3~regout\,
	combout => \inst_I2C_Master|Selector9~5_combout\);

-- Location: LCCOMB_X13_Y10_N18
\inst_I2C_Master|Selector9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector9~2_combout\ = (\inst_I2C_Master|state.ST_DATA3~regout\) # (((\inst_I2C_Master|state.ST_START3~regout\ & \i2c_start_strb~regout\)) # (!\inst_Timing|Strb_I2C~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|state.ST_START3~regout\,
	datab => \inst_I2C_Master|state.ST_DATA3~regout\,
	datac => \i2c_start_strb~regout\,
	datad => \inst_Timing|Strb_I2C~regout\,
	combout => \inst_I2C_Master|Selector9~2_combout\);

-- Location: LCCOMB_X13_Y10_N20
\inst_I2C_Master|Selector9~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector9~3_combout\ = (\inst_I2C_Master|state.ST_STOP2~regout\ & (((\i2c_stop_strb~regout\)))) # (!\inst_I2C_Master|state.ST_STOP2~regout\ & (\i2c_tx_strb~regout\ & ((\inst_I2C_Master|state.ST_TXDN~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|state.ST_STOP2~regout\,
	datab => \i2c_tx_strb~regout\,
	datac => \i2c_stop_strb~regout\,
	datad => \inst_I2C_Master|state.ST_TXDN~regout\,
	combout => \inst_I2C_Master|Selector9~3_combout\);

-- Location: LCCOMB_X13_Y10_N30
\inst_I2C_Master|Selector9~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector9~4_combout\ = (\inst_I2C_Master|state.ST_IDLE~regout\ & ((\inst_I2C_Master|Selector9~2_combout\) # ((!\inst_I2C_Master|state.ST_START3~regout\ & \inst_I2C_Master|Selector9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|state.ST_START3~regout\,
	datab => \inst_I2C_Master|Selector9~2_combout\,
	datac => \inst_I2C_Master|Selector9~3_combout\,
	datad => \inst_I2C_Master|state.ST_IDLE~regout\,
	combout => \inst_I2C_Master|Selector9~4_combout\);

-- Location: LCCOMB_X14_Y10_N0
\inst_I2C_Master|Selector9~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector9~8_combout\ = (!\inst_I2C_Master|state.ST_TX~regout\ & ((\inst_I2C_Master|Selector9~5_combout\) # (\inst_I2C_Master|Selector9~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|state.ST_TX~regout\,
	datab => \inst_I2C_Master|Selector9~5_combout\,
	datac => \inst_I2C_Master|Selector9~4_combout\,
	combout => \inst_I2C_Master|Selector9~8_combout\);

-- Location: LCCOMB_X14_Y10_N18
\inst_I2C_Master|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector9~0_combout\ = (\inst_I2C_Master|inst_Sync_scl|Output\(0) & (\inst_Timing|Strb_I2C~regout\ & \inst_I2C_Master|state.ST_DATA3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_I2C_Master|inst_Sync_scl|Output\(0),
	datac => \inst_Timing|Strb_I2C~regout\,
	datad => \inst_I2C_Master|state.ST_DATA3~regout\,
	combout => \inst_I2C_Master|Selector9~0_combout\);

-- Location: LCCOMB_X14_Y10_N24
\inst_I2C_Master|state.ST_TXDN~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|state.ST_TXDN~0_combout\ = (\inst_I2C_Master|Selector9~0_combout\ & (\inst_I2C_Master|Equal0~0_combout\)) # (!\inst_I2C_Master|Selector9~0_combout\ & (((\inst_I2C_Master|Selector9~8_combout\ & \inst_I2C_Master|state.ST_TXDN~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|Equal0~0_combout\,
	datab => \inst_I2C_Master|Selector9~8_combout\,
	datac => \inst_I2C_Master|state.ST_TXDN~regout\,
	datad => \inst_I2C_Master|Selector9~0_combout\,
	combout => \inst_I2C_Master|state.ST_TXDN~0_combout\);

-- Location: LCFF_X14_Y10_N25
\inst_I2C_Master|state.ST_TXDN\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|state.ST_TXDN~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|state.ST_TXDN~regout\);

-- Location: LCCOMB_X13_Y10_N2
\inst_I2C_Master|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector0~0_combout\ = (\inst_I2C_Master|state.ST_TXDN~regout\ & (((!\i2c_tx_strb~regout\)))) # (!\inst_I2C_Master|state.ST_TXDN~regout\ & (\inst_I2C_Master|state.ST_STOP2~regout\ & ((!\i2c_stop_strb~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|state.ST_STOP2~regout\,
	datab => \i2c_tx_strb~regout\,
	datac => \i2c_stop_strb~regout\,
	datad => \inst_I2C_Master|state.ST_TXDN~regout\,
	combout => \inst_I2C_Master|Selector0~0_combout\);

-- Location: LCCOMB_X13_Y10_N4
\inst_I2C_Master|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector0~1_combout\ = (\inst_Timing|Strb_I2C~regout\ & ((\inst_I2C_Master|state.ST_START3~regout\ & ((!\i2c_start_strb~regout\))) # (!\inst_I2C_Master|state.ST_START3~regout\ & (\inst_I2C_Master|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|state.ST_START3~regout\,
	datab => \inst_I2C_Master|Selector0~0_combout\,
	datac => \i2c_start_strb~regout\,
	datad => \inst_Timing|Strb_I2C~regout\,
	combout => \inst_I2C_Master|Selector0~1_combout\);

-- Location: LCCOMB_X13_Y10_N0
\inst_I2C_Master|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector8~0_combout\ = (!\inst_I2C_Master|state.ST_IDLE~regout\ & (!\i2c_stop_strb~regout\ & (!\i2c_start_strb~regout\ & \i2c_tx_strb~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|state.ST_IDLE~regout\,
	datab => \i2c_stop_strb~regout\,
	datac => \i2c_start_strb~regout\,
	datad => \i2c_tx_strb~regout\,
	combout => \inst_I2C_Master|Selector8~0_combout\);

-- Location: LCCOMB_X15_Y10_N18
\inst_I2C_Master|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector8~1_combout\ = (!\inst_I2C_Master|state.ST_TX~regout\ & \inst_I2C_Master|Selector8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_I2C_Master|state.ST_TX~regout\,
	datad => \inst_I2C_Master|Selector8~0_combout\,
	combout => \inst_I2C_Master|Selector8~1_combout\);

-- Location: LCFF_X15_Y10_N19
\inst_I2C_Master|state.ST_TX\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|Selector8~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|state.ST_TX~regout\);

-- Location: LCCOMB_X13_Y10_N6
\inst_I2C_Master|Selector0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector0~7_combout\ = ((\inst_I2C_Master|state.ST_TX~regout\) # ((!\inst_I2C_Master|Selector0~1_combout\ & \inst_I2C_Master|state.ST_IDLE~regout\))) # (!\inst_I2C_Master|Selector0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|Selector0~6_combout\,
	datab => \inst_I2C_Master|Selector0~1_combout\,
	datac => \inst_I2C_Master|state.ST_IDLE~regout\,
	datad => \inst_I2C_Master|state.ST_TX~regout\,
	combout => \inst_I2C_Master|Selector0~7_combout\);

-- Location: LCFF_X13_Y10_N7
\inst_I2C_Master|state.ST_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|Selector0~7_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|state.ST_IDLE~regout\);

-- Location: LCCOMB_X14_Y10_N14
\inst_I2C_Master|inst_Sync_sda|meta_reg[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|inst_Sync_sda|meta_reg[0]~feeder_combout\ = \RTC_SDA~0\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RTC_SDA~0\,
	combout => \inst_I2C_Master|inst_Sync_sda|meta_reg[0]~feeder_combout\);

-- Location: LCFF_X14_Y10_N15
\inst_I2C_Master|inst_Sync_sda|meta_reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|inst_Sync_sda|meta_reg[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|inst_Sync_sda|meta_reg\(0));

-- Location: LCFF_X14_Y10_N7
\inst_I2C_Master|inst_Sync_sda|Output[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_I2C_Master|inst_Sync_sda|meta_reg\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|inst_Sync_sda|Output\(0));

-- Location: LCCOMB_X14_Y10_N6
\inst_I2C_Master|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector21~0_combout\ = (\inst_I2C_Master|Equal0~0_combout\ & (((\inst_I2C_Master|reg\(0))))) # (!\inst_I2C_Master|Equal0~0_combout\ & ((\inst_I2C_Master|Selector9~0_combout\ & (\inst_I2C_Master|inst_Sync_sda|Output\(0))) # 
-- (!\inst_I2C_Master|Selector9~0_combout\ & ((\inst_I2C_Master|reg\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|Equal0~0_combout\,
	datab => \inst_I2C_Master|Selector9~0_combout\,
	datac => \inst_I2C_Master|inst_Sync_sda|Output\(0),
	datad => \inst_I2C_Master|reg\(0),
	combout => \inst_I2C_Master|Selector21~0_combout\);

-- Location: LCCOMB_X14_Y10_N10
\inst_I2C_Master|Selector21~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector21~2_combout\ = (\inst_I2C_Master|state.ST_IDLE~regout\ & ((\inst_I2C_Master|Selector21~0_combout\))) # (!\inst_I2C_Master|state.ST_IDLE~regout\ & (\inst_I2C_Master|Selector21~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|Selector21~1_combout\,
	datac => \inst_I2C_Master|state.ST_IDLE~regout\,
	datad => \inst_I2C_Master|Selector21~0_combout\,
	combout => \inst_I2C_Master|Selector21~2_combout\);

-- Location: LCFF_X14_Y10_N11
\inst_I2C_Master|reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|Selector21~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|reg\(0));

-- Location: LCCOMB_X14_Y10_N2
\inst_I2C_Master|Rx_Ackn~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Rx_Ackn~0_combout\ = (\inst_I2C_Master|Equal0~0_combout\ & ((\inst_I2C_Master|Selector9~0_combout\ & ((\inst_I2C_Master|inst_Sync_sda|Output\(0)))) # (!\inst_I2C_Master|Selector9~0_combout\ & (\inst_I2C_Master|Rx_Ackn~regout\)))) # 
-- (!\inst_I2C_Master|Equal0~0_combout\ & (((\inst_I2C_Master|Rx_Ackn~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|Equal0~0_combout\,
	datab => \inst_I2C_Master|Selector9~0_combout\,
	datac => \inst_I2C_Master|Rx_Ackn~regout\,
	datad => \inst_I2C_Master|inst_Sync_sda|Output\(0),
	combout => \inst_I2C_Master|Rx_Ackn~0_combout\);

-- Location: LCFF_X14_Y10_N3
\inst_I2C_Master|Rx_Ackn\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|Rx_Ackn~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|Rx_Ackn~regout\);

-- Location: LCCOMB_X10_Y5_N6
\Selector88~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector88~7_combout\ = (!a_s(1) & ((a_s(0) & (\inst_I2C_Master|reg\(0))) # (!a_s(0) & ((\inst_I2C_Master|Rx_Ackn~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(1),
	datab => a_s(0),
	datac => \inst_I2C_Master|reg\(0),
	datad => \inst_I2C_Master|Rx_Ackn~regout\,
	combout => \Selector88~7_combout\);

-- Location: LCCOMB_X10_Y5_N26
\Selector88~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector88~9_combout\ = (a_s(3) & (((\Selector88~7_combout\)))) # (!a_s(3) & (\Selector88~8_combout\ & (!a_s(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector88~8_combout\,
	datab => a_s(0),
	datac => a_s(3),
	datad => \Selector88~7_combout\,
	combout => \Selector88~9_combout\);

-- Location: LCCOMB_X8_Y8_N24
\inst_FIFOs|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|LessThan0~0_combout\ = (\inst_FIFOs|contents[0][4]~regout\) # (\inst_FIFOs|contents[0][5]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_FIFOs|contents[0][4]~regout\,
	datad => \inst_FIFOs|contents[0][5]~regout\,
	combout => \inst_FIFOs|LessThan0~0_combout\);

-- Location: LCCOMB_X12_Y8_N28
\int_enables[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \int_enables[0]~2_combout\ = (\Equal7~0_combout\ & (!a_s(1) & (\io_state.ST_IOWR~regout\ & !a_s(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => a_s(1),
	datac => \io_state.ST_IOWR~regout\,
	datad => a_s(0),
	combout => \int_enables[0]~2_combout\);

-- Location: LCFF_X12_Y4_N11
\int_enables[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(0),
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \int_enables[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => int_enables(0));

-- Location: LCCOMB_X12_Y4_N10
\Selector88~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector88~4_combout\ = (a_s(2) & (((a_s(1))))) # (!a_s(2) & ((a_s(1) & (!\inst_FIFOs|LessThan0~0_combout\)) # (!a_s(1) & ((int_enables(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(2),
	datab => \inst_FIFOs|LessThan0~0_combout\,
	datac => int_enables(0),
	datad => a_s(1),
	combout => \Selector88~4_combout\);

-- Location: LCCOMB_X10_Y5_N18
\Selector88~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector88~5_combout\ = (!a_s(0) & ((a_s(2) & (!\Selector88~4_combout\ & \inst_NMI_Control|nmi_reasons\(0))) # (!a_s(2) & (\Selector88~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(2),
	datab => \Selector88~4_combout\,
	datac => a_s(0),
	datad => \inst_NMI_Control|nmi_reasons\(0),
	combout => \Selector88~5_combout\);

-- Location: LCCOMB_X12_Y2_N0
\mmap_shadow~71\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_shadow~71_combout\ = (\mmap_shadow~55_combout\ & (a_s(1) & (\iosm~0_combout\ & a_s(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mmap_shadow~55_combout\,
	datab => a_s(1),
	datac => \iosm~0_combout\,
	datad => a_s(0),
	combout => \mmap_shadow~71_combout\);

-- Location: LCFF_X12_Y3_N27
\mmap_shadow~35\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(0),
	sload => VCC,
	ena => \mmap_shadow~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~35_regout\);

-- Location: LCCOMB_X12_Y2_N2
\mmap_shadow~72\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_shadow~72_combout\ = (\mmap_shadow~55_combout\ & (a_s(1) & (\iosm~0_combout\ & !a_s(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mmap_shadow~55_combout\,
	datab => a_s(1),
	datac => \iosm~0_combout\,
	datad => a_s(0),
	combout => \mmap_shadow~72_combout\);

-- Location: LCFF_X12_Y3_N1
\mmap_shadow~27\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(0),
	sload => VCC,
	ena => \mmap_shadow~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~27_regout\);

-- Location: LCCOMB_X12_Y2_N4
\mmap_shadow~73\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_shadow~73_combout\ = (\mmap_shadow~55_combout\ & (!a_s(1) & (\iosm~0_combout\ & a_s(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mmap_shadow~55_combout\,
	datab => a_s(1),
	datac => \iosm~0_combout\,
	datad => a_s(0),
	combout => \mmap_shadow~73_combout\);

-- Location: LCFF_X13_Y3_N25
\mmap_shadow~19\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(0),
	sload => VCC,
	ena => \mmap_shadow~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~19_regout\);

-- Location: LCCOMB_X12_Y2_N22
\mmap_shadow~74\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_shadow~74_combout\ = (\mmap_shadow~55_combout\ & (!a_s(1) & (\iosm~0_combout\ & !a_s(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mmap_shadow~55_combout\,
	datab => a_s(1),
	datac => \iosm~0_combout\,
	datad => a_s(0),
	combout => \mmap_shadow~74_combout\);

-- Location: LCFF_X13_Y3_N27
\mmap_shadow~11\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(0),
	sload => VCC,
	ena => \mmap_shadow~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~11_regout\);

-- Location: LCCOMB_X13_Y3_N24
\mmap_shadow~56\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_shadow~56_combout\ = (a_s(1) & (a_s(0))) # (!a_s(1) & ((a_s(0) & (\mmap_shadow~19_regout\)) # (!a_s(0) & ((\mmap_shadow~11_regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(1),
	datab => a_s(0),
	datac => \mmap_shadow~19_regout\,
	datad => \mmap_shadow~11_regout\,
	combout => \mmap_shadow~56_combout\);

-- Location: LCCOMB_X12_Y3_N0
\Selector88~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector88~3_combout\ = (a_s(1) & ((\mmap_shadow~56_combout\ & (\mmap_shadow~35_regout\)) # (!\mmap_shadow~56_combout\ & ((\mmap_shadow~27_regout\))))) # (!a_s(1) & (((\mmap_shadow~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(1),
	datab => \mmap_shadow~35_regout\,
	datac => \mmap_shadow~27_regout\,
	datad => \mmap_shadow~56_combout\,
	combout => \Selector88~3_combout\);

-- Location: LCCOMB_X10_Y5_N28
\Selector88~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector88~6_combout\ = (a_s(3) & (((\Selector88~5_combout\)))) # (!a_s(3) & (a_s(2) & ((\Selector88~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(2),
	datab => \Selector88~5_combout\,
	datac => a_s(3),
	datad => \Selector88~3_combout\,
	combout => \Selector88~6_combout\);

-- Location: LCCOMB_X10_Y5_N20
\Selector88~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector88~10_combout\ = (a_s(4) & (!a_s(2) & (\Selector88~9_combout\))) # (!a_s(4) & (((\Selector88~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(2),
	datab => \Selector88~9_combout\,
	datac => a_s(4),
	datad => \Selector88~6_combout\,
	combout => \Selector88~10_combout\);

-- Location: LCCOMB_X10_Y5_N0
\Selector88~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector88~2_combout\ = (a_s(5) & (!a_s(3) & (!a_s(4) & !a_s(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(5),
	datab => a_s(3),
	datac => a_s(4),
	datad => a_s(1),
	combout => \Selector88~2_combout\);

-- Location: LCCOMB_X10_Y5_N22
\Selector88~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector88~11_combout\ = (a_s(5) & (\Selector88~1_combout\ & ((\Selector88~2_combout\)))) # (!a_s(5) & ((\Selector88~10_combout\) # ((\Selector88~1_combout\ & \Selector88~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(5),
	datab => \Selector88~1_combout\,
	datac => \Selector88~10_combout\,
	datad => \Selector88~2_combout\,
	combout => \Selector88~11_combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\RClk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_RClk,
	combout => \RClk~combout\);

-- Location: CLKCTRL_G2
\RClk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \RClk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \RClk~clkctrl_outclk\);

-- Location: LCCOMB_X7_Y3_N26
\inst_Con_Rx|reg[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|reg[7]~feeder_combout\ = \inst_Con_Rx|inst_DeNoise|output_int~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_Con_Rx|inst_DeNoise|output_int~regout\,
	combout => \inst_Con_Rx|reg[7]~feeder_combout\);

-- Location: LCFF_X7_Y3_N27
\inst_Con_Rx|reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|reg[7]~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Con_Rx|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|reg\(7));

-- Location: LCCOMB_X7_Y3_N20
\inst_Con_Rx|reg[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|reg[6]~feeder_combout\ = \inst_Con_Rx|reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_Con_Rx|reg\(7),
	combout => \inst_Con_Rx|reg[6]~feeder_combout\);

-- Location: LCFF_X7_Y3_N21
\inst_Con_Rx|reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|reg[6]~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Con_Rx|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|reg\(6));

-- Location: LCCOMB_X7_Y3_N8
\inst_Con_Rx|reg[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|reg[5]~feeder_combout\ = \inst_Con_Rx|reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_Con_Rx|reg\(6),
	combout => \inst_Con_Rx|reg[5]~feeder_combout\);

-- Location: LCFF_X7_Y3_N9
\inst_Con_Rx|reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|reg[5]~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Con_Rx|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|reg\(5));

-- Location: LCCOMB_X7_Y3_N0
\inst_Con_Rx|reg[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|reg[4]~feeder_combout\ = \inst_Con_Rx|reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_Con_Rx|reg\(5),
	combout => \inst_Con_Rx|reg[4]~feeder_combout\);

-- Location: LCFF_X7_Y3_N1
\inst_Con_Rx|reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|reg[4]~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Con_Rx|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|reg\(4));

-- Location: LCCOMB_X7_Y3_N10
\inst_Con_Rx|reg[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|reg[3]~feeder_combout\ = \inst_Con_Rx|reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_Con_Rx|reg\(4),
	combout => \inst_Con_Rx|reg[3]~feeder_combout\);

-- Location: LCFF_X7_Y3_N11
\inst_Con_Rx|reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|reg[3]~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Con_Rx|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|reg\(3));

-- Location: LCCOMB_X7_Y3_N4
\inst_Con_Rx|reg[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|reg[2]~feeder_combout\ = \inst_Con_Rx|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_Con_Rx|reg\(3),
	combout => \inst_Con_Rx|reg[2]~feeder_combout\);

-- Location: LCFF_X7_Y3_N5
\inst_Con_Rx|reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|reg[2]~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Con_Rx|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|reg\(2));

-- Location: LCFF_X7_Y3_N15
\inst_Con_Rx|reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_Con_Rx|reg\(2),
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \inst_Con_Rx|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|reg\(1));

-- Location: LCCOMB_X7_Y3_N6
\inst_Con_Rx|reg[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|reg[0]~feeder_combout\ = \inst_Con_Rx|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_Con_Rx|reg\(1),
	combout => \inst_Con_Rx|reg[0]~feeder_combout\);

-- Location: LCFF_X7_Y3_N7
\inst_Con_Rx|reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|reg[0]~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Con_Rx|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|reg\(0));

-- Location: LCFF_X7_Y3_N13
\inst_Con_Rx|Data[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_Con_Rx|reg\(0),
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \inst_Con_Rx|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|Data\(0));

-- Location: LCCOMB_X7_Y3_N12
\inst_FIFOs|ram_wrdata~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|ram_wrdata~0_combout\ = (\inst_FIFOs|op_fifo\(0) & ((\inst_FIFOs|op_fifo\(1) & (\inst_Aux_Rx|Data\(0))) # (!\inst_FIFOs|op_fifo\(1) & ((\inst_Con_Rx|Data\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|Data\(0),
	datab => \inst_FIFOs|op_fifo\(0),
	datac => \inst_Con_Rx|Data\(0),
	datad => \inst_FIFOs|op_fifo\(1),
	combout => \inst_FIFOs|ram_wrdata~0_combout\);

-- Location: LCCOMB_X14_Y3_N24
\inst_FIFOs|ram_wrdata~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|ram_wrdata~1_combout\ = (\inst_FIFOs|ram_wrdata~0_combout\) # ((!\inst_FIFOs|op_fifo\(0) & d_s(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|op_fifo\(0),
	datab => d_s(0),
	datad => \inst_FIFOs|ram_wrdata~0_combout\,
	combout => \inst_FIFOs|ram_wrdata~1_combout\);

-- Location: LCCOMB_X7_Y8_N28
\inst_FIFOs|rd_ptr[0][0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|rd_ptr[0][0]~20_combout\ = \inst_FIFOs|rd_ptr[0][0]~regout\ $ (((!\inst_FIFOs|Equal14~0_combout\ & (\inst_FIFOs|state.ST_RD_DONE~regout\ & !\inst_FIFOs|fsm~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Equal14~0_combout\,
	datab => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datac => \inst_FIFOs|rd_ptr[0][0]~regout\,
	datad => \inst_FIFOs|fsm~0_combout\,
	combout => \inst_FIFOs|rd_ptr[0][0]~20_combout\);

-- Location: LCFF_X7_Y8_N29
\inst_FIFOs|rd_ptr[0][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|rd_ptr[0][0]~20_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|rd_ptr[0][0]~regout\);

-- Location: LCCOMB_X7_Y8_N10
\inst_FIFOs|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Add0~0_combout\ = (\inst_FIFOs|contents[0][0]~regout\ & (\inst_FIFOs|rd_ptr[0][0]~regout\ $ (VCC))) # (!\inst_FIFOs|contents[0][0]~regout\ & (\inst_FIFOs|rd_ptr[0][0]~regout\ & VCC))
-- \inst_FIFOs|Add0~1\ = CARRY((\inst_FIFOs|contents[0][0]~regout\ & \inst_FIFOs|rd_ptr[0][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[0][0]~regout\,
	datab => \inst_FIFOs|rd_ptr[0][0]~regout\,
	datad => VCC,
	combout => \inst_FIFOs|Add0~0_combout\,
	cout => \inst_FIFOs|Add0~1\);

-- Location: LCCOMB_X6_Y6_N0
\inst_FIFOs|rd_ptr[1][0]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|rd_ptr[1][0]~18_combout\ = \inst_FIFOs|contents[1][4]~38_combout\ $ (\inst_FIFOs|rd_ptr[1][0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[1][4]~38_combout\,
	datac => \inst_FIFOs|rd_ptr[1][0]~regout\,
	combout => \inst_FIFOs|rd_ptr[1][0]~18_combout\);

-- Location: LCFF_X6_Y6_N1
\inst_FIFOs|rd_ptr[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|rd_ptr[1][0]~18_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|rd_ptr[1][0]~regout\);

-- Location: LCCOMB_X7_Y7_N2
\inst_FIFOs|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Add1~0_combout\ = (\inst_FIFOs|contents[1][0]~regout\ & (\inst_FIFOs|rd_ptr[1][0]~regout\ $ (VCC))) # (!\inst_FIFOs|contents[1][0]~regout\ & (\inst_FIFOs|rd_ptr[1][0]~regout\ & VCC))
-- \inst_FIFOs|Add1~1\ = CARRY((\inst_FIFOs|contents[1][0]~regout\ & \inst_FIFOs|rd_ptr[1][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[1][0]~regout\,
	datab => \inst_FIFOs|rd_ptr[1][0]~regout\,
	datad => VCC,
	combout => \inst_FIFOs|Add1~0_combout\,
	cout => \inst_FIFOs|Add1~1\);

-- Location: LCCOMB_X7_Y5_N26
\inst_FIFOs|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector6~2_combout\ = (\inst_FIFOs|op_fifo\(0) & (((\inst_FIFOs|Add1~0_combout\) # (\inst_FIFOs|op_fifo\(1))))) # (!\inst_FIFOs|op_fifo\(0) & (\inst_FIFOs|Add0~0_combout\ & ((!\inst_FIFOs|op_fifo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|op_fifo\(0),
	datab => \inst_FIFOs|Add0~0_combout\,
	datac => \inst_FIFOs|Add1~0_combout\,
	datad => \inst_FIFOs|op_fifo\(1),
	combout => \inst_FIFOs|Selector6~2_combout\);

-- Location: LCCOMB_X7_Y5_N14
\inst_FIFOs|rd_ptr[3][0]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|rd_ptr[3][0]~21_combout\ = \inst_FIFOs|rd_ptr[3][0]~regout\ $ (\inst_FIFOs|contents[3][0]~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_FIFOs|rd_ptr[3][0]~regout\,
	datad => \inst_FIFOs|contents[3][0]~51_combout\,
	combout => \inst_FIFOs|rd_ptr[3][0]~21_combout\);

-- Location: LCFF_X7_Y5_N15
\inst_FIFOs|rd_ptr[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|rd_ptr[3][0]~21_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|rd_ptr[3][0]~regout\);

-- Location: LCCOMB_X7_Y5_N0
\inst_FIFOs|Add3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Add3~0_combout\ = (\inst_FIFOs|contents[3][0]~regout\ & (\inst_FIFOs|rd_ptr[3][0]~regout\ $ (VCC))) # (!\inst_FIFOs|contents[3][0]~regout\ & (\inst_FIFOs|rd_ptr[3][0]~regout\ & VCC))
-- \inst_FIFOs|Add3~1\ = CARRY((\inst_FIFOs|contents[3][0]~regout\ & \inst_FIFOs|rd_ptr[3][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[3][0]~regout\,
	datab => \inst_FIFOs|rd_ptr[3][0]~regout\,
	datad => VCC,
	combout => \inst_FIFOs|Add3~0_combout\,
	cout => \inst_FIFOs|Add3~1\);

-- Location: LCCOMB_X7_Y5_N28
\inst_FIFOs|Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector6~3_combout\ = (\inst_FIFOs|Selector6~2_combout\ & (((\inst_FIFOs|Add3~0_combout\) # (!\inst_FIFOs|op_fifo\(1))))) # (!\inst_FIFOs|Selector6~2_combout\ & (\inst_FIFOs|Add2~0_combout\ & ((\inst_FIFOs|op_fifo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Add2~0_combout\,
	datab => \inst_FIFOs|Selector6~2_combout\,
	datac => \inst_FIFOs|Add3~0_combout\,
	datad => \inst_FIFOs|op_fifo\(1),
	combout => \inst_FIFOs|Selector6~3_combout\);

-- Location: LCCOMB_X7_Y5_N24
\inst_FIFOs|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector6~1_combout\ = (\inst_FIFOs|Selector6~0_combout\ & ((\inst_FIFOs|rd_ptr[3][0]~regout\) # ((!\inst_FIFOs|op_fifo\(0))))) # (!\inst_FIFOs|Selector6~0_combout\ & (((\inst_FIFOs|rd_ptr[1][0]~regout\ & \inst_FIFOs|op_fifo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Selector6~0_combout\,
	datab => \inst_FIFOs|rd_ptr[3][0]~regout\,
	datac => \inst_FIFOs|rd_ptr[1][0]~regout\,
	datad => \inst_FIFOs|op_fifo\(0),
	combout => \inst_FIFOs|Selector6~1_combout\);

-- Location: LCCOMB_X7_Y5_N30
\inst_FIFOs|Selector6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector6~4_combout\ = (\inst_FIFOs|state.ST_READ~regout\ & ((\inst_FIFOs|Selector6~1_combout\))) # (!\inst_FIFOs|state.ST_READ~regout\ & (\inst_FIFOs|Selector6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|state.ST_READ~regout\,
	datab => \inst_FIFOs|Selector6~3_combout\,
	datac => \inst_FIFOs|Selector6~1_combout\,
	combout => \inst_FIFOs|Selector6~4_combout\);

-- Location: LCCOMB_X6_Y6_N8
\inst_FIFOs|rd_ptr[1][1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|rd_ptr[1][1]~22_combout\ = (\inst_FIFOs|rd_ptr[1][1]~regout\ & (\inst_FIFOs|rd_ptr[1][0]~regout\ $ (VCC))) # (!\inst_FIFOs|rd_ptr[1][1]~regout\ & (\inst_FIFOs|rd_ptr[1][0]~regout\ & VCC))
-- \inst_FIFOs|rd_ptr[1][1]~23\ = CARRY((\inst_FIFOs|rd_ptr[1][1]~regout\ & \inst_FIFOs|rd_ptr[1][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|rd_ptr[1][1]~regout\,
	datab => \inst_FIFOs|rd_ptr[1][0]~regout\,
	datad => VCC,
	combout => \inst_FIFOs|rd_ptr[1][1]~22_combout\,
	cout => \inst_FIFOs|rd_ptr[1][1]~23\);

-- Location: LCCOMB_X8_Y5_N6
\inst_FIFOs|contents[1][4]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[1][4]~38_combout\ = (\inst_FIFOs|state.ST_RD_DONE~regout\ & (!\inst_FIFOs|op_fifo\(1) & (!fifos_rdreq(1) & \inst_FIFOs|op_fifo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datab => \inst_FIFOs|op_fifo\(1),
	datac => fifos_rdreq(1),
	datad => \inst_FIFOs|op_fifo\(0),
	combout => \inst_FIFOs|contents[1][4]~38_combout\);

-- Location: LCFF_X6_Y6_N9
\inst_FIFOs|rd_ptr[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|rd_ptr[1][1]~22_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[1][4]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|rd_ptr[1][1]~regout\);

-- Location: LCCOMB_X7_Y5_N16
\inst_FIFOs|rd_ptr[3][1]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|rd_ptr[3][1]~28_combout\ = (\inst_FIFOs|rd_ptr[3][1]~regout\ & (\inst_FIFOs|rd_ptr[3][0]~regout\ $ (VCC))) # (!\inst_FIFOs|rd_ptr[3][1]~regout\ & (\inst_FIFOs|rd_ptr[3][0]~regout\ & VCC))
-- \inst_FIFOs|rd_ptr[3][1]~29\ = CARRY((\inst_FIFOs|rd_ptr[3][1]~regout\ & \inst_FIFOs|rd_ptr[3][0]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|rd_ptr[3][1]~regout\,
	datab => \inst_FIFOs|rd_ptr[3][0]~regout\,
	datad => VCC,
	combout => \inst_FIFOs|rd_ptr[3][1]~28_combout\,
	cout => \inst_FIFOs|rd_ptr[3][1]~29\);

-- Location: LCFF_X7_Y5_N17
\inst_FIFOs|rd_ptr[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|rd_ptr[3][1]~28_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[3][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|rd_ptr[3][1]~regout\);

-- Location: LCCOMB_X8_Y5_N2
\inst_FIFOs|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector5~1_combout\ = (\inst_FIFOs|Selector5~0_combout\ & (((\inst_FIFOs|rd_ptr[3][1]~regout\) # (!\inst_FIFOs|op_fifo\(0))))) # (!\inst_FIFOs|Selector5~0_combout\ & (\inst_FIFOs|rd_ptr[1][1]~regout\ & (\inst_FIFOs|op_fifo\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Selector5~0_combout\,
	datab => \inst_FIFOs|rd_ptr[1][1]~regout\,
	datac => \inst_FIFOs|op_fifo\(0),
	datad => \inst_FIFOs|rd_ptr[3][1]~regout\,
	combout => \inst_FIFOs|Selector5~1_combout\);

-- Location: LCCOMB_X7_Y6_N4
\inst_FIFOs|rd_ptr[2][1]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|rd_ptr[2][1]~24_combout\ = (\inst_FIFOs|rd_ptr[2][0]~regout\ & (\inst_FIFOs|rd_ptr[2][1]~regout\ $ (VCC))) # (!\inst_FIFOs|rd_ptr[2][0]~regout\ & (\inst_FIFOs|rd_ptr[2][1]~regout\ & VCC))
-- \inst_FIFOs|rd_ptr[2][1]~25\ = CARRY((\inst_FIFOs|rd_ptr[2][0]~regout\ & \inst_FIFOs|rd_ptr[2][1]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|rd_ptr[2][0]~regout\,
	datab => \inst_FIFOs|rd_ptr[2][1]~regout\,
	datad => VCC,
	combout => \inst_FIFOs|rd_ptr[2][1]~24_combout\,
	cout => \inst_FIFOs|rd_ptr[2][1]~25\);

-- Location: LCFF_X7_Y6_N5
\inst_FIFOs|rd_ptr[2][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|rd_ptr[2][1]~24_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[2][5]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|rd_ptr[2][1]~regout\);

-- Location: LCCOMB_X8_Y6_N30
\inst_FIFOs|rd_ptr[2][0]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|rd_ptr[2][0]~19_combout\ = \inst_FIFOs|rd_ptr[2][0]~regout\ $ (((\inst_FIFOs|Selector15~0_combout\ & \inst_FIFOs|state.ST_RD_DONE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|Selector15~0_combout\,
	datac => \inst_FIFOs|rd_ptr[2][0]~regout\,
	datad => \inst_FIFOs|state.ST_RD_DONE~regout\,
	combout => \inst_FIFOs|rd_ptr[2][0]~19_combout\);

-- Location: LCFF_X8_Y6_N31
\inst_FIFOs|rd_ptr[2][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|rd_ptr[2][0]~19_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|rd_ptr[2][0]~regout\);

-- Location: LCCOMB_X7_Y6_N14
\inst_FIFOs|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Add2~2_combout\ = (\inst_FIFOs|contents[2][1]~regout\ & ((\inst_FIFOs|rd_ptr[2][1]~regout\ & (\inst_FIFOs|Add2~1\ & VCC)) # (!\inst_FIFOs|rd_ptr[2][1]~regout\ & (!\inst_FIFOs|Add2~1\)))) # (!\inst_FIFOs|contents[2][1]~regout\ & 
-- ((\inst_FIFOs|rd_ptr[2][1]~regout\ & (!\inst_FIFOs|Add2~1\)) # (!\inst_FIFOs|rd_ptr[2][1]~regout\ & ((\inst_FIFOs|Add2~1\) # (GND)))))
-- \inst_FIFOs|Add2~3\ = CARRY((\inst_FIFOs|contents[2][1]~regout\ & (!\inst_FIFOs|rd_ptr[2][1]~regout\ & !\inst_FIFOs|Add2~1\)) # (!\inst_FIFOs|contents[2][1]~regout\ & ((!\inst_FIFOs|Add2~1\) # (!\inst_FIFOs|rd_ptr[2][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[2][1]~regout\,
	datab => \inst_FIFOs|rd_ptr[2][1]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|Add2~1\,
	combout => \inst_FIFOs|Add2~2_combout\,
	cout => \inst_FIFOs|Add2~3\);

-- Location: LCCOMB_X7_Y7_N4
\inst_FIFOs|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Add1~2_combout\ = (\inst_FIFOs|rd_ptr[1][1]~regout\ & ((\inst_FIFOs|contents[1][1]~regout\ & (\inst_FIFOs|Add1~1\ & VCC)) # (!\inst_FIFOs|contents[1][1]~regout\ & (!\inst_FIFOs|Add1~1\)))) # (!\inst_FIFOs|rd_ptr[1][1]~regout\ & 
-- ((\inst_FIFOs|contents[1][1]~regout\ & (!\inst_FIFOs|Add1~1\)) # (!\inst_FIFOs|contents[1][1]~regout\ & ((\inst_FIFOs|Add1~1\) # (GND)))))
-- \inst_FIFOs|Add1~3\ = CARRY((\inst_FIFOs|rd_ptr[1][1]~regout\ & (!\inst_FIFOs|contents[1][1]~regout\ & !\inst_FIFOs|Add1~1\)) # (!\inst_FIFOs|rd_ptr[1][1]~regout\ & ((!\inst_FIFOs|Add1~1\) # (!\inst_FIFOs|contents[1][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|rd_ptr[1][1]~regout\,
	datab => \inst_FIFOs|contents[1][1]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|Add1~1\,
	combout => \inst_FIFOs|Add1~2_combout\,
	cout => \inst_FIFOs|Add1~3\);

-- Location: LCFF_X8_Y8_N11
\inst_FIFOs|contents[0][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|contents[0][1]~56_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[0][3]~64_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|contents[0][1]~regout\);

-- Location: LCCOMB_X7_Y8_N12
\inst_FIFOs|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Add0~2_combout\ = (\inst_FIFOs|rd_ptr[0][1]~regout\ & ((\inst_FIFOs|contents[0][1]~regout\ & (\inst_FIFOs|Add0~1\ & VCC)) # (!\inst_FIFOs|contents[0][1]~regout\ & (!\inst_FIFOs|Add0~1\)))) # (!\inst_FIFOs|rd_ptr[0][1]~regout\ & 
-- ((\inst_FIFOs|contents[0][1]~regout\ & (!\inst_FIFOs|Add0~1\)) # (!\inst_FIFOs|contents[0][1]~regout\ & ((\inst_FIFOs|Add0~1\) # (GND)))))
-- \inst_FIFOs|Add0~3\ = CARRY((\inst_FIFOs|rd_ptr[0][1]~regout\ & (!\inst_FIFOs|contents[0][1]~regout\ & !\inst_FIFOs|Add0~1\)) # (!\inst_FIFOs|rd_ptr[0][1]~regout\ & ((!\inst_FIFOs|Add0~1\) # (!\inst_FIFOs|contents[0][1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|rd_ptr[0][1]~regout\,
	datab => \inst_FIFOs|contents[0][1]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|Add0~1\,
	combout => \inst_FIFOs|Add0~2_combout\,
	cout => \inst_FIFOs|Add0~3\);

-- Location: LCCOMB_X8_Y5_N4
\inst_FIFOs|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector5~2_combout\ = (\inst_FIFOs|op_fifo\(0) & ((\inst_FIFOs|Add1~2_combout\) # ((\inst_FIFOs|op_fifo\(1))))) # (!\inst_FIFOs|op_fifo\(0) & (((\inst_FIFOs|Add0~2_combout\ & !\inst_FIFOs|op_fifo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|op_fifo\(0),
	datab => \inst_FIFOs|Add1~2_combout\,
	datac => \inst_FIFOs|Add0~2_combout\,
	datad => \inst_FIFOs|op_fifo\(1),
	combout => \inst_FIFOs|Selector5~2_combout\);

-- Location: LCCOMB_X8_Y5_N14
\inst_FIFOs|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector5~3_combout\ = (\inst_FIFOs|Selector5~2_combout\ & ((\inst_FIFOs|Add3~2_combout\) # ((!\inst_FIFOs|op_fifo\(1))))) # (!\inst_FIFOs|Selector5~2_combout\ & (((\inst_FIFOs|Add2~2_combout\ & \inst_FIFOs|op_fifo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Add3~2_combout\,
	datab => \inst_FIFOs|Add2~2_combout\,
	datac => \inst_FIFOs|Selector5~2_combout\,
	datad => \inst_FIFOs|op_fifo\(1),
	combout => \inst_FIFOs|Selector5~3_combout\);

-- Location: LCCOMB_X8_Y5_N8
\inst_FIFOs|Selector5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector5~4_combout\ = (\inst_FIFOs|state.ST_READ~regout\ & (\inst_FIFOs|Selector5~1_combout\)) # (!\inst_FIFOs|state.ST_READ~regout\ & ((\inst_FIFOs|Selector5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|Selector5~1_combout\,
	datac => \inst_FIFOs|Selector5~3_combout\,
	datad => \inst_FIFOs|state.ST_READ~regout\,
	combout => \inst_FIFOs|Selector5~4_combout\);

-- Location: LCCOMB_X7_Y5_N18
\inst_FIFOs|rd_ptr[3][2]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|rd_ptr[3][2]~36_combout\ = (\inst_FIFOs|rd_ptr[3][2]~regout\ & (!\inst_FIFOs|rd_ptr[3][1]~29\)) # (!\inst_FIFOs|rd_ptr[3][2]~regout\ & ((\inst_FIFOs|rd_ptr[3][1]~29\) # (GND)))
-- \inst_FIFOs|rd_ptr[3][2]~37\ = CARRY((!\inst_FIFOs|rd_ptr[3][1]~29\) # (!\inst_FIFOs|rd_ptr[3][2]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|rd_ptr[3][2]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|rd_ptr[3][1]~29\,
	combout => \inst_FIFOs|rd_ptr[3][2]~36_combout\,
	cout => \inst_FIFOs|rd_ptr[3][2]~37\);

-- Location: LCFF_X7_Y5_N19
\inst_FIFOs|rd_ptr[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|rd_ptr[3][2]~36_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[3][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|rd_ptr[3][2]~regout\);

-- Location: LCCOMB_X7_Y6_N6
\inst_FIFOs|rd_ptr[2][2]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|rd_ptr[2][2]~32_combout\ = (\inst_FIFOs|rd_ptr[2][2]~regout\ & (!\inst_FIFOs|rd_ptr[2][1]~25\)) # (!\inst_FIFOs|rd_ptr[2][2]~regout\ & ((\inst_FIFOs|rd_ptr[2][1]~25\) # (GND)))
-- \inst_FIFOs|rd_ptr[2][2]~33\ = CARRY((!\inst_FIFOs|rd_ptr[2][1]~25\) # (!\inst_FIFOs|rd_ptr[2][2]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|rd_ptr[2][2]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|rd_ptr[2][1]~25\,
	combout => \inst_FIFOs|rd_ptr[2][2]~32_combout\,
	cout => \inst_FIFOs|rd_ptr[2][2]~33\);

-- Location: LCFF_X7_Y6_N7
\inst_FIFOs|rd_ptr[2][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|rd_ptr[2][2]~32_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[2][5]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|rd_ptr[2][2]~regout\);

-- Location: LCCOMB_X7_Y6_N2
\inst_FIFOs|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector4~0_combout\ = (\inst_FIFOs|op_fifo\(1) & (((\inst_FIFOs|rd_ptr[2][2]~regout\) # (\inst_FIFOs|op_fifo\(0))))) # (!\inst_FIFOs|op_fifo\(1) & (\inst_FIFOs|rd_ptr[0][2]~regout\ & ((!\inst_FIFOs|op_fifo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|rd_ptr[0][2]~regout\,
	datab => \inst_FIFOs|op_fifo\(1),
	datac => \inst_FIFOs|rd_ptr[2][2]~regout\,
	datad => \inst_FIFOs|op_fifo\(0),
	combout => \inst_FIFOs|Selector4~0_combout\);

-- Location: LCCOMB_X6_Y6_N26
\inst_FIFOs|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector4~1_combout\ = (\inst_FIFOs|Selector4~0_combout\ & (((\inst_FIFOs|rd_ptr[3][2]~regout\) # (!\inst_FIFOs|op_fifo\(0))))) # (!\inst_FIFOs|Selector4~0_combout\ & (\inst_FIFOs|rd_ptr[1][2]~regout\ & ((\inst_FIFOs|op_fifo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|rd_ptr[1][2]~regout\,
	datab => \inst_FIFOs|rd_ptr[3][2]~regout\,
	datac => \inst_FIFOs|Selector4~0_combout\,
	datad => \inst_FIFOs|op_fifo\(0),
	combout => \inst_FIFOs|Selector4~1_combout\);

-- Location: LCCOMB_X7_Y8_N14
\inst_FIFOs|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Add0~4_combout\ = ((\inst_FIFOs|rd_ptr[0][2]~regout\ $ (\inst_FIFOs|contents[0][2]~regout\ $ (!\inst_FIFOs|Add0~3\)))) # (GND)
-- \inst_FIFOs|Add0~5\ = CARRY((\inst_FIFOs|rd_ptr[0][2]~regout\ & ((\inst_FIFOs|contents[0][2]~regout\) # (!\inst_FIFOs|Add0~3\))) # (!\inst_FIFOs|rd_ptr[0][2]~regout\ & (\inst_FIFOs|contents[0][2]~regout\ & !\inst_FIFOs|Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|rd_ptr[0][2]~regout\,
	datab => \inst_FIFOs|contents[0][2]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|Add0~3\,
	combout => \inst_FIFOs|Add0~4_combout\,
	cout => \inst_FIFOs|Add0~5\);

-- Location: LCCOMB_X6_Y6_N10
\inst_FIFOs|rd_ptr[1][2]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|rd_ptr[1][2]~30_combout\ = (\inst_FIFOs|rd_ptr[1][2]~regout\ & (!\inst_FIFOs|rd_ptr[1][1]~23\)) # (!\inst_FIFOs|rd_ptr[1][2]~regout\ & ((\inst_FIFOs|rd_ptr[1][1]~23\) # (GND)))
-- \inst_FIFOs|rd_ptr[1][2]~31\ = CARRY((!\inst_FIFOs|rd_ptr[1][1]~23\) # (!\inst_FIFOs|rd_ptr[1][2]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|rd_ptr[1][2]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|rd_ptr[1][1]~23\,
	combout => \inst_FIFOs|rd_ptr[1][2]~30_combout\,
	cout => \inst_FIFOs|rd_ptr[1][2]~31\);

-- Location: LCFF_X6_Y6_N11
\inst_FIFOs|rd_ptr[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|rd_ptr[1][2]~30_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[1][4]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|rd_ptr[1][2]~regout\);

-- Location: LCCOMB_X7_Y7_N6
\inst_FIFOs|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Add1~4_combout\ = ((\inst_FIFOs|contents[1][2]~regout\ $ (\inst_FIFOs|rd_ptr[1][2]~regout\ $ (!\inst_FIFOs|Add1~3\)))) # (GND)
-- \inst_FIFOs|Add1~5\ = CARRY((\inst_FIFOs|contents[1][2]~regout\ & ((\inst_FIFOs|rd_ptr[1][2]~regout\) # (!\inst_FIFOs|Add1~3\))) # (!\inst_FIFOs|contents[1][2]~regout\ & (\inst_FIFOs|rd_ptr[1][2]~regout\ & !\inst_FIFOs|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[1][2]~regout\,
	datab => \inst_FIFOs|rd_ptr[1][2]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|Add1~3\,
	combout => \inst_FIFOs|Add1~4_combout\,
	cout => \inst_FIFOs|Add1~5\);

-- Location: LCCOMB_X6_Y6_N4
\inst_FIFOs|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector4~2_combout\ = (\inst_FIFOs|op_fifo\(0) & (((\inst_FIFOs|Add1~4_combout\) # (\inst_FIFOs|op_fifo\(1))))) # (!\inst_FIFOs|op_fifo\(0) & (\inst_FIFOs|Add0~4_combout\ & ((!\inst_FIFOs|op_fifo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|op_fifo\(0),
	datab => \inst_FIFOs|Add0~4_combout\,
	datac => \inst_FIFOs|Add1~4_combout\,
	datad => \inst_FIFOs|op_fifo\(1),
	combout => \inst_FIFOs|Selector4~2_combout\);

-- Location: LCCOMB_X6_Y6_N22
\inst_FIFOs|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector4~3_combout\ = (\inst_FIFOs|Selector4~2_combout\ & (((\inst_FIFOs|Add3~4_combout\) # (!\inst_FIFOs|op_fifo\(1))))) # (!\inst_FIFOs|Selector4~2_combout\ & (\inst_FIFOs|Add2~4_combout\ & ((\inst_FIFOs|op_fifo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Add2~4_combout\,
	datab => \inst_FIFOs|Selector4~2_combout\,
	datac => \inst_FIFOs|Add3~4_combout\,
	datad => \inst_FIFOs|op_fifo\(1),
	combout => \inst_FIFOs|Selector4~3_combout\);

-- Location: LCCOMB_X6_Y6_N16
\inst_FIFOs|Selector4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector4~4_combout\ = (\inst_FIFOs|state.ST_READ~regout\ & (\inst_FIFOs|Selector4~1_combout\)) # (!\inst_FIFOs|state.ST_READ~regout\ & ((\inst_FIFOs|Selector4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|Selector4~1_combout\,
	datac => \inst_FIFOs|state.ST_READ~regout\,
	datad => \inst_FIFOs|Selector4~3_combout\,
	combout => \inst_FIFOs|Selector4~4_combout\);

-- Location: LCCOMB_X7_Y8_N22
\inst_FIFOs|rd_ptr[0][2]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|rd_ptr[0][2]~34_combout\ = (\inst_FIFOs|rd_ptr[0][2]~regout\ & (!\inst_FIFOs|rd_ptr[0][1]~27\)) # (!\inst_FIFOs|rd_ptr[0][2]~regout\ & ((\inst_FIFOs|rd_ptr[0][1]~27\) # (GND)))
-- \inst_FIFOs|rd_ptr[0][2]~35\ = CARRY((!\inst_FIFOs|rd_ptr[0][1]~27\) # (!\inst_FIFOs|rd_ptr[0][2]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|rd_ptr[0][2]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|rd_ptr[0][1]~27\,
	combout => \inst_FIFOs|rd_ptr[0][2]~34_combout\,
	cout => \inst_FIFOs|rd_ptr[0][2]~35\);

-- Location: LCCOMB_X7_Y8_N6
\inst_FIFOs|rd_ptr[0][0]~54\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|rd_ptr[0][0]~54_combout\ = (!\inst_FIFOs|op_fifo\(1) & (\inst_FIFOs|state.ST_RD_DONE~regout\ & (!\inst_FIFOs|op_fifo\(0) & !\inst_FIFOs|fsm~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|op_fifo\(1),
	datab => \inst_FIFOs|state.ST_RD_DONE~regout\,
	datac => \inst_FIFOs|op_fifo\(0),
	datad => \inst_FIFOs|fsm~0_combout\,
	combout => \inst_FIFOs|rd_ptr[0][0]~54_combout\);

-- Location: LCFF_X7_Y8_N23
\inst_FIFOs|rd_ptr[0][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|rd_ptr[0][2]~34_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|rd_ptr[0][0]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|rd_ptr[0][2]~regout\);

-- Location: LCCOMB_X7_Y8_N24
\inst_FIFOs|rd_ptr[0][3]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|rd_ptr[0][3]~42_combout\ = (\inst_FIFOs|rd_ptr[0][3]~regout\ & (\inst_FIFOs|rd_ptr[0][2]~35\ $ (GND))) # (!\inst_FIFOs|rd_ptr[0][3]~regout\ & (!\inst_FIFOs|rd_ptr[0][2]~35\ & VCC))
-- \inst_FIFOs|rd_ptr[0][3]~43\ = CARRY((\inst_FIFOs|rd_ptr[0][3]~regout\ & !\inst_FIFOs|rd_ptr[0][2]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|rd_ptr[0][3]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|rd_ptr[0][2]~35\,
	combout => \inst_FIFOs|rd_ptr[0][3]~42_combout\,
	cout => \inst_FIFOs|rd_ptr[0][3]~43\);

-- Location: LCFF_X7_Y8_N25
\inst_FIFOs|rd_ptr[0][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|rd_ptr[0][3]~42_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|rd_ptr[0][0]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|rd_ptr[0][3]~regout\);

-- Location: LCFF_X7_Y6_N9
\inst_FIFOs|rd_ptr[2][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|rd_ptr[2][3]~40_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[2][5]~80_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|rd_ptr[2][3]~regout\);

-- Location: LCCOMB_X6_Y6_N2
\inst_FIFOs|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector3~0_combout\ = (\inst_FIFOs|op_fifo\(0) & (((\inst_FIFOs|op_fifo\(1))))) # (!\inst_FIFOs|op_fifo\(0) & ((\inst_FIFOs|op_fifo\(1) & ((\inst_FIFOs|rd_ptr[2][3]~regout\))) # (!\inst_FIFOs|op_fifo\(1) & 
-- (\inst_FIFOs|rd_ptr[0][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|op_fifo\(0),
	datab => \inst_FIFOs|rd_ptr[0][3]~regout\,
	datac => \inst_FIFOs|rd_ptr[2][3]~regout\,
	datad => \inst_FIFOs|op_fifo\(1),
	combout => \inst_FIFOs|Selector3~0_combout\);

-- Location: LCCOMB_X7_Y5_N20
\inst_FIFOs|rd_ptr[3][3]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|rd_ptr[3][3]~44_combout\ = (\inst_FIFOs|rd_ptr[3][3]~regout\ & (\inst_FIFOs|rd_ptr[3][2]~37\ $ (GND))) # (!\inst_FIFOs|rd_ptr[3][3]~regout\ & (!\inst_FIFOs|rd_ptr[3][2]~37\ & VCC))
-- \inst_FIFOs|rd_ptr[3][3]~45\ = CARRY((\inst_FIFOs|rd_ptr[3][3]~regout\ & !\inst_FIFOs|rd_ptr[3][2]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|rd_ptr[3][3]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|rd_ptr[3][2]~37\,
	combout => \inst_FIFOs|rd_ptr[3][3]~44_combout\,
	cout => \inst_FIFOs|rd_ptr[3][3]~45\);

-- Location: LCFF_X7_Y5_N21
\inst_FIFOs|rd_ptr[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|rd_ptr[3][3]~44_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[3][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|rd_ptr[3][3]~regout\);

-- Location: LCCOMB_X6_Y6_N28
\inst_FIFOs|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector3~1_combout\ = (\inst_FIFOs|Selector3~0_combout\ & (((\inst_FIFOs|rd_ptr[3][3]~regout\) # (!\inst_FIFOs|op_fifo\(0))))) # (!\inst_FIFOs|Selector3~0_combout\ & (\inst_FIFOs|rd_ptr[1][3]~regout\ & ((\inst_FIFOs|op_fifo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|rd_ptr[1][3]~regout\,
	datab => \inst_FIFOs|Selector3~0_combout\,
	datac => \inst_FIFOs|rd_ptr[3][3]~regout\,
	datad => \inst_FIFOs|op_fifo\(0),
	combout => \inst_FIFOs|Selector3~1_combout\);

-- Location: LCCOMB_X7_Y7_N8
\inst_FIFOs|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Add1~6_combout\ = (\inst_FIFOs|rd_ptr[1][3]~regout\ & ((\inst_FIFOs|contents[1][3]~regout\ & (\inst_FIFOs|Add1~5\ & VCC)) # (!\inst_FIFOs|contents[1][3]~regout\ & (!\inst_FIFOs|Add1~5\)))) # (!\inst_FIFOs|rd_ptr[1][3]~regout\ & 
-- ((\inst_FIFOs|contents[1][3]~regout\ & (!\inst_FIFOs|Add1~5\)) # (!\inst_FIFOs|contents[1][3]~regout\ & ((\inst_FIFOs|Add1~5\) # (GND)))))
-- \inst_FIFOs|Add1~7\ = CARRY((\inst_FIFOs|rd_ptr[1][3]~regout\ & (!\inst_FIFOs|contents[1][3]~regout\ & !\inst_FIFOs|Add1~5\)) # (!\inst_FIFOs|rd_ptr[1][3]~regout\ & ((!\inst_FIFOs|Add1~5\) # (!\inst_FIFOs|contents[1][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|rd_ptr[1][3]~regout\,
	datab => \inst_FIFOs|contents[1][3]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|Add1~5\,
	combout => \inst_FIFOs|Add1~6_combout\,
	cout => \inst_FIFOs|Add1~7\);

-- Location: LCCOMB_X6_Y6_N30
\inst_FIFOs|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector3~2_combout\ = (\inst_FIFOs|op_fifo\(0) & (((\inst_FIFOs|Add1~6_combout\) # (\inst_FIFOs|op_fifo\(1))))) # (!\inst_FIFOs|op_fifo\(0) & (\inst_FIFOs|Add0~6_combout\ & ((!\inst_FIFOs|op_fifo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|op_fifo\(0),
	datab => \inst_FIFOs|Add0~6_combout\,
	datac => \inst_FIFOs|Add1~6_combout\,
	datad => \inst_FIFOs|op_fifo\(1),
	combout => \inst_FIFOs|Selector3~2_combout\);

-- Location: LCCOMB_X7_Y6_N18
\inst_FIFOs|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Add2~6_combout\ = (\inst_FIFOs|contents[2][3]~regout\ & ((\inst_FIFOs|rd_ptr[2][3]~regout\ & (\inst_FIFOs|Add2~5\ & VCC)) # (!\inst_FIFOs|rd_ptr[2][3]~regout\ & (!\inst_FIFOs|Add2~5\)))) # (!\inst_FIFOs|contents[2][3]~regout\ & 
-- ((\inst_FIFOs|rd_ptr[2][3]~regout\ & (!\inst_FIFOs|Add2~5\)) # (!\inst_FIFOs|rd_ptr[2][3]~regout\ & ((\inst_FIFOs|Add2~5\) # (GND)))))
-- \inst_FIFOs|Add2~7\ = CARRY((\inst_FIFOs|contents[2][3]~regout\ & (!\inst_FIFOs|rd_ptr[2][3]~regout\ & !\inst_FIFOs|Add2~5\)) # (!\inst_FIFOs|contents[2][3]~regout\ & ((!\inst_FIFOs|Add2~5\) # (!\inst_FIFOs|rd_ptr[2][3]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[2][3]~regout\,
	datab => \inst_FIFOs|rd_ptr[2][3]~regout\,
	datad => VCC,
	cin => \inst_FIFOs|Add2~5\,
	combout => \inst_FIFOs|Add2~6_combout\,
	cout => \inst_FIFOs|Add2~7\);

-- Location: LCCOMB_X6_Y6_N24
\inst_FIFOs|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector3~3_combout\ = (\inst_FIFOs|Selector3~2_combout\ & ((\inst_FIFOs|Add3~6_combout\) # ((!\inst_FIFOs|op_fifo\(1))))) # (!\inst_FIFOs|Selector3~2_combout\ & (((\inst_FIFOs|Add2~6_combout\ & \inst_FIFOs|op_fifo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Add3~6_combout\,
	datab => \inst_FIFOs|Selector3~2_combout\,
	datac => \inst_FIFOs|Add2~6_combout\,
	datad => \inst_FIFOs|op_fifo\(1),
	combout => \inst_FIFOs|Selector3~3_combout\);

-- Location: LCCOMB_X6_Y6_N18
\inst_FIFOs|Selector3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector3~4_combout\ = (\inst_FIFOs|state.ST_READ~regout\ & (\inst_FIFOs|Selector3~1_combout\)) # (!\inst_FIFOs|state.ST_READ~regout\ & ((\inst_FIFOs|Selector3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|state.ST_READ~regout\,
	datab => \inst_FIFOs|Selector3~1_combout\,
	datac => \inst_FIFOs|Selector3~3_combout\,
	combout => \inst_FIFOs|Selector3~4_combout\);

-- Location: LCCOMB_X6_Y6_N14
\inst_FIFOs|rd_ptr[1][4]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|rd_ptr[1][4]~46_combout\ = \inst_FIFOs|rd_ptr[1][4]~regout\ $ (\inst_FIFOs|rd_ptr[1][3]~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|rd_ptr[1][4]~regout\,
	cin => \inst_FIFOs|rd_ptr[1][3]~39\,
	combout => \inst_FIFOs|rd_ptr[1][4]~46_combout\);

-- Location: LCFF_X6_Y6_N15
\inst_FIFOs|rd_ptr[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|rd_ptr[1][4]~46_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[1][4]~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|rd_ptr[1][4]~regout\);

-- Location: LCCOMB_X7_Y7_N10
\inst_FIFOs|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Add1~8_combout\ = \inst_FIFOs|contents[1][4]~regout\ $ (\inst_FIFOs|Add1~7\ $ (!\inst_FIFOs|rd_ptr[1][4]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[1][4]~regout\,
	datad => \inst_FIFOs|rd_ptr[1][4]~regout\,
	cin => \inst_FIFOs|Add1~7\,
	combout => \inst_FIFOs|Add1~8_combout\);

-- Location: LCCOMB_X7_Y6_N26
\inst_FIFOs|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector2~2_combout\ = (\inst_FIFOs|op_fifo\(1) & (((\inst_FIFOs|op_fifo\(0))))) # (!\inst_FIFOs|op_fifo\(1) & ((\inst_FIFOs|op_fifo\(0) & ((\inst_FIFOs|Add1~8_combout\))) # (!\inst_FIFOs|op_fifo\(0) & (\inst_FIFOs|Add0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Add0~8_combout\,
	datab => \inst_FIFOs|op_fifo\(1),
	datac => \inst_FIFOs|Add1~8_combout\,
	datad => \inst_FIFOs|op_fifo\(0),
	combout => \inst_FIFOs|Selector2~2_combout\);

-- Location: LCCOMB_X7_Y6_N20
\inst_FIFOs|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Add2~8_combout\ = \inst_FIFOs|rd_ptr[2][4]~regout\ $ (\inst_FIFOs|Add2~7\ $ (!\inst_FIFOs|contents[2][4]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|rd_ptr[2][4]~regout\,
	datad => \inst_FIFOs|contents[2][4]~regout\,
	cin => \inst_FIFOs|Add2~7\,
	combout => \inst_FIFOs|Add2~8_combout\);

-- Location: LCCOMB_X7_Y6_N28
\inst_FIFOs|Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector2~3_combout\ = (\inst_FIFOs|Selector2~2_combout\ & ((\inst_FIFOs|Add3~8_combout\) # ((!\inst_FIFOs|op_fifo\(1))))) # (!\inst_FIFOs|Selector2~2_combout\ & (((\inst_FIFOs|Add2~8_combout\ & \inst_FIFOs|op_fifo\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Add3~8_combout\,
	datab => \inst_FIFOs|Selector2~2_combout\,
	datac => \inst_FIFOs|Add2~8_combout\,
	datad => \inst_FIFOs|op_fifo\(1),
	combout => \inst_FIFOs|Selector2~3_combout\);

-- Location: LCCOMB_X7_Y8_N26
\inst_FIFOs|rd_ptr[0][4]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|rd_ptr[0][4]~50_combout\ = \inst_FIFOs|rd_ptr[0][3]~43\ $ (\inst_FIFOs|rd_ptr[0][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst_FIFOs|rd_ptr[0][4]~regout\,
	cin => \inst_FIFOs|rd_ptr[0][3]~43\,
	combout => \inst_FIFOs|rd_ptr[0][4]~50_combout\);

-- Location: LCFF_X7_Y8_N27
\inst_FIFOs|rd_ptr[0][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|rd_ptr[0][4]~50_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|rd_ptr[0][0]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|rd_ptr[0][4]~regout\);

-- Location: LCCOMB_X7_Y6_N30
\inst_FIFOs|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector2~0_combout\ = (\inst_FIFOs|op_fifo\(1) & ((\inst_FIFOs|rd_ptr[2][4]~regout\) # ((\inst_FIFOs|op_fifo\(0))))) # (!\inst_FIFOs|op_fifo\(1) & (((\inst_FIFOs|rd_ptr[0][4]~regout\ & !\inst_FIFOs|op_fifo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|rd_ptr[2][4]~regout\,
	datab => \inst_FIFOs|op_fifo\(1),
	datac => \inst_FIFOs|rd_ptr[0][4]~regout\,
	datad => \inst_FIFOs|op_fifo\(0),
	combout => \inst_FIFOs|Selector2~0_combout\);

-- Location: LCCOMB_X7_Y5_N22
\inst_FIFOs|rd_ptr[3][4]~52\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|rd_ptr[3][4]~52_combout\ = \inst_FIFOs|rd_ptr[3][3]~45\ $ (\inst_FIFOs|rd_ptr[3][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst_FIFOs|rd_ptr[3][4]~regout\,
	cin => \inst_FIFOs|rd_ptr[3][3]~45\,
	combout => \inst_FIFOs|rd_ptr[3][4]~52_combout\);

-- Location: LCFF_X7_Y5_N23
\inst_FIFOs|rd_ptr[3][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|rd_ptr[3][4]~52_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[3][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|rd_ptr[3][4]~regout\);

-- Location: LCCOMB_X7_Y6_N24
\inst_FIFOs|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector2~1_combout\ = (\inst_FIFOs|Selector2~0_combout\ & (((\inst_FIFOs|rd_ptr[3][4]~regout\) # (!\inst_FIFOs|op_fifo\(0))))) # (!\inst_FIFOs|Selector2~0_combout\ & (\inst_FIFOs|rd_ptr[1][4]~regout\ & ((\inst_FIFOs|op_fifo\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|rd_ptr[1][4]~regout\,
	datab => \inst_FIFOs|Selector2~0_combout\,
	datac => \inst_FIFOs|rd_ptr[3][4]~regout\,
	datad => \inst_FIFOs|op_fifo\(0),
	combout => \inst_FIFOs|Selector2~1_combout\);

-- Location: LCCOMB_X7_Y6_N22
\inst_FIFOs|Selector2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|Selector2~4_combout\ = (\inst_FIFOs|state.ST_READ~regout\ & ((\inst_FIFOs|Selector2~1_combout\))) # (!\inst_FIFOs|state.ST_READ~regout\ & (\inst_FIFOs|Selector2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|Selector2~3_combout\,
	datac => \inst_FIFOs|Selector2~1_combout\,
	datad => \inst_FIFOs|state.ST_READ~regout\,
	combout => \inst_FIFOs|Selector2~4_combout\);

-- Location: LCCOMB_X7_Y3_N30
\inst_Con_Rx|Data[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Data[1]~feeder_combout\ = \inst_Con_Rx|reg\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_Con_Rx|reg\(1),
	combout => \inst_Con_Rx|Data[1]~feeder_combout\);

-- Location: LCFF_X7_Y3_N31
\inst_Con_Rx|Data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|Data[1]~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Con_Rx|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|Data\(1));

-- Location: LCCOMB_X5_Y3_N0
\inst_Aux_Rx|reg[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|reg[7]~feeder_combout\ = \inst_Aux_Rx|inst_DeNoise|output_int~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_Aux_Rx|inst_DeNoise|output_int~regout\,
	combout => \inst_Aux_Rx|reg[7]~feeder_combout\);

-- Location: LCFF_X5_Y3_N1
\inst_Aux_Rx|reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|reg[7]~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Aux_Rx|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|reg\(7));

-- Location: LCCOMB_X5_Y3_N6
\inst_Aux_Rx|reg[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|reg[6]~feeder_combout\ = \inst_Aux_Rx|reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_Aux_Rx|reg\(7),
	combout => \inst_Aux_Rx|reg[6]~feeder_combout\);

-- Location: LCFF_X5_Y3_N7
\inst_Aux_Rx|reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|reg[6]~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Aux_Rx|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|reg\(6));

-- Location: LCCOMB_X5_Y3_N12
\inst_Aux_Rx|reg[5]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|reg[5]~feeder_combout\ = \inst_Aux_Rx|reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_Aux_Rx|reg\(6),
	combout => \inst_Aux_Rx|reg[5]~feeder_combout\);

-- Location: LCFF_X5_Y3_N13
\inst_Aux_Rx|reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|reg[5]~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Aux_Rx|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|reg\(5));

-- Location: LCCOMB_X5_Y3_N18
\inst_Aux_Rx|reg[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|reg[4]~feeder_combout\ = \inst_Aux_Rx|reg\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_Aux_Rx|reg\(5),
	combout => \inst_Aux_Rx|reg[4]~feeder_combout\);

-- Location: LCFF_X5_Y3_N19
\inst_Aux_Rx|reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|reg[4]~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Aux_Rx|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|reg\(4));

-- Location: LCCOMB_X5_Y3_N16
\inst_Aux_Rx|reg[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|reg[3]~feeder_combout\ = \inst_Aux_Rx|reg\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_Aux_Rx|reg\(4),
	combout => \inst_Aux_Rx|reg[3]~feeder_combout\);

-- Location: LCFF_X5_Y3_N17
\inst_Aux_Rx|reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|reg[3]~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Aux_Rx|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|reg\(3));

-- Location: LCFF_X5_Y3_N31
\inst_Aux_Rx|reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_Aux_Rx|reg\(3),
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \inst_Aux_Rx|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|reg\(2));

-- Location: LCCOMB_X5_Y3_N20
\inst_Aux_Rx|reg[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|reg[1]~feeder_combout\ = \inst_Aux_Rx|reg\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_Aux_Rx|reg\(2),
	combout => \inst_Aux_Rx|reg[1]~feeder_combout\);

-- Location: LCFF_X5_Y3_N21
\inst_Aux_Rx|reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|reg[1]~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Aux_Rx|Selector5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|reg\(1));

-- Location: LCFF_X6_Y3_N29
\inst_Aux_Rx|Data[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_Aux_Rx|reg\(1),
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \inst_Aux_Rx|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|Data\(1));

-- Location: LCCOMB_X6_Y3_N28
\inst_FIFOs|ram_wrdata~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|ram_wrdata~2_combout\ = (\inst_FIFOs|op_fifo\(0) & ((\inst_FIFOs|op_fifo\(1) & ((\inst_Aux_Rx|Data\(1)))) # (!\inst_FIFOs|op_fifo\(1) & (\inst_Con_Rx|Data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|op_fifo\(0),
	datab => \inst_Con_Rx|Data\(1),
	datac => \inst_Aux_Rx|Data\(1),
	datad => \inst_FIFOs|op_fifo\(1),
	combout => \inst_FIFOs|ram_wrdata~2_combout\);

-- Location: LCCOMB_X6_Y3_N0
\inst_FIFOs|ram_wrdata~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|ram_wrdata~3_combout\ = (\inst_FIFOs|ram_wrdata~2_combout\) # ((d_s(1) & !\inst_FIFOs|op_fifo\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|ram_wrdata~2_combout\,
	datac => d_s(1),
	datad => \inst_FIFOs|op_fifo\(0),
	combout => \inst_FIFOs|ram_wrdata~3_combout\);

-- Location: LCFF_X7_Y3_N29
\inst_Con_Rx|Data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_Con_Rx|reg\(2),
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \inst_Con_Rx|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|Data\(2));

-- Location: LCFF_X6_Y3_N15
\inst_Aux_Rx|Data[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_Aux_Rx|reg\(2),
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \inst_Aux_Rx|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|Data\(2));

-- Location: LCCOMB_X6_Y3_N14
\inst_FIFOs|ram_wrdata~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|ram_wrdata~4_combout\ = (\inst_FIFOs|op_fifo\(0) & ((\inst_FIFOs|op_fifo\(1) & ((\inst_Aux_Rx|Data\(2)))) # (!\inst_FIFOs|op_fifo\(1) & (\inst_Con_Rx|Data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|op_fifo\(0),
	datab => \inst_Con_Rx|Data\(2),
	datac => \inst_Aux_Rx|Data\(2),
	datad => \inst_FIFOs|op_fifo\(1),
	combout => \inst_FIFOs|ram_wrdata~4_combout\);

-- Location: LCCOMB_X6_Y3_N18
\inst_FIFOs|ram_wrdata~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|ram_wrdata~5_combout\ = (\inst_FIFOs|ram_wrdata~4_combout\) # ((d_s(2) & !\inst_FIFOs|op_fifo\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|ram_wrdata~4_combout\,
	datac => d_s(2),
	datad => \inst_FIFOs|op_fifo\(0),
	combout => \inst_FIFOs|ram_wrdata~5_combout\);

-- Location: LCFF_X7_Y3_N17
\inst_Con_Rx|Data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_Con_Rx|reg\(3),
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \inst_Con_Rx|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|Data\(3));

-- Location: LCCOMB_X6_Y3_N16
\inst_Aux_Rx|Data[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|Data[3]~feeder_combout\ = \inst_Aux_Rx|reg\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_Aux_Rx|reg\(3),
	combout => \inst_Aux_Rx|Data[3]~feeder_combout\);

-- Location: LCFF_X6_Y3_N17
\inst_Aux_Rx|Data[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|Data[3]~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Aux_Rx|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|Data\(3));

-- Location: LCCOMB_X7_Y3_N16
\inst_FIFOs|ram_wrdata~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|ram_wrdata~6_combout\ = (\inst_FIFOs|op_fifo\(0) & ((\inst_FIFOs|op_fifo\(1) & ((\inst_Aux_Rx|Data\(3)))) # (!\inst_FIFOs|op_fifo\(1) & (\inst_Con_Rx|Data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|op_fifo\(1),
	datab => \inst_FIFOs|op_fifo\(0),
	datac => \inst_Con_Rx|Data\(3),
	datad => \inst_Aux_Rx|Data\(3),
	combout => \inst_FIFOs|ram_wrdata~6_combout\);

-- Location: LCCOMB_X10_Y3_N24
\inst_FIFOs|ram_wrdata~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|ram_wrdata~7_combout\ = (\inst_FIFOs|ram_wrdata~6_combout\) # ((d_s(3) & !\inst_FIFOs|op_fifo\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|ram_wrdata~6_combout\,
	datac => d_s(3),
	datad => \inst_FIFOs|op_fifo\(0),
	combout => \inst_FIFOs|ram_wrdata~7_combout\);

-- Location: LCCOMB_X6_Y3_N20
\inst_FIFOs|ram_wrdata~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|ram_wrdata~9_combout\ = (\inst_FIFOs|ram_wrdata~8_combout\) # ((d_s(4) & !\inst_FIFOs|op_fifo\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|ram_wrdata~8_combout\,
	datac => d_s(4),
	datad => \inst_FIFOs|op_fifo\(0),
	combout => \inst_FIFOs|ram_wrdata~9_combout\);

-- Location: LCCOMB_X6_Y3_N26
\inst_FIFOs|ram_wrdata~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|ram_wrdata~11_combout\ = (\inst_FIFOs|ram_wrdata~10_combout\) # ((d_s(5) & !\inst_FIFOs|op_fifo\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|ram_wrdata~10_combout\,
	datac => d_s(5),
	datad => \inst_FIFOs|op_fifo\(0),
	combout => \inst_FIFOs|ram_wrdata~11_combout\);

-- Location: LCCOMB_X7_Y3_N22
\inst_Con_Rx|Data[6]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Data[6]~feeder_combout\ = \inst_Con_Rx|reg\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_Con_Rx|reg\(6),
	combout => \inst_Con_Rx|Data[6]~feeder_combout\);

-- Location: LCFF_X7_Y3_N23
\inst_Con_Rx|Data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|Data[6]~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Con_Rx|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|Data\(6));

-- Location: LCFF_X6_Y3_N31
\inst_Aux_Rx|Data[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_Aux_Rx|reg\(6),
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \inst_Aux_Rx|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|Data\(6));

-- Location: LCCOMB_X6_Y3_N30
\inst_FIFOs|ram_wrdata~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|ram_wrdata~12_combout\ = (\inst_FIFOs|op_fifo\(0) & ((\inst_FIFOs|op_fifo\(1) & ((\inst_Aux_Rx|Data\(6)))) # (!\inst_FIFOs|op_fifo\(1) & (\inst_Con_Rx|Data\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|op_fifo\(0),
	datab => \inst_Con_Rx|Data\(6),
	datac => \inst_Aux_Rx|Data\(6),
	datad => \inst_FIFOs|op_fifo\(1),
	combout => \inst_FIFOs|ram_wrdata~12_combout\);

-- Location: LCCOMB_X6_Y3_N24
\inst_FIFOs|ram_wrdata~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|ram_wrdata~13_combout\ = (\inst_FIFOs|ram_wrdata~12_combout\) # ((d_s(6) & !\inst_FIFOs|op_fifo\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|ram_wrdata~12_combout\,
	datac => d_s(6),
	datad => \inst_FIFOs|op_fifo\(0),
	combout => \inst_FIFOs|ram_wrdata~13_combout\);

-- Location: LCCOMB_X7_Y3_N18
\inst_Con_Rx|Data[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|Data[7]~feeder_combout\ = \inst_Con_Rx|reg\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_Con_Rx|reg\(7),
	combout => \inst_Con_Rx|Data[7]~feeder_combout\);

-- Location: LCFF_X7_Y3_N19
\inst_Con_Rx|Data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|Data[7]~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Con_Rx|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|Data\(7));

-- Location: LCFF_X6_Y3_N9
\inst_Aux_Rx|Data[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_Aux_Rx|reg\(7),
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \inst_Aux_Rx|Selector10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|Data\(7));

-- Location: LCCOMB_X6_Y3_N8
\inst_FIFOs|ram_wrdata~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|ram_wrdata~14_combout\ = (\inst_FIFOs|op_fifo\(0) & ((\inst_FIFOs|op_fifo\(1) & ((\inst_Aux_Rx|Data\(7)))) # (!\inst_FIFOs|op_fifo\(1) & (\inst_Con_Rx|Data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|op_fifo\(0),
	datab => \inst_Con_Rx|Data\(7),
	datac => \inst_Aux_Rx|Data\(7),
	datad => \inst_FIFOs|op_fifo\(1),
	combout => \inst_FIFOs|ram_wrdata~14_combout\);

-- Location: LCCOMB_X6_Y3_N22
\inst_FIFOs|ram_wrdata~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|ram_wrdata~15_combout\ = (\inst_FIFOs|ram_wrdata~14_combout\) # ((d_s(7) & !\inst_FIFOs|op_fifo\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_FIFOs|ram_wrdata~14_combout\,
	datac => d_s(7),
	datad => \inst_FIFOs|op_fifo\(0),
	combout => \inst_FIFOs|ram_wrdata~15_combout\);

-- Location: M4K_X11_Y6
\inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "FIFOs:inst_FIFOs|FIFO_RAM:FIFO_RAM_inst|altsyncram:altsyncram_component|altsyncram_cra1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 7,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 127,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 7,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \inst_FIFOs|state.ST_WRITE~regout\,
	clk0 => \RClk~clkctrl_outclk\,
	portadatain => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X12_Y6_N20
\inst_FIFOs|DataOut[3][0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|DataOut[3][0]~feeder_combout\ = \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst_FIFOs|DataOut[3][0]~feeder_combout\);

-- Location: LCCOMB_X10_Y6_N28
\inst_FIFOs|DataOut[3][0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|DataOut[3][0]~2_combout\ = (\inst_FIFOs|state.ST_RD1~regout\ & (\inst_FIFOs|op_fifo\(1) & (\inst_FIFOs|op_fifo\(0) & !\inst_Synch_Rst|Output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|state.ST_RD1~regout\,
	datab => \inst_FIFOs|op_fifo\(1),
	datac => \inst_FIFOs|op_fifo\(0),
	datad => \inst_Synch_Rst|Output\(0),
	combout => \inst_FIFOs|DataOut[3][0]~2_combout\);

-- Location: LCFF_X12_Y6_N21
\inst_FIFOs|DataOut[3][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|DataOut[3][0]~feeder_combout\,
	ena => \inst_FIFOs|DataOut[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[3][0]~regout\);

-- Location: LCCOMB_X10_Y6_N14
\inst_FIFOs|DataOut[1][0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|DataOut[1][0]~3_combout\ = (\inst_FIFOs|state.ST_RD1~regout\ & (!\inst_FIFOs|op_fifo\(1) & (\inst_FIFOs|op_fifo\(0) & !\inst_Synch_Rst|Output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|state.ST_RD1~regout\,
	datab => \inst_FIFOs|op_fifo\(1),
	datac => \inst_FIFOs|op_fifo\(0),
	datad => \inst_Synch_Rst|Output\(0),
	combout => \inst_FIFOs|DataOut[1][0]~3_combout\);

-- Location: LCFF_X9_Y6_N7
\inst_FIFOs|DataOut[1][0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \inst_FIFOs|DataOut[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[1][0]~regout\);

-- Location: LCCOMB_X9_Y6_N6
\Selector90~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector90~0_combout\ = (\io_state.ST_IORD_CON~regout\ & ((\inst_FIFOs|DataOut[1][0]~regout\) # ((\inst_FIFOs|DataOut[3][0]~regout\ & \io_state.ST_IORD_AUX~regout\)))) # (!\io_state.ST_IORD_CON~regout\ & (\inst_FIFOs|DataOut[3][0]~regout\ & 
-- ((\io_state.ST_IORD_AUX~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IORD_CON~regout\,
	datab => \inst_FIFOs|DataOut[3][0]~regout\,
	datac => \inst_FIFOs|DataOut[1][0]~regout\,
	datad => \io_state.ST_IORD_AUX~regout\,
	combout => \Selector90~0_combout\);

-- Location: LCCOMB_X10_Y5_N16
\Selector90~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector90~1_combout\ = (\Selector90~0_combout\) # ((\Equal9~0_combout\ & (\Selector88~11_combout\ & \io_state.ST_IORD~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => \Selector88~11_combout\,
	datac => \Selector90~0_combout\,
	datad => \io_state.ST_IORD~regout\,
	combout => \Selector90~1_combout\);

-- Location: LCCOMB_X10_Y7_N20
\Selector91~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector91~3_combout\ = (!\io_state.ST_DONE~regout\ & (!\io_state.ST_IOWR~regout\ & ((\WideNor0~combout\) # (!\io_state.ST_IORD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_DONE~regout\,
	datab => \io_state.ST_IOWR~regout\,
	datac => \io_state.ST_IORD~regout\,
	datad => \WideNor0~combout\,
	combout => \Selector91~3_combout\);

-- Location: LCCOMB_X9_Y8_N6
\WideOr13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideOr13~0_combout\ = (\io_state.ST_IORD~regout\) # ((\Selector91~2_combout\) # ((\io_state.ST_INTACK~regout\) # (!\Selector46~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IORD~regout\,
	datab => \Selector91~2_combout\,
	datac => \io_state.ST_INTACK~regout\,
	datad => \Selector46~0_combout\,
	combout => \WideOr13~0_combout\);

-- Location: LCCOMB_X10_Y4_N14
\Selector86~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector86~1_combout\ = (a_s(2)) # ((a_s(5) & ((a_s(3)) # (a_s(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(5),
	datab => a_s(3),
	datac => a_s(4),
	datad => a_s(2),
	combout => \Selector86~1_combout\);

-- Location: LCCOMB_X13_Y3_N4
\Selector86~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector86~2_combout\ = (a_s(5)) # (a_s(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => a_s(5),
	datad => a_s(4),
	combout => \Selector86~2_combout\);

-- Location: LCCOMB_X12_Y7_N28
\Selector86~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector86~3_combout\ = (a_s(3) & (!a_s(5) & ((!a_s(2)) # (!a_s(4))))) # (!a_s(3) & (!a_s(4) & (a_s(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(3),
	datab => a_s(4),
	datac => a_s(5),
	datad => a_s(2),
	combout => \Selector86~3_combout\);

-- Location: LCCOMB_X13_Y3_N14
\Selector86~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector86~4_combout\ = (a_s(1) & (!\Selector86~1_combout\ & ((!\Selector86~3_combout\) # (!\Selector86~2_combout\)))) # (!a_s(1) & (\Selector86~3_combout\ $ (((!\Selector86~1_combout\ & \Selector86~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(1),
	datab => \Selector86~1_combout\,
	datac => \Selector86~2_combout\,
	datad => \Selector86~3_combout\,
	combout => \Selector86~4_combout\);

-- Location: LCCOMB_X13_Y3_N0
\Selector86~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector86~5_combout\ = (\Selector86~2_combout\ & ((\Selector86~3_combout\ & (a_s(1))) # (!\Selector86~3_combout\ & ((\Selector86~1_combout\))))) # (!\Selector86~2_combout\ & (((\Selector86~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(1),
	datab => \Selector86~1_combout\,
	datac => \Selector86~2_combout\,
	datad => \Selector86~3_combout\,
	combout => \Selector86~5_combout\);

-- Location: LCCOMB_X13_Y5_N4
\Selector86~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector86~0_combout\ = (a_s(5) & ((\inst_CRC16_XModem|Busy~regout\))) # (!a_s(5) & (a_s(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(0),
	datab => \inst_CRC16_XModem|Busy~regout\,
	datac => a_s(5),
	combout => \Selector86~0_combout\);

-- Location: LCCOMB_X9_Y8_N18
\Selector86~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector86~6_combout\ = (\Selector86~4_combout\ & (((!\iorq_s~regout\ & \Selector86~5_combout\)) # (!\Selector86~0_combout\))) # (!\Selector86~4_combout\ & (((!\Selector86~5_combout\)) # (!\iorq_s~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iorq_s~regout\,
	datab => \Selector86~4_combout\,
	datac => \Selector86~5_combout\,
	datad => \Selector86~0_combout\,
	combout => \Selector86~6_combout\);

-- Location: LCCOMB_X9_Y8_N26
\Selector87~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector87~2_combout\ = ((\Equal9~0_combout\ & ((\Selector86~6_combout\))) # (!\Equal9~0_combout\ & (!\iorq_s~regout\))) # (!\io_state.ST_IORD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iorq_s~regout\,
	datab => \Equal9~0_combout\,
	datac => \io_state.ST_IORD~regout\,
	datad => \Selector86~6_combout\,
	combout => \Selector87~2_combout\);

-- Location: LCCOMB_X9_Y8_N20
\Selector87~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector87~0_combout\ = ((!\iorq_s~regout\ & !\WideNor1~combout\)) # (!\io_state.ST_IOWR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iorq_s~regout\,
	datab => \io_state.ST_IOWR~regout\,
	datad => \WideNor1~combout\,
	combout => \Selector87~0_combout\);

-- Location: LCCOMB_X9_Y8_N14
\Selector87~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector87~1_combout\ = (\iorq_s~regout\ & (!\io_state.ST_DONE~regout\ & ((\inst_IntControl|VecValid~regout\) # (!\io_state.ST_INTACK~regout\)))) # (!\iorq_s~regout\ & ((\inst_IntControl|VecValid~regout\) # ((!\io_state.ST_INTACK~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iorq_s~regout\,
	datab => \inst_IntControl|VecValid~regout\,
	datac => \io_state.ST_INTACK~regout\,
	datad => \io_state.ST_DONE~regout\,
	combout => \Selector87~1_combout\);

-- Location: LCCOMB_X9_Y8_N4
\Selector87~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector87~3_combout\ = (\WideOr13~0_combout\ & (\Selector87~2_combout\ & (\Selector87~0_combout\ & \Selector87~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr13~0_combout\,
	datab => \Selector87~2_combout\,
	datac => \Selector87~0_combout\,
	datad => \Selector87~1_combout\,
	combout => \Selector87~3_combout\);

-- Location: LCCOMB_X12_Y6_N22
\inst_FIFOs|DataOut[3][1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|DataOut[3][1]~feeder_combout\ = \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst_FIFOs|DataOut[3][1]~feeder_combout\);

-- Location: LCFF_X12_Y6_N23
\inst_FIFOs|DataOut[3][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|DataOut[3][1]~feeder_combout\,
	ena => \inst_FIFOs|DataOut[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[3][1]~regout\);

-- Location: LCFF_X9_Y6_N9
\inst_FIFOs|DataOut[1][1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \inst_FIFOs|DataOut[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[1][1]~regout\);

-- Location: LCCOMB_X9_Y6_N8
\Selector96~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector96~7_combout\ = (\io_state.ST_IORD_CON~regout\ & ((\inst_FIFOs|DataOut[1][1]~regout\) # ((\inst_FIFOs|DataOut[3][1]~regout\ & \io_state.ST_IORD_AUX~regout\)))) # (!\io_state.ST_IORD_CON~regout\ & (\inst_FIFOs|DataOut[3][1]~regout\ & 
-- ((\io_state.ST_IORD_AUX~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IORD_CON~regout\,
	datab => \inst_FIFOs|DataOut[3][1]~regout\,
	datac => \inst_FIFOs|DataOut[1][1]~regout\,
	datad => \io_state.ST_IORD_AUX~regout\,
	combout => \Selector96~7_combout\);

-- Location: LCFF_X12_Y4_N29
\int_enables[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(1),
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \int_enables[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => int_enables(1));

-- Location: LCCOMB_X12_Y4_N14
\inst_IntControl|pri~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_IntControl|pri~0_combout\ = (int_enables(0) & (\inst_FIFOs|LessThan0~0_combout\ & ((!\inst_FIFOs|Equal2~0_combout\) # (!int_enables(1))))) # (!int_enables(0) & (((!\inst_FIFOs|Equal2~0_combout\) # (!int_enables(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => int_enables(0),
	datab => \inst_FIFOs|LessThan0~0_combout\,
	datac => int_enables(1),
	datad => \inst_FIFOs|Equal2~0_combout\,
	combout => \inst_IntControl|pri~0_combout\);

-- Location: LCCOMB_X8_Y4_N4
\inst_IntControl|qual_req[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_IntControl|qual_req\(3) = (int_enables(3) & ((\inst_FIFOs|contents[3][5]~regout\) # ((\inst_FIFOs|contents[3][3]~regout\) # (!\inst_FIFOs|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => int_enables(3),
	datab => \inst_FIFOs|contents[3][5]~regout\,
	datac => \inst_FIFOs|Equal7~0_combout\,
	datad => \inst_FIFOs|contents[3][3]~regout\,
	combout => \inst_IntControl|qual_req\(3));

-- Location: LCCOMB_X12_Y4_N12
\inst_IntControl|pri_int_num[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_IntControl|pri_int_num[0]~0_combout\ = (int_enables(1) & (\inst_FIFOs|Equal2~0_combout\ & ((\inst_FIFOs|LessThan0~0_combout\) # (!int_enables(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => int_enables(0),
	datab => \inst_FIFOs|LessThan0~0_combout\,
	datac => int_enables(1),
	datad => \inst_FIFOs|Equal2~0_combout\,
	combout => \inst_IntControl|pri_int_num[0]~0_combout\);

-- Location: LCCOMB_X12_Y4_N6
\inst_IntControl|pri_int_num[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_IntControl|pri_int_num[0]~1_combout\ = (\inst_IntControl|pri_int_num[0]~0_combout\) # ((!\inst_IntControl|qual_req[2]~0_combout\ & (\inst_IntControl|pri~0_combout\ & \inst_IntControl|qual_req\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_IntControl|qual_req[2]~0_combout\,
	datab => \inst_IntControl|pri~0_combout\,
	datac => \inst_IntControl|qual_req\(3),
	datad => \inst_IntControl|pri_int_num[0]~0_combout\,
	combout => \inst_IntControl|pri_int_num[0]~1_combout\);

-- Location: LCCOMB_X12_Y8_N8
\inst_IntControl|do_int_num[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_IntControl|do_int_num[2]~0_combout\ = (\int_ack~regout\ & (!\inst_Synch_Rst|Output\(0) & !\inst_IntControl|state~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \int_ack~regout\,
	datac => \inst_Synch_Rst|Output\(0),
	datad => \inst_IntControl|state~regout\,
	combout => \inst_IntControl|do_int_num[2]~0_combout\);

-- Location: LCFF_X12_Y4_N7
\inst_IntControl|do_int_num[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_IntControl|pri_int_num[0]~1_combout\,
	ena => \inst_IntControl|do_int_num[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_IntControl|do_int_num\(0));

-- Location: LCCOMB_X9_Y8_N16
\inst_IntControl|Vector[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_IntControl|Vector[3]~0_combout\ = (!\inst_Synch_Rst|Output\(0) & \inst_IntControl|state~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Synch_Rst|Output\(0),
	datac => \inst_IntControl|state~regout\,
	combout => \inst_IntControl|Vector[3]~0_combout\);

-- Location: LCFF_X9_Y8_N13
\inst_IntControl|Vector[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_IntControl|do_int_num\(0),
	sload => VCC,
	ena => \inst_IntControl|Vector[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_IntControl|Vector\(1));

-- Location: LCCOMB_X14_Y7_N24
\inst_I2C_Master|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector20~0_combout\ = (\inst_I2C_Master|state.ST_DATA1~regout\ & (\inst_I2C_Master|reg\(0))) # (!\inst_I2C_Master|state.ST_DATA1~regout\ & ((d_s(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|state.ST_DATA1~regout\,
	datab => \inst_I2C_Master|reg\(0),
	datac => d_s(1),
	combout => \inst_I2C_Master|Selector20~0_combout\);

-- Location: LCCOMB_X14_Y10_N22
\inst_I2C_Master|bit_count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|bit_count~3_combout\ = (\inst_I2C_Master|Equal0~0_combout\) # ((!\inst_Timing|Strb_I2C~regout\) # (!\inst_I2C_Master|inst_Sync_scl|Output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|Equal0~0_combout\,
	datab => \inst_I2C_Master|inst_Sync_scl|Output\(0),
	datac => \inst_Timing|Strb_I2C~regout\,
	combout => \inst_I2C_Master|bit_count~3_combout\);

-- Location: LCCOMB_X15_Y10_N22
\inst_I2C_Master|Selector25~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector25~0_combout\ = (\inst_I2C_Master|state.ST_DATA3~regout\ & (\inst_I2C_Master|bit_count~3_combout\ $ ((!\inst_I2C_Master|bit_count\(0))))) # (!\inst_I2C_Master|state.ST_DATA3~regout\ & (((\inst_I2C_Master|bit_count\(0) & 
-- !\inst_I2C_Master|state.ST_TX~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|state.ST_DATA3~regout\,
	datab => \inst_I2C_Master|bit_count~3_combout\,
	datac => \inst_I2C_Master|bit_count\(0),
	datad => \inst_I2C_Master|state.ST_TX~regout\,
	combout => \inst_I2C_Master|Selector25~0_combout\);

-- Location: LCFF_X15_Y10_N23
\inst_I2C_Master|bit_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|Selector25~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|bit_count\(0));

-- Location: LCCOMB_X15_Y10_N28
\inst_I2C_Master|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Add0~2_combout\ = \inst_I2C_Master|bit_count\(0) $ (\inst_I2C_Master|bit_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_I2C_Master|bit_count\(0),
	datac => \inst_I2C_Master|bit_count\(1),
	combout => \inst_I2C_Master|Add0~2_combout\);

-- Location: LCCOMB_X15_Y10_N20
\inst_I2C_Master|bit_count[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|bit_count[1]~2_combout\ = (\inst_I2C_Master|bit_count~3_combout\ & (\inst_I2C_Master|bit_count\(1))) # (!\inst_I2C_Master|bit_count~3_combout\ & ((\inst_I2C_Master|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_I2C_Master|bit_count~3_combout\,
	datac => \inst_I2C_Master|bit_count\(1),
	datad => \inst_I2C_Master|Add0~2_combout\,
	combout => \inst_I2C_Master|bit_count[1]~2_combout\);

-- Location: LCCOMB_X15_Y10_N6
\inst_I2C_Master|Selector24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector24~0_combout\ = (\inst_I2C_Master|bit_count\(1) & !\inst_I2C_Master|state.ST_TX~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_I2C_Master|bit_count\(1),
	datad => \inst_I2C_Master|state.ST_TX~regout\,
	combout => \inst_I2C_Master|Selector24~0_combout\);

-- Location: LCFF_X15_Y10_N21
\inst_I2C_Master|bit_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|bit_count[1]~2_combout\,
	sdata => \inst_I2C_Master|Selector24~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => \inst_I2C_Master|ALT_INV_state.ST_DATA3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|bit_count\(1));

-- Location: LCCOMB_X15_Y10_N0
\inst_I2C_Master|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Add0~1_combout\ = \inst_I2C_Master|bit_count\(2) $ (((\inst_I2C_Master|bit_count\(0) & \inst_I2C_Master|bit_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_I2C_Master|bit_count\(0),
	datac => \inst_I2C_Master|bit_count\(1),
	datad => \inst_I2C_Master|bit_count\(2),
	combout => \inst_I2C_Master|Add0~1_combout\);

-- Location: LCCOMB_X15_Y10_N10
\inst_I2C_Master|bit_count[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|bit_count[2]~1_combout\ = (\inst_I2C_Master|bit_count~3_combout\ & (\inst_I2C_Master|bit_count\(2))) # (!\inst_I2C_Master|bit_count~3_combout\ & ((\inst_I2C_Master|Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_I2C_Master|bit_count~3_combout\,
	datac => \inst_I2C_Master|bit_count\(2),
	datad => \inst_I2C_Master|Add0~1_combout\,
	combout => \inst_I2C_Master|bit_count[2]~1_combout\);

-- Location: LCCOMB_X15_Y10_N2
\inst_I2C_Master|Selector23~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector23~0_combout\ = (\inst_I2C_Master|bit_count\(2) & !\inst_I2C_Master|state.ST_TX~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|bit_count\(2),
	datad => \inst_I2C_Master|state.ST_TX~regout\,
	combout => \inst_I2C_Master|Selector23~0_combout\);

-- Location: LCFF_X15_Y10_N11
\inst_I2C_Master|bit_count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|bit_count[2]~1_combout\,
	sdata => \inst_I2C_Master|Selector23~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => \inst_I2C_Master|ALT_INV_state.ST_DATA3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|bit_count\(2));

-- Location: LCCOMB_X15_Y10_N12
\inst_I2C_Master|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Add0~0_combout\ = \inst_I2C_Master|bit_count\(3) $ (((\inst_I2C_Master|bit_count\(1) & (\inst_I2C_Master|bit_count\(0) & \inst_I2C_Master|bit_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|bit_count\(1),
	datab => \inst_I2C_Master|bit_count\(0),
	datac => \inst_I2C_Master|bit_count\(3),
	datad => \inst_I2C_Master|bit_count\(2),
	combout => \inst_I2C_Master|Add0~0_combout\);

-- Location: LCCOMB_X15_Y10_N24
\inst_I2C_Master|bit_count[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|bit_count[3]~0_combout\ = (\inst_I2C_Master|bit_count~3_combout\ & (\inst_I2C_Master|bit_count\(3))) # (!\inst_I2C_Master|bit_count~3_combout\ & ((\inst_I2C_Master|Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_I2C_Master|bit_count~3_combout\,
	datac => \inst_I2C_Master|bit_count\(3),
	datad => \inst_I2C_Master|Add0~0_combout\,
	combout => \inst_I2C_Master|bit_count[3]~0_combout\);

-- Location: LCCOMB_X15_Y10_N14
\inst_I2C_Master|Selector22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector22~0_combout\ = (\inst_I2C_Master|bit_count\(3) & !\inst_I2C_Master|state.ST_TX~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_I2C_Master|bit_count\(3),
	datad => \inst_I2C_Master|state.ST_TX~regout\,
	combout => \inst_I2C_Master|Selector22~0_combout\);

-- Location: LCFF_X15_Y10_N25
\inst_I2C_Master|bit_count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|bit_count[3]~0_combout\,
	sdata => \inst_I2C_Master|Selector22~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => \inst_I2C_Master|ALT_INV_state.ST_DATA3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|bit_count\(3));

-- Location: LCCOMB_X15_Y10_N16
\inst_I2C_Master|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Equal0~0_combout\ = (!\inst_I2C_Master|bit_count\(1) & (!\inst_I2C_Master|bit_count\(0) & (\inst_I2C_Master|bit_count\(3) & !\inst_I2C_Master|bit_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|bit_count\(1),
	datab => \inst_I2C_Master|bit_count\(0),
	datac => \inst_I2C_Master|bit_count\(3),
	datad => \inst_I2C_Master|bit_count\(2),
	combout => \inst_I2C_Master|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y10_N16
\inst_I2C_Master|Selector9~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector9~6_combout\ = (\inst_I2C_Master|state.ST_TX~regout\) # ((\inst_I2C_Master|state.ST_DATA~regout\ & ((\inst_I2C_Master|Selector9~4_combout\) # (\inst_I2C_Master|Selector9~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|Selector9~4_combout\,
	datab => \inst_I2C_Master|Selector9~5_combout\,
	datac => \inst_I2C_Master|state.ST_TX~regout\,
	datad => \inst_I2C_Master|state.ST_DATA~regout\,
	combout => \inst_I2C_Master|Selector9~6_combout\);

-- Location: LCCOMB_X14_Y10_N8
\inst_I2C_Master|Selector9~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector9~7_combout\ = (\inst_I2C_Master|Selector9~0_combout\ & (!\inst_I2C_Master|Equal0~0_combout\)) # (!\inst_I2C_Master|Selector9~0_combout\ & ((\inst_I2C_Master|Selector9~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|Equal0~0_combout\,
	datac => \inst_I2C_Master|Selector9~6_combout\,
	datad => \inst_I2C_Master|Selector9~0_combout\,
	combout => \inst_I2C_Master|Selector9~7_combout\);

-- Location: LCFF_X14_Y10_N9
\inst_I2C_Master|state.ST_DATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|Selector9~7_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|state.ST_DATA~regout\);

-- Location: LCFF_X12_Y10_N23
\inst_I2C_Master|state.ST_DATA1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_I2C_Master|state.ST_DATA~regout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \inst_Timing|Strb_I2C~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|state.ST_DATA1~regout\);

-- Location: LCCOMB_X14_Y7_N30
\inst_I2C_Master|reg[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|reg[3]~0_combout\ = (\inst_I2C_Master|Selector8~0_combout\) # ((!\inst_I2C_Master|Equal0~0_combout\ & (\inst_I2C_Master|state.ST_DATA1~regout\ & \inst_Timing|Strb_I2C~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|Selector8~0_combout\,
	datab => \inst_I2C_Master|Equal0~0_combout\,
	datac => \inst_I2C_Master|state.ST_DATA1~regout\,
	datad => \inst_Timing|Strb_I2C~regout\,
	combout => \inst_I2C_Master|reg[3]~0_combout\);

-- Location: LCFF_X14_Y7_N25
\inst_I2C_Master|reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|Selector20~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_I2C_Master|reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|reg\(1));

-- Location: LCCOMB_X9_Y4_N22
\Selector94~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector94~7_combout\ = (a_s(3) & \inst_I2C_Master|reg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => a_s(3),
	datad => \inst_I2C_Master|reg\(1),
	combout => \Selector94~7_combout\);

-- Location: LCCOMB_X7_Y7_N0
\inst_FIFOs|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|LessThan1~0_combout\ = (\inst_FIFOs|contents[1][4]~regout\) # (\inst_FIFOs|contents[1][5]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_FIFOs|contents[1][4]~regout\,
	datad => \inst_FIFOs|contents[1][5]~regout\,
	combout => \inst_FIFOs|LessThan1~0_combout\);

-- Location: LCCOMB_X9_Y4_N16
\Selector94~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector94~8_combout\ = (!a_s(3) & ((a_s(1) & (\inst_FIFOs|LessThan3~0_combout\)) # (!a_s(1) & ((\inst_FIFOs|LessThan1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|LessThan3~0_combout\,
	datab => a_s(1),
	datac => a_s(3),
	datad => \inst_FIFOs|LessThan1~0_combout\,
	combout => \Selector94~8_combout\);

-- Location: LCCOMB_X9_Y4_N18
\Selector96~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector96~5_combout\ = (\Selector96~4_combout\ & (\Selector96~2_combout\ & ((\Selector94~7_combout\) # (\Selector94~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector96~4_combout\,
	datab => \Selector94~7_combout\,
	datac => \Selector94~8_combout\,
	datad => \Selector96~2_combout\,
	combout => \Selector96~5_combout\);

-- Location: LCCOMB_X12_Y5_N26
\inst_CRC16_XModem|crc_reg~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|crc_reg~3_combout\ = \inst_CRC16_XModem|crc_reg\(4) $ (\inst_CRC16_XModem|data_reg\(7) $ (\inst_CRC16_XModem|crc_reg\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|crc_reg\(4),
	datab => \inst_CRC16_XModem|data_reg\(7),
	datad => \inst_CRC16_XModem|crc_reg\(15),
	combout => \inst_CRC16_XModem|crc_reg~3_combout\);

-- Location: LCFF_X12_Y5_N27
\inst_CRC16_XModem|crc_reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|crc_reg~3_combout\,
	sdata => d_s(5),
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => \inst_CRC16_XModem|ALT_INV_state.ST_DATA~regout\,
	ena => \inst_CRC16_XModem|crc_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|crc_reg\(5));

-- Location: LCCOMB_X12_Y5_N8
\inst_CRC16_XModem|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector9~0_combout\ = (\inst_CRC16_XModem|state.ST_DATA~regout\ & ((\inst_CRC16_XModem|crc_reg\(5)))) # (!\inst_CRC16_XModem|state.ST_DATA~regout\ & (d_s(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|state.ST_DATA~regout\,
	datac => d_s(6),
	datad => \inst_CRC16_XModem|crc_reg\(5),
	combout => \inst_CRC16_XModem|Selector9~0_combout\);

-- Location: LCFF_X12_Y5_N9
\inst_CRC16_XModem|crc_reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|Selector9~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_CRC16_XModem|crc_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|crc_reg\(6));

-- Location: LCCOMB_X12_Y5_N14
\inst_CRC16_XModem|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector8~0_combout\ = (\inst_CRC16_XModem|state.ST_DATA~regout\ & (\inst_CRC16_XModem|crc_reg\(6))) # (!\inst_CRC16_XModem|state.ST_DATA~regout\ & ((d_s(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|state.ST_DATA~regout\,
	datab => \inst_CRC16_XModem|crc_reg\(6),
	datac => d_s(7),
	combout => \inst_CRC16_XModem|Selector8~0_combout\);

-- Location: LCFF_X12_Y5_N15
\inst_CRC16_XModem|crc_reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|Selector8~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_CRC16_XModem|crc_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|crc_reg\(7));

-- Location: LCCOMB_X12_Y5_N6
\inst_CRC16_XModem|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector7~0_combout\ = (\inst_CRC16_XModem|state.ST_DATA~regout\ & (\inst_CRC16_XModem|crc_reg\(7))) # (!\inst_CRC16_XModem|state.ST_DATA~regout\ & ((d_s(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|state.ST_DATA~regout\,
	datac => \inst_CRC16_XModem|crc_reg\(7),
	datad => d_s(0),
	combout => \inst_CRC16_XModem|Selector7~0_combout\);

-- Location: LCFF_X12_Y5_N7
\inst_CRC16_XModem|crc_reg[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|Selector7~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_CRC16_XModem|crc_reg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|crc_reg\(8));

-- Location: LCCOMB_X12_Y5_N18
\inst_CRC16_XModem|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector6~0_combout\ = (\inst_CRC16_XModem|state.ST_DATA~regout\ & ((\inst_CRC16_XModem|crc_reg\(8)))) # (!\inst_CRC16_XModem|state.ST_DATA~regout\ & (d_s(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|state.ST_DATA~regout\,
	datac => d_s(1),
	datad => \inst_CRC16_XModem|crc_reg\(8),
	combout => \inst_CRC16_XModem|Selector6~0_combout\);

-- Location: LCFF_X12_Y5_N19
\inst_CRC16_XModem|crc_reg[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|Selector6~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_CRC16_XModem|crc_reg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|crc_reg\(9));

-- Location: LCCOMB_X13_Y7_N30
\inst_SPI_Master|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|Selector6~0_combout\ = (\inst_SPI_Master|state.ST_DATA~regout\ & (\inst_SPI_Master|reg\(0))) # (!\inst_SPI_Master|state.ST_DATA~regout\ & ((d_s(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SPI_Master|reg\(0),
	datac => \inst_SPI_Master|state.ST_DATA~regout\,
	datad => d_s(1),
	combout => \inst_SPI_Master|Selector6~0_combout\);

-- Location: LCFF_X13_Y7_N31
\inst_SPI_Master|reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|Selector6~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_SPI_Master|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|reg\(1));

-- Location: LCCOMB_X13_Y7_N24
\spi_mc_ss~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \spi_mc_ss~feeder_combout\ = d_s(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d_s(1),
	combout => \spi_mc_ss~feeder_combout\);

-- Location: LCFF_X13_Y7_N25
spi_mc_ss : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \spi_mc_ss~feeder_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \spi_mc_ss~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \spi_mc_ss~regout\);

-- Location: LCCOMB_X13_Y7_N16
\Selector94~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector94~0_combout\ = (a_s(0) & ((\inst_SPI_Master|reg\(1)) # ((a_s(2))))) # (!a_s(0) & (((!a_s(2) & \spi_mc_ss~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(0),
	datab => \inst_SPI_Master|reg\(1),
	datac => a_s(2),
	datad => \spi_mc_ss~regout\,
	combout => \Selector94~0_combout\);

-- Location: LCCOMB_X12_Y4_N0
\Selector94~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector94~1_combout\ = (a_s(2) & ((\Selector94~0_combout\ & ((\inst_CRC16_XModem|crc_reg\(9)))) # (!\Selector94~0_combout\ & (\inst_CRC16_XModem|crc_reg\(1))))) # (!a_s(2) & (((\Selector94~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|crc_reg\(1),
	datab => a_s(2),
	datac => \inst_CRC16_XModem|crc_reg\(9),
	datad => \Selector94~0_combout\,
	combout => \Selector94~1_combout\);

-- Location: LCCOMB_X12_Y4_N22
\Selector96~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector96~9_combout\ = (!a_s(3) & (!a_s(1) & (a_s(5) & \Selector94~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(3),
	datab => a_s(1),
	datac => a_s(5),
	datad => \Selector94~1_combout\,
	combout => \Selector96~9_combout\);

-- Location: LCFF_X12_Y3_N5
\mmap_shadow~28\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(1),
	sload => VCC,
	ena => \mmap_shadow~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~28_regout\);

-- Location: LCFF_X12_Y3_N23
\mmap_shadow~36\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(1),
	sload => VCC,
	ena => \mmap_shadow~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~36_regout\);

-- Location: LCFF_X13_Y3_N29
\mmap_shadow~12\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(1),
	sload => VCC,
	ena => \mmap_shadow~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~12_regout\);

-- Location: LCFF_X13_Y3_N11
\mmap_shadow~20\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(1),
	sload => VCC,
	ena => \mmap_shadow~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~20_regout\);

-- Location: LCCOMB_X13_Y3_N28
\mmap_shadow~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_shadow~57_combout\ = (a_s(1) & (a_s(0))) # (!a_s(1) & ((a_s(0) & ((\mmap_shadow~20_regout\))) # (!a_s(0) & (\mmap_shadow~12_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(1),
	datab => a_s(0),
	datac => \mmap_shadow~12_regout\,
	datad => \mmap_shadow~20_regout\,
	combout => \mmap_shadow~57_combout\);

-- Location: LCCOMB_X12_Y3_N22
\mmap_shadow~58\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_shadow~58_combout\ = (a_s(1) & ((\mmap_shadow~57_combout\ & ((\mmap_shadow~36_regout\))) # (!\mmap_shadow~57_combout\ & (\mmap_shadow~28_regout\)))) # (!a_s(1) & (((\mmap_shadow~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(1),
	datab => \mmap_shadow~28_regout\,
	datac => \mmap_shadow~36_regout\,
	datad => \mmap_shadow~57_combout\,
	combout => \mmap_shadow~58_combout\);

-- Location: LCCOMB_X9_Y5_N22
\mmap_arm~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_arm~0_combout\ = (\mmap_arm~regout\) # ((d_s(3) & \Equal5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => d_s(3),
	datac => \mmap_arm~regout\,
	datad => \Equal5~1_combout\,
	combout => \mmap_arm~0_combout\);

-- Location: LCFF_X9_Y5_N23
mmap_arm : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \mmap_arm~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sclr => \ALT_INV_io_state.ST_IOWR~regout\,
	ena => \Selector91~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_arm~regout\);

-- Location: LCCOMB_X18_Y7_N28
\inst_NMI_Control|Selector4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|Selector4~4_combout\ = (\inst_NMI_Control|mapa_state.MST_END~regout\ & (\inst_NMI_Control|bus_state.BST_IDLE~regout\ & ((\mmap_arm~regout\) # (\inst_NMI_Control|mapa_state.MST_IDLE~regout\)))) # 
-- (!\inst_NMI_Control|mapa_state.MST_END~regout\ & ((\mmap_arm~regout\) # ((\inst_NMI_Control|mapa_state.MST_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|mapa_state.MST_END~regout\,
	datab => \mmap_arm~regout\,
	datac => \inst_NMI_Control|mapa_state.MST_IDLE~regout\,
	datad => \inst_NMI_Control|bus_state.BST_IDLE~regout\,
	combout => \inst_NMI_Control|Selector4~4_combout\);

-- Location: LCFF_X18_Y7_N29
\inst_NMI_Control|mapa_state.MST_IDLE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|Selector4~4_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|mapa_state.MST_IDLE~regout\);

-- Location: LCCOMB_X18_Y7_N6
\inst_NMI_Control|mmap_arm_next~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|mmap_arm_next~2_combout\ = (\inst_NMI_Control|mmap_arm_next~regout\ & ((\inst_NMI_Control|mapa_state.MST_ARM~regout\) # ((\inst_NMI_Control|bus_state.BST_IDLE~regout\) # (!\inst_NMI_Control|mapa_state.MST_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|mapa_state.MST_ARM~regout\,
	datab => \inst_NMI_Control|mapa_state.MST_IDLE~regout\,
	datac => \inst_NMI_Control|mmap_arm_next~regout\,
	datad => \inst_NMI_Control|bus_state.BST_IDLE~regout\,
	combout => \inst_NMI_Control|mmap_arm_next~2_combout\);

-- Location: LCCOMB_X18_Y7_N0
\inst_NMI_Control|mmap_arm_next~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|mmap_arm_next~3_combout\ = (\inst_NMI_Control|mmap_arm_next~2_combout\) # ((\inst_NMI_Control|Selector4~1_combout\ & \inst_NMI_Control|mapa_state.MST_IDLE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|Selector4~1_combout\,
	datab => \inst_NMI_Control|mapa_state.MST_IDLE~regout\,
	datad => \inst_NMI_Control|mmap_arm_next~2_combout\,
	combout => \inst_NMI_Control|mmap_arm_next~3_combout\);

-- Location: LCFF_X18_Y7_N1
\inst_NMI_Control|mmap_arm_next\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|mmap_arm_next~3_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|mmap_arm_next~regout\);

-- Location: LCCOMB_X14_Y8_N12
\ctrl_mmap_en~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctrl_mmap_en~0_combout\ = (\ctrl_mmap_en~regout\) # ((!\iorq_s~regout\ & (!\mreq_s~regout\ & \inst_NMI_Control|mmap_arm_next~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \iorq_s~regout\,
	datab => \ctrl_mmap_en~regout\,
	datac => \mreq_s~regout\,
	datad => \inst_NMI_Control|mmap_arm_next~regout\,
	combout => \ctrl_mmap_en~0_combout\);

-- Location: LCCOMB_X14_Y8_N0
\ctrl_mmap_en~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \ctrl_mmap_en~1_combout\ = (\Equal5~1_combout\ & ((\io_state.ST_IOWR~regout\ & (d_s(1))) # (!\io_state.ST_IOWR~regout\ & ((\ctrl_mmap_en~0_combout\))))) # (!\Equal5~1_combout\ & (((\ctrl_mmap_en~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \io_state.ST_IOWR~regout\,
	datac => d_s(1),
	datad => \ctrl_mmap_en~0_combout\,
	combout => \ctrl_mmap_en~1_combout\);

-- Location: LCFF_X14_Y8_N1
ctrl_mmap_en : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \ctrl_mmap_en~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \ctrl_mmap_en~regout\);

-- Location: LCCOMB_X12_Y4_N26
\Selector94~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector94~3_combout\ = (!a_s(0) & (\ctrl_mmap_en~regout\ & a_s(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => a_s(0),
	datac => \ctrl_mmap_en~regout\,
	datad => a_s(1),
	combout => \Selector94~3_combout\);

-- Location: LCCOMB_X12_Y4_N4
\Selector94~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector94~4_combout\ = (a_s(3) & (((a_s(2))))) # (!a_s(3) & ((a_s(2) & (\mmap_shadow~58_combout\)) # (!a_s(2) & ((\Selector94~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(3),
	datab => \mmap_shadow~58_combout\,
	datac => a_s(2),
	datad => \Selector94~3_combout\,
	combout => \Selector94~4_combout\);

-- Location: LCCOMB_X13_Y5_N16
\Selector94~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector94~5_combout\ = (\inst_NMI_Control|nmi_reasons\(1) & (!a_s(0) & !a_s(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|nmi_reasons\(1),
	datac => a_s(0),
	datad => a_s(1),
	combout => \Selector94~5_combout\);

-- Location: LCCOMB_X12_Y4_N28
\Selector94~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector94~2_combout\ = (!a_s(0) & ((a_s(1) & (\inst_FIFOs|Equal2~0_combout\)) # (!a_s(1) & ((int_enables(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Equal2~0_combout\,
	datab => a_s(0),
	datac => int_enables(1),
	datad => a_s(1),
	combout => \Selector94~2_combout\);

-- Location: LCCOMB_X12_Y4_N30
\Selector94~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector94~6_combout\ = (a_s(3) & ((\Selector94~4_combout\ & (\Selector94~5_combout\)) # (!\Selector94~4_combout\ & ((\Selector94~2_combout\))))) # (!a_s(3) & (\Selector94~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(3),
	datab => \Selector94~4_combout\,
	datac => \Selector94~5_combout\,
	datad => \Selector94~2_combout\,
	combout => \Selector94~6_combout\);

-- Location: LCCOMB_X12_Y4_N8
\Selector96~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector96~3_combout\ = (!a_s(4) & ((\Selector96~9_combout\) # ((!a_s(5) & \Selector94~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(4),
	datab => \Selector96~9_combout\,
	datac => a_s(5),
	datad => \Selector94~6_combout\,
	combout => \Selector96~3_combout\);

-- Location: LCCOMB_X9_Y8_N28
\Selector96~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector96~6_combout\ = (\io_state.ST_IORD~regout\ & (\Equal9~0_combout\ & ((\Selector96~5_combout\) # (\Selector96~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IORD~regout\,
	datab => \Equal9~0_combout\,
	datac => \Selector96~5_combout\,
	datad => \Selector96~3_combout\,
	combout => \Selector96~6_combout\);

-- Location: LCCOMB_X9_Y8_N12
\Selector96~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector96~8_combout\ = (\Selector96~7_combout\) # ((\Selector96~6_combout\) # ((\io_state.ST_INTACK~regout\ & \inst_IntControl|Vector\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector96~7_combout\,
	datab => \io_state.ST_INTACK~regout\,
	datac => \inst_IntControl|Vector\(1),
	datad => \Selector96~6_combout\,
	combout => \Selector96~8_combout\);

-- Location: LCCOMB_X8_Y6_N20
\inst_FIFOs|contents[2][5]~78\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|contents[2][5]~78_combout\ = \inst_FIFOs|contents[2][5]~regout\ $ (\inst_FIFOs|contents[2][4]~76\ $ (\inst_FIFOs|state.ST_RD_DONE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|contents[2][5]~regout\,
	datad => \inst_FIFOs|state.ST_RD_DONE~regout\,
	cin => \inst_FIFOs|contents[2][4]~76\,
	combout => \inst_FIFOs|contents[2][5]~78_combout\);

-- Location: LCFF_X8_Y6_N21
\inst_FIFOs|contents[2][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|contents[2][5]~78_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[2][5]~77_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|contents[2][5]~regout\);

-- Location: LCCOMB_X8_Y6_N8
\inst_FIFOs|LessThan2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|LessThan2~0_combout\ = (\inst_FIFOs|contents[2][5]~regout\) # (\inst_FIFOs|contents[2][4]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_FIFOs|contents[2][5]~regout\,
	datad => \inst_FIFOs|contents[2][4]~regout\,
	combout => \inst_FIFOs|LessThan2~0_combout\);

-- Location: LCCOMB_X12_Y4_N20
\inst_IntControl|pri~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_IntControl|pri~1_combout\ = (\inst_IntControl|pri~0_combout\ & ((\inst_IntControl|qual_req\(3)) # ((int_enables(2) & !\inst_FIFOs|LessThan2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => int_enables(2),
	datab => \inst_IntControl|pri~0_combout\,
	datac => \inst_IntControl|qual_req\(3),
	datad => \inst_FIFOs|LessThan2~0_combout\,
	combout => \inst_IntControl|pri~1_combout\);

-- Location: LCFF_X12_Y4_N21
\inst_IntControl|do_int_num[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_IntControl|pri~1_combout\,
	ena => \inst_IntControl|do_int_num[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_IntControl|do_int_num\(1));

-- Location: LCFF_X12_Y7_N25
\inst_IntControl|Vector[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_IntControl|do_int_num\(1),
	sload => VCC,
	ena => \inst_IntControl|Vector[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_IntControl|Vector\(2));

-- Location: LCCOMB_X12_Y7_N22
\D[2]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[2]~17_combout\ = (!a_s(2) & (a_s(0) & ((a_s(5)) # (a_s(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(5),
	datab => a_s(2),
	datac => a_s(0),
	datad => a_s(4),
	combout => \D[2]~17_combout\);

-- Location: LCCOMB_X12_Y7_N18
\D[2]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[2]~20_combout\ = (a_s(2)) # ((a_s(0) & a_s(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => a_s(2),
	datac => a_s(0),
	datad => a_s(5),
	combout => \D[2]~20_combout\);

-- Location: LCCOMB_X12_Y5_N22
\inst_CRC16_XModem|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector5~0_combout\ = (\inst_CRC16_XModem|state.ST_DATA~regout\ & ((\inst_CRC16_XModem|crc_reg\(9)))) # (!\inst_CRC16_XModem|state.ST_DATA~regout\ & (d_s(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|state.ST_DATA~regout\,
	datac => d_s(2),
	datad => \inst_CRC16_XModem|crc_reg\(9),
	combout => \inst_CRC16_XModem|Selector5~0_combout\);

-- Location: LCFF_X12_Y5_N23
\inst_CRC16_XModem|crc_reg[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|Selector5~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_CRC16_XModem|crc_reg[13]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|crc_reg\(10));

-- Location: LCCOMB_X12_Y5_N16
\inst_CRC16_XModem|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector14~0_combout\ = (\inst_CRC16_XModem|state.ST_DATA~regout\ & (\inst_CRC16_XModem|crc_reg\(0))) # (!\inst_CRC16_XModem|state.ST_DATA~regout\ & ((d_s(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_CRC16_XModem|crc_reg\(0),
	datac => d_s(1),
	datad => \inst_CRC16_XModem|state.ST_DATA~regout\,
	combout => \inst_CRC16_XModem|Selector14~0_combout\);

-- Location: LCFF_X12_Y5_N17
\inst_CRC16_XModem|crc_reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|Selector14~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_CRC16_XModem|crc_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|crc_reg\(1));

-- Location: LCCOMB_X12_Y5_N4
\inst_CRC16_XModem|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector13~0_combout\ = (\inst_CRC16_XModem|state.ST_DATA~regout\ & ((\inst_CRC16_XModem|crc_reg\(1)))) # (!\inst_CRC16_XModem|state.ST_DATA~regout\ & (d_s(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|state.ST_DATA~regout\,
	datac => d_s(2),
	datad => \inst_CRC16_XModem|crc_reg\(1),
	combout => \inst_CRC16_XModem|Selector13~0_combout\);

-- Location: LCFF_X12_Y5_N5
\inst_CRC16_XModem|crc_reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|Selector13~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_CRC16_XModem|crc_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|crc_reg\(2));

-- Location: LCFF_X13_Y3_N7
\mmap_shadow~21\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(2),
	sload => VCC,
	ena => \mmap_shadow~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~21_regout\);

-- Location: LCCOMB_X12_Y3_N18
\mmap_shadow~37feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_shadow~37feeder_combout\ = d_s(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d_s(2),
	combout => \mmap_shadow~37feeder_combout\);

-- Location: LCFF_X12_Y3_N19
\mmap_shadow~37\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \mmap_shadow~37feeder_combout\,
	ena => \mmap_shadow~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~37_regout\);

-- Location: LCCOMB_X13_Y3_N6
\mmap_shadow~60\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_shadow~60_combout\ = (\mmap_shadow~59_combout\ & (((\mmap_shadow~37_regout\)) # (!a_s(0)))) # (!\mmap_shadow~59_combout\ & (a_s(0) & (\mmap_shadow~21_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mmap_shadow~59_combout\,
	datab => a_s(0),
	datac => \mmap_shadow~21_regout\,
	datad => \mmap_shadow~37_regout\,
	combout => \mmap_shadow~60_combout\);

-- Location: LCCOMB_X12_Y7_N14
\Selector102~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector102~3_combout\ = (\D[2]~18_combout\ & (((a_s(5))))) # (!\D[2]~18_combout\ & ((a_s(5) & (\inst_CRC16_XModem|crc_reg\(2))) # (!a_s(5) & ((\mmap_shadow~60_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~18_combout\,
	datab => \inst_CRC16_XModem|crc_reg\(2),
	datac => a_s(5),
	datad => \mmap_shadow~60_combout\,
	combout => \Selector102~3_combout\);

-- Location: LCCOMB_X12_Y7_N8
\Selector102~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector102~4_combout\ = (\D[2]~18_combout\ & ((\Selector102~3_combout\ & (\inst_CRC16_XModem|crc_reg\(10))) # (!\Selector102~3_combout\ & ((\inst_NMI_Control|nmi_reasons\(2)))))) # (!\D[2]~18_combout\ & (((\Selector102~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~18_combout\,
	datab => \inst_CRC16_XModem|crc_reg\(10),
	datac => \Selector102~3_combout\,
	datad => \inst_NMI_Control|nmi_reasons\(2),
	combout => \Selector102~4_combout\);

-- Location: LCCOMB_X13_Y5_N2
\D[2]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[2]~19_combout\ = (a_s(0) & !a_s(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(0),
	datac => a_s(2),
	combout => \D[2]~19_combout\);

-- Location: LCCOMB_X12_Y7_N20
\Selector102~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector102~5_combout\ = (\D[2]~20_combout\ & (((\Selector102~4_combout\) # (\D[2]~19_combout\)))) # (!\D[2]~20_combout\ & (\Selector102~2_combout\ & ((!\D[2]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector102~2_combout\,
	datab => \D[2]~20_combout\,
	datac => \Selector102~4_combout\,
	datad => \D[2]~19_combout\,
	combout => \Selector102~5_combout\);

-- Location: LCCOMB_X13_Y7_N18
\inst_SPI_Master|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|Selector5~0_combout\ = (\inst_SPI_Master|state.ST_DATA~regout\ & ((\inst_SPI_Master|reg\(1)))) # (!\inst_SPI_Master|state.ST_DATA~regout\ & (d_s(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_s(2),
	datab => \inst_SPI_Master|reg\(1),
	datac => \inst_SPI_Master|state.ST_DATA~regout\,
	combout => \inst_SPI_Master|Selector5~0_combout\);

-- Location: LCFF_X13_Y7_N19
\inst_SPI_Master|reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|Selector5~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_SPI_Master|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|reg\(2));

-- Location: LCCOMB_X12_Y7_N30
\Selector102~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector102~6_combout\ = (\D[2]~17_combout\ & ((\Selector102~5_combout\ & ((\inst_SPI_Master|reg\(2)))) # (!\Selector102~5_combout\ & (\inst_I2C_Master|reg\(2))))) # (!\D[2]~17_combout\ & (((\Selector102~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|reg\(2),
	datab => \D[2]~17_combout\,
	datac => \Selector102~5_combout\,
	datad => \inst_SPI_Master|reg\(2),
	combout => \Selector102~6_combout\);

-- Location: LCCOMB_X12_Y7_N24
\Selector102~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector102~7_combout\ = (\D[2]~21_combout\ & (((\Selector102~6_combout\)) # (!\Selector46~0_combout\))) # (!\D[2]~21_combout\ & (\Selector46~0_combout\ & (\inst_IntControl|Vector\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~21_combout\,
	datab => \Selector46~0_combout\,
	datac => \inst_IntControl|Vector\(2),
	datad => \Selector102~6_combout\,
	combout => \Selector102~7_combout\);

-- Location: LCFF_X12_Y7_N27
\inst_FIFOs|DataOut[3][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \inst_FIFOs|DataOut[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[3][2]~regout\);

-- Location: LCCOMB_X9_Y6_N18
\inst_FIFOs|DataOut[1][2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|DataOut[1][2]~feeder_combout\ = \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(2),
	combout => \inst_FIFOs|DataOut[1][2]~feeder_combout\);

-- Location: LCFF_X9_Y6_N19
\inst_FIFOs|DataOut[1][2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|DataOut[1][2]~feeder_combout\,
	ena => \inst_FIFOs|DataOut[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[1][2]~regout\);

-- Location: LCCOMB_X12_Y7_N26
\Selector102~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector102~8_combout\ = (\Selector102~7_combout\ & ((\Selector46~0_combout\) # ((\inst_FIFOs|DataOut[3][2]~regout\)))) # (!\Selector102~7_combout\ & (!\Selector46~0_combout\ & ((\inst_FIFOs|DataOut[1][2]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector102~7_combout\,
	datab => \Selector46~0_combout\,
	datac => \inst_FIFOs|DataOut[3][2]~regout\,
	datad => \inst_FIFOs|DataOut[1][2]~regout\,
	combout => \Selector102~8_combout\);

-- Location: LCCOMB_X10_Y6_N12
\D[2]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[2]~21_combout\ = (\io_state.ST_IORD_AUX~regout\) # ((!\io_state.ST_IORD_CON~regout\ & \io_state.ST_IORD~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io_state.ST_IORD_CON~regout\,
	datac => \io_state.ST_IORD~regout\,
	datad => \io_state.ST_IORD_AUX~regout\,
	combout => \D[2]~21_combout\);

-- Location: LCFF_X8_Y5_N17
\int_enables[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(3),
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \int_enables[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => int_enables(3));

-- Location: LCCOMB_X8_Y5_N16
\Selector108~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector108~0_combout\ = (a_s(1) & ((\inst_FIFOs|Equal6~0_combout\) # ((a_s(4))))) # (!a_s(1) & (((int_enables(3) & !a_s(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(1),
	datab => \inst_FIFOs|Equal6~0_combout\,
	datac => int_enables(3),
	datad => a_s(4),
	combout => \Selector108~0_combout\);

-- Location: LCCOMB_X13_Y4_N6
\inst_Con_Rx|FrameErr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Rx|FrameErr~0_combout\ = (\inst_Con_Rx|state.ST_STOP~regout\ & ((\inst_Con_Rx|bd_halfway~regout\ & (!\inst_Con_Rx|inst_DeNoise|output_int~regout\)) # (!\inst_Con_Rx|bd_halfway~regout\ & ((\inst_Con_Rx|FrameErr~regout\))))) # 
-- (!\inst_Con_Rx|state.ST_STOP~regout\ & (((\inst_Con_Rx|FrameErr~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Rx|state.ST_STOP~regout\,
	datab => \inst_Con_Rx|inst_DeNoise|output_int~regout\,
	datac => \inst_Con_Rx|FrameErr~regout\,
	datad => \inst_Con_Rx|bd_halfway~regout\,
	combout => \inst_Con_Rx|FrameErr~0_combout\);

-- Location: LCFF_X13_Y4_N7
\inst_Con_Rx|FrameErr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Rx|FrameErr~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Rx|FrameErr~regout\);

-- Location: LCCOMB_X8_Y3_N30
\inst_Aux_Rx|FrameErr~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Rx|FrameErr~0_combout\ = (\inst_Aux_Rx|state.ST_STOP~regout\ & ((\inst_Aux_Rx|bd_halfway~regout\ & (!\inst_Aux_Rx|inst_DeNoise|output_int~regout\)) # (!\inst_Aux_Rx|bd_halfway~regout\ & ((\inst_Aux_Rx|FrameErr~regout\))))) # 
-- (!\inst_Aux_Rx|state.ST_STOP~regout\ & (((\inst_Aux_Rx|FrameErr~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Rx|inst_DeNoise|output_int~regout\,
	datab => \inst_Aux_Rx|state.ST_STOP~regout\,
	datac => \inst_Aux_Rx|FrameErr~regout\,
	datad => \inst_Aux_Rx|bd_halfway~regout\,
	combout => \inst_Aux_Rx|FrameErr~0_combout\);

-- Location: LCFF_X8_Y3_N31
\inst_Aux_Rx|FrameErr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Rx|FrameErr~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Rx|FrameErr~regout\);

-- Location: LCCOMB_X12_Y6_N0
\Selector108~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector108~1_combout\ = (a_s(4) & ((\Selector108~0_combout\ & ((\inst_Aux_Rx|FrameErr~regout\))) # (!\Selector108~0_combout\ & (\inst_Con_Rx|FrameErr~regout\)))) # (!a_s(4) & (\Selector108~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(4),
	datab => \Selector108~0_combout\,
	datac => \inst_Con_Rx|FrameErr~regout\,
	datad => \inst_Aux_Rx|FrameErr~regout\,
	combout => \Selector108~1_combout\);

-- Location: LCCOMB_X12_Y6_N26
\Selector108~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector108~2_combout\ = (!a_s(5) & (\Selector108~1_combout\ & (a_s(4) $ (a_s(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(4),
	datab => a_s(5),
	datac => a_s(3),
	datad => \Selector108~1_combout\,
	combout => \Selector108~2_combout\);

-- Location: LCCOMB_X12_Y7_N12
\D[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[2]~18_combout\ = (a_s(5) & ((a_s(0)))) # (!a_s(5) & (a_s(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(3),
	datab => a_s(0),
	datac => a_s(5),
	combout => \D[2]~18_combout\);

-- Location: LCFF_X12_Y3_N15
\mmap_shadow~38\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(3),
	sload => VCC,
	ena => \mmap_shadow~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~38_regout\);

-- Location: LCFF_X13_Y3_N13
\mmap_shadow~14\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(3),
	sload => VCC,
	ena => \mmap_shadow~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~14_regout\);

-- Location: LCFF_X12_Y3_N13
\mmap_shadow~30\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(3),
	sload => VCC,
	ena => \mmap_shadow~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~30_regout\);

-- Location: LCCOMB_X13_Y3_N12
\mmap_shadow~61\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_shadow~61_combout\ = (a_s(1) & ((a_s(0)) # ((\mmap_shadow~30_regout\)))) # (!a_s(1) & (!a_s(0) & (\mmap_shadow~14_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(1),
	datab => a_s(0),
	datac => \mmap_shadow~14_regout\,
	datad => \mmap_shadow~30_regout\,
	combout => \mmap_shadow~61_combout\);

-- Location: LCCOMB_X12_Y3_N14
\mmap_shadow~62\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_shadow~62_combout\ = (a_s(0) & ((\mmap_shadow~61_combout\ & ((\mmap_shadow~38_regout\))) # (!\mmap_shadow~61_combout\ & (\mmap_shadow~22_regout\)))) # (!a_s(0) & (((\mmap_shadow~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mmap_shadow~22_regout\,
	datab => a_s(0),
	datac => \mmap_shadow~38_regout\,
	datad => \mmap_shadow~61_combout\,
	combout => \mmap_shadow~62_combout\);

-- Location: LCCOMB_X12_Y6_N4
\Selector108~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector108~3_combout\ = (a_s(5) & ((\inst_CRC16_XModem|crc_reg\(3)) # ((\D[2]~18_combout\)))) # (!a_s(5) & (((\mmap_shadow~62_combout\ & !\D[2]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|crc_reg\(3),
	datab => \mmap_shadow~62_combout\,
	datac => a_s(5),
	datad => \D[2]~18_combout\,
	combout => \Selector108~3_combout\);

-- Location: LCCOMB_X12_Y6_N14
\Selector108~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector108~4_combout\ = (\D[2]~18_combout\ & ((\Selector108~3_combout\ & (\inst_CRC16_XModem|crc_reg\(11))) # (!\Selector108~3_combout\ & ((\inst_NMI_Control|nmi_reasons\(3)))))) # (!\D[2]~18_combout\ & (((\Selector108~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|crc_reg\(11),
	datab => \D[2]~18_combout\,
	datac => \Selector108~3_combout\,
	datad => \inst_NMI_Control|nmi_reasons\(3),
	combout => \Selector108~4_combout\);

-- Location: LCCOMB_X12_Y6_N16
\Selector108~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector108~5_combout\ = (\D[2]~20_combout\ & (((\Selector108~4_combout\ & !\D[2]~19_combout\)))) # (!\D[2]~20_combout\ & ((\Selector108~2_combout\) # ((\D[2]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~20_combout\,
	datab => \Selector108~2_combout\,
	datac => \Selector108~4_combout\,
	datad => \D[2]~19_combout\,
	combout => \Selector108~5_combout\);

-- Location: LCCOMB_X14_Y7_N10
\inst_I2C_Master|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector19~0_combout\ = (\inst_I2C_Master|state.ST_DATA1~regout\ & (\inst_I2C_Master|reg\(1))) # (!\inst_I2C_Master|state.ST_DATA1~regout\ & ((d_s(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|reg\(1),
	datac => \inst_I2C_Master|state.ST_DATA1~regout\,
	datad => d_s(2),
	combout => \inst_I2C_Master|Selector19~0_combout\);

-- Location: LCFF_X14_Y7_N11
\inst_I2C_Master|reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|Selector19~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_I2C_Master|reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|reg\(2));

-- Location: LCCOMB_X14_Y7_N12
\inst_I2C_Master|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector18~0_combout\ = (\inst_I2C_Master|state.ST_DATA1~regout\ & ((\inst_I2C_Master|reg\(2)))) # (!\inst_I2C_Master|state.ST_DATA1~regout\ & (d_s(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => d_s(3),
	datac => \inst_I2C_Master|state.ST_DATA1~regout\,
	datad => \inst_I2C_Master|reg\(2),
	combout => \inst_I2C_Master|Selector18~0_combout\);

-- Location: LCFF_X14_Y7_N13
\inst_I2C_Master|reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|Selector18~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_I2C_Master|reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|reg\(3));

-- Location: LCCOMB_X12_Y6_N18
\Selector108~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector108~6_combout\ = (\D[2]~17_combout\ & ((\Selector108~5_combout\ & ((\inst_I2C_Master|reg\(3)))) # (!\Selector108~5_combout\ & (\inst_SPI_Master|reg\(3))))) # (!\D[2]~17_combout\ & (((\Selector108~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SPI_Master|reg\(3),
	datab => \D[2]~17_combout\,
	datac => \Selector108~5_combout\,
	datad => \inst_I2C_Master|reg\(3),
	combout => \Selector108~6_combout\);

-- Location: LCFF_X12_Y6_N29
\inst_FIFOs|DataOut[3][3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \inst_FIFOs|DataOut[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[3][3]~regout\);

-- Location: LCCOMB_X12_Y4_N2
\inst_IntControl|Int~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_IntControl|Int~0_combout\ = (\inst_IntControl|pri~0_combout\ & (!\inst_IntControl|qual_req\(3) & ((\inst_FIFOs|LessThan2~0_combout\) # (!int_enables(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => int_enables(2),
	datab => \inst_IntControl|pri~0_combout\,
	datac => \inst_IntControl|qual_req\(3),
	datad => \inst_FIFOs|LessThan2~0_combout\,
	combout => \inst_IntControl|Int~0_combout\);

-- Location: LCFF_X12_Y4_N3
\inst_IntControl|do_int_num[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_IntControl|Int~0_combout\,
	ena => \inst_IntControl|do_int_num[2]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_IntControl|do_int_num\(2));

-- Location: LCFF_X12_Y7_N5
\inst_IntControl|Vector[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_IntControl|do_int_num\(2),
	sload => VCC,
	ena => \inst_IntControl|Vector[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_IntControl|Vector\(3));

-- Location: LCCOMB_X12_Y7_N4
\Selector108~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector108~7_combout\ = (\Selector46~0_combout\ & (((\inst_IntControl|Vector\(3) & !\D[2]~21_combout\)))) # (!\Selector46~0_combout\ & ((\inst_FIFOs|DataOut[1][3]~regout\) # ((\D[2]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|DataOut[1][3]~regout\,
	datab => \Selector46~0_combout\,
	datac => \inst_IntControl|Vector\(3),
	datad => \D[2]~21_combout\,
	combout => \Selector108~7_combout\);

-- Location: LCCOMB_X12_Y6_N28
\Selector108~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector108~8_combout\ = (\D[2]~21_combout\ & ((\Selector108~7_combout\ & ((\inst_FIFOs|DataOut[3][3]~regout\))) # (!\Selector108~7_combout\ & (\Selector108~6_combout\)))) # (!\D[2]~21_combout\ & (((\Selector108~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~21_combout\,
	datab => \Selector108~6_combout\,
	datac => \inst_FIFOs|DataOut[3][3]~regout\,
	datad => \Selector108~7_combout\,
	combout => \Selector108~8_combout\);

-- Location: LCFF_X12_Y6_N31
\inst_FIFOs|DataOut[3][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \inst_FIFOs|DataOut[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[3][4]~regout\);

-- Location: LCFF_X9_Y6_N31
\inst_FIFOs|DataOut[1][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \inst_FIFOs|DataOut[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[1][4]~regout\);

-- Location: LCCOMB_X9_Y6_N30
\Selector114~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector114~0_combout\ = (\io_state.ST_IORD_CON~regout\ & ((\inst_FIFOs|DataOut[1][4]~regout\) # ((\inst_FIFOs|DataOut[3][4]~regout\ & \io_state.ST_IORD_AUX~regout\)))) # (!\io_state.ST_IORD_CON~regout\ & (\inst_FIFOs|DataOut[3][4]~regout\ & 
-- ((\io_state.ST_IORD_AUX~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IORD_CON~regout\,
	datab => \inst_FIFOs|DataOut[3][4]~regout\,
	datac => \inst_FIFOs|DataOut[1][4]~regout\,
	datad => \io_state.ST_IORD_AUX~regout\,
	combout => \Selector114~0_combout\);

-- Location: LCCOMB_X9_Y4_N28
\Selector112~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector112~4_combout\ = (!a_s(3) & ((a_s(1) & (\inst_FIFOs|Equal4~1_combout\)) # (!a_s(1) & ((\inst_FIFOs|Equal0~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_FIFOs|Equal4~1_combout\,
	datab => \inst_FIFOs|Equal0~1_combout\,
	datac => a_s(3),
	datad => a_s(1),
	combout => \Selector112~4_combout\);

-- Location: LCCOMB_X14_Y7_N6
\inst_I2C_Master|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector17~0_combout\ = (\inst_I2C_Master|state.ST_DATA1~regout\ & ((\inst_I2C_Master|reg\(3)))) # (!\inst_I2C_Master|state.ST_DATA1~regout\ & (d_s(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|state.ST_DATA1~regout\,
	datac => d_s(4),
	datad => \inst_I2C_Master|reg\(3),
	combout => \inst_I2C_Master|Selector17~0_combout\);

-- Location: LCFF_X14_Y7_N7
\inst_I2C_Master|reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|Selector17~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_I2C_Master|reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|reg\(4));

-- Location: LCCOMB_X9_Y4_N30
\Selector112~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector112~5_combout\ = (\Selector96~4_combout\ & ((\Selector112~4_combout\) # ((a_s(3) & \inst_I2C_Master|reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector96~4_combout\,
	datab => \Selector112~4_combout\,
	datac => a_s(3),
	datad => \inst_I2C_Master|reg\(4),
	combout => \Selector112~5_combout\);

-- Location: LCCOMB_X25_Y6_N20
\inst_NMI_Control|mmap_on_nmi~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|mmap_on_nmi~1_combout\ = (\inst_NMI_Control|busi~0_combout\ & ((\inst_NMI_Control|mmap_on_nmi~0_combout\ & (\ctrl_mmap_en~regout\)) # (!\inst_NMI_Control|mmap_on_nmi~0_combout\ & ((\inst_NMI_Control|mmap_on_nmi~regout\))))) # 
-- (!\inst_NMI_Control|busi~0_combout\ & (((\inst_NMI_Control|mmap_on_nmi~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_mmap_en~regout\,
	datab => \inst_NMI_Control|busi~0_combout\,
	datac => \inst_NMI_Control|mmap_on_nmi~regout\,
	datad => \inst_NMI_Control|mmap_on_nmi~0_combout\,
	combout => \inst_NMI_Control|mmap_on_nmi~1_combout\);

-- Location: LCFF_X25_Y6_N21
\inst_NMI_Control|mmap_on_nmi\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|mmap_on_nmi~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|mmap_on_nmi~regout\);

-- Location: LCCOMB_X9_Y4_N24
\Selector112~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector112~7_combout\ = (\Selector112~6_combout\) # ((a_s(1) & (!a_s(3) & \inst_NMI_Control|mmap_on_nmi~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector112~6_combout\,
	datab => a_s(1),
	datac => a_s(3),
	datad => \inst_NMI_Control|mmap_on_nmi~regout\,
	combout => \Selector112~7_combout\);

-- Location: LCCOMB_X9_Y4_N26
\Selector112~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector112~8_combout\ = (\Selector112~5_combout\) # ((!a_s(4) & (\Selector112~7_combout\ & !a_s(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(4),
	datab => \Selector112~5_combout\,
	datac => \Selector112~7_combout\,
	datad => a_s(0),
	combout => \Selector112~8_combout\);

-- Location: LCFF_X13_Y3_N9
\mmap_shadow~15\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(4),
	sload => VCC,
	ena => \mmap_shadow~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~15_regout\);

-- Location: LCFF_X13_Y3_N31
\mmap_shadow~23\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(4),
	sload => VCC,
	ena => \mmap_shadow~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~23_regout\);

-- Location: LCCOMB_X13_Y3_N8
\mmap_shadow~63\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_shadow~63_combout\ = (a_s(1) & (a_s(0))) # (!a_s(1) & ((a_s(0) & ((\mmap_shadow~23_regout\))) # (!a_s(0) & (\mmap_shadow~15_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(1),
	datab => a_s(0),
	datac => \mmap_shadow~15_regout\,
	datad => \mmap_shadow~23_regout\,
	combout => \mmap_shadow~63_combout\);

-- Location: LCFF_X12_Y3_N25
\mmap_shadow~31\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(4),
	sload => VCC,
	ena => \mmap_shadow~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~31_regout\);

-- Location: LCFF_X12_Y3_N11
\mmap_shadow~39\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(4),
	sload => VCC,
	ena => \mmap_shadow~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~39_regout\);

-- Location: LCCOMB_X12_Y3_N24
\mmap_shadow~64\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_shadow~64_combout\ = (a_s(1) & ((\mmap_shadow~63_combout\ & ((\mmap_shadow~39_regout\))) # (!\mmap_shadow~63_combout\ & (\mmap_shadow~31_regout\)))) # (!a_s(1) & (\mmap_shadow~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(1),
	datab => \mmap_shadow~63_combout\,
	datac => \mmap_shadow~31_regout\,
	datad => \mmap_shadow~39_regout\,
	combout => \mmap_shadow~64_combout\);

-- Location: LCCOMB_X13_Y5_N14
\Selector112~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector112~0_combout\ = (a_s(5) & !a_s(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => a_s(5),
	datad => a_s(1),
	combout => \Selector112~0_combout\);

-- Location: LCCOMB_X13_Y7_N28
\inst_SPI_Master|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|Selector4~0_combout\ = (\inst_SPI_Master|state.ST_DATA~regout\ & ((\inst_SPI_Master|reg\(2)))) # (!\inst_SPI_Master|state.ST_DATA~regout\ & (d_s(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_s(3),
	datab => \inst_SPI_Master|reg\(2),
	datac => \inst_SPI_Master|state.ST_DATA~regout\,
	combout => \inst_SPI_Master|Selector4~0_combout\);

-- Location: LCFF_X13_Y7_N29
\inst_SPI_Master|reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|Selector4~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_SPI_Master|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|reg\(3));

-- Location: LCCOMB_X13_Y7_N22
\inst_SPI_Master|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|Selector3~0_combout\ = (\inst_SPI_Master|state.ST_DATA~regout\ & (\inst_SPI_Master|reg\(3))) # (!\inst_SPI_Master|state.ST_DATA~regout\ & ((d_s(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_SPI_Master|reg\(3),
	datac => \inst_SPI_Master|state.ST_DATA~regout\,
	datad => d_s(4),
	combout => \inst_SPI_Master|Selector3~0_combout\);

-- Location: LCFF_X13_Y7_N23
\inst_SPI_Master|reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|Selector3~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_SPI_Master|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|reg\(4));

-- Location: LCCOMB_X12_Y5_N24
\inst_CRC16_XModem|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector12~0_combout\ = (\inst_CRC16_XModem|state.ST_DATA~regout\ & (\inst_CRC16_XModem|crc_reg\(2))) # (!\inst_CRC16_XModem|state.ST_DATA~regout\ & ((d_s(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|state.ST_DATA~regout\,
	datac => \inst_CRC16_XModem|crc_reg\(2),
	datad => d_s(3),
	combout => \inst_CRC16_XModem|Selector12~0_combout\);

-- Location: LCFF_X12_Y5_N25
\inst_CRC16_XModem|crc_reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|Selector12~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_CRC16_XModem|crc_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|crc_reg\(3));

-- Location: LCCOMB_X12_Y5_N12
\inst_CRC16_XModem|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_CRC16_XModem|Selector11~0_combout\ = (\inst_CRC16_XModem|state.ST_DATA~regout\ & (\inst_CRC16_XModem|crc_reg\(3))) # (!\inst_CRC16_XModem|state.ST_DATA~regout\ & ((d_s(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|state.ST_DATA~regout\,
	datac => \inst_CRC16_XModem|crc_reg\(3),
	datad => d_s(4),
	combout => \inst_CRC16_XModem|Selector11~0_combout\);

-- Location: LCFF_X12_Y5_N13
\inst_CRC16_XModem|crc_reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_CRC16_XModem|Selector11~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_CRC16_XModem|crc_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_CRC16_XModem|crc_reg\(4));

-- Location: LCCOMB_X13_Y5_N28
\Selector112~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector112~1_combout\ = (a_s(2) & ((a_s(0) & (\inst_CRC16_XModem|crc_reg\(12))) # (!a_s(0) & ((\inst_CRC16_XModem|crc_reg\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|crc_reg\(12),
	datab => a_s(2),
	datac => a_s(0),
	datad => \inst_CRC16_XModem|crc_reg\(4),
	combout => \Selector112~1_combout\);

-- Location: LCCOMB_X13_Y5_N30
\Selector112~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector112~2_combout\ = (\Selector112~0_combout\ & ((\Selector112~1_combout\) # ((\D[2]~19_combout\ & \inst_SPI_Master|reg\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[2]~19_combout\,
	datab => \Selector112~0_combout\,
	datac => \inst_SPI_Master|reg\(4),
	datad => \Selector112~1_combout\,
	combout => \Selector112~2_combout\);

-- Location: LCCOMB_X13_Y5_N8
\Selector112~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector112~3_combout\ = (\Selector112~2_combout\) # ((a_s(2) & (!a_s(5) & \mmap_shadow~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(2),
	datab => a_s(5),
	datac => \mmap_shadow~64_combout\,
	datad => \Selector112~2_combout\,
	combout => \Selector112~3_combout\);

-- Location: LCCOMB_X9_Y4_N20
\Selector112~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector112~9_combout\ = (\Equal3~6_combout\ & ((\Selector112~3_combout\) # ((\Selector112~8_combout\ & \Selector96~2_combout\)))) # (!\Equal3~6_combout\ & (\Selector112~8_combout\ & ((\Selector96~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~6_combout\,
	datab => \Selector112~8_combout\,
	datac => \Selector112~3_combout\,
	datad => \Selector96~2_combout\,
	combout => \Selector112~9_combout\);

-- Location: LCCOMB_X9_Y4_N6
\Selector114~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector114~1_combout\ = (\Selector114~0_combout\) # ((\Equal9~0_combout\ & (\io_state.ST_IORD~regout\ & \Selector112~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal9~0_combout\,
	datab => \Selector114~0_combout\,
	datac => \io_state.ST_IORD~regout\,
	datad => \Selector112~9_combout\,
	combout => \Selector114~1_combout\);

-- Location: LCFF_X10_Y6_N23
\inst_FIFOs|DataOut[3][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \inst_FIFOs|DataOut[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[3][5]~regout\);

-- Location: LCFF_X13_Y6_N25
\inst_FIFOs|DataOut[1][5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \inst_FIFOs|DataOut[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[1][5]~regout\);

-- Location: LCCOMB_X13_Y6_N14
\D[5]~25\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[5]~25_combout\ = (a_s(3) & ((a_s(0)))) # (!a_s(3) & (!a_s(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(4),
	datab => a_s(0),
	datad => a_s(3),
	combout => \D[5]~25_combout\);

-- Location: LCCOMB_X13_Y6_N16
\D[5]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[5]~26_combout\ = (a_s(3)) # ((a_s(4) & a_s(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(4),
	datac => a_s(1),
	datad => a_s(3),
	combout => \D[5]~26_combout\);

-- Location: LCCOMB_X13_Y6_N26
\D[5]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[5]~22_combout\ = (a_s(2) & a_s(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => a_s(2),
	datad => a_s(5),
	combout => \D[5]~22_combout\);

-- Location: LCCOMB_X13_Y6_N8
\D[5]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[5]~24_combout\ = (a_s(2) & ((a_s(0)) # (!a_s(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => a_s(0),
	datac => a_s(2),
	datad => a_s(5),
	combout => \D[5]~24_combout\);

-- Location: LCFF_X13_Y6_N5
\mmap_shadow~24\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(5),
	sload => VCC,
	ena => \mmap_shadow~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~24_regout\);

-- Location: LCFF_X12_Y3_N29
\mmap_shadow~32\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(5),
	sload => VCC,
	ena => \mmap_shadow~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~32_regout\);

-- Location: LCCOMB_X13_Y3_N18
\mmap_shadow~16feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_shadow~16feeder_combout\ = d_s(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d_s(5),
	combout => \mmap_shadow~16feeder_combout\);

-- Location: LCFF_X13_Y3_N19
\mmap_shadow~16\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \mmap_shadow~16feeder_combout\,
	ena => \mmap_shadow~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~16_regout\);

-- Location: LCCOMB_X12_Y3_N28
\mmap_shadow~65\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_shadow~65_combout\ = (a_s(1) & ((a_s(0)) # ((\mmap_shadow~32_regout\)))) # (!a_s(1) & (!a_s(0) & ((\mmap_shadow~16_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(1),
	datab => a_s(0),
	datac => \mmap_shadow~32_regout\,
	datad => \mmap_shadow~16_regout\,
	combout => \mmap_shadow~65_combout\);

-- Location: LCCOMB_X13_Y6_N4
\mmap_shadow~66\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_shadow~66_combout\ = (a_s(0) & ((\mmap_shadow~65_combout\ & (\mmap_shadow~40_regout\)) # (!\mmap_shadow~65_combout\ & ((\mmap_shadow~24_regout\))))) # (!a_s(0) & (((\mmap_shadow~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mmap_shadow~40_regout\,
	datab => a_s(0),
	datac => \mmap_shadow~24_regout\,
	datad => \mmap_shadow~65_combout\,
	combout => \mmap_shadow~66_combout\);

-- Location: LCCOMB_X13_Y7_N26
\inst_SPI_Master|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|Selector2~0_combout\ = (\inst_SPI_Master|state.ST_DATA~regout\ & (\inst_SPI_Master|reg\(4))) # (!\inst_SPI_Master|state.ST_DATA~regout\ & ((d_s(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_SPI_Master|reg\(4),
	datac => \inst_SPI_Master|state.ST_DATA~regout\,
	datad => d_s(5),
	combout => \inst_SPI_Master|Selector2~0_combout\);

-- Location: LCFF_X13_Y7_N27
\inst_SPI_Master|reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|Selector2~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_SPI_Master|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|reg\(5));

-- Location: LCCOMB_X13_Y6_N10
\Selector118~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector118~0_combout\ = (\D[5]~23_combout\ & ((\D[5]~24_combout\ & (\mmap_shadow~66_combout\)) # (!\D[5]~24_combout\ & ((\inst_SPI_Master|reg\(5)))))) # (!\D[5]~23_combout\ & (\D[5]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[5]~23_combout\,
	datab => \D[5]~24_combout\,
	datac => \mmap_shadow~66_combout\,
	datad => \inst_SPI_Master|reg\(5),
	combout => \Selector118~0_combout\);

-- Location: LCCOMB_X13_Y6_N12
\Selector118~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector118~1_combout\ = (\D[5]~22_combout\ & ((\Selector118~0_combout\ & ((\inst_CRC16_XModem|crc_reg\(13)))) # (!\Selector118~0_combout\ & (\inst_CRC16_XModem|crc_reg\(5))))) # (!\D[5]~22_combout\ & (((\Selector118~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|crc_reg\(5),
	datab => \D[5]~22_combout\,
	datac => \inst_CRC16_XModem|crc_reg\(13),
	datad => \Selector118~0_combout\,
	combout => \Selector118~1_combout\);

-- Location: LCCOMB_X13_Y6_N2
\Selector118~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector118~2_combout\ = (\D[5]~25_combout\ & ((\D[5]~26_combout\ & (\inst_I2C_Master|reg\(5))) # (!\D[5]~26_combout\ & ((\Selector118~1_combout\))))) # (!\D[5]~25_combout\ & (((!\D[5]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|reg\(5),
	datab => \D[5]~25_combout\,
	datac => \D[5]~26_combout\,
	datad => \Selector118~1_combout\,
	combout => \Selector118~2_combout\);

-- Location: LCCOMB_X13_Y6_N28
\Selector118~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector118~3_combout\ = (\D[5]~16_combout\ & ((\Selector118~2_combout\ & (\inst_FIFOs|LessThan0~0_combout\)) # (!\Selector118~2_combout\ & ((\inst_FIFOs|LessThan2~0_combout\))))) # (!\D[5]~16_combout\ & (((\Selector118~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[5]~16_combout\,
	datab => \inst_FIFOs|LessThan0~0_combout\,
	datac => \inst_FIFOs|LessThan2~0_combout\,
	datad => \Selector118~2_combout\,
	combout => \Selector118~3_combout\);

-- Location: LCCOMB_X13_Y6_N24
\Selector118~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector118~4_combout\ = (\io_state.ST_IORD_CON~regout\ & (((\inst_FIFOs|DataOut[1][5]~regout\)))) # (!\io_state.ST_IORD_CON~regout\ & (((\Selector118~3_combout\)) # (!\io_state.ST_IORD~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IORD~regout\,
	datab => \io_state.ST_IORD_CON~regout\,
	datac => \inst_FIFOs|DataOut[1][5]~regout\,
	datad => \Selector118~3_combout\,
	combout => \Selector118~4_combout\);

-- Location: LCCOMB_X10_Y6_N22
\D[5]~reg0SLOAD_MUX\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[5]~reg0SLOAD_MUX_combout\ = (\io_state.ST_IORD_AUX~regout\ & (\inst_FIFOs|DataOut[3][5]~regout\)) # (!\io_state.ST_IORD_AUX~regout\ & ((\Selector118~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io_state.ST_IORD_AUX~regout\,
	datac => \inst_FIFOs|DataOut[3][5]~regout\,
	datad => \Selector118~4_combout\,
	combout => \D[5]~reg0SLOAD_MUX_combout\);

-- Location: LCFF_X10_Y6_N17
\inst_FIFOs|DataOut[3][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \inst_FIFOs|DataOut[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[3][6]~regout\);

-- Location: LCFF_X12_Y2_N11
\mmap_shadow~41\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(6),
	sload => VCC,
	ena => \mmap_shadow~71_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~41_regout\);

-- Location: LCCOMB_X12_Y3_N8
\mmap_shadow~33feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_shadow~33feeder_combout\ = d_s(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => d_s(6),
	combout => \mmap_shadow~33feeder_combout\);

-- Location: LCFF_X12_Y3_N9
\mmap_shadow~33\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \mmap_shadow~33feeder_combout\,
	ena => \mmap_shadow~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~33_regout\);

-- Location: LCCOMB_X12_Y2_N10
\mmap_shadow~68\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_shadow~68_combout\ = (\mmap_shadow~67_combout\ & (((\mmap_shadow~41_regout\)) # (!a_s(1)))) # (!\mmap_shadow~67_combout\ & (a_s(1) & ((\mmap_shadow~33_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mmap_shadow~67_combout\,
	datab => a_s(1),
	datac => \mmap_shadow~41_regout\,
	datad => \mmap_shadow~33_regout\,
	combout => \mmap_shadow~68_combout\);

-- Location: LCCOMB_X13_Y7_N8
\inst_SPI_Master|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|Selector1~0_combout\ = (\inst_SPI_Master|state.ST_DATA~regout\ & ((\inst_SPI_Master|reg\(5)))) # (!\inst_SPI_Master|state.ST_DATA~regout\ & (d_s(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_s(6),
	datac => \inst_SPI_Master|state.ST_DATA~regout\,
	datad => \inst_SPI_Master|reg\(5),
	combout => \inst_SPI_Master|Selector1~0_combout\);

-- Location: LCFF_X13_Y7_N9
\inst_SPI_Master|reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|Selector1~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_SPI_Master|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|reg\(6));

-- Location: LCCOMB_X13_Y6_N0
\Selector123~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector123~0_combout\ = (\D[5]~23_combout\ & ((\D[5]~24_combout\ & (\mmap_shadow~68_combout\)) # (!\D[5]~24_combout\ & ((\inst_SPI_Master|reg\(6)))))) # (!\D[5]~23_combout\ & (\D[5]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[5]~23_combout\,
	datab => \D[5]~24_combout\,
	datac => \mmap_shadow~68_combout\,
	datad => \inst_SPI_Master|reg\(6),
	combout => \Selector123~0_combout\);

-- Location: LCCOMB_X13_Y6_N18
\Selector123~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector123~1_combout\ = (\D[5]~22_combout\ & ((\Selector123~0_combout\ & (\inst_CRC16_XModem|crc_reg\(14))) # (!\Selector123~0_combout\ & ((\inst_CRC16_XModem|crc_reg\(6)))))) # (!\D[5]~22_combout\ & (((\Selector123~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|crc_reg\(14),
	datab => \D[5]~22_combout\,
	datac => \inst_CRC16_XModem|crc_reg\(6),
	datad => \Selector123~0_combout\,
	combout => \Selector123~1_combout\);

-- Location: LCCOMB_X14_Y7_N0
\inst_I2C_Master|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector16~0_combout\ = (\inst_I2C_Master|state.ST_DATA1~regout\ & ((\inst_I2C_Master|reg\(4)))) # (!\inst_I2C_Master|state.ST_DATA1~regout\ & (d_s(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|state.ST_DATA1~regout\,
	datac => d_s(5),
	datad => \inst_I2C_Master|reg\(4),
	combout => \inst_I2C_Master|Selector16~0_combout\);

-- Location: LCFF_X14_Y7_N1
\inst_I2C_Master|reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|Selector16~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_I2C_Master|reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|reg\(5));

-- Location: LCCOMB_X14_Y7_N26
\inst_I2C_Master|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector15~0_combout\ = (\inst_I2C_Master|state.ST_DATA1~regout\ & ((\inst_I2C_Master|reg\(5)))) # (!\inst_I2C_Master|state.ST_DATA1~regout\ & (d_s(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => d_s(6),
	datac => \inst_I2C_Master|state.ST_DATA1~regout\,
	datad => \inst_I2C_Master|reg\(5),
	combout => \inst_I2C_Master|Selector15~0_combout\);

-- Location: LCFF_X14_Y7_N27
\inst_I2C_Master|reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|Selector15~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_I2C_Master|reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|reg\(6));

-- Location: LCCOMB_X13_Y6_N20
\Selector123~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector123~2_combout\ = (\D[5]~26_combout\ & (((\D[5]~25_combout\ & \inst_I2C_Master|reg\(6))))) # (!\D[5]~26_combout\ & ((\Selector123~1_combout\) # ((!\D[5]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[5]~26_combout\,
	datab => \Selector123~1_combout\,
	datac => \D[5]~25_combout\,
	datad => \inst_I2C_Master|reg\(6),
	combout => \Selector123~2_combout\);

-- Location: LCCOMB_X13_Y6_N30
\Selector123~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector123~3_combout\ = (\D[5]~16_combout\ & ((\Selector123~2_combout\ & (!\inst_FIFOs|Equal1~0_combout\)) # (!\Selector123~2_combout\ & ((!\inst_FIFOs|Equal5~0_combout\))))) # (!\D[5]~16_combout\ & (((\Selector123~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \D[5]~16_combout\,
	datab => \inst_FIFOs|Equal1~0_combout\,
	datac => \Selector123~2_combout\,
	datad => \inst_FIFOs|Equal5~0_combout\,
	combout => \Selector123~3_combout\);

-- Location: LCFF_X13_Y6_N23
\inst_FIFOs|DataOut[1][6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \inst_FIFOs|DataOut[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[1][6]~regout\);

-- Location: LCCOMB_X13_Y6_N22
\Selector123~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector123~4_combout\ = (\io_state.ST_IORD_CON~regout\ & (((\inst_FIFOs|DataOut[1][6]~regout\)))) # (!\io_state.ST_IORD_CON~regout\ & ((\Selector123~3_combout\) # ((!\io_state.ST_IORD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IORD_CON~regout\,
	datab => \Selector123~3_combout\,
	datac => \inst_FIFOs|DataOut[1][6]~regout\,
	datad => \io_state.ST_IORD~regout\,
	combout => \Selector123~4_combout\);

-- Location: LCCOMB_X10_Y6_N16
\D[6]~reg0SLOAD_MUX\ : cycloneii_lcell_comb
-- Equation(s):
-- \D[6]~reg0SLOAD_MUX_combout\ = (\io_state.ST_IORD_AUX~regout\ & (\inst_FIFOs|DataOut[3][6]~regout\)) # (!\io_state.ST_IORD_AUX~regout\ & ((\Selector123~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io_state.ST_IORD_AUX~regout\,
	datac => \inst_FIFOs|DataOut[3][6]~regout\,
	datad => \Selector123~4_combout\,
	combout => \D[6]~reg0SLOAD_MUX_combout\);

-- Location: LCFF_X9_Y6_N17
\inst_FIFOs|DataOut[1][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \inst_FIFOs|DataOut[1][0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[1][7]~regout\);

-- Location: LCFF_X10_Y6_N3
\inst_FIFOs|DataOut[3][7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_FIFOs|FIFO_RAM_inst|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \inst_FIFOs|DataOut[3][0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|DataOut[3][7]~regout\);

-- Location: LCCOMB_X9_Y6_N16
\Selector128~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector128~2_combout\ = (\io_state.ST_IORD_CON~regout\ & ((\inst_FIFOs|DataOut[1][7]~regout\) # ((\io_state.ST_IORD_AUX~regout\ & \inst_FIFOs|DataOut[3][7]~regout\)))) # (!\io_state.ST_IORD_CON~regout\ & (\io_state.ST_IORD_AUX~regout\ & 
-- ((\inst_FIFOs|DataOut[3][7]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IORD_CON~regout\,
	datab => \io_state.ST_IORD_AUX~regout\,
	datac => \inst_FIFOs|DataOut[1][7]~regout\,
	datad => \inst_FIFOs|DataOut[3][7]~regout\,
	combout => \Selector128~2_combout\);

-- Location: LCFF_X13_Y3_N23
\mmap_shadow~18\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(7),
	sload => VCC,
	ena => \mmap_shadow~74_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~18_regout\);

-- Location: LCFF_X12_Y3_N3
\mmap_shadow~34\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(7),
	sload => VCC,
	ena => \mmap_shadow~72_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~34_regout\);

-- Location: LCCOMB_X13_Y3_N22
\mmap_shadow~69\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_shadow~69_combout\ = (a_s(1) & ((a_s(0)) # ((\mmap_shadow~34_regout\)))) # (!a_s(1) & (!a_s(0) & (\mmap_shadow~18_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(1),
	datab => a_s(0),
	datac => \mmap_shadow~18_regout\,
	datad => \mmap_shadow~34_regout\,
	combout => \mmap_shadow~69_combout\);

-- Location: LCFF_X12_Y2_N29
\mmap_shadow~26\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => d_s(7),
	sload => VCC,
	ena => \mmap_shadow~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \mmap_shadow~26_regout\);

-- Location: LCCOMB_X12_Y2_N28
\mmap_shadow~70\ : cycloneii_lcell_comb
-- Equation(s):
-- \mmap_shadow~70_combout\ = (\mmap_shadow~69_combout\ & ((\mmap_shadow~42_regout\) # ((!a_s(0))))) # (!\mmap_shadow~69_combout\ & (((\mmap_shadow~26_regout\ & a_s(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mmap_shadow~42_regout\,
	datab => \mmap_shadow~69_combout\,
	datac => \mmap_shadow~26_regout\,
	datad => a_s(0),
	combout => \mmap_shadow~70_combout\);

-- Location: LCCOMB_X10_Y4_N24
\Equal9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal9~1_combout\ = (!a_s(4) & (!a_s(5) & a_s(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => a_s(4),
	datac => a_s(5),
	datad => a_s(2),
	combout => \Equal9~1_combout\);

-- Location: LCCOMB_X13_Y7_N10
\inst_SPI_Master|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|Selector0~0_combout\ = (\inst_SPI_Master|state.ST_DATA~regout\ & (\inst_SPI_Master|reg\(6))) # (!\inst_SPI_Master|state.ST_DATA~regout\ & ((d_s(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_SPI_Master|reg\(6),
	datac => \inst_SPI_Master|state.ST_DATA~regout\,
	datad => d_s(7),
	combout => \inst_SPI_Master|Selector0~0_combout\);

-- Location: LCFF_X13_Y7_N11
\inst_SPI_Master|reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|Selector0~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_SPI_Master|Selector13~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|reg\(7));

-- Location: LCCOMB_X13_Y5_N18
\Selector126~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector126~0_combout\ = (a_s(0) & ((a_s(2) & (\inst_CRC16_XModem|crc_reg\(15))) # (!a_s(2) & ((\inst_SPI_Master|reg\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_CRC16_XModem|crc_reg\(15),
	datab => \inst_SPI_Master|reg\(7),
	datac => a_s(0),
	datad => a_s(2),
	combout => \Selector126~0_combout\);

-- Location: LCCOMB_X13_Y5_N22
\Selector126~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector126~2_combout\ = (!a_s(4) & (a_s(5) & ((\Selector126~1_combout\) # (\Selector126~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector126~1_combout\,
	datab => a_s(4),
	datac => a_s(5),
	datad => \Selector126~0_combout\,
	combout => \Selector126~2_combout\);

-- Location: LCCOMB_X13_Y5_N26
\Selector126~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector126~4_combout\ = (!a_s(1) & ((\Selector126~2_combout\) # ((\Selector126~3_combout\ & \Selector96~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector126~3_combout\,
	datab => \Selector126~2_combout\,
	datac => \Selector96~2_combout\,
	datad => a_s(1),
	combout => \Selector126~4_combout\);

-- Location: LCCOMB_X13_Y5_N12
\Selector128~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector128~1_combout\ = (\Selector128~0_combout\ & ((\Selector126~4_combout\) # ((\mmap_shadow~70_combout\ & \Equal9~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector128~0_combout\,
	datab => \mmap_shadow~70_combout\,
	datac => \Equal9~1_combout\,
	datad => \Selector126~4_combout\,
	combout => \Selector128~1_combout\);

-- Location: LCCOMB_X13_Y5_N6
\Selector128~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector128~3_combout\ = (\Selector128~2_combout\) # ((\io_state.ST_INTACK~regout\) # (\Selector128~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector128~2_combout\,
	datac => \io_state.ST_INTACK~regout\,
	datad => \Selector128~1_combout\,
	combout => \Selector128~3_combout\);

-- Location: LCCOMB_X13_Y10_N12
\inst_I2C_Master|I2C_SCL~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|I2C_SCL~1_combout\ = (\inst_I2C_Master|state.ST_START3~regout\ & (((!\i2c_tx_strb~regout\ & \inst_I2C_Master|state.ST_TXDN~regout\)) # (!\i2c_start_strb~regout\))) # (!\inst_I2C_Master|state.ST_START3~regout\ & (!\i2c_tx_strb~regout\ & 
-- ((\inst_I2C_Master|state.ST_TXDN~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|state.ST_START3~regout\,
	datab => \i2c_tx_strb~regout\,
	datac => \i2c_start_strb~regout\,
	datad => \inst_I2C_Master|state.ST_TXDN~regout\,
	combout => \inst_I2C_Master|I2C_SCL~1_combout\);

-- Location: LCCOMB_X12_Y10_N28
\inst_I2C_Master|I2C_SCL~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|I2C_SCL~2_combout\ = (\inst_I2C_Master|I2C_SCL~en_regout\) # ((\inst_Timing|Strb_I2C~regout\ & ((\inst_I2C_Master|I2C_SCL~1_combout\) # (\inst_I2C_Master|state.ST_DATA~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|I2C_SCL~en_regout\,
	datab => \inst_Timing|Strb_I2C~regout\,
	datac => \inst_I2C_Master|I2C_SCL~1_combout\,
	datad => \inst_I2C_Master|state.ST_DATA~regout\,
	combout => \inst_I2C_Master|I2C_SCL~2_combout\);

-- Location: LCCOMB_X12_Y10_N0
\inst_I2C_Master|I2C_SCL~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|I2C_SCL~4_combout\ = (\inst_I2C_Master|I2C_SCL~3_combout\ & ((\inst_I2C_Master|I2C_SCL~2_combout\) # ((!\inst_Timing|Strb_I2C~regout\ & \inst_I2C_Master|I2C_SCL~en_regout\)))) # (!\inst_I2C_Master|I2C_SCL~3_combout\ & 
-- (!\inst_Timing|Strb_I2C~regout\ & (\inst_I2C_Master|I2C_SCL~en_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|I2C_SCL~3_combout\,
	datab => \inst_Timing|Strb_I2C~regout\,
	datac => \inst_I2C_Master|I2C_SCL~en_regout\,
	datad => \inst_I2C_Master|I2C_SCL~2_combout\,
	combout => \inst_I2C_Master|I2C_SCL~4_combout\);

-- Location: LCFF_X12_Y10_N1
\inst_I2C_Master|I2C_SCL~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|I2C_SCL~4_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|I2C_SCL~en_regout\);

-- Location: LCCOMB_X13_Y10_N28
\inst_I2C_Master|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector5~0_combout\ = (!\inst_I2C_Master|state.ST_IDLE~regout\ & (\i2c_stop_strb~regout\ & !\i2c_start_strb~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|state.ST_IDLE~regout\,
	datab => \i2c_stop_strb~regout\,
	datac => \i2c_start_strb~regout\,
	combout => \inst_I2C_Master|Selector5~0_combout\);

-- Location: LCCOMB_X12_Y10_N16
\inst_I2C_Master|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector5~1_combout\ = (!\inst_I2C_Master|state.ST_TX~regout\ & ((\inst_I2C_Master|Selector5~0_combout\) # ((!\inst_I2C_Master|Selector0~5_combout\ & \inst_I2C_Master|state.ST_STOP~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|Selector0~5_combout\,
	datab => \inst_I2C_Master|Selector5~0_combout\,
	datac => \inst_I2C_Master|state.ST_STOP~regout\,
	datad => \inst_I2C_Master|state.ST_TX~regout\,
	combout => \inst_I2C_Master|Selector5~1_combout\);

-- Location: LCFF_X12_Y10_N17
\inst_I2C_Master|state.ST_STOP\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|Selector5~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|state.ST_STOP~regout\);

-- Location: LCCOMB_X12_Y10_N26
\inst_I2C_Master|Selector26~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector26~1_combout\ = (\inst_Timing|Strb_I2C~regout\ & ((\inst_I2C_Master|Selector26~0_combout\) # ((\inst_I2C_Master|state.ST_STOP~regout\) # (\inst_I2C_Master|state.ST_DATA1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|Selector26~0_combout\,
	datab => \inst_I2C_Master|state.ST_STOP~regout\,
	datac => \inst_Timing|Strb_I2C~regout\,
	datad => \inst_I2C_Master|state.ST_DATA1~regout\,
	combout => \inst_I2C_Master|Selector26~1_combout\);

-- Location: LCCOMB_X14_Y7_N28
\inst_I2C_Master|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|Selector14~0_combout\ = (\inst_I2C_Master|state.ST_DATA1~regout\ & ((\inst_I2C_Master|reg\(6)))) # (!\inst_I2C_Master|state.ST_DATA1~regout\ & (d_s(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => d_s(7),
	datac => \inst_I2C_Master|state.ST_DATA1~regout\,
	datad => \inst_I2C_Master|reg\(6),
	combout => \inst_I2C_Master|Selector14~0_combout\);

-- Location: LCFF_X14_Y7_N29
\inst_I2C_Master|reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|Selector14~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_I2C_Master|reg[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|reg\(7));

-- Location: LCCOMB_X12_Y10_N12
\i2c_tx_ackn~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \i2c_tx_ackn~1_combout\ = (\i2c_tx_ackn~0_combout\ & ((d_s(0)))) # (!\i2c_tx_ackn~0_combout\ & (\i2c_tx_ackn~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_tx_ackn~0_combout\,
	datac => \i2c_tx_ackn~regout\,
	datad => d_s(0),
	combout => \i2c_tx_ackn~1_combout\);

-- Location: LCFF_X12_Y10_N13
i2c_tx_ackn : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \i2c_tx_ackn~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \i2c_tx_ackn~regout\);

-- Location: LCCOMB_X12_Y10_N22
\inst_I2C_Master|I2C_SDA~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|I2C_SDA~1_combout\ = ((\inst_I2C_Master|Equal0~0_combout\ & ((!\i2c_tx_ackn~regout\))) # (!\inst_I2C_Master|Equal0~0_combout\ & (!\inst_I2C_Master|reg\(7)))) # (!\inst_I2C_Master|state.ST_DATA1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|Equal0~0_combout\,
	datab => \inst_I2C_Master|reg\(7),
	datac => \inst_I2C_Master|state.ST_DATA1~regout\,
	datad => \i2c_tx_ackn~regout\,
	combout => \inst_I2C_Master|I2C_SDA~1_combout\);

-- Location: LCCOMB_X12_Y10_N18
\inst_I2C_Master|I2C_SDA~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_I2C_Master|I2C_SDA~3_combout\ = (\inst_I2C_Master|Selector26~1_combout\ & (\inst_I2C_Master|I2C_SDA~2_combout\ & ((\inst_I2C_Master|I2C_SDA~1_combout\)))) # (!\inst_I2C_Master|Selector26~1_combout\ & (((\inst_I2C_Master|I2C_SDA~en_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_I2C_Master|I2C_SDA~2_combout\,
	datab => \inst_I2C_Master|Selector26~1_combout\,
	datac => \inst_I2C_Master|I2C_SDA~en_regout\,
	datad => \inst_I2C_Master|I2C_SDA~1_combout\,
	combout => \inst_I2C_Master|I2C_SDA~3_combout\);

-- Location: LCFF_X12_Y10_N19
\inst_I2C_Master|I2C_SDA~en\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_I2C_Master|I2C_SDA~3_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_I2C_Master|I2C_SDA~en_regout\);

-- Location: LCCOMB_X2_Y6_N8
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = count(0) $ (VCC)
-- \Add1~1\ = CARRY(count(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X20_Y8_N4
\inst_Timing|count_1ms~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|count_1ms~5_combout\ = (\inst_Timing|Add1~6_combout\ & !\inst_Timing|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Timing|Add1~6_combout\,
	datad => \inst_Timing|Equal1~2_combout\,
	combout => \inst_Timing|count_1ms~5_combout\);

-- Location: LCFF_X20_Y8_N5
\inst_Timing|count_1ms[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|count_1ms~5_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|strb_1us_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_1ms\(3));

-- Location: LCCOMB_X20_Y8_N14
\inst_Timing|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add1~8_combout\ = (\inst_Timing|count_1ms\(4) & (\inst_Timing|Add1~7\ $ (GND))) # (!\inst_Timing|count_1ms\(4) & (!\inst_Timing|Add1~7\ & VCC))
-- \inst_Timing|Add1~9\ = CARRY((\inst_Timing|count_1ms\(4) & !\inst_Timing|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_Timing|count_1ms\(4),
	datad => VCC,
	cin => \inst_Timing|Add1~7\,
	combout => \inst_Timing|Add1~8_combout\,
	cout => \inst_Timing|Add1~9\);

-- Location: LCFF_X20_Y8_N15
\inst_Timing|count_1ms[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|Add1~8_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|strb_1us_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_1ms\(4));

-- Location: LCCOMB_X20_Y8_N18
\inst_Timing|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add1~12_combout\ = (\inst_Timing|count_1ms\(6) & (\inst_Timing|Add1~11\ $ (GND))) # (!\inst_Timing|count_1ms\(6) & (!\inst_Timing|Add1~11\ & VCC))
-- \inst_Timing|Add1~13\ = CARRY((\inst_Timing|count_1ms\(6) & !\inst_Timing|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_Timing|count_1ms\(6),
	datad => VCC,
	cin => \inst_Timing|Add1~11\,
	combout => \inst_Timing|Add1~12_combout\,
	cout => \inst_Timing|Add1~13\);

-- Location: LCCOMB_X19_Y8_N28
\inst_Timing|count_1ms~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|count_1ms~3_combout\ = (!\inst_Timing|Equal1~2_combout\ & \inst_Timing|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Timing|Equal1~2_combout\,
	datad => \inst_Timing|Add1~12_combout\,
	combout => \inst_Timing|count_1ms~3_combout\);

-- Location: LCFF_X19_Y8_N29
\inst_Timing|count_1ms[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|count_1ms~3_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|strb_1us_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_1ms\(6));

-- Location: LCCOMB_X20_Y8_N20
\inst_Timing|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add1~14_combout\ = (\inst_Timing|count_1ms\(7) & (!\inst_Timing|Add1~13\)) # (!\inst_Timing|count_1ms\(7) & ((\inst_Timing|Add1~13\) # (GND)))
-- \inst_Timing|Add1~15\ = CARRY((!\inst_Timing|Add1~13\) # (!\inst_Timing|count_1ms\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_Timing|count_1ms\(7),
	datad => VCC,
	cin => \inst_Timing|Add1~13\,
	combout => \inst_Timing|Add1~14_combout\,
	cout => \inst_Timing|Add1~15\);

-- Location: LCCOMB_X19_Y8_N18
\inst_Timing|count_1ms~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|count_1ms~2_combout\ = (!\inst_Timing|Equal1~2_combout\ & \inst_Timing|Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Timing|Equal1~2_combout\,
	datad => \inst_Timing|Add1~14_combout\,
	combout => \inst_Timing|count_1ms~2_combout\);

-- Location: LCFF_X19_Y8_N19
\inst_Timing|count_1ms[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|count_1ms~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|strb_1us_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_1ms\(7));

-- Location: LCCOMB_X20_Y8_N22
\inst_Timing|Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add1~16_combout\ = (\inst_Timing|count_1ms\(8) & (\inst_Timing|Add1~15\ $ (GND))) # (!\inst_Timing|count_1ms\(8) & (!\inst_Timing|Add1~15\ & VCC))
-- \inst_Timing|Add1~17\ = CARRY((\inst_Timing|count_1ms\(8) & !\inst_Timing|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst_Timing|count_1ms\(8),
	datad => VCC,
	cin => \inst_Timing|Add1~15\,
	combout => \inst_Timing|Add1~16_combout\,
	cout => \inst_Timing|Add1~17\);

-- Location: LCCOMB_X20_Y8_N2
\inst_Timing|count_1ms~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|count_1ms~1_combout\ = (\inst_Timing|Add1~16_combout\ & !\inst_Timing|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Timing|Add1~16_combout\,
	datad => \inst_Timing|Equal1~2_combout\,
	combout => \inst_Timing|count_1ms~1_combout\);

-- Location: LCFF_X20_Y8_N3
\inst_Timing|count_1ms[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|count_1ms~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|strb_1us_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_1ms\(8));

-- Location: LCCOMB_X20_Y8_N24
\inst_Timing|Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Add1~18_combout\ = \inst_Timing|Add1~17\ $ (\inst_Timing|count_1ms\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst_Timing|count_1ms\(9),
	cin => \inst_Timing|Add1~17\,
	combout => \inst_Timing|Add1~18_combout\);

-- Location: LCCOMB_X19_Y8_N16
\inst_Timing|count_1ms~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|count_1ms~0_combout\ = (\inst_Timing|Add1~18_combout\ & !\inst_Timing|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Timing|Add1~18_combout\,
	datad => \inst_Timing|Equal1~2_combout\,
	combout => \inst_Timing|count_1ms~0_combout\);

-- Location: LCFF_X19_Y8_N17
\inst_Timing|count_1ms[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|count_1ms~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|strb_1us_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|count_1ms\(9));

-- Location: LCCOMB_X20_Y8_N28
\inst_Timing|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Equal1~0_combout\ = (\inst_Timing|count_1ms\(0) & (\inst_Timing|count_1ms\(9) & (\inst_Timing|count_1ms\(1) & \inst_Timing|count_1ms\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Timing|count_1ms\(0),
	datab => \inst_Timing|count_1ms\(9),
	datac => \inst_Timing|count_1ms\(1),
	datad => \inst_Timing|count_1ms\(8),
	combout => \inst_Timing|Equal1~0_combout\);

-- Location: LCCOMB_X20_Y8_N26
\inst_Timing|Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Equal1~1_combout\ = (\inst_Timing|count_1ms\(5) & (\inst_Timing|count_1ms\(6) & (!\inst_Timing|count_1ms\(4) & \inst_Timing|count_1ms\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Timing|count_1ms\(5),
	datab => \inst_Timing|count_1ms\(6),
	datac => \inst_Timing|count_1ms\(4),
	datad => \inst_Timing|count_1ms\(7),
	combout => \inst_Timing|Equal1~1_combout\);

-- Location: LCCOMB_X20_Y8_N30
\inst_Timing|Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Equal1~2_combout\ = (\inst_Timing|count_1ms\(2) & (\inst_Timing|Equal1~0_combout\ & (!\inst_Timing|count_1ms\(3) & \inst_Timing|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Timing|count_1ms\(2),
	datab => \inst_Timing|Equal1~0_combout\,
	datac => \inst_Timing|count_1ms\(3),
	datad => \inst_Timing|Equal1~1_combout\,
	combout => \inst_Timing|Equal1~2_combout\);

-- Location: LCCOMB_X19_Y8_N12
\inst_Timing|Strb_1ms~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Timing|Strb_1ms~0_combout\ = (\inst_Timing|Strb_1ms~regout\) # (\inst_Timing|Equal1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_Timing|Strb_1ms~regout\,
	datad => \inst_Timing|Equal1~2_combout\,
	combout => \inst_Timing|Strb_1ms~0_combout\);

-- Location: LCFF_X19_Y8_N13
\inst_Timing|Strb_1ms\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Timing|Strb_1ms~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sclr => \inst_Timing|ALT_INV_strb_1us_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Timing|Strb_1ms~regout\);

-- Location: LCFF_X2_Y6_N9
\count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Add1~0_combout\,
	ena => \inst_Timing|Strb_1ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(0));

-- Location: LCCOMB_X2_Y6_N10
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (count(1) & (!\Add1~1\)) # (!count(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!count(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X2_Y6_N12
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (count(2) & (\Add1~3\ $ (GND))) # (!count(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((count(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => count(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X2_Y6_N14
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (count(3) & (!\Add1~5\)) # (!count(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!count(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCFF_X2_Y6_N15
\count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Add1~6_combout\,
	ena => \inst_Timing|Strb_1ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(3));

-- Location: LCFF_X2_Y6_N13
\count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Add1~4_combout\,
	ena => \inst_Timing|Strb_1ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(2));

-- Location: LCCOMB_X2_Y6_N16
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (count(4) & (\Add1~7\ $ (GND))) # (!count(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((count(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X1_Y6_N18
\count~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \count~5_combout\ = (!\Equal21~3_combout\ & \Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal21~3_combout\,
	datac => \Add1~8_combout\,
	combout => \count~5_combout\);

-- Location: LCFF_X1_Y6_N19
\count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \count~5_combout\,
	ena => \inst_Timing|Strb_1ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(4));

-- Location: LCCOMB_X2_Y6_N18
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (count(5) & (!\Add1~9\)) # (!count(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!count(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCFF_X2_Y6_N19
\count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Add1~10_combout\,
	ena => \inst_Timing|Strb_1ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(5));

-- Location: LCCOMB_X1_Y6_N30
\Equal21~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal21~1_combout\ = (count(10) & (count(3) & (count(2) & !count(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(10),
	datab => count(3),
	datac => count(2),
	datad => count(5),
	combout => \Equal21~1_combout\);

-- Location: LCFF_X2_Y6_N11
\count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Add1~2_combout\,
	ena => \inst_Timing|Strb_1ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(1));

-- Location: LCCOMB_X2_Y6_N20
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (count(6) & (\Add1~11\ $ (GND))) # (!count(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((count(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X2_Y6_N4
\count~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \count~2_combout\ = (\Add1~12_combout\ & !\Equal21~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~12_combout\,
	datad => \Equal21~3_combout\,
	combout => \count~2_combout\);

-- Location: LCFF_X2_Y6_N5
\count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \count~2_combout\,
	ena => \inst_Timing|Strb_1ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(6));

-- Location: LCCOMB_X2_Y6_N22
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (count(7) & (!\Add1~13\)) # (!count(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X2_Y6_N2
\count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \count~1_combout\ = (!\Equal21~3_combout\ & \Add1~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal21~3_combout\,
	datad => \Add1~14_combout\,
	combout => \count~1_combout\);

-- Location: LCFF_X2_Y6_N3
\count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \count~1_combout\,
	ena => \inst_Timing|Strb_1ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(7));

-- Location: LCCOMB_X2_Y6_N24
\Add1~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (count(8) & (\Add1~15\ $ (GND))) # (!count(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((count(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X2_Y6_N0
\count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \count~0_combout\ = (\Add1~16_combout\ & !\Equal21~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~16_combout\,
	datad => \Equal21~3_combout\,
	combout => \count~0_combout\);

-- Location: LCFF_X2_Y6_N1
\count[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \count~0_combout\,
	ena => \inst_Timing|Strb_1ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(8));

-- Location: LCCOMB_X2_Y6_N30
\Equal21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal21~0_combout\ = (count(8) & (count(6) & count(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(8),
	datac => count(6),
	datad => count(7),
	combout => \Equal21~0_combout\);

-- Location: LCCOMB_X1_Y6_N14
\Equal21~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal21~3_combout\ = (\Equal21~2_combout\ & (\Equal21~1_combout\ & (count(1) & \Equal21~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal21~2_combout\,
	datab => \Equal21~1_combout\,
	datac => count(1),
	datad => \Equal21~0_combout\,
	combout => \Equal21~3_combout\);

-- Location: LCCOMB_X1_Y6_N24
\Equal22~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal22~0_combout\ = (!count(0) & (!count(1) & \Equal21~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(0),
	datac => count(1),
	datad => \Equal21~0_combout\,
	combout => \Equal22~0_combout\);

-- Location: LCCOMB_X2_Y6_N26
\Add1~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (count(9) & (!\Add1~17\)) # (!count(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!count(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => count(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X1_Y6_N16
\count~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \count~4_combout\ = (!\Equal21~3_combout\ & \Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal21~3_combout\,
	datac => \Add1~18_combout\,
	combout => \count~4_combout\);

-- Location: LCFF_X1_Y6_N17
\count[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \count~4_combout\,
	ena => \inst_Timing|Strb_1ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(9));

-- Location: LCCOMB_X2_Y6_N28
\Add1~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = \Add1~19\ $ (!count(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => count(10),
	cin => \Add1~19\,
	combout => \Add1~20_combout\);

-- Location: LCCOMB_X2_Y6_N6
\count~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \count~3_combout\ = (!\Equal21~3_combout\ & \Add1~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal21~3_combout\,
	datad => \Add1~20_combout\,
	combout => \count~3_combout\);

-- Location: LCFF_X2_Y6_N7
\count[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \count~3_combout\,
	ena => \inst_Timing|Strb_1ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => count(10));

-- Location: LCCOMB_X1_Y6_N26
\Equal22~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal22~1_combout\ = (count(5) & (\Equal22~0_combout\ & !count(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => count(5),
	datac => \Equal22~0_combout\,
	datad => count(10),
	combout => \Equal22~1_combout\);

-- Location: LCCOMB_X1_Y6_N0
\LED_D2n~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED_D2n~0_combout\ = (\Equal21~3_combout\) # ((\LED_D2n~reg0_regout\ & ((!\Equal22~1_combout\) # (!\Equal22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal22~2_combout\,
	datab => \Equal21~3_combout\,
	datac => \LED_D2n~reg0_regout\,
	datad => \Equal22~1_combout\,
	combout => \LED_D2n~0_combout\);

-- Location: LCFF_X1_Y6_N1
\LED_D2n~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \LED_D2n~0_combout\,
	ena => \inst_Timing|Strb_1ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED_D2n~reg0_regout\);

-- Location: LCCOMB_X1_Y6_N10
\LED_D4n~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED_D4n~0_combout\ = (\Equal21~3_combout\) # ((\LED_D4n~reg0_regout\ & ((!\Equal22~1_combout\) # (!\Equal23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal23~0_combout\,
	datab => \Equal21~3_combout\,
	datac => \LED_D4n~reg0_regout\,
	datad => \Equal22~1_combout\,
	combout => \LED_D4n~0_combout\);

-- Location: LCFF_X1_Y6_N11
\LED_D4n~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \LED_D4n~0_combout\,
	ena => \inst_Timing|Strb_1ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED_D4n~reg0_regout\);

-- Location: LCCOMB_X1_Y6_N8
\Equal24~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal24~0_combout\ = (!count(9) & (\Equal21~1_combout\ & (\Equal22~0_combout\ & count(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => count(9),
	datab => \Equal21~1_combout\,
	datac => \Equal22~0_combout\,
	datad => count(4),
	combout => \Equal24~0_combout\);

-- Location: LCCOMB_X1_Y6_N28
\LED_D5n~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \LED_D5n~0_combout\ = (\Equal21~3_combout\) # ((\LED_D5n~reg0_regout\ & !\Equal24~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal21~3_combout\,
	datac => \LED_D5n~reg0_regout\,
	datad => \Equal24~0_combout\,
	combout => \LED_D5n~0_combout\);

-- Location: LCFF_X1_Y6_N29
\LED_D5n~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \LED_D5n~0_combout\,
	ena => \inst_Timing|Strb_1ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \LED_D5n~reg0_regout\);

-- Location: LCFF_X13_Y8_N9
\IOWAITn~reg0_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Selector39~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \IOWAITn~reg0_Duplicate_1_regout\);

-- Location: LCCOMB_X13_Y8_N8
\Selector39~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (\io_state.ST_DONE~regout\) # ((\IOWAITn~reg0_Duplicate_1_regout\ & \io_state.ST_IDLE~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \io_state.ST_DONE~regout\,
	datac => \IOWAITn~reg0_Duplicate_1_regout\,
	datad => \io_state.ST_IDLE~regout\,
	combout => \Selector39~0_combout\);

-- Location: LCCOMB_X14_Y8_N30
\Selector69~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector69~0_combout\ = (\nmi_mode_clr~regout\ & ((\io_state.ST_IOWR~regout\) # (!\io_state.ST_DONE~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_DONE~regout\,
	datac => \io_state.ST_IOWR~regout\,
	datad => \nmi_mode_clr~regout\,
	combout => \Selector69~0_combout\);

-- Location: LCCOMB_X14_Y8_N18
\Selector69~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector69~1_combout\ = (\Selector69~0_combout\) # ((\Equal5~1_combout\ & (\io_state.ST_IOWR~regout\ & d_s(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~1_combout\,
	datab => \io_state.ST_IOWR~regout\,
	datac => d_s(2),
	datad => \Selector69~0_combout\,
	combout => \Selector69~1_combout\);

-- Location: LCFF_X14_Y8_N19
nmi_mode_clr : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Selector69~1_combout\,
	ena => \inst_Synch_Rst|ALT_INV_Output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \nmi_mode_clr~regout\);

-- Location: LCCOMB_X25_Y6_N18
\inst_NMI_Control|svc_state~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_NMI_Control|svc_state~0_combout\ = (\inst_NMI_Control|svc_state~regout\ & (((!\nmi_mode_clr~regout\)))) # (!\inst_NMI_Control|svc_state~regout\ & (\inst_NMI_Control|bus_state.BST_NACK~regout\ & ((!\mreq_s~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_NMI_Control|bus_state.BST_NACK~regout\,
	datab => \nmi_mode_clr~regout\,
	datac => \inst_NMI_Control|svc_state~regout\,
	datad => \mreq_s~regout\,
	combout => \inst_NMI_Control|svc_state~0_combout\);

-- Location: LCFF_X25_Y6_N19
\inst_NMI_Control|svc_state\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_NMI_Control|svc_state~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_NMI_Control|svc_state~regout\);

-- Location: LCCOMB_X25_Y6_N12
\MMAP_ENn~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \MMAP_ENn~0_combout\ = ((\inst_NMI_Control|svc_state~regout\ & ((!\RDn~combout\) # (!\M1n~combout\)))) # (!\ctrl_mmap_en~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_mmap_en~regout\,
	datab => \inst_NMI_Control|svc_state~regout\,
	datac => \M1n~combout\,
	datad => \RDn~combout\,
	combout => \MMAP_ENn~0_combout\);

-- Location: LCCOMB_X13_Y8_N18
\Selector71~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector71~2_combout\ = (\io_state.ST_IOWR~regout\ & (((\MMAP_IO_SELn~reg0_regout\) # (\iosm~0_combout\)))) # (!\io_state.ST_IOWR~regout\ & (!\io_state.ST_DONE~regout\ & (\MMAP_IO_SELn~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_DONE~regout\,
	datab => \io_state.ST_IOWR~regout\,
	datac => \MMAP_IO_SELn~reg0_regout\,
	datad => \iosm~0_combout\,
	combout => \Selector71~2_combout\);

-- Location: LCFF_X13_Y8_N19
\MMAP_IO_SELn~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Selector71~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \MMAP_IO_SELn~reg0_regout\);

-- Location: LCCOMB_X12_Y8_N12
\inst_IntControl|cpu_clk_d~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_IntControl|cpu_clk_d~feeder_combout\ = \cpu_clk_s~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cpu_clk_s~regout\,
	combout => \inst_IntControl|cpu_clk_d~feeder_combout\);

-- Location: LCFF_X12_Y8_N13
\inst_IntControl|cpu_clk_d\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_IntControl|cpu_clk_d~feeder_combout\,
	ena => \inst_Synch_Rst|ALT_INV_Output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_IntControl|cpu_clk_d~regout\);

-- Location: LCFF_X12_Y8_N1
\inst_IntControl|Int~_Duplicate_1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_IntControl|Int~3_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_IntControl|Int~_Duplicate_1_regout\);

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\WRn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_WRn,
	combout => \WRn~combout\);

-- Location: LCCOMB_X12_Y8_N16
\inst_IntControl|Int~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_IntControl|Int~1_combout\ = (\Equal7~0_combout\ & (!a_s(0) & (\iorq_s~regout\ & !\WRn~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => a_s(0),
	datac => \iorq_s~regout\,
	datad => \WRn~combout\,
	combout => \inst_IntControl|Int~1_combout\);

-- Location: LCCOMB_X12_Y8_N18
\Selector72~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector72~0_combout\ = (\Equal7~0_combout\ & (\D[4]~4\ & (\io_state.ST_IOWR~regout\ & \Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \D[4]~4\,
	datac => \io_state.ST_IOWR~regout\,
	datad => \Equal5~0_combout\,
	combout => \Selector72~0_combout\);

-- Location: LCCOMB_X12_Y8_N14
\Selector72~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector72~1_combout\ = (\Selector72~0_combout\) # ((\tick_int_sw_clr~regout\ & ((\io_state.ST_IOWR~regout\) # (!\io_state.ST_DONE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_DONE~regout\,
	datab => \io_state.ST_IOWR~regout\,
	datac => \tick_int_sw_clr~regout\,
	datad => \Selector72~0_combout\,
	combout => \Selector72~1_combout\);

-- Location: LCFF_X12_Y8_N15
tick_int_sw_clr : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Selector72~1_combout\,
	ena => \inst_Synch_Rst|ALT_INV_Output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tick_int_sw_clr~regout\);

-- Location: LCCOMB_X15_Y8_N4
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = tick_timer(0) $ (VCC)
-- \Add0~1\ = CARRY(tick_timer(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => tick_timer(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCFF_X15_Y8_N5
\tick_timer[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Add0~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|Strb_1ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tick_timer(0));

-- Location: LCCOMB_X15_Y8_N8
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (tick_timer(2) & (\Add0~3\ $ (GND))) # (!tick_timer(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((tick_timer(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_timer(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X15_Y8_N22
\tick_timer~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \tick_timer~2_combout\ = (\Add0~4_combout\ & !\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~4_combout\,
	datad => \Equal0~1_combout\,
	combout => \tick_timer~2_combout\);

-- Location: LCFF_X15_Y8_N23
\tick_timer[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \tick_timer~2_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|Strb_1ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tick_timer(2));

-- Location: LCCOMB_X15_Y8_N12
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (tick_timer(4) & (\Add0~7\ $ (GND))) # (!tick_timer(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((tick_timer(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => tick_timer(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X15_Y8_N14
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (tick_timer(5) & (!\Add0~9\)) # (!tick_timer(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!tick_timer(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => tick_timer(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X15_Y8_N2
\tick_timer~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \tick_timer~1_combout\ = (\Add0~10_combout\ & !\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~10_combout\,
	datad => \Equal0~1_combout\,
	combout => \tick_timer~1_combout\);

-- Location: LCFF_X15_Y8_N3
\tick_timer[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \tick_timer~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|Strb_1ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tick_timer(5));

-- Location: LCCOMB_X15_Y8_N16
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = \Add0~11\ $ (!tick_timer(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => tick_timer(6),
	cin => \Add0~11\,
	combout => \Add0~12_combout\);

-- Location: LCCOMB_X15_Y8_N26
\tick_timer~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tick_timer~0_combout\ = (\Add0~12_combout\ & !\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~12_combout\,
	datad => \Equal0~1_combout\,
	combout => \tick_timer~0_combout\);

-- Location: LCFF_X15_Y8_N27
\tick_timer[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \tick_timer~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|Strb_1ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tick_timer(6));

-- Location: LCFF_X15_Y8_N13
\tick_timer[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Add0~8_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|Strb_1ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => tick_timer(4));

-- Location: LCCOMB_X15_Y8_N28
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!tick_timer(3) & (tick_timer(5) & (tick_timer(6) & !tick_timer(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_timer(3),
	datab => tick_timer(5),
	datac => tick_timer(6),
	datad => tick_timer(4),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X15_Y8_N0
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (tick_timer(1) & (\Equal0~0_combout\ & (tick_timer(0) & !tick_timer(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => tick_timer(1),
	datab => \Equal0~0_combout\,
	datac => tick_timer(0),
	datad => tick_timer(2),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X15_Y8_N24
\tick_strb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tick_strb~0_combout\ = (\tick_strb~regout\) # (\Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \tick_strb~regout\,
	datad => \Equal0~1_combout\,
	combout => \tick_strb~0_combout\);

-- Location: LCFF_X15_Y8_N25
tick_strb : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \tick_strb~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sclr => \inst_Timing|ALT_INV_Strb_1ms~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tick_strb~regout\);

-- Location: LCCOMB_X12_Y8_N6
\tick_int_req~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \tick_int_req~0_combout\ = (\tick_strb~regout\) # ((!\inst_IntControl|Service\(4) & (!\tick_int_sw_clr~regout\ & \tick_int_req~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_IntControl|Service\(4),
	datab => \tick_int_sw_clr~regout\,
	datac => \tick_int_req~regout\,
	datad => \tick_strb~regout\,
	combout => \tick_int_req~0_combout\);

-- Location: LCFF_X12_Y8_N7
tick_int_req : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \tick_int_req~0_combout\,
	ena => \inst_Synch_Rst|ALT_INV_Output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \tick_int_req~regout\);

-- Location: LCCOMB_X12_Y8_N2
\inst_IntControl|Int~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_IntControl|Int~2_combout\ = (\inst_IntControl|Int~1_combout\) # ((\inst_IntControl|Int~0_combout\ & ((!\tick_int_req~regout\) # (!int_enables(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => int_enables(4),
	datab => \inst_IntControl|Int~0_combout\,
	datac => \inst_IntControl|Int~1_combout\,
	datad => \tick_int_req~regout\,
	combout => \inst_IntControl|Int~2_combout\);

-- Location: LCCOMB_X12_Y8_N0
\inst_IntControl|Int~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_IntControl|Int~3_combout\ = (\inst_IntControl|cpu_clk_d~regout\ & (((\inst_IntControl|Int~_Duplicate_1_regout\)))) # (!\inst_IntControl|cpu_clk_d~regout\ & ((\cpu_clk_s~regout\ & ((!\inst_IntControl|Int~2_combout\))) # (!\cpu_clk_s~regout\ & 
-- (\inst_IntControl|Int~_Duplicate_1_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_IntControl|cpu_clk_d~regout\,
	datab => \cpu_clk_s~regout\,
	datac => \inst_IntControl|Int~_Duplicate_1_regout\,
	datad => \inst_IntControl|Int~2_combout\,
	combout => \inst_IntControl|Int~3_combout\);

-- Location: LCCOMB_X13_Y8_N30
\Selector38~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (!\PNL_DAT_RDn~reg0_regout\ & (((!a_s(0)) # (!\Equal3~8_combout\)) # (!a_s(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => a_s(1),
	datab => \Equal3~8_combout\,
	datac => a_s(0),
	datad => \PNL_DAT_RDn~reg0_regout\,
	combout => \Selector38~0_combout\);

-- Location: LCCOMB_X13_Y8_N20
\Selector38~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector38~1_combout\ = (!\Selector38~0_combout\ & ((\io_state.ST_IORD~regout\) # ((\PNL_DAT_RDn~reg0_regout\ & \io_state.ST_IDLE~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \io_state.ST_IORD~regout\,
	datab => \Selector38~0_combout\,
	datac => \PNL_DAT_RDn~reg0_regout\,
	datad => \io_state.ST_IDLE~regout\,
	combout => \Selector38~1_combout\);

-- Location: LCFF_X13_Y8_N21
\PNL_DAT_RDn~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \Selector38~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \PNL_DAT_RDn~reg0_regout\);

-- Location: LCCOMB_X19_Y7_N24
\inst_OutExpander|Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_OutExpander|Selector9~1_combout\ = (\inst_OutExpander|bit_count\(1) & (\inst_OutExpander|Selector9~0_combout\)) # (!\inst_OutExpander|bit_count\(1) & (((\inst_OutExpander|bit_count\(0) & \inst_OutExpander|state.ST_BIT1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_OutExpander|Selector9~0_combout\,
	datab => \inst_OutExpander|bit_count\(0),
	datac => \inst_OutExpander|bit_count\(1),
	datad => \inst_OutExpander|state.ST_BIT1~regout\,
	combout => \inst_OutExpander|Selector9~1_combout\);

-- Location: LCFF_X19_Y7_N25
\inst_OutExpander|bit_count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_OutExpander|Selector9~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|strb_1us_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_OutExpander|bit_count\(1));

-- Location: LCCOMB_X19_Y7_N26
\inst_OutExpander|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_OutExpander|Equal0~0_combout\ = (\inst_OutExpander|bit_count\(2) & (\inst_OutExpander|bit_count\(1) & \inst_OutExpander|bit_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_OutExpander|bit_count\(2),
	datac => \inst_OutExpander|bit_count\(1),
	datad => \inst_OutExpander|bit_count\(0),
	combout => \inst_OutExpander|Equal0~0_combout\);

-- Location: LCCOMB_X19_Y7_N28
\inst_OutExpander|Selector10~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_OutExpander|Selector10~0_combout\ = (\inst_OutExpander|bit_count\(0) & ((\inst_OutExpander|state~8_combout\) # ((\inst_OutExpander|Equal0~0_combout\ & \inst_OutExpander|state.ST_BIT1~regout\)))) # (!\inst_OutExpander|bit_count\(0) & 
-- (((\inst_OutExpander|state.ST_BIT1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_OutExpander|state~8_combout\,
	datab => \inst_OutExpander|Equal0~0_combout\,
	datac => \inst_OutExpander|bit_count\(0),
	datad => \inst_OutExpander|state.ST_BIT1~regout\,
	combout => \inst_OutExpander|Selector10~0_combout\);

-- Location: LCFF_X19_Y7_N29
\inst_OutExpander|bit_count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_OutExpander|Selector10~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|strb_1us_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_OutExpander|bit_count\(0));

-- Location: LCCOMB_X19_Y7_N6
\inst_OutExpander|state~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_OutExpander|state~9_combout\ = (\inst_OutExpander|bit_count\(2) & (\inst_OutExpander|bit_count\(0) & (\inst_OutExpander|bit_count\(1) & \inst_OutExpander|state.ST_BIT1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_OutExpander|bit_count\(2),
	datab => \inst_OutExpander|bit_count\(0),
	datac => \inst_OutExpander|bit_count\(1),
	datad => \inst_OutExpander|state.ST_BIT1~regout\,
	combout => \inst_OutExpander|state~9_combout\);

-- Location: LCFF_X19_Y7_N7
\inst_OutExpander|state.ST_DONE\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_OutExpander|state~9_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|strb_1us_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_OutExpander|state.ST_DONE~regout\);

-- Location: LCCOMB_X19_Y7_N20
\inst_OutExpander|state.ST_SETUP~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_OutExpander|state.ST_SETUP~0_combout\ = !\inst_OutExpander|state.ST_DONE~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_OutExpander|state.ST_DONE~regout\,
	combout => \inst_OutExpander|state.ST_SETUP~0_combout\);

-- Location: LCFF_X19_Y7_N21
\inst_OutExpander|state.ST_SETUP\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_OutExpander|state.ST_SETUP~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|strb_1us_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_OutExpander|state.ST_SETUP~regout\);

-- Location: LCCOMB_X19_Y7_N30
\inst_OutExpander|Selector11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_OutExpander|Selector11~0_combout\ = ((\inst_OutExpander|state.ST_BIT1~regout\ & !\inst_OutExpander|Equal0~0_combout\)) # (!\inst_OutExpander|state.ST_SETUP~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_OutExpander|state.ST_BIT1~regout\,
	datac => \inst_OutExpander|state.ST_SETUP~regout\,
	datad => \inst_OutExpander|Equal0~0_combout\,
	combout => \inst_OutExpander|Selector11~0_combout\);

-- Location: LCFF_X19_Y7_N31
\inst_OutExpander|state.ST_BIT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_OutExpander|Selector11~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|strb_1us_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_OutExpander|state.ST_BIT~regout\);

-- Location: LCFF_X19_Y7_N13
\inst_OutExpander|state.ST_BIT1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	sdata => \inst_OutExpander|state.ST_BIT~regout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	sload => VCC,
	ena => \inst_Timing|strb_1us_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_OutExpander|state.ST_BIT1~regout\);

-- Location: LCCOMB_X19_Y7_N18
\inst_OutExpander|state~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_OutExpander|state~8_combout\ = (\inst_OutExpander|state.ST_DONE~regout\) # (\inst_OutExpander|state.ST_BIT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_OutExpander|state.ST_DONE~regout\,
	datad => \inst_OutExpander|state.ST_BIT~regout\,
	combout => \inst_OutExpander|state~8_combout\);

-- Location: LCCOMB_X19_Y7_N14
\inst_OutExpander|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_OutExpander|Selector1~0_combout\ = (\inst_OutExpander|reg\(6) & ((\inst_OutExpander|state.ST_BIT1~regout\) # ((\inst_OutExpander|reg\(7) & \inst_OutExpander|state~8_combout\)))) # (!\inst_OutExpander|reg\(6) & (((\inst_OutExpander|reg\(7) & 
-- \inst_OutExpander|state~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_OutExpander|reg\(6),
	datab => \inst_OutExpander|state.ST_BIT1~regout\,
	datac => \inst_OutExpander|reg\(7),
	datad => \inst_OutExpander|state~8_combout\,
	combout => \inst_OutExpander|Selector1~0_combout\);

-- Location: LCFF_X19_Y7_N15
\inst_OutExpander|reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_OutExpander|Selector1~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|strb_1us_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_OutExpander|reg\(7));

-- Location: LCCOMB_X19_Y7_N4
\inst_OutExpander|OX_DATA~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_OutExpander|OX_DATA~0_combout\ = (\inst_OutExpander|state.ST_BIT~regout\ & ((\inst_Timing|strb_1us_int~regout\ & (\inst_OutExpander|reg\(7))) # (!\inst_Timing|strb_1us_int~regout\ & ((\inst_OutExpander|OX_DATA~regout\))))) # 
-- (!\inst_OutExpander|state.ST_BIT~regout\ & (((\inst_OutExpander|OX_DATA~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_OutExpander|state.ST_BIT~regout\,
	datab => \inst_OutExpander|reg\(7),
	datac => \inst_OutExpander|OX_DATA~regout\,
	datad => \inst_Timing|strb_1us_int~regout\,
	combout => \inst_OutExpander|OX_DATA~0_combout\);

-- Location: LCFF_X19_Y7_N5
\inst_OutExpander|OX_DATA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_OutExpander|OX_DATA~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_OutExpander|OX_DATA~regout\);

-- Location: LCCOMB_X19_Y7_N22
\inst_OutExpander|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_OutExpander|Selector12~0_combout\ = (\inst_OutExpander|state.ST_BIT1~regout\) # ((\inst_OutExpander|OX_SRCLK~regout\ & ((\inst_OutExpander|state.ST_DONE~regout\) # (!\inst_OutExpander|state.ST_SETUP~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_OutExpander|state.ST_SETUP~regout\,
	datab => \inst_OutExpander|state.ST_BIT1~regout\,
	datac => \inst_OutExpander|OX_SRCLK~regout\,
	datad => \inst_OutExpander|state.ST_DONE~regout\,
	combout => \inst_OutExpander|Selector12~0_combout\);

-- Location: LCFF_X19_Y7_N23
\inst_OutExpander|OX_SRCLK\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_OutExpander|Selector12~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|strb_1us_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_OutExpander|OX_SRCLK~regout\);

-- Location: LCCOMB_X19_Y7_N10
\inst_OutExpander|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_OutExpander|Selector0~0_combout\ = (\inst_OutExpander|state.ST_DONE~regout\) # ((\inst_OutExpander|OX_RCLK~regout\ & ((\inst_OutExpander|state.ST_BIT~regout\) # (\inst_OutExpander|state.ST_BIT1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_OutExpander|state.ST_BIT~regout\,
	datab => \inst_OutExpander|state.ST_BIT1~regout\,
	datac => \inst_OutExpander|OX_RCLK~regout\,
	datad => \inst_OutExpander|state.ST_DONE~regout\,
	combout => \inst_OutExpander|Selector0~0_combout\);

-- Location: LCFF_X19_Y7_N11
\inst_OutExpander|OX_RCLK\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_OutExpander|Selector0~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_Timing|strb_1us_int~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_OutExpander|OX_RCLK~regout\);

-- Location: LCCOMB_X9_Y10_N28
\inst_Con_Tx|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Tx|Selector0~0_combout\ = (\inst_Con_Tx|reg\(0) & ((\inst_Con_Tx|state.ST_DATA~regout\) # ((!\inst_Con_Tx|TxD~regout\ & \inst_Con_Tx|state.ST_TRIGD~regout\)))) # (!\inst_Con_Tx|reg\(0) & (!\inst_Con_Tx|TxD~regout\ & 
-- ((\inst_Con_Tx|state.ST_TRIGD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Con_Tx|reg\(0),
	datab => \inst_Con_Tx|TxD~regout\,
	datac => \inst_Con_Tx|state.ST_DATA~regout\,
	datad => \inst_Con_Tx|state.ST_TRIGD~regout\,
	combout => \inst_Con_Tx|Selector0~0_combout\);

-- Location: LCCOMB_X9_Y10_N0
\inst_Con_Tx|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Con_Tx|Selector0~1_combout\ = (!\inst_Con_Tx|Selector0~0_combout\ & \inst_Con_Tx|state.ST_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_Con_Tx|Selector0~0_combout\,
	datac => \inst_Con_Tx|state.ST_IDLE~regout\,
	combout => \inst_Con_Tx|Selector0~1_combout\);

-- Location: LCFF_X9_Y10_N1
\inst_Con_Tx|TxD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Con_Tx|Selector0~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Con_Tx|TxD~regout\);

-- Location: LCCOMB_X17_Y6_N0
\inst_Aux_Tx|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_Aux_Tx|Selector0~1_combout\ = (!\inst_Aux_Tx|Selector0~0_combout\ & \inst_Aux_Tx|state.ST_IDLE~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_Aux_Tx|Selector0~0_combout\,
	datac => \inst_Aux_Tx|state.ST_IDLE~regout\,
	combout => \inst_Aux_Tx|Selector0~1_combout\);

-- Location: LCFF_X17_Y6_N1
\inst_Aux_Tx|TxD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_Aux_Tx|Selector0~1_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_Aux_Tx|TxD~regout\);

-- Location: LCFF_X8_Y4_N21
\inst_FIFOs|contents[3][4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_FIFOs|contents[3][4]~49_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	ena => \inst_FIFOs|contents[3][0]~82_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_FIFOs|contents[3][4]~regout\);

-- Location: LCCOMB_X8_Y4_N8
\inst_FIFOs|LessThan3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_FIFOs|LessThan3~0_combout\ = (\inst_FIFOs|contents[3][4]~regout\) # (\inst_FIFOs|contents[3][5]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_FIFOs|contents[3][4]~regout\,
	datad => \inst_FIFOs|contents[3][5]~regout\,
	combout => \inst_FIFOs|LessThan3~0_combout\);

-- Location: LCCOMB_X13_Y9_N12
\inst_SPI_Master|SPI_SCLK~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|SPI_SCLK~0_combout\ = (\inst_SPI_Master|tstrb~regout\ & ((\inst_SPI_Master|state.ST_DATA~regout\) # ((\inst_SPI_Master|SPI_SCLK~regout\ & !\inst_SPI_Master|state.ST_TX~regout\)))) # (!\inst_SPI_Master|tstrb~regout\ & 
-- (((\inst_SPI_Master|SPI_SCLK~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SPI_Master|state.ST_DATA~regout\,
	datab => \inst_SPI_Master|tstrb~regout\,
	datac => \inst_SPI_Master|SPI_SCLK~regout\,
	datad => \inst_SPI_Master|state.ST_TX~regout\,
	combout => \inst_SPI_Master|SPI_SCLK~0_combout\);

-- Location: LCFF_X13_Y9_N13
\inst_SPI_Master|SPI_SCLK\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|SPI_SCLK~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|SPI_SCLK~regout\);

-- Location: LCCOMB_X13_Y9_N22
\inst_SPI_Master|SPI_MOSI~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst_SPI_Master|SPI_MOSI~0_combout\ = (\inst_SPI_Master|tstrb~regout\ & ((\inst_SPI_Master|state.ST_TX~regout\ & (\inst_SPI_Master|reg\(7))) # (!\inst_SPI_Master|state.ST_TX~regout\ & ((\inst_SPI_Master|SPI_MOSI~regout\))))) # 
-- (!\inst_SPI_Master|tstrb~regout\ & (((\inst_SPI_Master|SPI_MOSI~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_SPI_Master|reg\(7),
	datab => \inst_SPI_Master|tstrb~regout\,
	datac => \inst_SPI_Master|SPI_MOSI~regout\,
	datad => \inst_SPI_Master|state.ST_TX~regout\,
	combout => \inst_SPI_Master|SPI_MOSI~0_combout\);

-- Location: LCFF_X13_Y9_N23
\inst_SPI_Master|SPI_MOSI\ : cycloneii_lcell_ff
PORT MAP (
	clk => \RClk~clkctrl_outclk\,
	datain => \inst_SPI_Master|SPI_MOSI~0_combout\,
	aclr => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst_SPI_Master|SPI_MOSI~regout\);

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LED_D2n~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LED_D2n~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_D2n);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LED_D4n~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LED_D4n~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_D4n);

-- Location: PIN_9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\LED_D5n~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \LED_D5n~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LED_D5n);

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\IOWAITn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "clear",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Selector39~0_combout\,
	outclk => \RClk~clkctrl_outclk\,
	areset => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_IOWAITn);

-- Location: PIN_87,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\MMAP_ENn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \MMAP_ENn~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MMAP_ENn);

-- Location: PIN_92,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\MMAP_IO_SELn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_MMAP_IO_SELn~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_MMAP_IO_SELn);

-- Location: PIN_94,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\INT~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "clear",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst_IntControl|Int~3_combout\,
	outclk => \RClk~clkctrl_outclk\,
	areset => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_INT);

-- Location: PIN_96,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\NMI~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "clear",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst_NMI_Control|Selector16~5_combout\,
	outclk => \RClk~clkctrl_outclk\,
	areset => \inst_Synch_Rst|Output[0]~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_NMI);

-- Location: PIN_93,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\PNL_DAT_RDn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_PNL_DAT_RDn~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_PNL_DAT_RDn);

-- Location: PIN_97,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\OX_DATA~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst_OutExpander|OX_DATA~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OX_DATA);

-- Location: PIN_99,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\OX_SRCLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst_OutExpander|OX_SRCLK~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OX_SRCLK);

-- Location: PIN_100,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\OX_RCLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst_OutExpander|OX_RCLK~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OX_RCLK);

-- Location: PIN_112,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\CTxDn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst_Con_Tx|ALT_INV_TxD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CTxDn);

-- Location: PIN_114,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\CRTSn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst_FIFOs|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_CRTSn);

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\ATxDn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst_Aux_Tx|ALT_INV_TxD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ATxDn);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\ARTSn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst_FIFOs|LessThan3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ARTSn);

-- Location: PIN_126,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\SPI_CSn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_spi_mc_ss~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SPI_CSn);

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\SPI_SCLK~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst_SPI_Master|SPI_SCLK~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SPI_SCLK);

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 4mA
\SPI_MOSI~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst_SPI_Master|SPI_MOSI~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_SPI_MOSI);
END structure;


