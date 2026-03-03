
all:	SYSINFO.COM

SYSINFO.COM:	sysinfo.z80
	# Assembling $< to produce $@
# --od = output directory
# --oo = output file types
# -I = add dir to the end of the include file search path
	zmac --od . --oo rel,lst $<
# -O = output format
# -o = output file
# -s = symbol file
# -m = add map to symbol file
# -P = code segment address
# -D = data segment address
# -c = suppress data segment (prevents generation of huge .bin files).
	ld80 -O bin -o sysinfo.tmp -s sysinfo.sym -m -P 0100 -c sysinfo.rel
# Remove initial bytes (I can't find neater way of doing this).
	dd bs=4096 skip=256 iflag=skip_bytes < sysinfo.tmp > SYSINFO.COM
	@rm sysinfo.tmp
	# File size in bytes:
	stat -c "%s" $@

