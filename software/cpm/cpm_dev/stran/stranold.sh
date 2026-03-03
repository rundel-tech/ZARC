#!/bin/bash
# Transfer file to ZARC using "stran" V1.0. This is handy for when things go
# wrong while developing later versions.
# Merlin, 14/10/2024

# Remember to run "STAT PUN:=TTY:" and "STAT RDR:=TTY:" before "STRANOLD" in
# CP/M if using the console port for data transfer.

python3 /home/merlin/Technical/ZARC_Z80_Box/git/software/tools/stran/stran.py --port /dev/ttyUSB0 STRAN.COM a to_cpm
