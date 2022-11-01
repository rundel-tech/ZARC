# Usage:
# make          # Generate a single binary file for download to ZARC.
# make clean    # Remove all intermediate files

# Note - make requires that indentation be tabs, not spaces. Beware!
# Indented comments are displayed when make is invoked.

.PHONY = all clean

SRCS := $(wildcard *.z80)
OBJS := $(SRCS:%.z80=%.cim)

all: ${OBJS}

%.cim: %.z80 $(ZARC_INCLUDE)/*.i
	# Assembling $< to produce $@
# --od = output directory
# --oo = output file types
# -I = add dir to the end of the include file search path
# .cim = Core In-Memory image.
	zmac --od . --oo cim,lst -I $(ZARC_INCLUDE) $<

.PHONY: clean
clean:
	echo "Cleaning up..."
# "-f" flag prevents the process stopping if a file is missing.
	rm -f *.rel
	rm -f *.hex
	rm -f *.sym
	rm -f *.lst
	rm -f *.cim
