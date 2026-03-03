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
# This is only a check, as we can't handle the relocatable format required
# in Linux. This must be done in CP/M, along with GENCPM.
test_bios.tmp: $(OBJS)
# -O = output format
# -o = output file
# -s = symbol file
# -m = add map to symbol file
# -P = code segment address
# -D = data segment address
# -c = suppress data segment (prevents generation of huge .bin files).
# Note - can't use $(OBJS) to specify .rel files as the order is important.
	btime btime dseg 0	# Generate btime.rel with current date and time
	ld80 -O bin -o test_bios.tmp -s test_bios.sym -m -P 0000 -c bioskrnl.rel scb.rel boot.rel chario.rel move.rel drvtbl.rel drvmc.rel time.rel extens.rel contran.rel btime.rel
	stat -c "%s" $@

# Link (on CP/M) will be something like:
# LINK BNKBIOS3[b,q]=BIOSKRNL,SCB,BOOT,CHARIO,MOVE,DRVTBL,DRVMC,TIME,EXTENS,CONTRAN,BTIME

.PHONY: clean
clean:
	echo "Cleaning up..."
# "-f" flag prevents the process stopping if a file is missing.
	rm -f *.rel
	rm -f *.sym
	rm -f *.lst
	rm -f *.tmp

