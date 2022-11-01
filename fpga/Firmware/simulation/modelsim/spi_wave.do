onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /spi_tb/CPU_CLK
add wave -noupdate -radix hexadecimal /spi_tb/RESET
add wave -noupdate -radix hexadecimal /spi_tb/A
add wave -noupdate -radix hexadecimal /spi_tb/D
add wave -noupdate -radix hexadecimal /spi_tb/M1n
add wave -noupdate -radix hexadecimal /spi_tb/IORQn
add wave -noupdate -radix hexadecimal /spi_tb/MREQn
add wave -noupdate -radix hexadecimal /spi_tb/WRn
add wave -noupdate -radix hexadecimal /spi_tb/RDn
add wave -noupdate -radix hexadecimal /spi_tb/IOWAITn
add wave -noupdate /spi_tb/uut/io_state
add wave -noupdate -radix hexadecimal /spi_tb/SUPER
add wave -noupdate -radix hexadecimal /spi_tb/PROT
add wave -noupdate /spi_tb/uut/inst_SPI_Master/Fast_Mode
add wave -noupdate -radix hexadecimal /spi_tb/uut/inst_SPI_Master/Tx_Data
add wave -noupdate -radix hexadecimal /spi_tb/uut/inst_SPI_Master/Rx_Data
add wave -noupdate /spi_tb/uut/inst_SPI_Master/Busy
add wave -noupdate /spi_tb/uut/inst_SPI_Master/SPI_SCLK
add wave -noupdate /spi_tb/uut/inst_SPI_Master/SPI_MOSI
add wave -noupdate /spi_tb/uut/inst_SPI_Master/SPI_MISO
add wave -noupdate /spi_tb/uut/inst_SPI_Master/state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {84202201 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 196
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 62500
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {57952201 ps} {110452201 ps}
