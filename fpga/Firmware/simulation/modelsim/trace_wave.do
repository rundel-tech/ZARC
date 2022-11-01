onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /trace_tb/RClk
add wave -noupdate -radix hexadecimal /trace_tb/CPU_CLK
add wave -noupdate -radix hexadecimal /trace_tb/RESET
add wave -noupdate -radix hexadecimal /trace_tb/A
add wave -noupdate -radix hexadecimal /trace_tb/D
add wave -noupdate -radix hexadecimal /trace_tb/M1n
add wave -noupdate -radix hexadecimal /trace_tb/IORQn
add wave -noupdate -radix hexadecimal /trace_tb/MREQn
add wave -noupdate -radix hexadecimal /trace_tb/WRn
add wave -noupdate -radix hexadecimal /trace_tb/RDn
add wave -noupdate -radix hexadecimal /trace_tb/IOWAITn
add wave -noupdate -radix hexadecimal /trace_tb/SUPER
add wave -noupdate -radix hexadecimal /trace_tb/PROT
add wave -noupdate -radix hexadecimal /trace_tb/MMAP_ENn
add wave -noupdate -radix hexadecimal /trace_tb/MMAP_IO_SELn
add wave -noupdate -radix hexadecimal /trace_tb/NMI_SWITCHn
add wave -noupdate -radix hexadecimal /trace_tb/INT
add wave -noupdate -radix hexadecimal /trace_tb/NMI
add wave -noupdate -radix hexadecimal /trace_tb/PNL_DAT_RDn
add wave -noupdate /trace_tb/uut/inst_NMI_Control/nmi_prot_viol
add wave -noupdate /trace_tb/uut/inst_NMI_Control/nmi_super_viol
add wave -noupdate /trace_tb/uut/inst_NMI_Control/nmi_trace
add wave -noupdate /trace_tb/uut/inst_NMI_Control/cyc_timer
add wave -noupdate -radix hexadecimal /trace_tb/uut/inst_NMI_Control/nmi_reasons_reg
add wave -noupdate -radix hexadecimal /trace_tb/uut/inst_NMI_Control/nmi_reasons_clr
add wave -noupdate /trace_tb/uut/io_state
add wave -noupdate /trace_tb/uut/mmap_on_nmi
add wave -noupdate /trace_tb/uut/inst_NMI_Control/mmap_arm_counter
add wave -noupdate /trace_tb/uut/inst_NMI_Control/trace_counter
add wave -noupdate /trace_tb/uut/inst_NMI_Control/prefix_counter
add wave -noupdate /trace_tb/uut/inst_NMI_Control/bus_state
add wave -noupdate /trace_tb/uut/inst_NMI_Control/mapa_state
add wave -noupdate /trace_tb/uut/inst_NMI_Control/tra_state
add wave -noupdate /trace_tb/uut/inst_NMI_Control/svc_state
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
