# ZARC

## Overview
The Z80 Anachronistic Retro Computer (ZARC) is a Zilog Z80-based 8-bit computer. Some features were inspired by a number of other machines, including the DEC PDP-8, BBC Microcomputer and Sinclair Spectrum. The most significant features are:

* Zilog Z80 CPU running at 8 MHz.
* Physical front panel with LEDs (“blinkenlights”) and switches.
* 1 MB of battery-backed static RAM with write protection. This simulates core memory, allowing use of techniques previously used on such machines.
* A flexible memory mapping system is used to map the RAM into the 16-bit space directly addressable by the CPU.
* The core computer is a mixture of CMOS and TTL with no programmable logic.
* I/O is implemented in an Altera Cyclone II FPGA.

I/O includes:

* Two RS-232 ports.
* Real time clock (RTC).
* MMC memory card interface.

Software features include:

* Monitor with disassembler and memory page management.
* CP/M 2.2 using MMC card for file storage.
* File system checker (fsck)
* File transfer over serial link (stran)
* ZX81 emulator (zx81)
* Bitcoin miner (bitcoin)

The CP/M system is capable of running most widely available CP/M software.

## Documentation
* [Hardware](hardware/HardwareGuide.pdf)
* [Monitor](software/monitor/MonitorGuide.pdf)
* [CP/M, including BIOS and installation](software/cpm/CPM_Guide.pdf)
* [File system checker](software/cpm/cpm_dev/fsck/fsckGuide.pdf)
* [File transfer over serial link](software/tools/stran/STranGuide.pdf)
