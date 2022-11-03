v 20200319 2
C 48800 52700 0 0 0 title-A2.sym
{
T 48800 52700 15 10 1 1 0 0 1
netname=D?
}
T 64600 53600 9 10 1 0 0 0 1
Master Clock Generator
T 68800 53100 9 10 1 0 0 0 1
12/4/2019
T 69000 52800 9 10 1 0 0 0 1
Merlin Skinner
C 52000 66600 1 0 0 74ls393-1.sym
{
T 52300 70340 5 10 0 1 0 0 1
device=74LS393
T 52300 70140 5 10 0 1 0 0 1
footprint=DIP14
T 53600 68100 5 10 1 1 0 6 1
refdes=U9
T 52000 66600 5 10 0 1 0 0 1
slot=1
}
C 58400 64200 1 0 0 74hct4040-1.sym
{
T 58700 68350 5 10 0 0 0 0 1
device=74HCT4040
T 60100 68200 5 10 1 1 0 6 1
refdes=U10
T 58700 68550 5 10 0 0 0 0 1
footprint=DIP16
}
N 51200 67100 52000 67100 4
N 52000 66800 52000 66600 4
C 51900 66300 1 0 0 gnd-1.sym
C 55400 66600 1 0 0 74ls393-1.sym
{
T 55700 70340 5 10 0 1 0 0 1
device=74LS393
T 55700 70140 5 10 0 1 0 0 1
footprint=DIP14
T 55400 66600 5 10 0 1 0 0 1
slot=2
T 57000 68100 5 10 1 1 0 6 1
refdes=U9
}
N 55400 66800 55400 66500 4
C 55300 66200 1 0 0 gnd-1.sym
N 54000 66800 55000 66800 4
N 55000 66800 55000 67100 4
N 55000 67100 55400 67100 4
N 54000 67700 54800 67700 4
N 58400 65900 58400 65600 4
C 58300 65300 1 0 0 gnd-1.sym
N 57400 66800 57900 66800 4
N 57900 66800 57900 66200 4
N 57900 66200 58400 66200 4
N 60400 64800 63000 64800 4
{
T 63000 64800 5 10 1 1 0 6 1
netname=PNL_CLK
}
C 59000 62500 1 0 0 74hct04-1.sym
{
T 59600 63400 5 10 0 0 0 0 1
device=74HCT04
T 59300 63400 5 10 1 1 0 0 1
refdes=U14
T 59600 66000 5 10 0 0 0 0 1
footprint=DIP14
T 59000 62500 5 10 0 0 0 0 1
slot=6
}
N 60100 63000 63000 63000 4
{
T 63000 63000 5 10 1 1 0 6 1
netname=CPU_CLK
}
T 65000 53100 9 10 1 0 0 0 1
Clock.sch
N 60100 61700 63000 61700 4
{
T 63000 61700 5 10 1 1 0 6 1
netname=CPU_CLK_B
}
C 49800 66800 1 0 0 osc-4.sym
{
T 50900 67500 5 10 1 1 0 6 1
device=OSC
T 49800 67500 5 10 1 1 0 0 1
refdes=U8
T 50800 68200 5 10 0 0 0 0 1
footprint=none
T 49800 66800 5 10 1 1 0 0 1
value=16 MHz
}
C 59000 61200 1 0 0 74hct04-1.sym
{
T 59400 61300 5 10 0 1 0 0 1
device=74HCT04
T 59300 62100 5 10 1 1 0 0 1
refdes=U31
T 59600 64700 5 10 0 0 0 0 1
footprint=DIP14
T 59000 61200 5 10 0 0 0 0 1
slot=4
}
C 54000 67300 1 0 0 nc-right-2.sym
{
T 54100 67800 5 10 0 0 0 0 1
value=NoConnection
T 54100 68000 5 10 0 0 0 0 1
device=DRC_Directive
}
C 54000 67000 1 0 0 nc-right-2.sym
{
T 54100 67500 5 10 0 0 0 0 1
value=NoConnection
T 54100 67700 5 10 0 0 0 0 1
device=DRC_Directive
}
C 57400 67600 1 0 0 nc-right-2.sym
{
T 57500 68100 5 10 0 0 0 0 1
value=NoConnection
T 57500 68300 5 10 0 0 0 0 1
device=DRC_Directive
}
C 57400 67300 1 0 0 nc-right-2.sym
{
T 57500 67800 5 10 0 0 0 0 1
value=NoConnection
T 57500 68000 5 10 0 0 0 0 1
device=DRC_Directive
}
C 57400 67000 1 0 0 nc-right-2.sym
{
T 57500 67500 5 10 0 0 0 0 1
value=NoConnection
T 57500 67700 5 10 0 0 0 0 1
device=DRC_Directive
}
C 60400 67400 1 0 0 nc-right-2.sym
{
T 60500 67900 5 10 0 0 0 0 1
value=NoConnection
T 60500 68100 5 10 0 0 0 0 1
device=DRC_Directive
}
C 60400 67100 1 0 0 nc-right-2.sym
{
T 60500 67600 5 10 0 0 0 0 1
value=NoConnection
T 60500 67800 5 10 0 0 0 0 1
device=DRC_Directive
}
C 60400 66800 1 0 0 nc-right-2.sym
{
T 60500 67300 5 10 0 0 0 0 1
value=NoConnection
T 60500 67500 5 10 0 0 0 0 1
device=DRC_Directive
}
C 60400 66500 1 0 0 nc-right-2.sym
{
T 60500 67000 5 10 0 0 0 0 1
value=NoConnection
T 60500 67200 5 10 0 0 0 0 1
device=DRC_Directive
}
C 60400 66200 1 0 0 nc-right-2.sym
{
T 60500 66700 5 10 0 0 0 0 1
value=NoConnection
T 60500 66900 5 10 0 0 0 0 1
device=DRC_Directive
}
C 60400 65900 1 0 0 nc-right-2.sym
{
T 60500 66400 5 10 0 0 0 0 1
value=NoConnection
T 60500 66600 5 10 0 0 0 0 1
device=DRC_Directive
}
C 60400 65600 1 0 0 nc-right-2.sym
{
T 60500 66100 5 10 0 0 0 0 1
value=NoConnection
T 60500 66300 5 10 0 0 0 0 1
device=DRC_Directive
}
C 60400 65300 1 0 0 nc-right-2.sym
{
T 60500 65800 5 10 0 0 0 0 1
value=NoConnection
T 60500 66000 5 10 0 0 0 0 1
device=DRC_Directive
}
C 60400 65000 1 0 0 nc-right-2.sym
{
T 60500 65500 5 10 0 0 0 0 1
value=NoConnection
T 60500 65700 5 10 0 0 0 0 1
device=DRC_Directive
}
C 60400 64400 1 0 0 nc-right-2.sym
{
T 60500 64900 5 10 0 0 0 0 1
value=NoConnection
T 60500 65100 5 10 0 0 0 0 1
device=DRC_Directive
}
C 53300 63800 1 0 0 conn3-3.sym
{
T 53400 65050 5 10 0 1 0 3 1
device=CONN3
T 53700 65000 5 10 1 1 0 3 1
refdes=J7
T 52741 56232 5 10 0 1 0 0 1
footprint=?
}
N 54800 67700 54800 64500 4
N 54800 64500 54400 64500 4
N 60400 67800 61500 67800 4
N 61500 67800 61500 63900 4
N 61500 63900 54400 63900 4
N 54800 64200 54400 64200 4
N 54800 61700 54800 64200 4
N 59000 61700 54800 61700 4
N 59000 63000 54800 63000 4
T 53100 64100 9 10 1 0 0 6 2
Link selects 8 MHz or
31.25 kHz CPU clock.