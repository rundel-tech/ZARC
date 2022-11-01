onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /crc_tb/CPU_CLK
add wave -noupdate /crc_tb/RESET
add wave -noupdate -radix hexadecimal /crc_tb/A
add wave -noupdate -radix hexadecimal /crc_tb/D
add wave -noupdate /crc_tb/M1n
add wave -noupdate /crc_tb/MREQn
add wave -noupdate /crc_tb/IORQn
add wave -noupdate /crc_tb/RDn
add wave -noupdate /crc_tb/WRn
add wave -noupdate /crc_tb/IOWAITn
add wave -noupdate /crc_tb/uut/io_state
add wave -noupdate -radix hexadecimal /crc_tb/uut/inst_CRC16_XModem/CRC
add wave -noupdate /crc_tb/uut/inst_CRC16_XModem/Strb
add wave -noupdate /crc_tb/uut/inst_CRC16_XModem/SetCRC_Low
add wave -noupdate /crc_tb/uut/inst_CRC16_XModem/SetCRC_High
add wave -noupdate /crc_tb/uut/inst_CRC16_XModem/Busy
add wave -noupdate /crc_tb/uut/inst_CRC16_XModem/state
add wave -noupdate -radix hexadecimal /crc_tb/uut/inst_CRC16_XModem/data_reg
add wave -noupdate -radix hexadecimal /crc_tb/uut/inst_CRC16_XModem/crc_reg
add wave -noupdate /crc_tb/uut/inst_CRC16_XModem/bit_count
add wave -noupdate /crc_tb/uut/inst_CRC16_XModem/feedback
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {18180938 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 177
configure wave -valuecolwidth 100
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
WaveRestoreZoom {0 ps} {2625 ns}
