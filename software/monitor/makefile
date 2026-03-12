# Usage:
# make          # Generate a single binary file for download to ZARC.
# make clean    # Remove all intermediate files

# Note - make requires that indentation be tabs, not spaces. Beware!
# Indented comments are displayed when make is invoked.
# "@" prefix prevents echo of command.

.PHONY = all clean

SRCS := $(wildcard *.z80)
OBJS := $(SRCS:%.z80=%.rel)

monitor.bin: $(OBJS)
# -O = output format
# -o = output file
# -s = symbol file
# -m = add map to symbol file
# -P = code segment address (zero)
# -D = data segment address (bank 1 - 0x4000)
# -c = suppress data segment (prevents generation of huge .bin files).
# Note - can't use $(OBJS) to specify .rel files as the order is important.
# monitor.rel must be first, and top.rel must be last.
	@btime btime cseg 0x00	# Generate btime.rel with current date and time
	@rm btime.z80		# Remove file to prevent confusion with %.z80 rule
	ld80 -O bin -o monitor.bin -s monitor.sym -m -P 0000 -D 4000 -c monitor.rel commands.rel io.rel utility.rel maths.rel time.rel diags.rel mmc.rel disass.rel cpm.rel cpm3.rel cache.rel memory.rel btime.rel top.rel
	@rm btime.rel		# Remove to prevent unnecessary re-linking
	# File size in bytes:
# The following must be one line as otherwise make will generate separate shells
# so the variable is lost.
	@t=$$(stat -c "%s" $@) ; \
	l=$$(printf "%d\n" 0x3fe0) ; \
	echo Image size: $$t, maximum=$$l ; \
	if [ $$t -gt $$l ]; then echo "*** Image is too long ***"; fi

%.rel: %.z80 $(ZARC_INCLUDE)/*.i
	# Assembling $< to produce $@
# --od = output directory
# --oo = output file types
# -I = add dir to the end of the include file search path
	zmac --od . --oo rel,lst -I $(ZARC_INCLUDE) $<

.PHONY: clean
clean:
	echo "Cleaning up..."
	rm *.rel
	rm *.sym
	rm *.lst
	rm *.bin
