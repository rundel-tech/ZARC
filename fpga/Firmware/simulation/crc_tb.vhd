-- **********************************
-- * ZARC FPGA CRC Test Bench       *
-- * Interrupt Logic                *
-- * Test Bench                     *
-- * Written by: Merlin Skinner     *
-- * Date Started: 9/6/2020         *
-- **********************************

-- Simulates CRC16 / XMODEM and MultiMediaCard CRC16 hardware/


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.Definitions.all;           -- Project definitions


entity crc_tb is
end entity crc_tb;

architecture beh of crc_tb is


    -- **************
    -- * Components *
    -- **************

    component Main
        port(
            -- Demo board connections
            RClk : in std_logic;            -- CLK0 reference clock, 50 MHz (P4-12)
            LED_D2n : out std_logic;        -- Indicator LED D2
            LED_D4n : out std_logic;        -- Indicator LED D4
            LED_D5n : out std_logic;        -- Indicator LED D5

            -- CPU Interface
            -- Signal names are as schematics omitting the leading "LV_" and with
            -- a trailing "n" to indicate active low where appropriate.
            CPU_CLK : in std_logic;         -- CPU clock (8 MHz)
            RESET : in std_logic;           -- CPU reset
            D : inout std_logic_vector (CPU_DATA_WIDTH - 1 downto 0); -- Data bus
            A : in std_logic_vector (CPU_IO_ADDR_WIDTH - 1 downto 0); -- Address bus
            M1n : in std_logic;             -- Machine cycle 1
            IORQn : in std_logic;           -- I/O request
            MREQn : in std_logic;           -- Memory request
            WRn : in std_logic;             -- Write strobe
            RDn : in std_logic;             -- Read strobe
            IOWAITn : out std_logic;        -- I/O cycle wait state request
            -- Memory mapping
            SUPER : in std_logic;           -- Supervisor mode - I/O access allowed
            PROT : in std_logic;            -- Write protect
            MMAP_ENn : out std_logic;       -- Enable memory mapping
            MMAP_IO_SELn : out std_logic;   -- Map registers write strobe
            -- Interrupts
            NMI_SWITCHn : in std_logic;     -- Debounced front panel NMI switch
            INT : out std_logic;            -- Interrupt to CPU
            NMI : out std_logic;            -- Non-maskable interrupt to CPU
            -- Front panel
            PNL_DAT_RDn : out std_logic;    -- Front panel switch buffer enable
            -- Output expander (74x595)
            OX_DATA : out std_logic;        -- Serial data
            OX_SRCLK : out std_logic;       -- Shift register clock
            OX_RCLK : out std_logic;        -- Register clock

            -- RS-232 I/O
            -- Note - front panel indicators are driven via the output expander.
            CTxDn : out std_logic;          -- Console RS-232 transmit
            CRxDn : in std_logic;           -- Console RS-232 receive
            CRTSn : out std_logic;          -- Console RTS (RTR)
            CCTSn : in std_logic;           -- Console CTS
            ATxDn : out std_logic;          -- Aux. RS-232 transmit
            ARxDn : in std_logic;           -- Aux. RS-232 receive
            ARTSn : out std_logic;          -- Aux. RTS (RTR)
            ACTSn : in std_logic;           -- Aux. CTS

            -- Real Time Clock (RTC - DS1672). The interface is I2C.
            RTC_SCL : inout std_logic;
            RTC_SDA : inout std_logic;

            -- Memory card. The interface is SPI.
            SPI_CSn : out std_logic;
            SPI_SCLK : out std_logic;
            SPI_MOSI : out std_logic;
            SPI_MISO : in std_logic

        );
    end component;


    -- *************
    -- * Variables *
    -- *************

    signal RClk : std_logic;            -- CLK0 reference clock, 50 MHz (P4-12)
    signal LED_D2n : std_logic;        -- Indicator LED D2
    signal LED_D4n : std_logic;        -- Indicator LED D4
    signal LED_D5n : std_logic;        -- Indicator LED D5

    -- CPU Interface
    -- Signal names are as schematics omitting the leading "LV_" and with
    -- a trailing "n" to indicate active low where appropriate.
    signal CPU_CLK : std_logic;         -- CPU clock (8 MHz)
    signal RESET : std_logic;           -- CPU reset
    signal D : std_logic_vector (CPU_DATA_WIDTH - 1 downto 0); -- Data bus
    signal A : std_logic_vector (CPU_IO_ADDR_WIDTH - 1 downto 0); -- Address bus
    signal M1n : std_logic;             -- Machine cycle 1
    signal IORQn : std_logic;           -- I/O request
    signal MREQn : std_logic;           -- Memory request
    signal WRn : std_logic;             -- Write strobe
    signal RDn : std_logic;             -- Read strobe
    signal IOWAITn : std_logic;        -- I/O cycle wait state request
    -- Memory mapping
    signal SUPER : std_logic;           -- Supervisor mode - I/O access allowed
    signal PROT : std_logic;            -- Write protect
    signal MMAP_ENn : std_logic;       -- Enable memory mapping
    signal MMAP_IO_SELn : std_logic;   -- Map registers write strobe
    -- Interrupts
    signal NMI_SWITCHn : std_logic;      -- Debounced front panel NMI switch
    signal INT : std_logic;             -- Interrupt to CPU
    signal NMI : std_logic;             -- Non-maskable interrupt to CPU
    -- Front panel
    signal PNL_DAT_RDn : std_logic;     -- Front panel switch buffer enable
            -- Output expander (74x595)
    signal OX_DATA : std_logic;         -- Serial data
    signal OX_SRCLK : std_logic;        -- Shift register clock
    signal OX_RCLK : std_logic;         -- Register clock

    -- RS-232 I/O
    -- Note - front panel indicators are driven via the output expander.
    signal CTxDn : std_logic;           -- Console RS-232 transmit
    signal CRxDn : std_logic;            -- Console RS-232 receive
    signal CRTSn : std_logic;           -- Console RTS (RTR)
    signal CCTSn : std_logic;            -- Console CTS
    signal ATxDn : std_logic;           -- Aux. RS-232 transmit
    signal ARxDn : std_logic;            -- Aux. RS-232 receive
    signal ARTSn : std_logic;           -- Aux. RTS (RTR)
    signal ACTSn : std_logic;            -- Aux. CTS

    -- Real Time Clock (RTC - DS1672). The interface is I2C.
    signal RTC_SCL : std_logic;
    signal RTC_SDA : std_logic;

    -- Memory card. The interface is SPI.
    signal SPI_CSn : std_logic;
    signal SPI_SCLK : std_logic;
    signal SPI_MOSI : std_logic;
    signal SPI_MISO : std_logic;


begin

    -- ****************************
    -- * Component Instantiations *
    -- ****************************

    uut : Main
        port map(
            -- Demo board connections
            RClk => RClk,                   -- CLK0 reference clock, 50 MHz (P4-12)
            LED_D2n => LED_D2n,             -- Indicator LED D2
            LED_D4n => LED_D4n,             -- Indicator LED D4
            LED_D5n => LED_D5n,             -- Indicator LED D5

            -- CPU Interface
            -- Signal names are as schematics omitting the leading "LV_" and with
            -- a trailing "n" to indicate active low where appropriate.
            CPU_CLK => CPU_CLK,             -- CPU clock (8 MHz)
            RESET => RESET,                 -- CPU reset
            D => D,                         -- Data bus
            A => A,                         -- Address bus
            M1n => M1n,                     -- Machine cycle 1
            IORQn => IORQn,                 -- I/O request
            MREQn => MREQn,                 -- Memory request
            WRn => WRn,                     -- Write strobe
            RDn => RDn,                     -- Read strobe
            IOWAITn => IOWAITn,             -- I/O cycle wait state request
            -- Memory mapping
            SUPER => SUPER,                 -- Supervisor mode - I/O access allowed
            PROT => PROT,                   -- Write protect
            MMAP_ENn => MMAP_ENn,           -- Enable memory mapping
            MMAP_IO_SELn => MMAP_IO_SELn,   -- Map registers write strobe
            -- Interrupts
            NMI_SWITCHn => NMI_SWITCHn,     -- Debounced front panel NMI switch
            INT => INT,                     -- Interrupt to CPU
            NMI => NMI,                     -- Non-maskable interrupt to CPU
            -- Front panel
            PNL_DAT_RDn => PNL_DAT_RDn,     -- Front panel switch buffer enable
            -- Output expander (74x595)
            OX_DATA => OX_DATA,             -- Serial data
            OX_SRCLK => OX_SRCLK,           -- Shift register clock
            OX_RCLK => OX_RCLK,             -- Register clock

            -- RS-232 I/O
            -- Note - front panel indicators are driven via the output expander.
            CTxDn => CTxDn,                 -- Console RS-232 transmit
            CRxDn => CRxDn,                 -- Console RS-232 receive
            CRTSn => CRTSn,                 -- Console RTS (RTR)
            CCTSn => CCTSn,                 -- Console CTS
            ATxDn => ATxDn,                 -- Aux. RS-232 transmit
            ARxDn => ARxDn,                 -- Aux. RS-232 receive
            ARTSn => ARTSn,                 -- Aux. RTS (RTR)
            ACTSn => ACTSn,                 -- Aux. CTS

            -- Real Time Clock (RTC - DS1672). The interface is I2C.
            RTC_SCL => RTC_SCL,
            RTC_SDA => RTC_SDA,

            -- Memory card. The interface is SPI.
            SPI_CSn => SPI_CSn,
            SPI_SCLK => SPI_SCLK,
            SPI_MOSI => SPI_MOSI,
            SPI_MISO => SPI_MISO

        );


    -- *********
    -- * Logic *
    -- *********

    -- Generate 50 MHz reference clock
    fclk : process
    begin
        loop
            RClk <= '0';
            wait for 10 ns;
            RClk <= '1';
            wait for 10 ns;
        end loop;
	end process fclk;

    -- Generate CPU clock
    cclk : process
    begin
        loop
            CPU_CLK <= '0';
            wait for 62.5 ns;
            CPU_CLK <= '1';
            wait for 62.5 ns;
        end loop;
    end process cclk;

    -- Generate reset pulse
    rst : process
    begin
        RESET <= '1';
        wait for 256 ns;
        wait until falling_edge(CPU_CLK);
        RESET <= '0';
        wait;
    end process rst;

    -- Generate Z80 bus activity
    test : process

        -- *** Procedures ***

        -- Generate activity associated with a Z80 bus cycles. Assumes we are at
        -- the beginning of the T1 cycle when called. Note that the FPGA only sees
        -- I/O cycle data.

        procedure z80_m1 is
        begin
            A <= (others => 'X');               -- Address is not meaningful
            D <= (others => 'Z');
            M1n <= '0';
            wait until falling_edge (CPU_CLK);  -- Middle of T1
            MREQn <= '0';
            RDn <= '0';
            wait until rising_edge (CPU_CLK);   -- Start of T2
            wait until rising_edge (CPU_CLK);   -- Start of T3
            M1n <= '1';
            MREQn <= '1';
            RDn <= '1';
            wait until falling_edge (CPU_CLK);  -- Middle of T3
            MREQn <= '0';                       -- Refresh
            wait until falling_edge (CPU_CLK);  -- Middle of T4
            MREQn <= '1';                       -- Refresh
            wait until rising_edge (CPU_CLK);   -- Start of T1
        end procedure;

        procedure z80_mem_read is
        begin
            A <= (others => 'X');               -- Address is not meaningful
            D <= (others => 'Z');
            wait until falling_edge (CPU_CLK);  -- Middle of T1
            MREQn <= '0';
            RDn <= '0';
            wait until rising_edge (CPU_CLK);   -- Start of T2
            wait until rising_edge (CPU_CLK);   -- Start of T3
            wait until falling_edge (CPU_CLK);  -- Middle of T3
            MREQn <= '1';
            RDn <= '1';
            wait until rising_edge (CPU_CLK);   -- Start of T1
        end procedure;

        procedure z80_mem_write is
        begin
            A <= (others => 'X');               -- Address is not meaningful
            D <= (others => 'Z');
            wait until falling_edge (CPU_CLK);  -- Middle of T1
            MREQn <= '0';
            wait until rising_edge (CPU_CLK);   -- Start of T2
            wait until falling_edge (CPU_CLK);  -- Middle of T2
            WRn <= '0';
            wait until rising_edge (CPU_CLK);   -- Start of T3
            wait until falling_edge (CPU_CLK);  -- Middle of T3
            MREQn <= '1';
            WRn <= '1';
            wait until rising_edge (CPU_CLK);   -- Start of T1
        end procedure;

        procedure z80_io_read (addr : integer) is
        begin
            A <= std_logic_vector (to_unsigned(addr, CPU_IO_ADDR_WIDTH));
            D <= (others => 'Z');
            wait until rising_edge (CPU_CLK);   -- Start of T2
            IORQn <= '0';
            RDn <= '0';
            -- IOWAITn is sampled on the +ve edge of CPU_CLK by U41. This generates
            -- the Z80 WAITn, which is in turn sampled on the following -ve edge (of Tw).
            wait until rising_edge (CPU_CLK) and IOWAITn = '1';      -- Start of Tw
            wait until falling_edge (CPU_CLK);  -- Middle of TW (WAITn sampled by CPU)
            wait until falling_edge (CPU_CLK);  -- Middle of T3
            IORQn <= '1';
            RDn <= '1';
            wait until rising_edge (CPU_CLK);   -- Start of T1
            A <= (others => 'X');
        end procedure;

        procedure z80_io_write (addr : in integer; data : in integer) is
        begin
            A <= std_logic_vector (to_unsigned(addr, CPU_IO_ADDR_WIDTH));
            wait until rising_edge (CPU_CLK);   -- Start of T2
            D <= std_logic_vector (to_unsigned(data, CPU_DATA_WIDTH));
            WRn <= '0';
            IORQn <= '0';
            -- IOWAITn is sampled on the +ve edge of CPU_CLK by U41. This generates
            -- the Z80 WAITn, which is in turn sampled on the following -ve edge (of Tw).
            wait until rising_edge (CPU_CLK) and IOWAITn = '1';      -- Start of Tw
            wait until falling_edge (CPU_CLK);  -- Middle of TW (WAITn sampled by CPU)
            wait until falling_edge (CPU_CLK);  -- Middle of T3
            IORQn <= '1';
            WRn <= '1';
            wait until rising_edge (CPU_CLK);   -- Start of T1
            A <= (others => 'X');
            D <= (others => 'Z');
        end procedure;

        procedure z80_int_ack is
        begin
            A <= (others => 'X');               -- Address is not meaningful
            D <= (others => 'Z');
            M1n <= '0';
            wait until rising_edge (CPU_CLK);   -- Start of T2
            wait until rising_edge (CPU_CLK);   -- Start of Twa
            wait until falling_edge (CPU_CLK);  -- Middle of Twa
            IORQn <= '0';
            -- Note that no RDn is generated for this cycle.
            -- IOWAITn is sampled on the +ve edge of CPU_CLK by U41. This generates
            -- the Z80 WAITn, which is in turn sampled on the following -ve edge (of Tw).
            wait until rising_edge (CPU_CLK) and IOWAITn = '1';      -- Start of Tw
            wait until falling_edge (CPU_CLK);  -- Middle of TW
            wait until rising_edge (CPU_CLK);   -- Start of T3
            M1n <= '1';
            IORQn <= '1';
            RDn <= '1';
            wait until rising_edge (CPU_CLK);   -- Start of T1
        end procedure;


    begin
        -- Set initial state
        D <= (others => 'Z');   -- Data bus
        A <= (others => 'X');   -- Address bus
        M1n <= '1';         -- Machine cycle 1
        IORQn <= '1';       -- I/O request
        MREQn <= '1';       -- Memory request
        WRn <= '1';         -- Write strobe
        RDn <= '1';         -- Read strobe
        -- Memory mapping
        SUPER <= '1';       -- Supervisor mode - I/O access allowed
        PROT <= '1';        -- Write protect
        -- Interrupts
        NMI_SWITCHn <= '1'; -- Debounced front panel NMI switch
        -- RS-232 I/O
        -- Note - front panel indicators are driven via the output expander.
        CRxDn <= '1';       -- Console RS-232 receive
        CCTSn <= '1';       -- Console CTS
        ARxDn <= '1';       -- Aux. RS-232 receive
        ACTSn <= '1';       -- Aux. CTS
        -- Real Time Clock (RTC - DS1672). The interface is I2C.
        RTC_SCL <= 'Z';
        RTC_SDA <= 'Z';
        -- Memory card. The interface is SPI.
        SPI_MISO <= '1';

        -- CPU start
        wait until RESET = '0';
        -- Wait a few cycles to allow the FPGA reset synchronisation to settle.
        wait until rising_edge (CPU_CLK);
        wait until rising_edge (CPU_CLK);
        z80_m1;             -- M1 cycle (dummy instruction)

        -- From http://www.sunshine2k.de/coding/javascript/crc/crc_js.html:
        -- 0x31 0x32 0x33 0x34 0x35 0x36 0x37 0x38 0x39 --> CRC16 = 0x31C3
        -- The back-to-back I/O cycles are not realistic, but convenient for
        -- this simulation.
        -- Initialise CRC register.
        z80_io_write (IOA_CRC_0, 16#00#);   -- Low byte
        z80_io_write (IOA_CRC_1, 16#00#);   -- High byte
        -- Write data
        z80_io_write (IOA_CRC_DATA, 16#31#);
        z80_io_write (IOA_CRC_DATA, 16#32#);
        z80_io_write (IOA_CRC_DATA, 16#33#);
        z80_io_write (IOA_CRC_DATA, 16#34#);
        z80_io_write (IOA_CRC_DATA, 16#35#);
        z80_io_write (IOA_CRC_DATA, 16#36#);
        z80_io_write (IOA_CRC_DATA, 16#37#);
        z80_io_write (IOA_CRC_DATA, 16#38#);
        z80_io_write (IOA_CRC_DATA, 16#39#);
        -- Read result
        z80_io_read (IOA_CRC_1);    -- High byte
        z80_io_read (IOA_CRC_0);    -- Low byte

        -- From the SD card specification:
        -- 512 bytes with 0xFF data --> CRC16 = 0x7FA1
        -- Initialise CRC register.
        z80_io_write (IOA_CRC_0, 16#00#);   -- Low byte
        z80_io_write (IOA_CRC_1, 16#00#);   -- High byte
        -- Write data
        for i in 0 to 511 loop
            z80_io_write (IOA_CRC_DATA, 16#ff#);
        end loop;
        -- Read result
        z80_io_read (IOA_CRC_1);    -- High byte
        z80_io_read (IOA_CRC_0);    -- Low byte

    end process test;

end beh;
