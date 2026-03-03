# Usage:
# make          # Generate a single binary file for download to ZARC.
# make clean    # Remove all intermediate files

# Note - make requires that indentation be tabs, not spaces. Beware!
# Indented comments are displayed when make is invoked.

.PHONY = all clean

SRCS := $(wildcard *.z80)
OBJS := $(SRCS:%.z80=%.rel)
#SOBJS := $(wildcard ../shared/*.rel)
$(info OBJS is $(OBJS))
#$(info SOBJS is $(SOBJS))

#all: ${OBJS}

%.rel: %.z80 $(ZARC_INCLUDE)/*.i *.i
	# Assembling $< to produce $@
# --od = output directory
# --oo = output file types
# -I = add dir to the end of the include file search path
	zmac --od . --oo rel,lst -I $(ZARC_INCLUDE) $<

# Run linker if any of the objects or shared objects have been updated.
bios.cim: $(OBJS)
# -O = output format
# -o = output file
# -s = symbol file
# -m = add map to symbol file
# -P = code segment address (must match BIOS_START symbol)
# -D = data segment address
# -c = suppress data segment (prevents generation of huge .bin files).
# Note - can't use $(OBJS) to specify .rel files as the order is important.
# N.B. requires ld80 version 0.6.1 or later to avoid segmentation fault!
# If the load address is ever changed, update the ld80 line (-P xxxx) and
# dd (skip=xxxxx).
	@btime btime cseg 0	# Generate btime.rel with current date and time
	@rm btime.z80		# Remove file to prevent confusion with %.z80 rule
	ld80 -O bin -o bios.tmp -s bios.sym -m -P EC00 -c bios.rel contran.rel btime.rel
	# Remove initial bytes (I can't find neater way of doing this).
	dd bs=4096 skip=60416 iflag=skip_bytes < bios.tmp > bios.cim
	@rm btime.rel		# Remove to prevent unnecessary re-linking
	@rm bios.tmp
	# File size in bytes:
	stat -c "%s" $@

.PHONY: clean
clean:
	echo "Cleaning up..."
# "-f" flag prevents the process stopping if a file is missing.
	rm -f *.rel
	rm -f *.sym
	rm -f *.lst
	rm -f *.tmp
	rm -f *.cim

