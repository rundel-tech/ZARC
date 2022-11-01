# Usage:
# make          # Generate a single binary file for download to ZARC.
# make clean    # Remove all intermediate files

# Note - make requires that indentation be tabs, not spaces. Beware!
# Indented comments are displayed when make is invoked.

.PHONY = clean

ZX81ROM.BIN: Modified_ROM.z80 ../../../../includes/*.i ../*.i
	# Assembling $< to produce $@
# --od = output directory
# --oo = output file types
# -I = add dir to the end of the include file search path
	zmac --od . --oo cim,lst  -I ../../../../includes -I ../ Modified_ROM.z80
	mv Modified_ROM.cim ZX81ROM.BIN

.PHONY: clean
clean:
	echo "Cleaning up..."
	rm -f *.lst
	rm -f *.BIN

