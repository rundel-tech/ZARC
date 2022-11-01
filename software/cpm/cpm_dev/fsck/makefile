# Usage:
# make          # Generate a single binary file for download to ZARC.
# make clean    # Remove all intermediate files

# Note - make requires that indentation be tabs, not spaces. Beware!
# Indented comments are displayed when make is invoked.

.PHONY = clean

# Make sure shared files are up to date.
#DUMMY := $(shell make --directory=../shared)
#$(info Shared files build: $(DUMMY))

SRCS := $(wildcard *.z80)
OBJS := $(SRCS:%.z80=%.rel)
#SOBJS := $(wildcard ../shared/*.rel)
$(info OBJS is $(OBJS))
#$(info SOBJS is $(SOBJS))

# Run linker if any of the objects or shared objects have been updated.
FSCK.COM: $(OBJS) shared
# -O = output format
# -o = output file
# -s = symbol file
# -m = add map to symbol file
# -P = code segment address
# -D = data segment address
# -c = suppress data segment (prevents generation of huge .bin files).
# Note - can't use $(OBJS) to specify .rel files as the order is important.
# fsck.rel must be first. top.rel must be last, as it is used to indicate the
# last location in use.
	ld80 -O bin -o fsck.tmp -s fsck.sym -m -P 0100 -c fsck.rel ../shared/cpm_utility.rel ../shared/cpm_top.rel
# Remove initial bytes (I can't find neater way of doing this).
	dd bs=4096 skip=256 iflag=skip_bytes < fsck.tmp > FSCK.COM
	rm fsck.tmp
	# File size in bytes:
	stat -c "%s" $@

#all: ${OBJS}

%.rel: %.z80 $(ZARC_INCLUDE)/*.i *.i
	# Assembling $< to produce $@
# --od = output directory
# --oo = output file types
# -I = add dir to the end of the include file search path
	zmac --od . --oo rel,lst -I $(ZARC_INCLUDE) $<


# Build shared libraries
.PHONY: shared
shared:
	$(MAKE) --directory=../shared


.PHONY: clean
clean:
	# Cleaning up...
# "-f" flag prevents the process stopping if a file is missing.
	rm -f *.rel
	rm -f *.hex
	rm -f *.sym
	rm -f *.lst
	rm -f *.COM

