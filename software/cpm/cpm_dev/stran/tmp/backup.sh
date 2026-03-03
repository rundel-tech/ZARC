#!/bin/bash
# Backup ZARC to PC using "stran".
# Merlin, 15/5/2025

# Drives A to I are backup to to directories on the PC. CP/M 3.1 drive A is
# accessible as I: under CP/M 2.2, so this should be run under CP/M 2.2 to
# include all drives.

for drive in {a..i}
do
    mkdir -p ./$drive
    stran --port /dev/ttyUSB0 from_cpm "$drive:*.*" ./$drive
done

