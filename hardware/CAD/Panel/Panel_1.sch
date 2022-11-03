v 20200319 2
C 48800 52700 0 0 0 title-A2.sym
{
T 48800 52700 15 10 1 1 0 0 1
netname=D?
}
T 64600 53600 9 10 1 0 0 0 1
ZARC Front Panel Switches
T 68900 53100 9 10 1 0 0 0 1
12/4/2019
T 69000 52800 9 10 1 0 0 0 1
Merlin Skinner
C 49900 68100 1 0 0 switch-spst-2.sym
{
T 50300 68900 5 10 0 0 0 0 1
device=SPDT
T 50200 68300 5 10 1 1 0 0 1
refdes=S1
}
C 49900 67500 1 0 0 switch-spst-2.sym
{
T 50300 68300 5 10 0 0 0 0 1
device=SPDT
T 50200 67700 5 10 1 1 0 0 1
refdes=S2
}
C 49900 66900 1 0 0 switch-spst-2.sym
{
T 50300 67700 5 10 0 0 0 0 1
device=SPDT
T 50200 67100 5 10 1 1 0 0 1
refdes=S3
}
C 49900 66300 1 0 0 switch-spst-2.sym
{
T 50300 67100 5 10 0 0 0 0 1
device=SPDT
T 50200 66500 5 10 1 1 0 0 1
refdes=S4
}
C 49900 65700 1 0 0 switch-spst-2.sym
{
T 50300 66500 5 10 0 0 0 0 1
device=SPDT
T 50200 65900 5 10 1 1 0 0 1
refdes=S5
}
C 49900 65100 1 0 0 switch-spst-2.sym
{
T 50300 65900 5 10 0 0 0 0 1
device=SPDT
T 50200 65300 5 10 1 1 0 0 1
refdes=S6
}
C 49900 64500 1 0 0 switch-spst-2.sym
{
T 50300 65300 5 10 0 0 0 0 1
device=SPDT
T 50200 64700 5 10 1 1 0 0 1
refdes=S7
}
C 49900 63900 1 0 0 switch-spst-2.sym
{
T 50300 64700 5 10 0 0 0 0 1
device=SPDT
T 50200 64100 5 10 1 1 0 0 1
refdes=S8
}
N 49900 68100 49500 68100 4
N 49500 63300 49500 68100 4
N 49500 63900 49900 63900 4
N 49500 64500 49900 64500 4
N 49500 65100 49900 65100 4
N 49500 65700 49900 65700 4
N 49500 66300 49900 66300 4
N 49500 66900 49900 66900 4
N 49500 67500 49900 67500 4
N 52500 63300 49500 63300 4
{
T 51100 63300 5 10 1 1 0 0 1
netname=SW_PD_COM
}
C 58000 64400 1 0 0 switch-spdt-3.sym
{
T 58400 65200 5 10 0 0 0 0 1
device=SPDT
T 58400 65000 5 10 1 1 0 0 1
refdes=S10
}
C 58000 63300 1 0 0 switch-spdt-3.sym
{
T 58400 64100 5 10 0 0 0 0 1
device=SPDT
T 58400 63900 5 10 1 1 0 0 1
refdes=S11
}
C 58000 62200 1 0 0 switch-spdt-3.sym
{
T 58400 63000 5 10 0 0 0 0 1
device=SPDT
T 58400 62800 5 10 1 1 0 0 1
refdes=S12
}
C 58000 58700 1 0 0 switch-spdt-3.sym
{
T 58400 59500 5 10 0 0 0 0 1
device=SPDT
T 58400 59300 5 10 1 1 0 0 1
refdes=S16
}
C 58000 59700 1 0 0 switch-spdt-3.sym
{
T 58400 60500 5 10 0 0 0 0 1
device=SPDT
T 58400 60300 5 10 1 1 0 0 1
refdes=S15
}
N 50800 68100 52000 68100 4
{
T 52000 68100 5 10 1 1 0 6 1
netname=SW_PD7
}
N 50800 67500 52000 67500 4
{
T 52000 67500 5 10 1 1 0 6 1
netname=SW_PD6
}
C 52000 68100 1 0 0 busripper-1.sym
{
T 52000 68500 5 8 0 0 0 0 1
device=none
}
N 50800 66900 52000 66900 4
{
T 52000 66900 5 10 1 1 0 6 1
netname=SW_PD5
}
N 50800 66300 52000 66300 4
{
T 52000 66300 5 10 1 1 0 6 1
netname=SW_PD4
}
N 50800 65700 52000 65700 4
{
T 52000 65700 5 10 1 1 0 6 1
netname=SW_PD3
}
N 50800 65100 52000 65100 4
{
T 52000 65100 5 10 1 1 0 6 1
netname=SW_PD2
}
N 50800 64500 52000 64500 4
{
T 52000 64500 5 10 1 1 0 6 1
netname=SW_PD1
}
N 50800 63900 52000 63900 4
{
T 52000 63900 5 10 1 1 0 6 1
netname=SW_PD0
}
N 56000 65500 58000 65500 4
N 68500 57200 56000 57200 4
{
T 61500 57200 5 10 1 1 0 0 1
netname=SW_PSW_COM
}
N 56000 57200 56000 65500 4
N 67000 65500 58900 65500 4
{
T 61500 65500 5 10 1 1 0 0 1
netname=\_SW_MAN\_
}
N 56000 61500 58000 61500 4
N 65300 61500 58900 61500 4
{
T 61500 61500 5 10 1 1 0 0 1
netname=\_SW_STOP\_
}
N 65300 60800 58900 60800 4
{
T 61500 60800 5 10 1 1 0 0 1
netname=SW_BRIGHT_NO
}
N 56200 60800 58000 60800 4
N 56200 60800 56200 57500 4
N 56200 57500 65500 57500 4
{
T 61500 57500 5 10 1 1 0 0 1
netname=SW_BRIGHT_C
}
N 56000 64600 58000 64600 4
N 56000 63500 58000 63500 4
N 56000 62400 58000 62400 4
N 56000 59900 58000 59900 4
N 56000 58900 58000 58900 4
N 66800 64800 58900 64800 4
{
T 61500 64800 5 10 1 1 0 0 1
netname=\_SW_WRITE_NC\_
}
N 66600 64400 58900 64400 4
{
T 61500 64400 5 10 1 1 0 0 1
netname=\_SW_WRITE_NO\_
}
N 66300 63700 58900 63700 4
{
T 61500 63700 5 10 1 1 0 0 1
netname=\_SW_NEXT_NC\_
}
N 66100 63300 58900 63300 4
{
T 61500 63300 5 10 1 1 0 0 1
netname=\_SW_NEXT_NO\_
}
N 65800 62600 58900 62600 4
{
T 61500 62600 5 10 1 1 0 0 1
netname=\_SW_STEP_NC\_
}
N 65600 62200 58900 62200 4
{
T 61500 62200 5 10 1 1 0 0 1
netname=\_SW_STEP_NO\_
}
N 68900 60100 58900 60100 4
{
T 61500 60100 5 10 1 1 0 0 1
netname=\_SW_NMI_NC\_
}
N 68900 59700 58900 59700 4
{
T 61500 59700 5 10 1 1 0 0 1
netname=\_SW_NMI_NO\_
}
N 65800 59100 58900 59100 4
{
T 61500 59100 5 10 1 1 0 0 1
netname=\_SW_RESET_NC\_
}
N 66000 58700 58900 58700 4
{
T 61500 58700 5 10 1 1 0 0 1
netname=\_SW_RESET_NO\_
}
C 68800 57600 1 0 0 connector26-2.sym
{
T 69600 68600 5 10 1 1 0 6 1
refdes=P4
T 69200 68550 5 10 0 0 0 0 1
device=CONNECTOR_26
T 69200 68750 5 10 0 0 0 0 1
footprint=SIP26N
}
C 67700 68100 1 90 0 busripper-1.sym
{
T 67300 68100 5 8 0 0 90 0 1
device=none
}
C 67700 67700 1 90 0 busripper-1.sym
{
T 67300 67700 5 8 0 0 90 0 1
device=none
}
C 67700 67300 1 90 0 busripper-1.sym
{
T 67300 67300 5 8 0 0 90 0 1
device=none
}
C 67700 66900 1 90 0 busripper-1.sym
{
T 67300 66900 5 8 0 0 90 0 1
device=none
}
C 67700 66500 1 90 0 busripper-1.sym
{
T 67300 66500 5 8 0 0 90 0 1
device=none
}
C 67700 66100 1 90 0 busripper-1.sym
{
T 67300 66100 5 8 0 0 90 0 1
device=none
}
C 67700 65700 1 90 0 busripper-1.sym
{
T 67300 65700 5 8 0 0 90 0 1
device=none
}
C 67700 65300 1 90 0 busripper-1.sym
{
T 67300 65300 5 8 0 0 90 0 1
device=none
}
U 52200 68700 67500 68700 10 0
{
T 58600 68700 5 10 1 1 0 0 1
netname=\_SW_PD<7..0>\_
}
C 52000 67500 1 0 0 busripper-1.sym
{
T 52000 67900 5 8 0 0 0 0 1
device=none
}
C 52000 66900 1 0 0 busripper-1.sym
{
T 52000 67300 5 8 0 0 0 0 1
device=none
}
C 52000 66300 1 0 0 busripper-1.sym
{
T 52000 66700 5 8 0 0 0 0 1
device=none
}
C 52000 65700 1 0 0 busripper-1.sym
{
T 52000 66100 5 10 0 0 0 6 1
device=none
}
C 52000 65100 1 0 0 busripper-1.sym
{
T 52000 65500 5 10 0 0 0 6 1
device=none
}
C 52000 64500 1 0 0 busripper-1.sym
{
T 52000 64900 5 10 0 0 0 6 1
device=none
}
C 52000 63900 1 0 0 busripper-1.sym
{
T 52000 64300 5 10 0 0 0 6 1
device=none
}
U 52200 64100 52200 68700 10 0
U 67500 68700 67500 65500 10 0
N 68900 64900 67200 64900 4
N 67200 64500 67200 68400 4
N 67200 64500 68900 64500 4
N 67200 68400 52500 68400 4
N 52500 68400 52500 63300 4
N 67000 65500 67000 64100 4
N 67000 64100 68900 64100 4
N 66800 64800 66800 63700 4
N 66800 63700 68900 63700 4
N 66600 64400 66600 63300 4
N 66600 63300 68900 63300 4
N 66300 63700 66300 62900 4
N 66300 62900 68900 62900 4
N 66100 63300 66100 62500 4
N 66100 62500 68900 62500 4
N 65800 62600 65800 62100 4
N 65800 62100 68900 62100 4
N 65600 62200 65600 61700 4
N 65600 61700 68900 61700 4
N 65300 61500 65300 61300 4
N 65300 61300 68900 61300 4
N 65300 60800 65300 60900 4
N 65300 60900 68900 60900 4
N 65500 57500 65500 60500 4
N 65500 60500 68900 60500 4
N 65800 59300 65800 59100 4
N 65800 59300 68900 59300 4
N 66000 58700 66000 58900 4
N 66000 58900 68900 58900 4
N 68500 57200 68500 58500 4
N 68500 58500 68900 58500 4
N 68900 58100 68500 58100 4
T 65000 53100 9 10 1 0 0 0 1
Panel_1.sch
N 67700 68100 68900 68100 4
{
T 67800 68100 5 10 1 1 0 0 1
netname=SW_PD7
}
N 67700 67700 68900 67700 4
{
T 67800 67700 5 10 1 1 0 0 1
netname=SW_PD6
}
N 67700 67300 68900 67300 4
{
T 67800 67300 5 10 1 1 0 0 1
netname=SW_PD5
}
N 67700 66900 68900 66900 4
{
T 67800 66900 5 10 1 1 0 0 1
netname=SW_PD4
}
N 67700 66500 68900 66500 4
{
T 67800 66500 5 10 1 1 0 0 1
netname=SW_PD3
}
N 67700 66100 68900 66100 4
{
T 67800 66100 5 10 1 1 0 0 1
netname=SW_PD2
}
N 67700 65700 68900 65700 4
{
T 67800 65700 5 10 1 1 0 0 1
netname=SW_PD1
}
N 67700 65300 68900 65300 4
{
T 67800 65300 5 10 1 1 0 0 1
netname=SW_PD0
}
C 58000 65500 1 0 0 switch-spst-2.sym
{
T 60400 73300 5 10 0 0 0 0 1
footprint=none
T 58400 66300 5 10 0 0 0 0 1
device=SPST
T 58300 65700 5 10 1 1 0 0 1
refdes=S9
}
C 58000 61500 1 0 0 switch-spst-2.sym
{
T 60400 69300 5 10 0 0 0 0 1
footprint=none
T 58400 62300 5 10 0 0 0 0 1
device=SPST
T 58300 61700 5 10 1 1 0 0 1
refdes=S13
}
C 58000 60800 1 0 0 switch-spst-2.sym
{
T 60400 68600 5 10 0 0 0 0 1
footprint=none
T 58400 61600 5 10 0 0 0 0 1
device=SPST
T 58300 61000 5 10 1 1 0 0 1
refdes=S14
}