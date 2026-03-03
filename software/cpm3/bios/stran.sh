#!/bin/bash
# Transfer files required for CP/M part of the build to ZARC using "stran".
# stran will skip transfers when not required.
# Merlin, 10/2/2023, updated 21/5/2015

port='/dev/ttyUSB0'
cpm_dr='e:'

# REL files
stran --port $port to_cpm "*.rel" $cpm_dr

# Un-comment the following line to skip the transfer of fixed files. This would
# speed things up a bit.
# exit 0

# Tools
# I don't think we need RMAC but just in case.
stran --port $port to_cpm to_cpm/LINK.COM $cpm_dr
stran --port $port to_cpm to_cpm/RMAC.COM $cpm_dr
stran --port $port to_cpm to_cpm/GENCPM.COM $cpm_dr
stran --port $port to_cpm to_cpm/GENCPM.DAT $cpm_dr

# CP/M 3 modules
stran --port $port to_cpm to_cpm/CCP.COM $cpm_dr
stran --port $port to_cpm to_cpm/BNKBDOS3.SPR $cpm_dr
stran --port $port to_cpm to_cpm/RESBDOS3.SPR $cpm_dr

