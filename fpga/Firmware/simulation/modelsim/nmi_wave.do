onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /nmi_tb/RClk
add wave -noupdate -radix hexadecimal /nmi_tb/CPU_CLK
add wave -noupdate -radix hexadecimal /nmi_tb/RESET
add wave -noupdate -radix hexadecimal /nmi_tb/A
add wave -noupdate -radix hexadecimal /nmi_tb/D
add wave -noupdate -radix hexadecimal /nmi_tb/M1n
add wave -noupdate -radix hexadecimal /nmi_tb/IORQn
add wave -noupdate -radix hexadecimal /nmi_tb/MREQn
add wave -noupdate -radix hexadecimal /nmi_tb/WRn
add wave -noupdate -radix hexadecimal /nmi_tb/RDn
add wave -noupdate -radix hexadecimal /nmi_tb/IOWAITn
add wave -noupdate -radix hexadecimal /nmi_tb/SUPER
add wave -noupdate -radix hexadecimal /nmi_tb/PROT
add wave -noupdate -radix hexadecimal /nmi_tb/MMAP_ENn
add wave -noupdate -radix hexadecimal /nmi_tb/MMAP_IO_SELn
add wave -noupdate -radix hexadecimal /nmi_tb/NMI_SWITCHn
add wave -noupdate -radix hexadecimal /nmi_tb/INT
add wave -noupdate -radix hexadecimal /nmi_tb/NMI
add wave -noupdate -radix hexadecimal /nmi_tb/PNL_DAT_RDn
add wave -noupdate /nmi_tb/uut/inst_NMI_Control/nmi_prot_viol
add wave -noupdate /nmi_tb/uut/inst_NMI_Control/nmi_super_viol
add wave -noupdate /nmi_tb/uut/inst_NMI_Control/nmi_trace
add wave -noupdate /nmi_tb/uut/inst_NMI_Control/cyc_timer
add wave -noupdate -radix hexadecimal /nmi_tb/uut/inst_NMI_Control/nmi_reasons_reg
add wave -noupdate -radix hexadecimal /nmi_tb/uut/inst_NMI_Control/nmi_reasons_clr
add wave -noupdate /nmi_tb/uut/io_state
add wave -noupdate /nmi_tb/uut/mmap_on_nmi
add wave -noupdate /nmi_tb/uut/inst_NMI_Control/bus_state
add wave -noupdate /nmi_tb/uut/inst_NMI_Control/mapa_state
add wave -noupdate /nmi_tb/uut/inst_NMI_Control/tra_state
add wave -noupdate /nmi_tb/uut/inst_NMI_Control/svc_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4187500 ps} 0}
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
WaveRestoreZoom {2025 ns} {12525 ns}
