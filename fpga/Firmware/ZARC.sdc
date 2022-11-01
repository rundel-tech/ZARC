# ***********************************************
# * ZARC FPGA Timing Constraints                *
# * Written by: Merlin Skinner                  *
# * Date Started: 9/5/2020                      *
# ***********************************************

# Useful guide: https://www.intel.com/content/dam/altera-www/global/en_US/uploads/3/3f/TimeQuest_User_Guide.pdf



# **********
# * Clocks *
# **********


# Clock constraints
create_clock -name "CPU_CLK" -period 125.000ns [get_ports {CPU_CLK}]
# Associated virtual clock
create_clock -name "CPU_CLK_virt" -period 125.000ns

create_clock -name "RClk" -period 20.000ns [get_ports {RClk}]
# Associated virtual clock
create_clock -name "RClk_virt" -period 20.000ns

# Set mutually exclusive clocks.
set_clock_groups -exclusive -group {CPU_CLK} -group {RClk}
set_clock_groups -exclusive -group {CPU_CLK} -group {RClk_virt}
set_clock_groups -exclusive -group {CPU_CLK_virt} -group {RClk}
set_clock_groups -exclusive -group {CPU_CLK_virt} -group {RClk_virt}

# Automatically constrain PLL and other generated clocks
derive_pll_clocks -create_base_clocks

# Automatically calculate clock uncertainty to jitter and other effects.
# Not supported (fully?) for family Cyclone II
derive_clock_uncertainty



# *************
# * Constants *
# *************


# Clock periods
set rclk_period 20


# The CPU bus interface uses RClk (50 MHz), and the CPU bus is treated as
# asynchronous. It's hard to do otherwise, as the timing is complex and a
# previous attempt using CPU_CLK led to complications as some of the signals
# are not well specified relative to this clock.
set z80_async_max [expr $rclk_period - 10] ;# 10 ns setup before next +ve edge
set z80_async_min 0



# *******
# * Z80 *
# *******


# *** Inputs ***

# Asynchronous inputs
set_input_delay -clock RClk_virt -max $z80_async_max [get_ports { \
    RDn SUPER PROT M1n IORQn WRn MREQn \
    A[*] D[*] \
}]

set_input_delay -clock RClk_virt -min $z80_async_min [get_ports { \
    RDn SUPER PROT M1n IORQn WRn MREQn \
    A[*] D[*] \
}]


# *** Outputs***

# Asynchronous outputs.
set_output_delay -clock RClk_virt -max $z80_async_max [get_ports { \
    D[*] INT NMI IOWAITn \
}]

set_output_delay -clock RClk_virt -min $z80_async_min [get_ports { \
    D[*] INT NMI IOWAITn \
}]



# *******
# * I/O *
# *******


# LEDs
# Timing here is entirely non-critical, but the timing analyser will complain if
# have no constraints at all.
set_output_delay -clock RClk_virt -max 0 [get_ports {LED_D?n}]
set_output_delay -clock RClk_virt -min 0 [get_ports {LED_D?n}]

# Asynchronous inputs
set_input_delay -clock RClk_virt -max $z80_async_max [get_ports { \
    NMI_SWITCHn RESET \
    CRxDn CCTSn ARxDn ACTSn \
    RTC_SCL RTC_SDA \
    SPI_MISO \
}]
set_input_delay -clock RClk_virt -min 0 [get_ports { \
    NMI_SWITCHn RESET \
    CRxDn CCTSn ARxDn ACTSn \
    RTC_SCL RTC_SDA \
    SPI_MISO \
}]

# Asynchronous outputs with non-critical timing.
set_output_delay -clock RClk_virt -max 0 [get_ports { \
    MMAP_ENn MMAP_IO_SELn PNL_DAT_RDn \
    OX_SRCLK OX_DATA OX_RCLK \
    CTxDn CRTSn ATxDn ARTSn \
    RTC_SCL RTC_SDA \
    SPI_CSn SPI_SCLK SPI_MOSI \
}]
set_output_delay -clock RClk_virt -min 0 [get_ports { \
    MMAP_ENn MMAP_IO_SELn PNL_DAT_RDn \
    OX_SRCLK OX_DATA OX_RCLK \
    CTxDn CRTSn ATxDn ARTSn \
    RTC_SCL RTC_SDA \
    SPI_CSn SPI_SCLK SPI_MOSI \
}]
