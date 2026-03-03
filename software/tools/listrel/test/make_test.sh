#!/bin/bash

# Make test.z80, used to test "listrel" and explore the byte relocatables
# ttha zmac appears to support but the original .REL format does not.
# Merlin, 20/1/2023

# --od = output directory
# --oo = output file types
# -I = add dir to the end of the include file search path
zmac --od . --oo rel,lst test.z80
