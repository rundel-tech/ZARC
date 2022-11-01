# !/usr/bin/env python3

# ***************************************************
# * Format-independent functions for img_to_files   *
# * Written by: Merlin Skinner                      *
# * Date Started: 28/12/2020                        *
# ***************************************************


# System imports

# Application imports
import Tools        # Hex conversion


# Display sector in hex and ASCII.
def DisplaySector (sec_data):
    h = ""          # Hex data
    asc = ""        # ASCII data
    col = 0         # Column count
    offset = 0
    for a in sec_data:
        if col == 0:
            lineoff = offset
        h = h + Tools.Hex8 (a) + " "
        if a >= 32 and a < 127:
            # Character is printable
            asc = asc + chr (a)
        else:
            asc = asc + " "
        col = col + 1
        if col >= 8:
            col = 0
        if col == 0:
            print (Tools.Hex16 (lineoff) + "  " + h + " |" + asc + "|")
            h = ""
            asc = ""
        offset = offset + 1

