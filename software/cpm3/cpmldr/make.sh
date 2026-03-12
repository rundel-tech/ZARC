#!/bin/bash

# Make CPMLDR.COM. Since the files all have to be assembled in different ways,
# "make" seems a bit clumsy, so this is a simple script.
# Merlin, 12/12/2022

echo Assembling CPMLDR BIOS to produce a relocatable object.
# --od = output directory
# --oo = output file types
# -I = add dir to the end of the include file search path
zmac --od . --oo rel,lst -I $ZARC_INCLUDE ldrbios.z80

echo Assembling CPMLDR BIOS common area code to produce an absolute object.
# .cim = Core In-Memory image.
zmac --od . --oo cim,lst -I $ZARC_INCLUDE ldrbios_comm.z80

echo Link CPMLDR BIOS and CPMLDR.REL
# -O = output format
# -o = output file
# -s = symbol file
# -m = add map to symbol file
# -P = code segment address
# -D = data segment address
# -c = suppress data segment (prevents generation of huge .bin files).
ld80 -O bin -o cpmldr.tmp -s cpmldr.sym -m -P 0100 CPMLDR.REL ldrbios.rel
# Remove initial bytes (I can't find neater way of doing this).
dd bs=4096 skip=256 iflag=skip_bytes < cpmldr.tmp > cpmldr.tmp1
echo Append the common area code.
cat cpmldr.tmp1 ldrbios_comm.cim > CPMLDR.COM
rm cpmldr.tmp cpmldr.tmp1
# Show file size in bytes:
stat -c "%s" CPMLDR.COM

