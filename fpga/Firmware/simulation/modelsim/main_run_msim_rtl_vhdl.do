transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/merli/Documents/Merlin/ZARC_Z80_Box/FPGA/Firmware/vhdl/Sync2FF.vhd}
vcom -93 -work work {D:/merli/Documents/Merlin/ZARC_Z80_Box/FPGA/Firmware/vhdl/MainPLL.vhd}
vcom -93 -work work {D:/merli/Documents/Merlin/ZARC_Z80_Box/FPGA/Firmware/vhdl/Definitions.vhd}
vcom -93 -work work {D:/merli/Documents/Merlin/ZARC_Z80_Box/FPGA/Firmware/vhdl/FIFO_RAM.vhd}
vcom -93 -work work {D:/merli/Documents/Merlin/ZARC_Z80_Box/FPGA/Firmware/vhdl/CRC16_XModem.vhd}
vcom -93 -work work {D:/merli/Documents/Merlin/ZARC_Z80_Box/FPGA/Firmware/vhdl/SPI_Master.vhd}
vcom -93 -work work {D:/merli/Documents/Merlin/ZARC_Z80_Box/FPGA/Firmware/vhdl/I2C_Master.vhd}
vcom -93 -work work {D:/merli/Documents/Merlin/ZARC_Z80_Box/FPGA/Firmware/vhdl/NMI_Control.vhd}
vcom -93 -work work {D:/merli/Documents/Merlin/ZARC_Z80_Box/FPGA/Firmware/vhdl/IntControl.vhd}
vcom -93 -work work {D:/merli/Documents/Merlin/ZARC_Z80_Box/FPGA/Firmware/vhdl/FIFOs.vhd}
vcom -93 -work work {D:/merli/Documents/Merlin/ZARC_Z80_Box/FPGA/Firmware/vhdl/DeNoise.vhd}
vcom -93 -work work {D:/merli/Documents/Merlin/ZARC_Z80_Box/FPGA/Firmware/vhdl/OutExpander.vhd}
vcom -93 -work work {D:/merli/Documents/Merlin/ZARC_Z80_Box/FPGA/Firmware/vhdl/AsyncSerTx.vhd}
vcom -93 -work work {D:/merli/Documents/Merlin/ZARC_Z80_Box/FPGA/Firmware/vhdl/AsyncSerRx.vhd}
vcom -93 -work work {D:/merli/Documents/Merlin/ZARC_Z80_Box/FPGA/Firmware/vhdl/Timing.vhd}
vcom -93 -work work {D:/merli/Documents/Merlin/ZARC_Z80_Box/FPGA/Firmware/vhdl/Main.vhd}

vcom -93 -work work {D:/merli/Documents/Merlin/ZARC_Z80_Box/FPGA/Firmware/simulation/trace_pre_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  trace_pre_tb

add wave *
view structure
view signals
run 20 us
