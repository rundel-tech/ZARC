-- **********************************
-- * ZARC FPGA Source               *
-- * Top Level                      *
-- * Written by: Merlin Skinner     *
-- * Date Started: 18/7/2019        *
-- **********************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.ALL;

use work.Definitions.all;        -- Project definitions


entity Main is
    port (
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
        NMI_SWITCHn: in std_logic;      -- Debounced front panel NMI switch
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

        -- Video output
        -- R : out std_logic_vector (1 downto 0);   -- Red output
        -- G : out std_logic_vector (1 downto 0);   -- Green output
        -- B : out std_logic_vector (1 downto 0);   -- Blue output

   );

end entity Main;


architecture logic of Main is

    -- **************
    -- * Components *
    -- **************

    component MainPLL
        port
        (
            inclk0 : in std_logic := '0';
            c0 : out std_logic;
            c1 : out std_logic;
            locked : out std_logic
        );
    end component MainPLL;

    component Timing is
        port (
            Clk : in  std_logic;
            Rst : in  std_logic;
            Strb_1us, Strb_1ms : out std_logic; -- Timing strobes
            Strb_Con : out std_logic;           -- Console serial timing
            Strb_I2C : out std_logic            -- I2C serial timing
        );
    end component Timing;

    -- A two FF synchronizer
    component Sync2FF
        generic (size : integer := 1);   -- Default size is 1
        port (
            Clk : in  std_logic;
            Rst : in  std_logic;
            Input : in  std_logic_vector (size - 1 downto 0);    -- Asynchronous input
            Output : out std_logic_vector (size - 1 downto 0);   -- Synchronous outputs
            Output_n : out std_logic_vector (size - 1 downto 0)
        );
    end component Sync2FF;

    -- Pass strobe from one clock domain to another
    component PassStrobe
        port (
            InClk : in std_logic;           -- Input clock
            InRst : in std_logic;           -- Reset (synchronous to input clock)
            InStrb : in std_logic;          -- Strobe input
            OutClk : in std_logic;          -- Output clock
            OutRst : in std_logic;          -- Reset (synchronous to output clock)
            OutStrb : out std_logic         -- Strobe output
        );
    end component PassStrobe;

    -- Output expander (74x595) driver
    component OutExpander
        port (
            Clk : in  std_logic;            -- Input clock
            Rst : in  std_logic;            -- Reset (synchronous to input clock)
            Time_Strb : in std_logic;       -- Timing reference (2 x Baud rate)
            Data : in std_logic_vector (IOX_WIDTH - 1 downto 0); -- Parallel data in
            -- External shift register (74x595) signals
            OX_DATA : out std_logic;        -- Serial data
            OX_SRCLK : out std_logic;       -- Shift register clock
            OX_RCLK : out std_logic         -- Register clock
        );
    end component OutExpander;

    -- Asynchronous serial transmitter
    component AsyncSer_Tx
        port (
            Clk : in  std_logic;
            Rst : in  std_logic;
            Time_Strb : in  std_logic;      -- Timing reference (ASER_BAUD_MULT times the Baud rate)
            Data : in std_logic_vector (ASER_WORD_LENGTH - 1 downto 0); -- Data to transmit
            Tx_Strb : in  std_logic;        -- Trigger
            Busy : out std_logic;           -- Transmitter busy
            TxD : out std_logic             -- Serial data out
        );
    end component AsyncSer_Tx;

    -- Asynchronous serial receiver
    component AsyncSer_Rx
        port (
            Clk : in  std_logic;
            Rst : in  std_logic;
            Time_Strb : in  std_logic;      -- Timing reference (ASER_BAUD_MULT times the Baud rate)
            RxD : in  std_logic;            -- Serial data in
            Data : out std_logic_vector (ASER_WORD_LENGTH - 1 downto 0); -- Received data
            Rx_Ready : out std_logic;       -- Received data available
            Rx_Ack : in  std_logic;         -- Acknowlege receipt of received data
            Busy : out std_logic;           -- Receiver busy
            FrameErr : out std_logic        -- Framing error
        );
    end component AsyncSer_Rx;

    -- FIFOs using a single RAM block
    component FIFOs is
        port (
            Clk : in  std_logic;
            Rst : in  std_logic;
            -- FIFOs interfaces
            DataIn : in FIFOS_DATA_TYPE;
            DataOut : out FIFOS_DATA_TYPE;
            WrReq : in std_logic_vector (FIFOS_NUM - 1 downto 0);    -- Write request
            WrAck : out std_logic_vector (FIFOS_NUM - 1 downto 0);   -- Write acknowledged
            RdReq : in std_logic_vector (FIFOS_NUM - 1 downto 0);    -- Read request
            RdAck : out std_logic_vector (FIFOS_NUM - 1 downto 0);   -- Read acknowledged (data valid)
            Empty : out std_logic_vector (FIFOS_NUM - 1 downto 0);   -- FIFO is empty
            Full : out std_logic_vector (FIFOS_NUM - 1 downto 0);    -- FIFO is full
            ALHalf : out std_logic_vector (FIFOS_NUM - 1 downto 0)   -- FIFO is at least half full
        );
    end component FIFOs;

    -- Interrupt controller
    component IntControl is
        port (
            Clk : in std_logic;
            Rst : in std_logic;
            -- Level-sensitive interrupt requests. 0 is the highest prioity.
            Requests : in std_logic_vector (INTS_NUM - 1 downto 0);     -- 0 is highest priority
            Enables : in std_logic_vector (INTS_NUM - 1 downto 0);
            -- Strobes indicate that the corresponding request is being serviced.
            Service : out std_logic_vector (INTS_NUM - 1 downto 0);     -- Interrupt service strobes
            Inhibit : in std_logic;                                     -- Inhibit (during changes)
            cpu_clk_s : in std_logic;                                   -- CPU clock
            Int : out std_logic;                                        -- Interrupt to CPU
            IntAck : in  std_logic;                                     -- Interrupt acknowledge cycle
            Vector : out std_logic_vector (CPU_DATA_WIDTH - 1 downto 0); -- Vector to CPU
            VecValid : out std_logic                                    -- Vector is valid
        );
    end component IntControl;

    -- NMI Controller
    component NMI_Control is
        port (
            Clk : in std_logic;             -- 50 MHz
            Rst : in std_logic;
            -- CPU signals
            m1_s : in std_logic;            -- Machine cycle 1
            iorq_s : in std_logic;          -- I/O request
            mreq_s : in std_logic;          -- Memory request
            wr_s : in std_logic;            -- Write strobe
            rd_s : in std_logic;            -- Read strobe
            super_s : in std_logic;         -- Supervisor mode - I/O access allowed
            prot_s : in std_logic;          -- Write protect
            -- Other signals
            NMI_SWITCHn: in std_logic;      -- Debounced front panel NMI switch
            trace_arm : in std_logic;       -- Trace (single step) arm strobe
            prefix_count : integer range 0 to 2;    -- Number of prefixes for trace
            mmap_arm : in std_logic;        -- Memory mapping arm strobe
            NMI : out std_logic;            -- Non-maskable interrupt to CPU (asynchronous)
            nmi_svc : out std_logic;        -- NMI service time
            nmi_mode_clr : in std_logic;    -- nmi_mode_en clear strobe
            ctrl_mmap_en : in std_logic;    -- Memory mapping enable bit
            mmap_arm_next :out std_logic;   -- Map next instruction
            mmap_on_nmi : out std_logic;    -- MMAP state on NMI
            super_instr : out std_logic;    -- Instruction is from supervisor bank
            nmi_reasons_reg : out std_logic_vector (CPU_DATA_WIDTH - 1 downto 0);   -- NMI reason register
            nmi_reasons_clr : in std_logic_vector (NMI_REASONS_NUM - 1 downto 0)    -- NMI reason clear strobes
        );
    end component NMI_Control;

    component I2C_Master is
        port (
            Clk : in  std_logic;
            Rst : in  std_logic;
            Time_Strb : in  std_logic;      -- Timing reference (I2C_BAUD_MULT times the nominal Baud rate)
            Tx_Data : in std_logic_vector (I2C_WORD_LENGTH - 1 downto 0);    -- Data to transmit
            Rx_Data : out std_logic_vector (I2C_WORD_LENGTH - 1 downto 0);   -- Received data
            Tx_Ackn : in std_logic;         -- Acknowledge to transmit (when reading data)
            Rx_Ackn : out std_logic;        -- Acknowledge received (when writing data)
            Tx_Strb : in  std_logic;        -- Trigger
            Start_Strb : in  std_logic;     -- Trigger an I2C start sequence
            Stop_Strb : in std_logic;       -- Trigger an I2C stop sequence
            Busy : out std_logic;           -- Transceiver busy
            I2C_SCL : inout std_logic;
            I2C_SDA : inout std_logic
        );
    end component I2C_Master;

    component SPI_Master is
        port (
            Clk : in  std_logic;
            Rst : in  std_logic;
            Fast_Mode : in std_logic;       -- SPI speed select
            Tx_Data : in std_logic_vector (SPI_WORD_LENGTH - 1 downto 0);    -- Data to transmit
            Rx_Data : out std_logic_vector (SPI_WORD_LENGTH - 1 downto 0);   -- Received data
            Tx_Strb : in  std_logic;        -- Trigger
            Busy : out std_logic;           -- Transceiver busy
            SPI_SCLK : out std_logic;
            SPI_MOSI : out std_logic;
            SPI_MISO : in std_logic
        );
    end component SPI_Master;

    component CRC16_XModem is
        port (
            Clk : in  std_logic;
            Rst : in  std_logic;
            CRC : out std_logic_vector (CRCX_REG_LENGTH - 1 downto 0);  -- CRC result
            Data : in std_logic_vector (CPU_DATA_WIDTH - 1 downto 0);   -- CPU write data
            Strb : in  std_logic;           -- Data trigger
            SetCRC_Low : in std_logic;      -- Write to CRC register (low byte)
            SetCRC_High : in std_logic;     -- Write to CRC register (high byte)
            Busy : out std_logic
        );
    end component CRC16_XModem;

    -- Video Output
    component Video is
        port (
            PClk : in std_logic;        -- 65 MHz video pixel clock
            VRClk : in std_logic;       -- 16.25 MHz character clock (double rate)
            VRst : in std_logic;        -- System reset

            -- Video output
            R : out std_logic_vector (1 downto 0);   -- Red output
            G : out std_logic_vector (1 downto 0);   -- Green output
            B : out std_logic_vector (1 downto 0)    -- Blue output
        );
    end component Video;


    -- *************
    -- * Variables *
    -- *************

    signal PClk : std_logic;                -- 65 MHz video pixel clock
    signal VRClk : std_logic;               -- 16.25 MHz character clock (double rate)
    signal main_pll_locked : std_logic;     -- PLL locked
    signal RRst : std_logic;                -- System reset synchronized to RCLK
    signal VRst : std_logic;                -- System reset synchronized to VRClk
    signal CRst : std_logic;                -- System reset synchronized to CPU_CLK
    signal Strb_1us : std_logic;            -- 1 us timing strobe
    signal Strb_1ms : std_logic;            -- 1 ms timing strobe
    signal Strb_Con : std_logic;            -- Console serial timing
    signal Strb_I2C : std_logic;            -- I2C serial timing

    -- LED flasher
    signal count : integer range 0 to 1999;

    -- Output expander
    signal oex_data : std_logic_vector (IOX_WIDTH - 1 downto 0); -- Data in

    -- CPU interface
    -- Synchronised inputs
    signal cpu_clk_s :  std_logic;
    signal d_s : std_logic_vector (CPU_DATA_WIDTH - 1 downto 0); -- Data bus
    signal a_s : std_logic_vector (CPU_IO_ADDR_WIDTH - 1 downto 0); -- Address bus
    signal m1_s : std_logic;                -- Machine cycle 1
    signal iorq_s : std_logic;              -- I/O request
    signal mreq_s : std_logic;              -- Memory request
    signal wr_s : std_logic;                -- Write 
    signal rd_s : std_logic;                -- Read
    signal super_s : std_logic;             -- Supervisor mode - I/O access allowed
    signal prot_s : std_logic;              -- Write protect

    -- State machine states
    type io_States is (ST_IDLE, ST_INTACK, ST_IORD, ST_IORD_CON, ST_IORD_AUX,
    ST_IOWR, ST_IOWRWT, ST_IOWW1, ST_IOWW2, ST_IOWR_CON, ST_IOWR_AUX, ST_WAIT,
    ST_DONE);
    signal io_state : io_States;

    -- Console asynchronous serial I/O
    signal ccts_s : std_logic;              -- Synchronised CCTSn
    signal CTx_Busy : std_logic;            -- Console transmitter busy
    signal CTx_Strb : std_logic;            -- Console trigger transmitter
    signal CRx_Ready : std_logic;           -- Received data available
    signal CRx_Ack : std_logic;             -- Acknowlege receipt of received data
    signal CRx_Busy : std_logic;            -- Receiver busy
    signal CRx_FrameErr : std_logic;        -- Framing error
    signal CRx_DataRdy : std_logic;         -- Data ready flag

    -- Auxiliary asynchronous serial I/O
    signal acts_s : std_logic;              -- Synchronised ACTSn
    signal ATx_Busy : std_logic;            -- Console transmitter busy
    signal ATx_Strb : std_logic;            -- Console trigger transmitter
    signal ARx_Ready : std_logic;           -- Received data available
    signal ARx_Ack : std_logic;             -- Acknowlege receipt of received data
    signal ARx_Busy : std_logic;            -- Receiver busy
    signal ARx_FrameErr : std_logic;        -- Framing error
    signal ARx_DataRdy : std_logic;         -- Data ready flag

    -- Control register
    signal ctrl_mmap_en : std_logic;        -- Memory mapping enable bit
    signal nmi_mode_clr : std_logic;        -- nmi_mode_en clear strobe
    signal trace_arm : std_logic;           -- Trace (single step) arm strobe
    signal mmap_arm : std_logic;            -- Memory mapping arm strobe
    signal mmap_arm_next : std_logic;    -- Map next instruction

    -- Memory mapping logic
    signal mmap_shadow : MMAP_SHADOW_TYPE;  -- shadow registers
    signal mmap_on_nmi : std_logic;         -- MMAP state on NMI
    signal map_inh : std_logic;             -- Memory mapping inhibit during NMI service

    -- FIFOs
    signal fifos_datain : FIFOS_DATA_TYPE;
    signal fifos_dataout : FIFOS_DATA_TYPE;
    signal fifos_wrreq : std_logic_vector (FIFOS_NUM - 1 downto 0); -- Write request
    signal fifos_wrack : std_logic_vector (FIFOS_NUM - 1 downto 0); -- Write acknowledged
    signal fifos_rdreq : std_logic_vector (FIFOS_NUM - 1 downto 0); -- Read request
    signal fifos_rdack : std_logic_vector (FIFOS_NUM - 1 downto 0); -- Read acknowledged (data valid)
    signal fifos_empty : std_logic_vector (FIFOS_NUM - 1 downto 0); -- FIFO is empty
    signal fifos_full : std_logic_vector (FIFOS_NUM - 1 downto 0);  -- FIFO is full
    signal fifos_alhalf : std_logic_vector (FIFOS_NUM - 1 downto 0);    -- FIFO is at least half full

    -- "Tick" interrupt request
    signal tick_timer : integer range 0 to MS_PER_TICK - 1;
    signal tick_strb : std_logic;           -- One strobe per tick
    signal tick_int_req : std_logic;        -- Interrupt request
    signal tick_int_sw_clr : std_logic;     -- Software interrupt request clear

    -- Interrupts
    signal int_requests : std_logic_vector (INTS_NUM - 1 downto 0); -- 0 is highest priority
    signal int_enables : std_logic_vector (INTS_NUM - 1 downto 0);  -- 0 is highest priority
    signal int_service : std_logic_vector (INTS_NUM - 1 downto 0);  -- Interrupt service strobes
    signal int_inhibit : std_logic;                                 -- Inhibit (during changes)
    signal int_ack : std_logic;                                     -- Interrupt acknowledge cycle
    signal int_vec : std_logic_vector (CPU_DATA_WIDTH - 1 downto 0); -- Vector to CPU
    signal int_vec_valid : std_logic;                               -- Vector is valid

    -- NMI / trace signals
    signal nmi_reasons_reg : std_logic_vector (CPU_DATA_WIDTH - 1 downto 0); -- NMI reason register
    signal nmi_reasons_clr : std_logic_vector (NMI_REASONS_NUM - 1 downto 0);   -- NMI reason clear strobes
    signal super_instr : std_logic;         -- Instruction is from supervisor bank
    signal prefix_count : integer range 0 to 2;     -- Number of prefixes for trace
    signal nmi_svc : std_logic;             -- NMI service time

    -- I2C (RTC interface)
    signal i2c_rx_data : std_logic_vector (I2C_WORD_LENGTH - 1 downto 0);    -- Received data
    signal i2c_tx_ackn : std_logic;         -- Acknowledge to transmit (when reading data)
    signal i2c_rx_ackn : std_logic;         -- Acknowledge received (when writing data)
    signal i2c_busy : std_logic;            -- Transceiver busy
    signal i2c_start_strb : std_logic;      -- Trigger an I2C start sequence
    signal i2c_tx_strb : std_logic;         -- Transmit trigger
    signal i2c_stop_strb : std_logic;       -- Trigger an I2C stop sequence

    -- SPI (memory card interface)
    signal spi_rx_data : std_logic_vector (SPI_WORD_LENGTH - 1 downto 0);    -- Received data
    signal spi_busy : std_logic;            -- Transceiver busy
    signal spi_tx_strb : std_logic;         -- Transmit trigger
    signal spi_fast_mode : std_logic;       -- SPI speed select
    signal spi_mc_ss : std_logic;           -- Memory card slave select

    -- CRC
    signal crc : std_logic_vector (CRCX_REG_LENGTH - 1 downto 0);   -- CRC result
    signal crc_strb : std_logic;            -- Data trigger
    signal crc_set_low : std_logic;         -- Write to CRC register (low byte)
    signal crc_set_high : std_logic;        -- Write to CRC register (high byte)
    signal crc_busy : std_logic;


begin


    -- ****************************
    -- * Component Instantiations *
    -- ****************************

    -- Reset synchronizer (to RCLK)
    inst_Synch_Rst : Sync2FF generic map (size => 1)
        port map (
            Clk => RClk,                -- 50 MHz
            Rst => '0',
            Input (0) => RESET,         -- System reset signal
            Output (0) => RRst          -- Synchronous output
        );
    
    -- Reset synchronizer (to VRClk). As PClk is in phase, it can be
    -- used for this, too.
    inst_Synch_VRst : Sync2FF generic map (size => 1)
        port map (
            Clk => VRClk,
            Rst => '0',
            Input (0) => RESET,         -- System reset signal
            Output (0) => VRst          -- Synchronous output
        );
    
    -- Reset synchronizer (to CPU_CLK)
    inst_Synch_CRst : Sync2FF generic map (size => 1)
        port map (
            Clk => CPU_CLK,
            Rst => '0',
            Input (0) => RESET,         -- System reset signal
            Output (0) => CRst          -- Synchronous output
        );
    
    -- Main PLL
    inst_MainPLL : MainPLL
        port map (
            inclk0 => RClk,             -- 50 MHz
            c0 => PClk,                 -- 65 MHz video pixel clock
            c1 => VRClk,                -- 16.25 MHz character clock (double rate)
            locked => main_pll_locked
        );

    -- Timing generator.
    -- Timing is generated from the 50 MHz reference clock as this is the one that
    -- is least likely to change, thereby affecting Baud rates etc.
    inst_Timing : Timing
        port map (
            Clk => RClk,                -- 50 MHz
            Rst => RRst,
            Strb_1us => Strb_1us,       -- 1 us timing strobe
            Strb_1ms => Strb_1ms,       -- 1 ms timing strobe
            Strb_Con => Strb_Con,       -- Console serial timing
            Strb_I2C => Strb_I2C        -- I2C serial timing
        );

        -- Output expander (74x595) driver
    inst_OutExpander : OutExpander
        port map (
            Clk => RClk,                -- Input clock
            Rst => RRst,                -- Reset (synchronous to input clock)
            Time_Strb => Strb_1us,      -- Timing reference (2 x Baud rate)
            Data => oex_data,           -- Parallel data in
            -- External shift register (74x595) signals
            OX_DATA => OX_DATA,         -- Serial data
            OX_SRCLK => OX_SRCLK,       -- Shift register clock
            OX_RCLK => OX_RCLK          -- Register clock
        );

    -- Console asynchronous serial transmitter
    inst_Con_Tx : AsyncSer_Tx
        port map (
            Clk => RClk,
            Rst => RRst,
            Time_Strb => Strb_Con,      -- Timing reference (ASER_BAUD_MULT times the Baud rate)
            Data => fifos_dataout (FIFO_CON_TX),   -- Data from FIFO
            Tx_Strb => CTx_Strb,
            Busy => CTx_Busy,
            TxD => CTxDn
        );

    -- Console asynchronous serial receiver
    inst_Con_Rx : AsyncSer_Rx
        port map (
            Clk => RClk,
            Rst => RRst,
            Time_Strb => Strb_Con,      -- Timing reference (ASER_BAUD_MULT times the Baud rate)
            RxD => CRxDn,               -- Serial data in
            Data => fifos_datain (FIFO_CON_RX), -- Received byte
            Rx_Ready => CRx_Ready,      -- Received data available
            Rx_Ack => fifos_wrack (FIFO_CON_RX),    -- Acknowlege receipt of received data
            Busy => CRx_Busy,           -- Receiver busy
            FrameErr => CRx_FrameErr    -- Framing error
        );

    -- Auxiliary asynchronous serial transmitter
    inst_Aux_Tx : AsyncSer_Tx
        port map (
            Clk => RClk,
            Rst => RRst,
            Time_Strb => Strb_Con,      -- Timing reference (ASER_BAUD_MULT times the Baud rate)
            Data => fifos_dataout (FIFO_AUX_TX),   -- Data from FIFO
            Tx_Strb => ATx_Strb,
            Busy => ATx_Busy,
            TxD => ATxDn
        );

    -- Auxiliary asynchronous serial receiver
    inst_Aux_Rx : AsyncSer_Rx
        port map (
            Clk => RClk,
            Rst => RRst,
            Time_Strb => Strb_Con,      -- Timing reference (ASER_BAUD_MULT times the Baud rate)
            RxD => ARxDn,               -- Serial data in
            Data => fifos_datain (FIFO_AUX_RX), -- Received byte
            Rx_Ready => ARx_Ready,      -- Received data available
            Rx_Ack => fifos_wrack (FIFO_AUX_RX),    -- Acknowlege receipt of received data
            Busy => ARx_Busy,           -- Receiver busy
            FrameErr => ARx_FrameErr    -- Framing error
        );

    -- FIFOs using a single RAM block
    inst_FIFOs : FIFOs
        port map (
            Clk => RClk,
            Rst => RRst,
            -- FIFOs interfaces
            DataIn => fifos_datain,
            DataOut => fifos_dataout,
            WrReq => fifos_wrreq,       -- Write request
            WrAck => fifos_wrack,       -- Write acknowledged
            RdReq => fifos_rdreq,       -- Read request
            RdAck => fifos_rdack,       -- Read acknowledged (data valid)
            Empty => fifos_empty,       -- FIFO is empty
            Full => fifos_full,         -- FIFO is full
            ALHalf => fifos_alhalf      -- FIFO is at least half full
        );

    -- Interrupt controller
    inst_IntControl : IntControl
        port map (
            Clk => RClk,
            Rst => RRst,
            -- Level-sensitive interrupt requests. 0 is the highest prioity.
            Requests => int_requests,       -- 0 is highest priority
            Enables => int_enables,
            -- Strobes indicate that the corresponding request is being serviced.
            Service => int_service,         -- Interrupt service strobes
            Inhibit => int_inhibit,         -- Inhibit (during changes)
            cpu_clk_s => cpu_clk_s,         -- CPU clock
            Int => INT,                     -- Interrupt to CPU
            IntAck => int_ack,              -- Interrupt acknowledge cycle
            Vector => int_vec,              -- Vector to CPU
            VecValid => int_vec_valid       -- Vector is valid
        );

    -- NMI Controller
    inst_NMI_Control : NMI_Control
        port map (
            Clk => RClk,                    -- 50 MHz
            Rst => RRst,
            -- CPU signals 
            m1_s => m1_s,                   -- Machine cycle 1
            iorq_s => iorq_s,               -- I/O request
            mreq_s => mreq_s,               -- Memory request
            wr_s => wr_s,                   -- Write strobe
            rd_s => rd_s,                   -- Read strobe
            super_s => super_s,             -- Supervisor mode - I/O access allowed
            prot_s => prot_s,               -- Write protect
            -- Other signals
            NMI_SWITCHn => NMI_SWITCHn,     -- Debounced front panel NMI switch
            trace_arm => trace_arm,         -- Trace (single step) arm strobe
            prefix_count => prefix_count,   -- Number of prefixes for trace
            mmap_arm => mmap_arm,           -- Memory mapping arm strobe
            NMI => NMI,                     -- Non-maskable interrupt to CPU 
            nmi_svc => nmi_svc,             -- NMI service time
            nmi_mode_clr => nmi_mode_clr,   -- nmi_mode_en clear strobe
            ctrl_mmap_en => ctrl_mmap_en,   -- Memory mapping enable bit
            mmap_arm_next => mmap_arm_next, -- Map next instruction
            mmap_on_nmi => mmap_on_nmi,     -- MMAP state on NMI
            super_instr => super_instr,     -- Instruction is from supervisor bank
            nmi_reasons_reg => nmi_reasons_reg, -- NMI reason register
            nmi_reasons_clr => nmi_reasons_clr  -- NMI reason clear strobes
        );

    inst_I2C_Master : I2C_Master
        port map (
            Clk => RClk,
            Rst => RRst,
            Time_Strb => Strb_I2C,          -- Timing reference (I2C_BAUD_MULT times the nominal Baud rate)
            Tx_Data => d_s,           -- Data to transmit
            Rx_Data => i2c_rx_data,         -- Received data
            Tx_Ackn => i2c_tx_ackn,         -- Acknowledge to transmit (when reading data)
            Rx_Ackn => i2c_rx_ackn,         -- Acknowledge received (when writing data)
            Tx_Strb => i2c_tx_strb,         -- Trigger
            Start_Strb => i2c_start_strb,   -- Trigger an I2C (re-)start sequence
            Stop_Strb => i2c_stop_strb,     -- Trigger an I2C stop sequence
            Busy => i2c_busy,               -- Transceiver busy
            I2C_SCL => RTC_SCL,
            I2C_SDA => RTC_SDA
        );

    inst_SPI_Master : SPI_Master
        port map (
            Clk => RClk,
            Rst => RRst,
            Fast_Mode => spi_fast_mode,     -- SPI speed select
            Tx_Data => d_s,           -- Data to transmit
            Rx_Data => spi_rx_data,         -- Received data
            Tx_Strb => spi_tx_strb,         -- Trigger
            Busy => spi_busy,               -- Transceiver busy
            SPI_SCLK => SPI_SCLK,
            SPI_MOSI => SPI_MOSI,
            SPI_MISO => SPI_MISO
        );

    inst_CRC16_XModem : CRC16_XModem
        port map (
            Clk => RClk,
            Rst => RRst,
            CRC => crc,                     -- CRC result
            Data => d_s,              -- CPU write data
            Strb => crc_strb,               -- Data trigger
            SetCRC_Low => crc_set_low,      -- Write to CRC register (low byte)
            SetCRC_High => crc_set_high,    -- Write to CRC register (high byte)
            Busy => crc_busy
        );

    -- Video Output
    -- inst_Video : Video
        -- port map (
            -- PClk => PClk,               -- 65 MHz video pixel clock
            -- VRClk => VRClk,             -- 16.25 MHz character clock (double rate)
            -- VRst => VRst,               -- System reset

            -- Video output
            -- R => R,                     -- Red output
            -- G => G,                     -- Green output
            -- B => B                      -- Blue output
        -- );


    -- *********
    -- * Logic *
    -- *********

    -- Memory card. The interface is SPI.
    SPI_CSn <= not spi_mc_ss;

    -- Interrupts
    -- Requests to interrupt controller
    int_requests (INT_CON_TX_BIT) <=
        not (fifos_alhalf (FIFO_CON_TX));   -- Console transmitter buffer is half full or less
    int_requests (INT_CON_RX_BIT) <=
        not (fifos_empty (FIFO_CON_RX));    -- Console receiver has data
    int_requests (INT_AUX_TX_BIT) <=
        not (fifos_alhalf (FIFO_AUX_TX));   -- Auxiliary transmitter buffer is half full or less
    int_requests (INT_AUX_RX_BIT) <=
        not (fifos_empty (FIFO_AUX_RX));    -- Auxiliary receiver has data
    int_requests (INT_TICK_BIT) <=
        tick_int_req;                       -- Regular timekeeping

    -- Console transmitter
    -- Request more data when there is some, the transmitter is not busy and we have CTS.
    fifos_rdreq (FIFO_CON_TX) <= '1' when
        fifos_empty (FIFO_CON_TX) = '0' and
        CTx_Busy = '0' and
        ccts_s = '1'
        else '0';
    CTx_Strb <= fifos_rdack (FIFO_CON_TX);
    fifos_datain (FIFO_CON_TX) <= d_s;    -- Connect CPU write data to FIFO

    -- Console receiver
    -- Store data when there is some and the FIFO is not full.
    fifos_wrreq (FIFO_CON_RX) <= '1' when fifos_full (FIFO_CON_RX) = '0' and CRx_Ready = '1' else '0';
     -- Assert console RTS (RTR) unless receive FIFO is at least half full.
    CRTSn <= '0' when fifos_alhalf (FIFO_CON_RX) = '0' else '1';

    -- Auxiliary transmitter
    -- Request more data when there is some, the transmitter is not busy and we have CTS.
    fifos_rdreq (FIFO_AUX_TX) <= '1' when
        fifos_empty (FIFO_AUX_TX) = '0' and
        ATx_Busy = '0' and
        acts_s = '1'
        else '0';
    ATx_Strb <= fifos_rdack (FIFO_AUX_TX);
    fifos_datain (FIFO_AUX_TX) <= d_s;    -- Connect CPU write data to FIFO

    -- Auxiliary receiver
    -- Store data when there is some and the FIFO is not full.
    fifos_wrreq (FIFO_AUX_RX) <= '1' when fifos_full (FIFO_AUX_RX) = '0' and ARx_Ready = '1' else '0';
     -- Assert console RTS (RTR) unless receive FIFO is at least half full.
    ARTSn <= '0' when fifos_alhalf (FIFO_AUX_RX) = '0' else '1';

    -- Generate "tick" interrupt request. This is removed either by software or
    -- automatically when the request is serviced.
    tick : process (RClk, RRst)
    begin
        if RRst = '1' then
            tick_timer <= 0;
            tick_strb <= '0';
        elsif rising_edge (RClk) then
            -- Generate tick strobe
            if Strb_1ms = '1' then
                if tick_timer = (MS_PER_TICK - 1) then
                    -- 1 ms edge
                    tick_strb <= '1';
                    tick_timer <= 0;        -- Wrap-around
                else
                    tick_timer <= tick_timer + 1;
                end if;
            else
                tick_strb <= '0';
            end if;

            -- Generate interrupt request
            if tick_strb = '1' then
                tick_int_req <= '1';
            elsif (int_service (INT_TICK_BIT) = '1') or (tick_int_sw_clr = '1') then
                -- Automatic or software interrupt request clear
                tick_int_req <= '0';
            end if;
        end if;
    end process tick;

    -- Inhibit interrupts immediately after changes to registers that might remove
    -- the demand that caused an interrupt.
    int_inhibit <= '1' when
        (iorq_s = '1') and (WRn = '0') and (
        (to_integer (unsigned (a_s)) = IOA_INT_EN) or
        (to_integer (unsigned (a_s)) = IOA_INT_PEND))
        else '0';

    -- Memory mapping enable logic. When the NMI is being serviced, memory mapping
    -- is inhibited for read cycles. M1n is included in the logic to give a little
    -- more time for M1 reads as these are shorter then normal memory cycles.
    map_inh <= (not (RDn) or not (M1n)) when (nmi_svc = '1') else '0';
    MMAP_ENn <= '1' when (ctrl_mmap_en = '0') else map_inh;


    sync_in : process (RClk) is
    begin
        -- Synchronise CPU inputs. These are not reset so they settle to the
        -- reset state before reset is released.
        if rising_edge (RClk) then
            cpu_clk_s <= CPU_CLK;
            d_s <= D; -- Data bus
            a_s <= A; -- Address bus
            m1_s <= not (M1n);          -- Machine cycle 1
            iorq_s <= not (IORQn);      -- I/O request
            mreq_s <= not (MREQn);      -- Memory request
            wr_s <= not (WRn);          -- Write strobe
            rd_s <= not (RDn);          -- Read strobe
            super_s <= SUPER;           -- Supervisor mode - I/O access allowed
            prot_s <= PROT;             -- Write protect
            -- Serial ports
            ccts_s <= not (CCTSn);      -- Console CTS
            acts_s <= not (ACTSn);      -- Auxiliary CTS
        end if;
    end process sync_in;


    -- *** CPU Bus Interface ***
    iosm : process (RRst, RClk) is
    begin

        if RRst = '1' then
            D <= (others => 'Z');               -- Set data bus to high-impedance
            IOWAITn <= '0';
            PNL_DAT_RDn <= '1';                 -- Disable front panel switch buffer
            ctrl_mmap_en <= '0';                -- Disable memory mapping
            MMAP_IO_SELn <= '1';                -- Memory map write
            -- Interrupts
            int_enables <= (others => '0');
            int_ack <= '0';
            -- I2C
            i2c_start_strb <= '0';
            i2c_tx_strb <= '0';
            i2c_stop_strb <= '0';
            -- SPI
            spi_mc_ss <= '0';                   -- Memory card slave select
            spi_fast_mode <= '0';               -- Default to slow speed
            spi_tx_strb <= '0';
            io_state <= ST_IDLE;
            -- CRC
            crc_set_low <= '0';
            crc_set_high <= '0';
            crc_strb <= '0';
            -- NMI
            nmi_reasons_clr <= (others => '0'); -- NMI reason clear strobes
            -- Trace (single step)
            trace_arm <= '0';
            mmap_arm <= '0';
            prefix_count <= 0;              -- Prefix counter for trace

        elsif rising_edge (RClk) then

            -- Memory mapping enable after arm.
            if (mmap_arm_next = '1') and ((mreq_s = '0') and (iorq_s = '0')) then
                ctrl_mmap_en <= '1';        -- Memory mapping enable bit
            end if;

            -- I/O logic.
            case io_State is

                when ST_IDLE =>
                    -- Idle state.
                    PNL_DAT_RDn <= '1';     -- Disable front panel switch buffer
                    IOWAITn <= '0';         -- Request wait in advance of an I/O cycle
                    if iorq_s = '1' then
                        -- M1n is applied approximately 2.5 clock cycles prior to IORQn,
                        -- so we can reliably distinguish between I/O and interrupts
                        -- acknowledge cycles.
                        if m1_s = '1' then
                            -- Interrupt acknowledge cycle
                            int_ack <= '1';
                            io_state <= ST_INTACK;
                        else
                            -- I/O cycle. If the instruction was fetched from a bank with
                            -- the SUPER bit set, allow the operation. Strobe nmi_super_viol
                            -- otherwise.
                            if super_instr = '1' then
                                -- RD or WR should be active, but if not the cycle is
                                -- ignored.
                                if rd_s = '1' then
                                    io_state <= ST_IORD;
                                elsif wr_s = '1' then
                                    io_state <= ST_IOWRWT;
                                end if;
                            end if;
                        end if;
                    end if;

                when ST_INTACK =>
                    -- Interrupt acknowledge cycle
                    if int_vec_valid = '1' then
                        D <= int_vec;
                        io_state <= ST_DONE;
                    end if;

                when ST_IORD =>
                    -- *** I/O read cycle ***
                    case to_integer (unsigned (a_s)) is

                        when IOA_FPGA_MajRev =>
                            -- FPGA major revision
                            D <= std_logic_vector (to_unsigned (FW_MAJVER, CPU_DATA_WIDTH));
                            io_state <= ST_DONE;

                        when IOA_FPGA_MinRev =>
                            -- FPGA major revision
                            D <= std_logic_vector (to_unsigned (FW_MINVER, CPU_DATA_WIDTH));
                            io_state <= ST_DONE;

                        when IOA_Control =>
                            -- Control register
                            D (CTRL_TRARM_BIT) <= '0';              -- Trace always reads as zero
                            D (CTRL_MMAP_BIT) <= ctrl_mmap_en;      -- Memory mapping enable bit
                            D (CTRL_NMCLR_BIT) <= '0';              -- NMI mode clear reads as zero
                            D (CTRL_MAPARM_BIT) <= '0';             -- Memory mapping arm reads as zero
                            D (CTRL_MMAPN_BIT) <= mmap_on_nmi;      -- MMAP state on NMI
                            D (CTRL_TRPRE1_BIT downto CTRL_TRPRE0_BIT) <= (others => '0');  -- Trace prefix count
                            D (7) <= '0';                           -- Reserved
                            io_state <= ST_DONE;

                        when IOA_PAGE_0 to IOA_PAGE_3 =>
                            -- 74ls670 memory mapping registers. Read data comes from shadow
                            -- registers in the FPGA, as the real registers are not readable
                            -- by software. Use of the LS two bits of the address mirrors the
                            -- wiring to the "real" registers.
                            D <= mmap_shadow (to_integer (unsigned (a_s (1 downto 0))));
                            io_state <= ST_DONE;

                        when IOA_FP_SW =>
                            -- Front panel data switches
                            PNL_DAT_RDn <= '0';     -- Enable front panel switch buffer
                            io_state <= ST_DONE;

                        when IOA_INT_EN =>
                            -- Interrupt enables register
                            D <= (CPU_DATA_WIDTH downto (INTS_NUM + 1) => '0') & int_enables;
                            io_state <= ST_DONE;

                        when IOA_INT_PEND =>
                            -- Interrupts pending register
                            D <= (CPU_DATA_WIDTH downto (INTS_NUM + 1) => '0') & int_requests;
                            io_state <= ST_DONE;

                        when IOA_NMI_REASONS =>
                            -- NMI reason register
                            D <= nmi_reasons_reg;
                            io_state <= ST_DONE;

                        when IOA_CON_CSR =>
                            -- Console control / status
                            D (0) <= fifos_empty (FIFO_CON_RX);
                            D (1) <= fifos_alhalf (FIFO_CON_RX);
                            D (2) <= fifos_full (FIFO_CON_RX);
                            D (3) <= CRx_FrameErr;      -- Framing error in last character
                            D (4) <= fifos_empty (FIFO_CON_TX);
                            D (5) <= fifos_alhalf (FIFO_CON_TX);
                            D (6) <= fifos_full (FIFO_CON_TX);
                            D (7) <= '0';
                            io_state <= ST_DONE;

                        when IOA_CON_DATA =>
                            -- Console data input
                            if fifos_empty (FIFO_CON_RX) = '0' then
                                -- Received data is available
                                fifos_rdreq (FIFO_CON_RX) <= '1';   -- Request read
                                io_state <= ST_IORD_CON;
                            end if;

                        when IOA_AUX_CSR =>
                            -- Auxiliary control / status
                            D (0) <= fifos_empty (FIFO_AUX_RX);
                            D (1) <= fifos_alhalf (FIFO_AUX_RX);
                            D (2) <= fifos_full (FIFO_AUX_RX);
                            D (3) <= ARx_FrameErr;      -- Framing error in last character
                            D (4) <= fifos_empty (FIFO_AUX_TX);
                            D (5) <= fifos_alhalf (FIFO_AUX_TX);
                            D (6) <= fifos_full (FIFO_AUX_TX);
                            D (7) <= '0';
                            io_state <= ST_DONE;

                        when IOA_AUX_DATA =>
                            -- Auxiliary data input
                            if fifos_empty (FIFO_AUX_RX) = '0' then
                                -- Received data is available
                                fifos_rdreq (FIFO_AUX_RX) <= '1';   -- Request read
                                io_state <= ST_IORD_AUX;
                            end if;

                        when IOA_RTC_CSR =>
                            -- RTC (DS1672) control / status
                            D (I2C_ACKN_BIT) <= i2c_rx_ackn;    -- Received acknowledge from slave device
                            D (6 downto 1) <= (others => '0');
                            D (I2C_BUSY_BIT) <= i2c_busy;   -- Transceiver busy
                            io_state <= ST_DONE;

                        when IOA_RTC_DATA =>
                            -- RTC (DS1672) data
                            D <= i2c_rx_data;
                            io_state <= ST_DONE;

                        when IOA_SPI_CSR =>
                            -- Memory card control / status
                            D (SPI_FAST_BIT) <= spi_fast_mode;  -- SPI speed select
                            D (SPI_MC_SS_BIT) <= spi_mc_ss;     -- Memory card slave select
                            D (6 downto 2) <= (others => '0');
                            D (SPI_BUSY_BIT) <= spi_busy;       -- Transceiver busy
                            io_state <= ST_DONE;

                        when IOA_SPI_DATA =>
                            -- Memory card data
                            D <= spi_rx_data;
                            io_state <= ST_DONE;

                        when IOA_CRC_0 =>
                            -- CRC register (low). Stall if busy.
                            if crc_busy = '0' then
                                D <= crc (7 downto 0);
                                io_state <= ST_DONE;
                            end if;

                        when IOA_CRC_1 =>
                            -- CRC register (high). Stall if busy.
                            if crc_busy = '0' then
                                D <= crc (15 downto 8);
                                io_state <= ST_DONE;
                            end if;

                        -- IOA_CRC_DATA has no read function.

                        when others =>
                            -- Halt system by not responding.
                            if iorq_s = '0' then
                                -- The cycle has ended (somehow)
                                D <= (others => 'Z');   -- Set data bus to high-impedance
                                io_state <= ST_IDLE;
                            end if;
                    end case;

                when ST_IORD_CON =>
                    -- Await console data input FIFO read completion
                    D <= fifos_dataout (FIFO_CON_RX);
                    if fifos_rdack (FIFO_CON_RX)= '1' then
                        fifos_rdreq (FIFO_CON_RX) <= '0';   -- Remove request
                        io_state <= ST_DONE;
                    end if;

                when ST_IORD_AUX =>
                    -- Await auxiliary data input FIFO read completion
                    D <= fifos_dataout (FIFO_AUX_RX);
                    if fifos_rdack (FIFO_AUX_RX) = '1' then
                        fifos_rdreq (FIFO_AUX_RX) <= '0';   -- Remove request
                        io_state <= ST_DONE;
                    end if;

                when ST_IOWRWT =>
                    -- The I/O bus buffers are not enabled for a time to allow
                    -- snick-free control. We must wait for the incoming data
                    -- to stabilise as a result.
                    if cpu_clk_s = '0' then
                        io_state <= ST_IOWW1;       -- Middle of T2
                    end if;

                when ST_IOWW1 =>
                    if cpu_clk_s = '1' then
                        -- This is the time the data buffers are enabled.
                        io_state <= ST_IOWW2;       -- Start of TW
                    end if;

                when ST_IOWW2 =>
                    if cpu_clk_s = '0' then
                        io_state <= ST_IOWR;        -- Middle of TW
                    end if;

                when ST_IOWR =>
                    -- *** I/O write cycle ***
                    case to_integer (unsigned (a_s)) is
                    
                        when IOA_Control =>
                            if d_s (CTRL_TRARM_BIT) = '1' then
                                -- Arm trace (single step) interrupt
                                trace_arm <= '1';
                            end if;
                            ctrl_mmap_en <= d_s (CTRL_MMAP_BIT);   -- Memory mapping enable bit
                            if d_s (CTRL_NMCLR_BIT) = '1' then
                                -- NMI mapping clear
                                nmi_mode_clr <= '1';
                            end if;
                            if d_s (CTRL_MAPARM_BIT) = '1' then
                                -- Memory mapping arm
                                mmap_arm <= '1';
                            end if;
                            -- No write operation for CTRL_MMAPN_BIT (MMAP state on NMI)
                            -- Trace prefix count.
                            prefix_count <=  (to_integer (unsigned (d_s (CTRL_TRPRE1_BIT downto CTRL_TRPRE0_BIT))));
                            io_state <= ST_DONE;

                        when IOA_PAGE_0 to IOA_PAGE_3 =>
                            -- Write to 74ls670 memory mapping registers
                            MMAP_IO_SELn <= '0';        -- Strobe WEn pin
                            -- Write to shadow registers as well. Use of the LS two bits of the
                            -- address mirrors the wiring to the "real" registers.
                            mmap_shadow (to_integer (unsigned (a_s (1 downto 0)))) <= d_s;
                            io_state <= ST_WAIT;    -- Delay before completion

                        when IOA_INT_EN =>
                            -- Interrupt enables register
                            int_enables <= d_s (INTS_NUM - 1 downto 0);
                            io_state <= ST_DONE;

                        when IOA_INT_PEND =>
                            -- Interrupts pending register.
                            -- Write '1' to clear request where this is meaningful.
                            if D (INT_TICK_BIT) = '1' then
                                tick_int_sw_clr <= '1'; -- Clear tick interrupt
                            end if;
                            io_state <= ST_DONE;

                        when IOA_NMI_REASONS =>
                            -- NMI reason register
                            -- Write '1' to clear request where this is meaningful.
                            nmi_reasons_clr <= d_s (NMI_REASONS_NUM - 1 downto 0);
                            io_state <= ST_DONE;

                        when IOA_CON_DATA =>
                            -- Console data output
                            if fifos_full (FIFO_CON_TX) = '0' then
                                -- There is space in the FIFO.
                                fifos_wrreq (FIFO_CON_TX) <= '1';   -- Request write
                                io_state <= ST_IOWR_CON;
                            end if;

                        when IOA_AUX_DATA =>
                            -- Auxiliary data output
                            if fifos_full (FIFO_AUX_TX) = '0' then
                                -- There is space in the FIFO.
                                fifos_wrreq (FIFO_AUX_TX) <= '1';   -- Request write
                                io_state <= ST_IOWR_AUX;
                            end if;

                        when IOA_RTC_CSR =>
                            -- RTC (DS1672) control
                            i2c_tx_ackn <= d_s (I2C_ACKN_BIT);        -- Acknowledge to transmit (when reading data)
                            i2c_start_strb <= d_s (I2C_START_BIT);    -- Trigger start sequence
                            i2c_stop_strb <= d_s (I2C_STOP_BIT);      -- Trigger stop sequence
                            io_state <= ST_DONE;

                        when IOA_RTC_DATA =>
                            -- RTC (DS1672) data
                            i2c_tx_strb <= '1';     -- Trigger
                            io_state <= ST_DONE;

                        when IOA_SPI_CSR =>
                            -- Memory card control
                            spi_fast_mode <= d_s (SPI_FAST_BIT);  -- SPI speed select
                            spi_mc_ss <= d_s (SPI_MC_SS_BIT);     -- Slave select
                            io_state <= ST_DONE;

                        when IOA_SPI_DATA =>
                            -- Memory card data
                            spi_tx_strb <= '1';     -- Trigger
                            io_state <= ST_DONE;

                        when IOA_CRC_0 =>
                            -- CRC register (low). Stall if busy.
                            if crc_busy = '0' then
                                crc_set_low <= '1';
                                io_state <= ST_DONE;
                            end if;

                        when IOA_CRC_1 =>
                            -- CRC register (high). Stall if busy.
                            if crc_busy = '0' then
                                crc_set_high <= '1';
                                io_state <= ST_DONE;
                            end if;

                        when IOA_CRC_DATA =>
                            -- Process a byte. Stall if busy.
                            if crc_busy = '0' then
                                crc_strb <= '1';
                                io_state <= ST_DONE;
                            end if;

                        when others =>
                            -- Halt system by not responding.
                            if iorq_s = '0' then
                                -- The cycle has ended (somehow)
                                D <= (others => 'Z');   -- Set data bus to high-impedance
                                io_state <= ST_IDLE;
                            end if;

                    end case;

                when ST_IOWR_CON =>
                    -- Await console data output FIFO write completion
                    if fifos_wrack (FIFO_CON_TX)= '1' then
                        fifos_wrreq (FIFO_CON_TX) <= '0';   -- Remove request
                        io_state <= ST_DONE;
                    end if;

                when ST_IOWR_AUX =>
                    -- Await auxiliary data output FIFO write completion
                    if fifos_wrack (FIFO_AUX_TX)= '1' then
                        fifos_wrreq (FIFO_AUX_TX) <= '0';   -- Remove request
                        io_state <= ST_DONE;
                    end if;

                when ST_WAIT =>
                    -- Wait an extra cycle for memory mapping writes. This
                    --results in a 50 ns pulse, decently longer than the 25
                    -- ns minimum for the 74ls670 register files.
                    io_state <= ST_DONE;

                when ST_DONE =>
                    -- IOWAITn is released while we are in this state. CPU WAITn is
                    -- released once IOWAITn is synchronised by U41 (74ls74), which
                    -- is clocked by the CPU clock.
                    IOWAITn <= '1';             -- Release I/O wait
                    MMAP_IO_SELn <= '1';    -- End any memory map write
                    tick_int_sw_clr <= '0';     -- Remove tick interrupt clear
                    nmi_reasons_clr <= (others => '0'); -- Remove NMI reason clear strobes
                    nmi_mode_clr <= '0';        -- Remove NMI mapping clear
                    trace_arm <= '0';           -- Trace (single step) arm
                    mmap_arm <= '0';            -- Memory mapping arm
                    -- Remove I2C triggers
                    i2c_start_strb <= '0';
                    i2c_tx_strb <= '0';
                    i2c_stop_strb <= '0';
                    -- SPI trigger
                    spi_tx_strb <= '0';
                    -- CRC
                    crc_set_low <= '0';
                    crc_set_high <= '0';
                    crc_strb <= '0';
                    if iorq_s = '0' then
                        D <= (others => 'Z');   -- Set data bus to high-impedance
                        int_ack <= '0';         -- End of any interrupt cycle
                        io_state <= ST_IDLE;
                    end if;

            end case;
        end if;

    end process iosm;


    -- Output expander (74x595) driver
    -- Serial activity LEDs are lit if the corresponding transmitter or receiver is busy,
    -- or there is something in the associated FIFO.
    oex_data (IOX_PNL_S0n) <= not (ctrl_mmap_en);    -- Indicate mapping state on front panel
    oex_data (IOX_PNL_S1n) <=  not (spi_mc_ss);      -- Memory card activity
    oex_data (IOX_PNL_CTxDn) <= not (CTx_Busy or not (fifos_empty (FIFO_CON_TX)));
    oex_data (IOX_PNL_CRxDn) <= not (CRx_Busy or not (fifos_empty (FIFO_CON_RX)));
    oex_data (IOX_PNL_ATxDn) <= not (ATx_Busy or not (fifos_empty (FIFO_AUX_TX)));
    oex_data (IOX_PNL_ARxDn) <= not (ARx_Busy or not (fifos_empty (FIFO_AUX_RX)));
    oex_data (IOX_SPARE1) <= '0';
    oex_data (IOX_SPARE2) <= '0';


    -- LED Flasher
    filter : process (RClk)
    begin
        if rising_edge (RClk) then
            if (Strb_1ms = '1') then
                if (count = 1999) then
                    count <= 0;
                    LED_D2n <= '1';     -- Turn LEDs off
                    LED_D4n <= '1';
                    LED_D5n <= '1';
                else
                    count <= count + 1;
                    if count = 1000 then
                        LED_D2n <= '0';
                    end if;
                    if count = 500 then
                        LED_D4n <= '0';
                    end if;
                    if count = 1500 then
                        LED_D5n <= '0';
                    end if;
                end if;
			end if;
        end if;

	end process filter;

end logic;
