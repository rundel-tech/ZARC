v 20130925 2
C 48800 52700 0 0 0 title-A2.sym
T 64600 53600 9 10 1 0 0 0 1
ZARC RAM Chip Selects and Memory Mapping
T 68900 53100 9 10 1 0 0 0 1
19/1/2019
T 69000 52800 9 10 1 0 0 0 1
Merlin Skinner
U 62500 62500 62500 67300 10 1
N 59000 66500 62300 66500 4
{
T 62300 66500 5 10 1 1 0 6 1
netname=MA14
}
C 62300 66500 1 0 0 busripper-1.sym
{
T 62300 66900 5 8 0 0 0 0 1
device=none
}
N 59000 66200 62300 66200 4
{
T 62300 66200 5 10 1 1 0 6 1
netname=MA15
}
C 62300 66200 1 0 0 busripper-1.sym
{
T 62300 66600 5 8 0 0 0 0 1
device=none
}
N 59000 65900 62300 65900 4
{
T 62300 65900 5 10 1 1 0 6 1
netname=MA16
}
C 62300 65900 1 0 0 busripper-1.sym
{
T 62300 66300 5 8 0 0 0 0 1
device=none
}
N 59000 65600 62300 65600 4
{
T 62300 65600 5 10 1 1 0 6 1
netname=MA17
}
C 62300 65600 1 0 0 busripper-1.sym
{
T 62300 66000 5 8 0 0 0 0 1
device=none
}
N 59000 62600 62300 62600 4
{
T 62300 62600 5 10 1 1 0 6 1
netname=MA18
}
C 62300 62600 1 0 0 busripper-1.sym
{
T 62300 63000 5 8 0 0 0 0 1
device=none
}
N 59000 62300 62300 62300 4
{
T 62300 62300 5 10 1 1 0 6 1
netname=MA19
}
C 62300 62300 1 0 0 busripper-1.sym
{
T 62300 62700 5 8 0 0 0 0 1
device=none
}
N 59000 62000 64000 62000 4
{
T 64000 62000 5 10 1 1 0 6 1
netname=SUPER
}
N 59000 61700 64000 61700 4
{
T 64000 61700 5 10 1 1 0 6 1
netname=PROT
}
U 64000 67300 62500 67300 10 1
{
T 64000 67300 5 10 1 1 0 6 1
netname=MA<19..14>
}
N 59300 66500 59300 67000 4
N 59600 67000 59600 66200 4
N 59900 67000 59900 65900 4
N 60200 67000 60200 65600 4
N 60500 67000 60500 62600 4
N 60800 67000 60800 62300 4
N 61100 67000 61100 62000 4
C 61700 68100 1 0 0 vcc-1.sym
U 56200 68700 56200 61900 10 -1
N 57000 66500 56400 66500 4
{
T 56400 66500 5 10 1 1 0 0 1
netname=BD0
}
C 56400 66500 1 90 0 busripper-1.sym
{
T 56000 66500 5 8 0 0 90 0 1
device=none
}
N 57000 66200 56400 66200 4
{
T 56400 66200 5 10 1 1 0 0 1
netname=BD1
}
C 56400 66200 1 90 0 busripper-1.sym
{
T 56000 66200 5 8 0 0 90 0 1
device=none
}
N 57000 65900 56400 65900 4
{
T 56400 65900 5 10 1 1 0 0 1
netname=BD2
}
C 56400 65900 1 90 0 busripper-1.sym
{
T 56000 65900 5 8 0 0 90 0 1
device=none
}
N 57000 65600 56400 65600 4
{
T 56400 65600 5 10 1 1 0 0 1
netname=BD3
}
C 56400 65600 1 90 0 busripper-1.sym
{
T 56000 65600 5 8 0 0 90 0 1
device=none
}
N 57000 62600 56400 62600 4
{
T 56400 62600 5 10 1 1 0 0 1
netname=BD4
}
C 56400 62600 1 90 0 busripper-1.sym
{
T 56000 62600 5 8 0 0 90 0 1
device=none
}
N 57000 62300 56400 62300 4
{
T 56400 62300 5 10 1 1 0 0 1
netname=BD5
}
C 56400 62300 1 90 0 busripper-1.sym
{
T 56000 62300 5 8 0 0 90 0 1
device=none
}
C 56400 61700 1 90 0 busripper-1.sym
{
T 56000 61700 5 8 0 0 90 0 1
device=none
}
N 57000 63800 54900 63800 4
N 57000 60800 54700 60800 4
N 54700 60800 54700 64700 4
N 52000 59900 57000 59900 4
{
T 52000 59900 5 10 1 1 0 0 1
netname=\_MMAP_EN\_
}
N 57000 65300 55900 65300 4
N 57000 65000 55700 65000 4
U 56200 68700 52000 68700 10 0
{
T 52000 68700 5 10 1 1 0 0 1
netname=BD<7..0>
}
N 57000 64700 52000 64700 4
{
T 52000 64700 5 10 1 1 0 0 1
netname=\_MMAP_IO_SEL\_
}
N 57000 64400 55500 64400 4
N 57000 64100 55300 64100 4
N 54900 63800 54900 59900 4
T 48800 52700 8 10 0 1 0 0 1
slot=1
N 58600 57000 57100 57000 4
{
T 58600 57000 5 10 1 1 0 6 1
netname=\_RAM_CS1\_
}
N 58600 55300 57100 55300 4
{
T 58600 55300 5 10 1 1 0 6 1
netname=\_RAM_CS0\_
}
N 50900 57000 49500 57000 4
{
T 49500 57000 5 10 1 1 0 0 1
netname=A13
}
N 53500 58500 55300 58500 4
{
T 53500 58500 5 10 1 1 0 0 1
netname=\_MREQ_NV\_
}
N 51000 58500 49500 58500 4
{
T 49500 58500 5 10 1 1 0 0 1
netname=\_RFSH\_
}
N 53500 57000 52000 57000 4
N 53500 54900 50900 54900 4
N 50900 54900 50900 57000 4
N 51000 58100 49500 58100 4
{
T 49500 58100 5 10 1 1 0 0 1
netname=\_HALT\_
}
N 56400 61700 57000 61700 4
{
T 56400 61700 5 10 1 1 0 0 1
netname=BD7
}
N 53500 57400 53100 57400 4
N 53100 54500 53100 58300 4
N 53100 55300 53500 55300 4
N 55800 57200 54800 57200 4
N 55800 55100 54800 55100 4
N 55300 55500 55800 55500 4
N 55300 55500 55300 58500 4
N 55800 56800 55300 56800 4
C 57000 63600 1 0 0 74ls670-1.sym
{
T 57300 68140 5 10 0 0 0 0 1
device=74LS670
T 57300 67940 5 10 0 0 0 0 1
footprint=DIP16
T 58700 66800 5 10 1 1 0 6 1
refdes=U24
}
C 57000 59700 1 0 0 74ls670-1.sym
{
T 57300 64240 5 10 0 0 0 0 1
device=74LS670
T 57300 64040 5 10 0 0 0 0 1
footprint=DIP16
T 58700 62900 5 10 1 1 0 6 1
refdes=U25
}
C 56400 62000 1 90 0 busripper-1.sym
{
T 56000 62000 5 8 0 0 90 0 1
device=none
}
N 57000 62000 56400 62000 4
{
T 56400 62000 5 10 1 1 0 0 1
netname=BD6
}
N 52300 58300 53100 58300 4
C 53200 53600 1 90 0 resistor-2.sym
{
T 52850 54000 5 10 0 0 90 0 1
device=RESISTOR
T 52900 54300 5 10 1 1 180 0 1
refdes=R6
T 52600 53900 5 10 1 1 0 0 1
value=10K
}
C 52200 53300 1 0 0 gnd-1.sym
N 61400 67000 61400 61700 4
N 57000 60200 55300 60200 4
N 57000 60500 55500 60500 4
N 57000 61400 55900 61400 4
N 57000 61100 55700 61100 4
N 54100 67900 55900 67900 4
N 55900 61400 55900 67900 4
N 55700 61100 55700 67100 4
N 55100 67100 55700 67100 4
N 55500 60500 55500 66300 4
N 55500 66300 54100 66300 4
N 55300 60200 55300 65500 4
N 55300 65500 55100 65500 4
N 53000 67900 52000 67900 4
{
T 52000 67900 5 10 1 1 0 0 1
netname=A0
}
N 54000 67100 52000 67100 4
{
T 52000 67100 5 10 1 1 0 0 1
netname=A1
}
N 53000 66300 52000 66300 4
{
T 52000 66300 5 10 1 1 0 0 1
netname=A14
}
N 54000 65500 52000 65500 4
{
T 52000 65500 5 10 1 1 0 0 1
netname=A15
}
N 52300 53600 53100 53600 4
C 52400 53600 1 90 0 resistor-2.sym
{
T 52050 54000 5 10 0 0 90 0 1
device=RESISTOR
T 52100 54300 5 10 1 1 180 0 1
refdes=R7
T 51800 53900 5 10 1 1 0 0 1
value=10K
}
N 52300 57000 52300 54500 4
T 65000 53100 9 10 1 0 0 0 1
Z80_2.sch
T 59700 68400 9 10 1 0 0 0 1
Located by U4
C 59200 67000 1 0 0 resistorpack8-3.sym
{
T 58900 67900 5 10 0 0 0 0 1
device=RESISTORPACK_9
T 59300 68100 5 10 1 1 0 0 1
refdes=R8
T 61100 68100 5 10 1 1 0 6 1
value=4K7
T 61200 74200 5 10 0 0 0 0 1
footprint=none
}
N 61900 68000 61900 68100 4
C 53500 56700 1 0 0 74hc32-1.sym
{
T 53800 56700 5 10 0 1 0 0 1
device=74HC32
T 53800 57600 5 10 1 1 0 0 1
refdes=U15
T 54100 59000 5 10 0 0 0 0 1
footprint=DIP14
T 53500 56700 5 10 0 0 0 0 1
slot=1
T 53300 57800 5 10 1 0 0 0 1
net=RAM_VCC:14
}
C 53500 54600 1 0 0 74hc32-1.sym
{
T 53800 54600 5 10 0 1 0 0 1
device=74HC32
T 53800 55500 5 10 1 1 0 0 1
refdes=U15
T 54100 56900 5 10 0 0 0 0 1
footprint=DIP14
T 53500 54600 5 10 0 0 0 0 1
slot=4
T 53300 55700 5 10 1 0 0 0 1
net=RAM_VCC:14
}
C 55800 56500 1 0 0 74hc32-1.sym
{
T 56100 56500 5 10 0 1 0 0 1
device=74HC32
T 56100 57400 5 10 1 1 0 0 1
refdes=U15
T 56400 58800 5 10 0 0 0 0 1
footprint=DIP14
T 55800 56500 5 10 0 0 0 0 1
slot=2
T 55600 57600 5 10 1 0 0 0 1
net=RAM_VCC:14
}
C 55800 54800 1 0 0 74hc32-1.sym
{
T 56100 54800 5 10 0 1 0 0 1
device=74HC32
T 56100 55700 5 10 1 1 0 0 1
refdes=U15
T 56400 57100 5 10 0 0 0 0 1
footprint=DIP14
T 55800 54800 5 10 0 0 0 0 1
slot=3
T 55600 55900 5 10 1 0 0 0 1
net=RAM_VCC:14
}
C 51000 57800 1 0 0 74hct00-1.sym
{
T 51300 57800 5 10 0 1 0 0 1
device=74HCT00
T 51300 58700 5 10 1 1 0 0 1
refdes=U32
T 51500 60050 5 10 0 0 0 0 1
footprint=DIP14
T 51000 57800 5 10 0 0 0 0 1
slot=1
}
C 53000 67400 1 0 0 74hct04-1.sym
{
T 53400 67500 5 10 0 1 0 0 1
device=74HCT04
T 53300 68300 5 10 1 1 0 0 1
refdes=U14
T 53600 70900 5 10 0 0 0 0 1
footprint=DIP14
T 53000 67400 5 10 0 0 0 0 1
slot=1
}
C 54000 66600 1 0 0 74hct04-1.sym
{
T 54400 66700 5 10 0 1 0 0 1
device=74HCT04
T 54300 67500 5 10 1 1 0 0 1
refdes=U14
T 54600 70100 5 10 0 0 0 0 1
footprint=DIP14
T 54000 66600 5 10 0 0 0 0 1
slot=2
}
C 53000 65800 1 0 0 74hct04-1.sym
{
T 53400 65900 5 10 0 1 0 0 1
device=74HCT04
T 53300 66700 5 10 1 1 0 0 1
refdes=U14
T 53600 69300 5 10 0 0 0 0 1
footprint=DIP14
T 53000 65800 5 10 0 0 0 0 1
slot=3
}
C 54000 65000 1 0 0 74hct04-1.sym
{
T 54400 65100 5 10 0 1 0 0 1
device=74HCT04
T 54300 65900 5 10 1 1 0 0 1
refdes=U14
T 54600 68500 5 10 0 0 0 0 1
footprint=DIP14
T 54000 65000 5 10 0 0 0 0 1
slot=4
}
C 50900 56500 1 0 0 74hct04-1.sym
{
T 51300 56600 5 10 0 1 0 0 1
device=74HCT04
T 51200 57400 5 10 1 1 0 0 1
refdes=U14
T 51500 60000 5 10 0 0 0 0 1
footprint=DIP14
T 50900 56500 5 10 0 0 0 0 1
slot=5
}