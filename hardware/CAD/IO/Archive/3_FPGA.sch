v 20200604 2
C 48800 52700 0 0 0 title-A2.sym
{
T 48800 52700 15 10 1 1 0 0 1
netname=D?
}
T 64600 53600 9 10 1 0 0 0 1
ZARC I/O Board - FPGA Interconnect
T 68900 53100 9 10 1 0 0 0 1
1/5/2020
T 69000 52800 9 10 1 0 0 0 1
Merlin Skinner
T 65000 53100 9 10 1 0 0 0 1
3_FPGA.sch
U 54600 65500 54600 68000 10 0
U 58900 68000 52500 68000 10 0
{
T 52500 68000 5 10 1 1 0 0 1
netname=LV_D<7..0>
}
C 64000 62500 1 0 0 header_14x2-1.sym
{
T 65000 66750 5 10 0 1 0 3 1
device=HEADER_14x2
T 64800 67000 5 10 1 1 0 3 1
refdes=J2
T 64341 57932 5 10 0 1 0 0 1
footprint=?
}
C 56000 56000 1 0 0 header_14x2-1.sym
{
T 57000 60250 5 10 0 1 0 3 1
device=HEADER_14x2
T 56341 51432 5 10 0 1 0 0 1
footprint=?
T 56800 60500 5 10 1 1 0 3 1
refdes=J3
}
C 64000 56000 1 0 0 header_14x2-1.sym
{
T 65000 60250 5 10 0 1 0 3 1
device=HEADER_14x2
T 64341 51432 5 10 0 1 0 0 1
footprint=?
T 64800 60500 5 10 1 1 0 3 1
refdes=J4
}
T 56800 67200 9 10 1 0 0 3 1
Bank 4
T 64800 67200 9 10 1 0 0 3 1
Bank 3
T 56800 60700 9 10 1 0 0 3 1
Bank 2
T 64800 60700 9 10 1 0 0 3 1
Bank 1
N 64000 60000 63800 60000 4
N 63800 60000 63800 55600 4
C 63700 55300 1 0 0 gnd-1.sym
C 65600 55300 1 0 0 gnd-1.sym
N 65700 55600 65700 60000 4
N 65700 60000 65500 60000 4
N 65500 59100 65700 59100 4
N 64000 58800 63800 58800 4
N 65500 58800 65700 58800 4
N 64000 56400 63800 56400 4
N 65500 56400 65700 56400 4
C 63400 60500 1 0 0 3.3V-plus-1.sym
C 65700 60500 1 0 0 3.3V-plus-1.sym
N 63600 60500 63600 56100 4
N 63600 56100 64000 56100 4
N 65900 60500 65900 56100 4
N 65900 56100 65500 56100 4
N 56000 60000 55800 60000 4
N 55800 60000 55800 55600 4
C 55700 55300 1 0 0 gnd-1.sym
C 57600 55300 1 0 0 gnd-1.sym
N 57700 55600 57700 60000 4
N 57700 60000 57500 60000 4
N 57500 56400 57700 56400 4
C 57700 60500 1 0 0 3.3V-plus-1.sym
N 57900 60500 57900 56100 4
N 57900 56100 57500 56100 4
N 55800 62900 55800 62100 4
C 55700 61800 1 0 0 gnd-1.sym
C 57600 61800 1 0 0 gnd-1.sym
N 57700 62100 57700 62900 4
N 56000 62900 55800 62900 4
N 57500 62900 57700 62900 4
C 55400 67000 1 0 0 3.3V-plus-1.sym
C 57700 67000 1 0 0 3.3V-plus-1.sym
N 55600 67000 55600 62600 4
N 55600 62600 56000 62600 4
N 57900 67000 57900 62600 4
N 57900 62600 57500 62600 4
N 64000 66500 63800 66500 4
N 63800 66500 63800 62100 4
C 63700 61800 1 0 0 gnd-1.sym
C 65600 61800 1 0 0 gnd-1.sym
N 65700 62100 65700 66500 4
N 65700 66500 65500 66500 4
N 65500 62900 65700 62900 4
C 65700 67000 1 0 0 3.3V-plus-1.sym
N 65900 67000 65900 62600 4
N 65900 62600 65500 62600 4
N 56000 56100 55800 56100 4
N 64000 62600 63800 62600 4
N 56000 66200 54800 66200 4
{
T 54900 66200 5 10 1 1 0 0 1
netname=LV_D0
}
C 54800 66200 1 90 0 busripper-1.sym
{
T 54400 66200 5 8 0 0 90 0 1
device=none
}
N 56000 65900 54800 65900 4
{
T 54900 65900 5 10 1 1 0 0 1
netname=LV_D2
}
C 54800 65900 1 90 0 busripper-1.sym
{
T 54400 65900 5 8 0 0 90 0 1
device=none
}
N 56000 65600 54800 65600 4
{
T 54900 65600 5 10 1 1 0 0 1
netname=LV_D4
}
C 54800 65600 1 90 0 busripper-1.sym
{
T 54400 65600 5 8 0 0 90 0 1
device=none
}
N 56000 65300 54800 65300 4
{
T 54900 65300 5 10 1 1 0 0 1
netname=LV_D6
}
C 54800 65300 1 90 0 busripper-1.sym
{
T 54400 65300 5 8 0 0 90 0 1
device=none
}
N 58700 66500 57500 66500 4
{
T 58700 66500 5 10 1 1 0 6 1
netname=LV_D1
}
C 58700 66500 1 0 0 busripper-1.sym
{
T 58700 66900 5 8 0 0 0 0 1
device=none
}
N 58700 66200 57500 66200 4
{
T 58700 66200 5 10 1 1 0 6 1
netname=LV_D3
}
C 58700 66200 1 0 0 busripper-1.sym
{
T 58700 66600 5 8 0 0 0 0 1
device=none
}
N 58700 65900 57500 65900 4
{
T 58700 65900 5 10 1 1 0 6 1
netname=LV_D5
}
C 58700 65900 1 0 0 busripper-1.sym
{
T 58700 66300 5 8 0 0 0 0 1
device=none
}
N 58700 65600 57500 65600 4
{
T 58700 65600 5 10 1 1 0 6 1
netname=LV_D7
}
C 58700 65600 1 0 0 busripper-1.sym
{
T 58700 66000 5 8 0 0 0 0 1
device=none
}
U 58900 68000 58900 65500 10 0
N 56000 64700 54200 64700 4
{
T 54300 64700 5 10 1 1 0 0 1
netname=LV_A2
}
N 56000 64400 54200 64400 4
{
T 54300 64400 5 10 1 1 0 0 1
netname=LV_A4
}
N 56000 64100 54200 64100 4
{
T 54300 64100 5 10 1 1 0 0 1
netname=LV_A6
}
N 56000 65000 54200 65000 4
{
T 54300 65000 5 10 1 1 0 0 1
netname=LV_A0
}
N 59300 64400 57500 64400 4
{
T 59200 64400 5 10 1 1 0 6 1
netname=LV_A7
}
N 59300 64700 57500 64700 4
{
T 59200 64700 5 10 1 1 0 6 1
netname=LV_A5
}
N 59300 65000 57500 65000 4
{
T 59200 65000 5 10 1 1 0 6 1
netname=LV_A3
}
N 59300 65300 57500 65300 4
{
T 59200 65300 5 10 1 1 0 6 1
netname=LV_A1
}
C 59300 65300 1 0 0 busripper-1.sym
{
T 59300 65700 5 8 0 0 0 0 1
device=none
}
C 59300 65000 1 0 0 busripper-1.sym
{
T 59300 65400 5 8 0 0 0 0 1
device=none
}
C 59300 64700 1 0 0 busripper-1.sym
{
T 59300 65100 5 8 0 0 0 0 1
device=none
}
C 59300 64400 1 0 0 busripper-1.sym
{
T 59300 64800 5 8 0 0 0 0 1
device=none
}
C 54200 65000 1 90 0 busripper-1.sym
{
T 53800 65000 5 8 0 0 90 0 1
device=none
}
C 54200 64700 1 90 0 busripper-1.sym
{
T 53800 64700 5 8 0 0 90 0 1
device=none
}
C 54200 64400 1 90 0 busripper-1.sym
{
T 53800 64400 5 8 0 0 90 0 1
device=none
}
C 54200 64100 1 90 0 busripper-1.sym
{
T 53800 64100 5 8 0 0 90 0 1
device=none
}
U 54000 64300 54000 67700 10 0
U 54000 67700 52500 67700 10 0
U 59500 64600 59500 67700 10 0
U 59500 67700 54000 67700 10 0
T 52500 67700 5 10 1 1 0 0 1
netname=LV_A<7..0>
C 55000 66400 1 0 0 nc-left-2.sym
{
T 55500 66500 5 10 0 0 0 0 1
device=none
T 55500 66500 5 10 0 0 0 0 1
footprint=none
T 55000 66800 5 10 0 0 0 0 1
value=NoConnection
T 55000 67200 5 10 0 0 0 0 1
device=DRC_Directive
}
N 56000 66500 55500 66500 4
N 57500 63800 60000 63800 4
{
T 60000 63800 5 10 1 1 0 6 1
netname=\_LV_MREQ\_
}
N 53500 63800 56000 63800 4
{
T 53500 63800 5 10 1 1 0 0 1
netname=\_LV_IORQ\_
}
N 57500 63500 60000 63500 4
{
T 60000 63500 5 10 1 1 0 6 1
netname=\_LV_RD\_
}
N 53500 63500 56000 63500 4
{
T 53500 63500 5 10 1 1 0 0 1
netname=\_LV_WR\_
}
N 61500 65900 64000 65900 4
{
T 61500 65900 5 10 1 1 0 0 1
netname=\_LV_NMI_SWITCH\_
}
N 61500 65600 64000 65600 4
{
T 61500 65600 5 10 1 1 0 0 1
netname=LV_RESET
}
N 65500 65000 66000 65000 4
C 66000 64900 1 0 0 nc-right-2.sym
{
T 66500 65000 5 10 0 0 0 0 1
device=none
T 66500 65000 5 10 0 0 0 0 1
footprint=none
T 66100 65400 5 10 0 0 0 0 1
value=NoConnection
T 66100 65600 5 10 0 0 0 0 1
device=DRC_Directive
}
C 66000 64600 1 0 0 nc-right-2.sym
{
T 66500 64700 5 10 0 0 0 0 1
device=none
T 66500 64700 5 10 0 0 0 0 1
footprint=none
T 66100 65100 5 10 0 0 0 0 1
value=NoConnection
T 66100 65300 5 10 0 0 0 0 1
device=DRC_Directive
}
N 66000 64700 65500 64700 4
N 64000 64700 63500 64700 4
C 63000 64600 1 0 0 nc-left-2.sym
{
T 63500 64700 5 10 0 0 0 0 1
device=none
T 63500 64700 5 10 0 0 0 0 1
footprint=none
T 63000 65000 5 10 0 0 0 0 1
value=NoConnection
T 63000 65400 5 10 0 0 0 0 1
device=DRC_Directive
}
T 62800 64700 9 10 1 0 0 7 1
CLK6
T 66700 65000 9 10 1 0 0 1 1
CLK7
T 66700 64700 9 10 1 0 0 1 1
CLK5
N 57500 64100 60000 64100 4
{
T 60000 64100 5 10 1 1 0 6 1
netname=\_LV_M1\_
}
T 53800 66500 9 10 1 0 0 7 1
DEV_OE / IO
N 64000 59700 63500 59700 4
C 63000 59600 1 0 0 nc-left-2.sym
{
T 63500 59700 5 10 0 0 0 0 1
device=none
T 63500 59700 5 10 0 0 0 0 1
footprint=none
T 63000 60000 5 10 0 0 0 0 1
value=NoConnection
T 63000 60400 5 10 0 0 0 0 1
device=DRC_Directive
}
N 65500 59700 66000 59700 4
C 66000 59600 1 0 0 nc-right-2.sym
{
T 66500 59700 5 10 0 0 0 0 1
device=none
T 66500 59700 5 10 0 0 0 0 1
footprint=none
T 66100 60100 5 10 0 0 0 0 1
value=NoConnection
T 66100 60300 5 10 0 0 0 0 1
device=DRC_Directive
}
T 66700 59700 9 10 1 0 0 1 1
CLKUSR / IO
N 61500 58500 64000 58500 4
{
T 61500 58500 5 10 1 1 0 0 1
netname=LV_CPU_CLK
}
N 65500 58500 66000 58500 4
C 66000 58400 1 0 0 nc-right-2.sym
{
T 66500 58500 5 10 0 0 0 0 1
device=none
T 66500 58500 5 10 0 0 0 0 1
footprint=none
T 66100 58900 5 10 0 0 0 0 1
value=NoConnection
T 66100 59100 5 10 0 0 0 0 1
device=DRC_Directive
}
T 66700 58500 9 10 1 0 0 1 1
CLK0 (50 MHz)
T 62800 58500 9 10 1 0 0 0 1
(CLK1)
N 64000 58200 63500 58200 4
C 63000 58100 1 0 0 nc-left-2.sym
{
T 63500 58200 5 10 0 0 0 0 1
device=none
T 63500 58200 5 10 0 0 0 0 1
footprint=none
T 63000 58500 5 10 0 0 0 0 1
value=NoConnection
T 63000 58900 5 10 0 0 0 0 1
device=DRC_Directive
}
T 62800 58200 9 10 1 0 0 7 1
CLK3
N 65500 58200 66000 58200 4
C 66000 58100 1 0 0 nc-right-2.sym
{
T 66500 58200 5 10 0 0 0 0 1
device=none
T 66500 58200 5 10 0 0 0 0 1
footprint=none
T 66100 58600 5 10 0 0 0 0 1
value=NoConnection
T 66100 58800 5 10 0 0 0 0 1
device=DRC_Directive
}
T 66700 58200 9 10 1 0 0 1 1
CLK2
N 64000 57300 63500 57300 4
C 63000 57200 1 0 0 nc-left-2.sym
{
T 63500 57300 5 10 0 0 0 0 1
device=none
T 63500 57300 5 10 0 0 0 0 1
footprint=none
T 63000 57600 5 10 0 0 0 0 1
value=NoConnection
T 63000 58000 5 10 0 0 0 0 1
device=DRC_Directive
}
T 62800 57300 9 10 1 0 0 7 1
VCC1.2
N 65500 57300 66000 57300 4
C 66000 57200 1 0 0 nc-right-2.sym
{
T 66500 57300 5 10 0 0 0 0 1
device=none
T 66500 57300 5 10 0 0 0 0 1
footprint=none
T 66100 57700 5 10 0 0 0 0 1
value=NoConnection
T 66100 57900 5 10 0 0 0 0 1
device=DRC_Directive
}
T 66700 57300 9 10 1 0 0 1 1
VCC1.2
C 56000 62500 1 0 0 header_14x2-1.sym
{
T 57000 66750 5 10 0 1 0 3 1
device=HEADER_14x2
T 56800 67000 5 10 1 1 0 3 1
refdes=J1
T 56341 57932 5 10 0 1 0 0 1
footprint=?
}
N 61500 63500 64000 63500 4
{
T 61500 63500 5 10 1 1 0 0 1
netname=OX_SRCLK
}
N 68000 63800 65500 63800 4
{
T 68000 63800 5 10 1 1 0 6 1
netname=OX_DATA
}
N 61500 63800 64000 63800 4
{
T 61500 63800 5 10 1 1 0 0 1
netname=LV_NMI
}
N 65500 64100 68000 64100 4
{
T 68000 64100 5 10 1 1 0 6 1
netname=LV_INT
}
N 65500 65300 68000 65300 4
{
T 68000 65300 5 10 1 1 0 6 1
netname=\_LV_IOWAIT\_
}
N 65500 65900 66100 65900 4
C 66100 65800 1 0 0 nc-right-2.sym
{
T 66600 65900 5 10 0 0 0 0 1
device=none
T 66600 65900 5 10 0 0 0 0 1
footprint=none
T 66200 66300 5 10 0 0 0 0 1
value=NoConnection
T 66200 66500 5 10 0 0 0 0 1
device=DRC_Directive
}
T 66800 65900 9 10 1 0 0 1 1
nCEO
N 61500 64100 64000 64100 4
{
T 61500 64100 5 10 1 1 0 0 1
netname=\_LV_PNL_DAT_RD\_
}
N 64000 64400 63500 64400 4
C 63000 64300 1 0 0 nc-left-2.sym
{
T 63500 64400 5 10 0 0 0 0 1
device=none
T 63500 64400 5 10 0 0 0 0 1
footprint=none
T 63000 64700 5 10 0 0 0 0 1
value=NoConnection
T 63000 65100 5 10 0 0 0 0 1
device=DRC_Directive
}
T 62800 64400 9 10 1 0 0 7 1
CLK4
N 53500 63200 56000 63200 4
{
T 53500 63200 5 10 1 1 0 0 1
netname=LV_SUPER
}
N 57500 63200 60000 63200 4
{
T 60000 63200 5 10 1 1 0 6 1
netname=LV_PROT
}
N 64000 66200 63500 66200 4
C 63000 66100 1 0 0 nc-left-2.sym
{
T 63500 66200 5 10 0 0 0 0 1
device=none
T 63500 66200 5 10 0 0 0 0 1
footprint=none
T 63000 66500 5 10 0 0 0 0 1
value=NoConnection
T 63000 66900 5 10 0 0 0 0 1
device=DRC_Directive
}
N 65500 66200 66100 66200 4
C 66100 66100 1 0 0 nc-right-2.sym
{
T 66600 66200 5 10 0 0 0 0 1
device=none
T 66600 66200 5 10 0 0 0 0 1
footprint=none
T 66200 66600 5 10 0 0 0 0 1
value=NoConnection
T 66200 66800 5 10 0 0 0 0 1
device=DRC_Directive
}
N 65500 64400 68000 64400 4
{
T 68000 64400 5 10 1 1 0 6 1
netname=\_MMAP_IO_SEL\_
}
N 65500 65600 66100 65600 4
C 66100 65500 1 0 0 nc-right-2.sym
{
T 66600 65600 5 10 0 0 0 0 1
device=none
T 66600 65600 5 10 0 0 0 0 1
footprint=none
T 66200 66000 5 10 0 0 0 0 1
value=NoConnection
T 66200 66200 5 10 0 0 0 0 1
device=DRC_Directive
}
N 61500 65000 64000 65000 4
{
T 61500 65000 5 10 1 1 0 0 1
netname=\_MMAP_EN\_
}
N 64000 65300 63500 65300 4
C 63000 65200 1 0 0 nc-left-2.sym
{
T 63500 65300 5 10 0 0 0 0 1
device=none
T 63500 65300 5 10 0 0 0 0 1
footprint=none
T 63000 65600 5 10 0 0 0 0 1
value=NoConnection
T 63000 66000 5 10 0 0 0 0 1
device=DRC_Directive
}
T 62800 66200 9 10 1 0 0 7 1
DNU
T 66800 65600 9 10 1 0 0 1 1
DNU
T 62800 65300 9 10 1 0 0 7 1
DNU
N 56000 56400 55500 56400 4
C 55000 56300 1 0 0 nc-left-2.sym
{
T 55500 56400 5 10 0 0 0 0 1
device=none
T 55500 56400 5 10 0 0 0 0 1
footprint=none
T 55000 56700 5 10 0 0 0 0 1
value=NoConnection
T 55000 57100 5 10 0 0 0 0 1
device=DRC_Directive
}
T 54800 56400 9 10 1 0 0 7 1
DNU
N 64000 59400 63500 59400 4
C 63000 59300 1 0 0 nc-left-2.sym
{
T 63500 59400 5 10 0 0 0 0 1
device=none
T 63500 59400 5 10 0 0 0 0 1
footprint=none
T 63000 59700 5 10 0 0 0 0 1
value=NoConnection
T 63000 60100 5 10 0 0 0 0 1
device=DRC_Directive
}
T 62800 59400 9 10 1 0 0 7 1
DNU
N 64000 59100 63500 59100 4
C 63000 59000 1 0 0 nc-left-2.sym
{
T 63500 59100 5 10 0 0 0 0 1
device=none
T 63500 59100 5 10 0 0 0 0 1
footprint=none
T 63000 59400 5 10 0 0 0 0 1
value=NoConnection
T 63000 59800 5 10 0 0 0 0 1
device=DRC_Directive
}
T 62800 59100 9 10 1 0 0 7 1
DNU
N 64000 57600 63500 57600 4
C 63000 57500 1 0 0 nc-left-2.sym
{
T 63500 57600 5 10 0 0 0 0 1
device=none
T 63500 57600 5 10 0 0 0 0 1
footprint=none
T 63000 57900 5 10 0 0 0 0 1
value=NoConnection
T 63000 58300 5 10 0 0 0 0 1
device=DRC_Directive
}
N 65500 57600 66100 57600 4
C 66100 57500 1 0 0 nc-right-2.sym
{
T 66600 57600 5 10 0 0 0 0 1
device=none
T 66600 57600 5 10 0 0 0 0 1
footprint=none
T 66200 58000 5 10 0 0 0 0 1
value=NoConnection
T 66200 58200 5 10 0 0 0 0 1
device=DRC_Directive
}
T 66800 57600 9 10 1 0 0 1 1
DNU
T 62800 57600 9 10 1 0 0 7 1
DNU
T 62800 59700 9 10 1 0 0 7 1
DNU
T 49500 53500 9 10 1 0 0 0 1
DNU: Do Not Use
N 53500 59700 56000 59700 4
{
T 53500 59700 5 10 1 1 0 0 1
netname=\_LV_CTxD\_
}
N 57500 59700 60000 59700 4
{
T 60000 59700 5 10 1 1 0 6 1
netname=\_LV_CRxD\_
}
N 57500 59400 60000 59400 4
{
T 60000 59400 5 10 1 1 0 6 1
netname=\_LV_CCTS\_
}
N 53500 59400 56000 59400 4
{
T 53500 59400 5 10 1 1 0 0 1
netname=\_LV_CRTS\_
}
N 53500 59100 56000 59100 4
{
T 53500 59100 5 10 1 1 0 0 1
netname=\_LV_ATxD\_
}
N 57500 59100 60000 59100 4
{
T 60000 59100 5 10 1 1 0 6 1
netname=\_LV_ARxD\_
}
N 57500 58800 60000 58800 4
{
T 60000 58800 5 10 1 1 0 6 1
netname=\_LV_ACTS\_
}
N 53500 58800 56000 58800 4
{
T 53500 58800 5 10 1 1 0 0 1
netname=\_LV_ARTS\_
}
N 68000 63500 65500 63500 4
{
T 68000 63500 5 10 1 1 0 6 1
netname=OX_RCLK
}
N 64000 63200 63500 63200 4
C 63000 63100 1 0 0 nc-left-2.sym
{
T 63500 63200 5 10 0 0 0 0 1
device=none
T 63500 63200 5 10 0 0 0 0 1
footprint=none
T 63000 63500 5 10 0 0 0 0 1
value=NoConnection
T 63000 63900 5 10 0 0 0 0 1
device=DRC_Directive
}
N 64000 62900 63500 62900 4
C 63000 62800 1 0 0 nc-left-2.sym
{
T 63500 62900 5 10 0 0 0 0 1
device=none
T 63500 62900 5 10 0 0 0 0 1
footprint=none
T 63000 63200 5 10 0 0 0 0 1
value=NoConnection
T 63000 63600 5 10 0 0 0 0 1
device=DRC_Directive
}
N 64000 57900 63500 57900 4
C 63000 57800 1 0 0 nc-left-2.sym
{
T 63500 57900 5 10 0 0 0 0 1
device=none
T 63500 57900 5 10 0 0 0 0 1
footprint=none
T 63000 58200 5 10 0 0 0 0 1
value=NoConnection
T 63000 58600 5 10 0 0 0 0 1
device=DRC_Directive
}
N 64000 57000 63500 57000 4
C 63000 56900 1 0 0 nc-left-2.sym
{
T 63500 57000 5 10 0 0 0 0 1
device=none
T 63500 57000 5 10 0 0 0 0 1
footprint=none
T 63000 57300 5 10 0 0 0 0 1
value=NoConnection
T 63000 57700 5 10 0 0 0 0 1
device=DRC_Directive
}
N 64000 56700 63500 56700 4
C 63000 56600 1 0 0 nc-left-2.sym
{
T 63500 56700 5 10 0 0 0 0 1
device=none
T 63500 56700 5 10 0 0 0 0 1
footprint=none
T 63000 57000 5 10 0 0 0 0 1
value=NoConnection
T 63000 57400 5 10 0 0 0 0 1
device=DRC_Directive
}
N 56000 57600 55500 57600 4
C 55000 57500 1 0 0 nc-left-2.sym
{
T 55500 57600 5 10 0 0 0 0 1
device=none
T 55500 57600 5 10 0 0 0 0 1
footprint=none
T 55000 57900 5 10 0 0 0 0 1
value=NoConnection
T 55000 58300 5 10 0 0 0 0 1
device=DRC_Directive
}
N 56000 57300 55500 57300 4
C 55000 57200 1 0 0 nc-left-2.sym
{
T 55500 57300 5 10 0 0 0 0 1
device=none
T 55500 57300 5 10 0 0 0 0 1
footprint=none
T 55000 57600 5 10 0 0 0 0 1
value=NoConnection
T 55000 58000 5 10 0 0 0 0 1
device=DRC_Directive
}
N 56000 57000 55500 57000 4
C 55000 56900 1 0 0 nc-left-2.sym
{
T 55500 57000 5 10 0 0 0 0 1
device=none
T 55500 57000 5 10 0 0 0 0 1
footprint=none
T 55000 57300 5 10 0 0 0 0 1
value=NoConnection
T 55000 57700 5 10 0 0 0 0 1
device=DRC_Directive
}
N 56000 56700 55500 56700 4
C 55000 56600 1 0 0 nc-left-2.sym
{
T 55500 56700 5 10 0 0 0 0 1
device=none
T 55500 56700 5 10 0 0 0 0 1
footprint=none
T 55000 57000 5 10 0 0 0 0 1
value=NoConnection
T 55000 57400 5 10 0 0 0 0 1
device=DRC_Directive
}
N 65500 63200 66100 63200 4
C 66100 63100 1 0 0 nc-right-2.sym
{
T 66600 63200 5 10 0 0 0 0 1
device=none
T 66600 63200 5 10 0 0 0 0 1
footprint=none
T 66200 63600 5 10 0 0 0 0 1
value=NoConnection
T 66200 63800 5 10 0 0 0 0 1
device=DRC_Directive
}
N 65500 59400 66100 59400 4
C 66100 59300 1 0 0 nc-right-2.sym
{
T 66600 59400 5 10 0 0 0 0 1
device=none
T 66600 59400 5 10 0 0 0 0 1
footprint=none
T 66200 59800 5 10 0 0 0 0 1
value=NoConnection
T 66200 60000 5 10 0 0 0 0 1
device=DRC_Directive
}
N 65500 57900 66100 57900 4
C 66100 57800 1 0 0 nc-right-2.sym
{
T 66600 57900 5 10 0 0 0 0 1
device=none
T 66600 57900 5 10 0 0 0 0 1
footprint=none
T 66200 58300 5 10 0 0 0 0 1
value=NoConnection
T 66200 58500 5 10 0 0 0 0 1
device=DRC_Directive
}
N 65500 57000 66100 57000 4
C 66100 56900 1 0 0 nc-right-2.sym
{
T 66600 57000 5 10 0 0 0 0 1
device=none
T 66600 57000 5 10 0 0 0 0 1
footprint=none
T 66200 57400 5 10 0 0 0 0 1
value=NoConnection
T 66200 57600 5 10 0 0 0 0 1
device=DRC_Directive
}
N 65500 56700 66100 56700 4
C 66100 56600 1 0 0 nc-right-2.sym
{
T 66600 56700 5 10 0 0 0 0 1
device=none
T 66600 56700 5 10 0 0 0 0 1
footprint=none
T 66200 57100 5 10 0 0 0 0 1
value=NoConnection
T 66200 57300 5 10 0 0 0 0 1
device=DRC_Directive
}
N 57500 57600 58100 57600 4
C 58100 57500 1 0 0 nc-right-2.sym
{
T 58600 57600 5 10 0 0 0 0 1
device=none
T 58600 57600 5 10 0 0 0 0 1
footprint=none
T 58200 58000 5 10 0 0 0 0 1
value=NoConnection
T 58200 58200 5 10 0 0 0 0 1
device=DRC_Directive
}
N 57500 57300 58100 57300 4
C 58100 57200 1 0 0 nc-right-2.sym
{
T 58600 57300 5 10 0 0 0 0 1
device=none
T 58600 57300 5 10 0 0 0 0 1
footprint=none
T 58200 57700 5 10 0 0 0 0 1
value=NoConnection
T 58200 57900 5 10 0 0 0 0 1
device=DRC_Directive
}
N 57500 57000 58100 57000 4
C 58100 56900 1 0 0 nc-right-2.sym
{
T 58600 57000 5 10 0 0 0 0 1
device=none
T 58600 57000 5 10 0 0 0 0 1
footprint=none
T 58200 57400 5 10 0 0 0 0 1
value=NoConnection
T 58200 57600 5 10 0 0 0 0 1
device=DRC_Directive
}
N 57500 56700 58100 56700 4
C 58100 56600 1 0 0 nc-right-2.sym
{
T 58600 56700 5 10 0 0 0 0 1
device=none
T 58600 56700 5 10 0 0 0 0 1
footprint=none
T 58200 57100 5 10 0 0 0 0 1
value=NoConnection
T 58200 57300 5 10 0 0 0 0 1
device=DRC_Directive
}
N 53500 58500 56000 58500 4
{
T 53500 58500 5 10 1 1 0 0 1
netname=RTC_SCL
}
N 57500 58500 60000 58500 4
{
T 60000 58500 5 10 1 1 0 6 1
netname=RTC_SDA
}
N 53500 58200 56000 58200 4
{
T 53500 58200 5 10 1 1 0 0 1
netname=\_SD_CS\_
}
N 53500 57900 56000 57900 4
{
T 53500 57900 5 10 1 1 0 0 1
netname=SD_MOSI
}
N 57500 58200 60000 58200 4
{
T 60000 58200 5 10 1 1 0 6 1
netname=SD_SCLK
}
N 57500 57900 60000 57900 4
{
T 60000 57900 5 10 1 1 0 6 1
netname=SD_MISO
}
