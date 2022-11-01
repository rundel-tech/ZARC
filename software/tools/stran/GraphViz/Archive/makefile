# Usage:
# make          # Update all graphical outputs
# make clean    # Remove all intermediate files

# Note - make requires that indentation be tabs, not spaces. Beware!
# Indented comments are displayed when make is invoked.

.PHONY = all clean

SRCS := $(wildcard *.gv)
OBJS := $(SRCS:%.gv=%.png)

all: ${OBJS}

%.png: %.gv
	# Processing $< to produce $@
# -Tps selects PostScript, -Tpng PNG format etc.
# fdp -Tsvg A320_DraftRev-.gv -o A320_DraftRev-.svg
# neato -Tgif BlockDiagramCommon.gv -o BlockDiagramCommon.gif
	dot -Tpng -v $< -o $@

.PHONY: clean
clean:
	echo "Cleaning up..."
	rm *.png
