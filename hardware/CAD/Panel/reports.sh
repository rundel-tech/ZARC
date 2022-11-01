#!/bin/bash
# Generate reports
# Merlin, 12/4/2020
# 8/5/2020 - Updated from geda to lepton

out=Output
mkdir -p $out

# Schematics Design Rule Check (DRC)
echo "*** Generating DRC report ***"
lepton-netlist -g drc2 -o $out/drc.txt *.sch

# Generate BOM
echo "*** Generating BOM ***"
lepton-netlist -g partslist3 -o $out/bom.txt *.sch

# Generate netlist
echo "*** Generating netlist ***"
lepton-netlist -g geda -o $out/netlist.txt *.sch

# Output schematics
echo "*** Generating schematics as PDF ***"
lepton-cli export --format=pdf --paper=iso_a4 -o $out/Schematics.pdf *.sch
