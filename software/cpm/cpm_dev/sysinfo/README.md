# SYSINFO
This was written by John Elliott and described in the thread at [https://groups.google.com/g/comp.os.cpm/c/RMWG4qSdbM0/m/UGll0BzoiW0J](https://groups.google.com/g/comp.os.cpm/c/RMWG4qSdbM0/m/UGll0BzoiW0J). It features a really cunning way of exiting cleanly if inadvertently run under MSDOS.

There are no operands on the command line.

The output on my ZARC system running CP/M 2.2 is:
```
D>sysinfo
Processor:   Z80
System:      CP/M 2.2
Top of TPA:  DE00
BIOS start:  EC00
```
While running CP/M 3.1:
```
A>sysinfo
Processor:   Z80
System:      CP/M 3.1
Top of TPA:  E800
BIOS start:  EE00
BDOS start:  E800
Common base: C000
Drives:      A: B: C: D: E: F: G: H:
```

