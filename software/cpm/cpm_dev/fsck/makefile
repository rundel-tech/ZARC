# Usage:
# make          # Generate a single binary file for download to ZARC.
# make clean    # Remove all intermediate files

# Note - make requires that indentation be tabs, not spaces. Beware!
# Indented comments are displayed when make is invoked.

# Target name
TARGET := FSCK
# Find target lower-case file name.
TARGET_LC := $(strip $(shell echo $(TARGET) | tr A-Z a-z))
# Local object files required
OBJS := $(TARGET_LC).rel
# Shared object files required. Note that btime will be overwritten by anything
# stored at FSTFRE (from cpm_top.rel), but this is OK.
SOBJS := ../shared/cpm_utility.rel ../shared/cpm_top.rel


#SRCS := $(wildcard *.z80)
SRCS := $(OBJS:%.rel=%.z80)
LSTS := $(SRCS:%.z80=%.lst)
SSRCS := $(SOBJS:%.rel=%.z80)
#$(info SRCS is $(SRCS))
#$(info SSRCS is $(SSRCS))

# Default rule (make uses the first target in the makefile by default).
# Run linker if any of the objects or shared objects have been updated.
$(TARGET).COM: $(OBJS) $(SOBJS)
# -O = output format
# -o = output file
# -s = symbol file
# -m = add map to symbol file
# -P = code segment address
# -D = data segment address
# -c = suppress data segment (prevents generation of huge .bin files).
# Note - the sequence of the .rel files is important. TARGET_LC.rel must be
# first and top.rel (if used) must be last, as it is used to indicate the last
# location in use.
	@btime btime cseg 0x24	# Generate btime.rel with current date and time
	@rm btime.z80		# Remove file to prevent confusion with %.z80 rule
	ld80 -O hex -o $(TARGET_LC).hex -s $(TARGET_LC).sym -m -P 0100 -c $(OBJS) btime.rel $(SOBJS)
	objcopy -Iihex -Obinary $(TARGET_LC).hex $(TARGET).COM
	@rm btime.rel		# Remove to prevent unnecessary re-linking
	@rm $(TARGET_LC).hex
	# File size in bytes:
	stat -c "%s" $@


%.rel: %.z80 $(ZARC_INCLUDE)/*.i *.i
	# Assembling $< to produce $@
# --od = output directory
# --oo = output file types
# -I = add dir to the end of the include file search path
	zmac --od . --oo rel,lst -I $(ZARC_INCLUDE) $<


$(SOBJS): $(SSRCS) $(ZARC_INCLUDE)/*.i
	# Updating shared objects
	$(MAKE) --directory=../shared


.PHONY: clean
clean:
	# Cleaning up...
# "-f" flag prevents the process stopping if a file is missing.
	rm -f ${OBJS}
	rm -f ${LSTS}
	rm -f $(TARGET).COM
	rm -f $(TARGET_LC).sym
	rm -f btime.lst

