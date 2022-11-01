-- **********************************
-- * ZARC FPGA Source               *
-- * Constants File                 *
-- * Written by: Merlin Skinner     *
-- * Date Started: 28/7/2019        *
-- **********************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


package Definitions is

    -- *************
    -- * Constants *
    -- *************

    -- See Main.vhd for version history
    constant FW_MAJVER : integer := 16#00#;         -- 8-bit major version number
    constant FW_MINVER : integer := 16#08#;         -- 8-bit minor version number

    -- Timing strobe constants
    constant MICROSECOND_CLK_DIV : integer := 50;   -- For 50 MHz reference clock
    constant MS_PER_TICK : integer := 100;          -- Regular timing interrupt rate

    -- Z80 Interface
    constant CPU_DATA_WIDTH : integer := 8;         -- Data bus width
    constant CPU_IO_ADDR_WIDTH : integer := 8;      -- Address bus width

    -- Memory mapping
    constant MMAP_REGS_NUM : integer := 4;          -- Number of memory mapping registers
    
    -- Output Expander
    constant IOX_WIDTH : integer := 8;              -- Expander (shift register) width
    -- Bits are used as follows:
    constant IOX_PNL_S0n : integer := 0;
    constant IOX_PNL_S1n : integer := 1;
    constant IOX_PNL_CTxDn : integer := 2;
    constant IOX_PNL_CRxDn : integer := 3;
    constant IOX_PNL_ARxDn : integer := 4;
    constant IOX_PNL_ATxDn : integer := 5;
    constant IOX_SPARE1 : integer := 6;
    constant IOX_SPARE2 : integer := 7;

    -- *** I/O register address mapping ***
    -- This should be kept in sync with the io_map.i include file.
    -- The I/O address for the front panel switches and paging registers are
    -- decoded in the FPGA.
    constant IOA_FPGA_MajRev : integer := 16#00#;   -- FPGA major revision
    constant IOA_FPGA_MinRev : integer := 16#01#;   -- FPGA minor revision
    constant IOA_Control : integer := 16#02#;       -- System control register

    constant IOA_FP_SW : integer := 16#03#;         -- Front panel data switches

    -- Paging
    constant IOA_PAGE_0 : integer := 16#04#;        -- Page and protection for 0x0000 to 0x3fff
    constant IOA_PAGE_1 : integer := 16#05#;        -- Page and protection for 0x4000 to 0x7fff
    constant IOA_PAGE_2 : integer := 16#06#;        -- Page and protection for 0x8000 to 0xbfff
    constant IOA_PAGE_3 : integer := 16#07#;        -- Page and protection for 0xc000 to 0xffff

    -- Interrupts
    -- Note: addresses 0x09 and 0x0b reserved for use if more than eight interrupt sources are required.
    constant IOA_INT_EN : integer := 16#08#;        -- Enables
    constant IOA_INT_PEND : integer := 16#0a#;      -- Pending interrupts

    -- NMI
    constant IOA_NMI_REASONS : integer := 16#0c#;   -- NMI reason flags

    -- Serial.
    -- These are based on the Intel 8251, but only some bits are implemented.
    constant IOA_CON_CSR : integer := 16#10#;       -- Console control / status
    constant IOA_CON_DATA : integer := 16#11#;      -- Console data I/O
    constant IOA_AUX_CSR : integer := 16#12#;       -- Auxiliary serial control / status
    constant IOA_AUX_DATA : integer := 16#13#;      -- Auxiliary serial data I/O

    -- RTC (DS1672)
    -- I2C, implemented using a byte interface to the CPU.
    constant IOA_RTC_CSR : integer := 16#18#;       -- Control and status
    constant IOA_RTC_DATA : integer := 16#19#;      -- Data

    -- Memory Card
    -- Use SPI mode, with a generally similar interface to that of the RTC.
    constant IOA_SPI_CSR : integer := 16#20#;        -- Control
    constant IOA_SPI_DATA : integer := 16#21#;       -- Data

    -- 32-Bit Cyclic Redundancy Check
    -- Write to the CRC register to set the initial value. Writing to the input
    -- data register updates the CRC.
    constant IOA_CRC_0 : integer := 16#24#;         -- CRC register (low)
    constant IOA_CRC_1 : integer := 16#25#;         -- CRC register (high)
    constant IOA_CRC_DATA : integer := 16#26#;      -- Input data

    -- *** Proposed features ***
    -- Video
    -- constant IOA_VID_CTRL : integer := 16#30#;      -- Control (cursor on/off ...)
    -- constant IOA_VID_DATA : integer := 16#31#;      -- Data
    -- constant IOA_VID_CUR_X : integer := 16#32#;     -- Cursor X (0 to 127)
    -- constant IOA_VID_CUR_Y : integer := 16#33#;     -- Cursor Y (0 to 63)
    -- constant IOA_VID_START_L : integer := 16#34#;   -- Display start address (low byte)
    -- constant IOA_VID_START_H : integer := 16#35#;   -- Display start address (high byte)

    -- Video palette
    -- Each entry consists of 6 bits of colour data. Foreground and background
    -- colour pairs are selected from the above palette using eight of the 22
    -- control codes in the display character set. This leaves codes for
    -- double-height, double-width etc.
    -- constant IOA_VID_PALBG0 : integer := 16#40#;    -- Background colour 0
    -- constant IOA_VID_PALFG0 : integer := 16#41#;    -- Foreground colour 0
    -- constant IOA_VID_PALBG1 : integer := 16#42#;    -- Background colour 1
    -- constant IOA_VID_PALFG1 : integer := 16#43#;    -- Foreground colour 1
    -- constant IOA_VID_PALBG2 : integer := 16#44#;    -- Background colour 2
    -- constant IOA_VID_PALFG2 : integer := 16#45#;    -- Foreground colour 2
    -- constant IOA_VID_PALBG3 : integer := 16#46#;    -- Background colour 3
    -- constant IOA_VID_PALFG3 : integer := 16#47#;    -- Foreground colour 3
    -- constant IOA_VID_PALBG4 : integer := 16#48#;    -- Background colour 4
    -- constant IOA_VID_PALFG4 : integer := 16#49#;    -- Foreground colour 4
    -- constant IOA_VID_PALBG5 : integer := 16#4a#;    -- Background colour 5
    -- constant IOA_VID_PALFG5 : integer := 16#4b#;    -- Foreground colour 5
    -- constant IOA_VID_PALBG6 : integer := 16#4c#;    -- Background colour 6
    -- constant IOA_VID_PALFG6 : integer := 16#4d#;    -- Foreground colour 6
    -- constant IOA_VID_PALBG7 : integer := 16#4e#;    -- Background colour 7
    -- constant IOA_VID_PALFG7 : integer := 16#4f#;    -- Foreground colour 7

    -- Arithmetic
    -- Multiply, divide … based on 68000 DIV, DIVU, MUL, MULU.
    -- Multiply does A[16] * B[16] => C[32].
    -- Divide does A[32] / B[16] => C[32] (16-bit remainder [high bits] and
    -- 16-bit quotient [low bits]).
    -- Status bits include “complete” and “overflow”.
    -- constant IOA_ARITH_A_L : integer := 16#50#;     -- A register (low)
    -- constant IOA_ARITH_A_H : integer := 16#51#;     -- A register (high)
    -- constant IOA_ARITH_B_L : integer := 16#54#;     -- B register (low)
    -- constant IOA_ARITH_B_H : integer := 16#57#;     -- B register (high)
    -- constant IOA_ARITH_C_0 : integer := 16#58#;     -- C register (low)
    -- constant IOA_ARITH_C_1 : integer := 16#59#; 
    -- constant IOA_ARITH_C_2 : integer := 16#5a#;
    -- constant IOA_ARITH_C_3 : integer := 16#5b#;     -- C register (high)
    -- constant IOA_ARITH_CSR : integer := 16#5c#;     -- Command / status


    -- *** Register bits allocation ***

    -- System control register (IOA_Control) bits
    constant CTRL_TRARM_BIT : integer := 0;         -- Trace (single step) arm
    constant CTRL_MMAP_BIT :  integer := 1;         -- Memory mapping enable bit
    constant CTRL_NMCLR_BIT : integer := 2;         -- NMI mapping clear
    constant CTRL_MAPARM_BIT : integer := 3;        -- Memory mapping arm
    constant CTRL_MMAPN_BIT : integer := 4;         -- MMAP state on NMI
    constant CTRL_TRPRE0_BIT : integer := 5;        -- Trace prefix count
    constant CTRL_TRPRE1_BIT : integer := 6;

    -- Video control codes.
    -- Codes recognised by the hardware video system.
    -- In double width modes, characters displayed are alternately left and right
    -- halves, so characters following must be duplicated.
    constant VID_CTRL_NORM : integer := 16#00#;     -- Normal height, normal width
    -- 16#01 is reserved (duplicate of above in hardware)
    constant VID_CTRL_NH_DW : integer := 16#02#;    -- Normal height, double width
    -- 16#03 is reserved (duplicate of above in hardware)
    constant VID_CTRL_DHU_NW : integer := 16#04#;   -- Double height (upper), normal width
    constant VID_CTRL_DHL_NW : integer := 16#05#;   -- Double height (lower), normal width
    constant VID_CTRL_DHU_DW : integer := 16#06#;   -- Double height (upper), double width
    constant VID_CTRL_DHL_DW : integer := 16#07#;   -- Double height (lower), double width
    constant VID_CTRL_CS_0 : integer := 16#08#;     -- Select colour set 0
    constant VID_CTRL_CS_1 : integer := 16#09#;     -- Select colour set 1
    constant VID_CTRL_CS_2 : integer := 16#0a#;     -- Select colour set 2
    constant VID_CTRL_CS_3 : integer := 16#0b#;     -- Select colour set 3
    constant VID_CTRL_CS_4 : integer := 16#0c#;     -- Select colour set 4
    constant VID_CTRL_CS_5 : integer := 16#0d#;     -- Select colour set 5
    constant VID_CTRL_CS_6 : integer := 16#0e#;     -- Select colour set 6
    constant VID_CTRL_CS_7 : integer := 16#0f#;     -- Select colour set 7
    -- 0x10 to 0x16 are reserved

    -- Serial I/O
    constant ASER_WORD_LENGTH : integer := 8;       -- Word length in bits
    -- For 9600 Baud (higher CPU clock rates)
    constant ASER_BAUD_MULT : integer := 8;      -- Strobe multple of Baud rate
    constant ASER_BAUD_DIVIDER : integer := 651; -- Baud rate divider for 9600 Baud
    -- For 1200 Baud (use with at 31.25 kHz CPU_CLK)
    -- constant ASER_BAUD_MULT : integer := 4;         -- Strobe multiple of Baud rate
    -- constant ASER_BAUD_DIVIDER : integer := 10417;  -- Baud rate divider for 1200 Baud

    -- FIFOs
    constant FIFOS_NUM : integer := 4;              -- Number of FIFOs to implement
    constant FIFO_CON_TX : integer := 0;            -- Console transmitter
    constant FIFO_CON_RX : integer := 1;            -- Console receiver
    constant FIFO_AUX_TX : integer := 2;            -- Auxiliary transmitter
    constant FIFO_AUX_RX : integer := 3;            -- Auxiliary receiver

    -- Interrupts
    -- Note: Up to eight interrupts are supported. IM 2 is anticipated, and the
    -- fixed vector associated with each interrupt is supplied when the interrupt
    -- is serviced. Routine address is “I*256+databus”. Vector supplied is
    -- 0xe0 + 2 * interrupt number (0 to 7). Space is reserved after the vector table
    -- and in the I/O map for expansion up to 16 interrrupts if required.
    constant INTS_NUM : integer := 5;               -- Number of interrupt sources
    constant INT_VEC_BASE : integer := 16#e0#;      -- Base of vector supplied to CPU
    constant INT_CON_TX_BIT : integer := 0;         -- Console transmitter buffer is half full or less
    constant INT_CON_RX_BIT : integer := 1;         -- Console receiver has data
    constant INT_AUX_TX_BIT : integer := 2;         -- Auxiliary transmitter buffer is half full or less
    constant INT_AUX_RX_BIT : integer := 3;         -- Auxiliary receiver has data
    constant INT_TICK_BIT : integer := 4;           -- Regular timekeeping

    -- NMI
    constant TRACE_CYCLES : integer := 15;          -- Number of bus cycles before trace NMI
    constant MMAP_ARM_CYCLES : integer := 14;       -- Number of bus cycles before enable
    constant NMI_REASONS_NUM : integer := 4;        -- Number of reasons for an NMI
    -- NMI_REASONS register bits.
    constant NMI_SWITCH_BIT : integer := 0;         -- Front panel switch
    constant NMI_PROT_VIOL_BIT : integer := 1;      -- Write protection violation
    constant NMI_SUPER_VIOL_BIT : integer := 2;     -- Supervisor violation
    constant NMI_TRACE_BIT : integer := 3;          -- Trace (single step) interrupt

   -- I2C (Inter-Integrated Circuit) master interface.
    constant I2C_WORD_LENGTH : integer := 8;        -- Word length in bits
    -- 100 k Baud is the maximum low rate speed. The DS1672 is capable of operating at 400 k Baud.
    constant I2C_BAUD_MULT : integer := 4;          -- Strobe multple of Baud rate
    constant I2C_BAUD_US_DIV : integer := 4;        -- Baud rate divider for 62.5 k Baud
    -- Bits in IOA_RTC_CSR
    constant I2C_ACKN_BIT : integer := 0;           -- (Read / write) acknowledge from receiving device
    constant I2C_START_BIT : integer := 1;          -- (Write only) trigger start sequence
    constant I2C_STOP_BIT : integer := 2;           -- (Write only) trigger stop sequence
    constant I2C_BUSY_BIT : integer := 7;           -- (Read only) transceiver busy

   -- SPI (Serial Peripheral Interface) master interface.
    constant SPI_WORD_LENGTH : integer := 8;        -- Word length in bits
    -- Slow speed must be 100 to 400 k Baud.
    constant SPI_BAUD_MULT : integer := 2;          -- Strobe multple of Baud rate
    constant SPI_BAUD_SLOW_DIV : integer := 63;     -- Divider for  approx. 400 k Baud
    constant SPI_BAUD_FAST_DIV : integer := 3;      -- Divider for  approx. 8 M Baud
    -- Bits in IOA_SPI_CSR
    constant SPI_FAST_BIT : integer := 0;           -- (Read / write) SPI speed select
    constant SPI_MC_SS_BIT : integer := 1;          -- (Read / write) memory card slave select
    constant SPI_BUSY_BIT : integer := 7;           -- (Read only) transceiver busy

    -- CRC16 / XMODEM and MultiMediaCard CRC16 algorithm.
    constant CRCX_REG_LENGTH : integer := 16;       -- CRC register length
    


    -- *********
    -- * Types *
    -- *********

    -- For FIFOs.vhd
    type FIFOS_DATA_TYPE is array (FIFOS_NUM - 1 downto 0) of std_logic_vector (CPU_DATA_WIDTH - 1 downto 0);
    -- Memory mapping shadow registers
    type MMAP_SHADOW_TYPE is array (MMAP_REGS_NUM - 1 downto 0) of std_logic_vector (CPU_DATA_WIDTH - 1 downto 0);

end package Definitions;
