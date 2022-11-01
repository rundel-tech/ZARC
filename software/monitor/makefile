# Usage:
# make          # Generate a single binary file for download to ZARC.
# make clean    # Remove all intermediate files

# Note - make requires that indentation be tabs, not spaces. Beware!
# Indented comments are displayed when make is invoked.

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
# monitor.rel must be first, and heap.rel must be last.
	ld80 -O bin -o monitor.bin -s monitor.sym -m -P 0000 -D 4000 -c monitor.rel commands.rel io.rel utility.rel maths.rel time.rel diags.rel mmc.rel disass.rel cpm.rel cache.rel heap.rel memory.rel

all: ${OBJS}

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
	# rm *.hex
	rm *.sym
	rm *.lst
	rm *.bin
