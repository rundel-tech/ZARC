# !/usr/bin/env python3

# ***************************************************
# * CP/M File Unpacker                              *
# * Written by: Merlin Skinner                      *
# * Date Started: 31/5/2020                         *
# ***************************************************

# Initially written for ZARC Z80 Computer, but may have other uses.
# See https://amaus.net/static/S100/dave%20dunfield/code/imagedisk117/IMD.TXT
# for IMG format details.

# DSK format is essentially just a binary dump of the sector data with no preceding
# header. Note that there are other DSK formats, notably used by the CPC community
# that are not compatible. References:
# https://deramp.com/downloads/mfe_archive/010-S100%20Computers%20and%20Boards/00-MITS/40-Software/DSK%20Disk%20Images/Altair%20cpm%20Disk%20Images/Burcon%20(MITS)%20CPM.pdf
# https://comp.os.cpm.narkive.com/ZEyv8zVO/reading-254-track-simh-altair-disks-using-cpmtools


# System imports
import argparse     # Command arguments parser
import sys
import os
from pathlib import Path

# Application imports
import Tools        # Hex conversion
import img_funcs    # Format-independent functions
import imdformat    # IMD object file stuff
import dskformat    # DSK object file stuff
import cpm_fs       # CP/M filing system support



#  *************
#  * Constants *
#  *************


# CP/M logical sector parameters
LOG_SEC_START = 1   # First logical sector
LOG_SEC_SIZE = 128
DIR_ENTRY_SIZE = 32

# From http://www.gaby.de/cpm/manuals/archive/cpm22htm/ch6.htm table Table 6-8.
# Key is BLS, list is [BSH, BLM]
BLS_TABLE = { \
    1024: [3, 7], \
    2048: [4, 15], \
    4096: [5, 31], \
    8192: [6, 63], \
    16384: [7, 127] }



#  ***********
#  * Globals *
#  ***********


debug = False       # Enable debugging messages



#  ***************
#  * Subroutines *
#  ***************



# *************
# * Main Code *
# *************

# Parse command line arguments
parser = argparse.ArgumentParser (description='Extract files from ImageDisk (IMD) or Altair (DSK) files.')
parser.add_argument ("image_file", help = "file containing image (.imd or .dsk)")
parser.add_argument("--debug", help="Enable debug output", action='store_true')
args = parser.parse_args ()

debug = args.debug

print ("Reading from: " + str(args.image_file))

# Find image type from file extension
filename, file_extension = os.path.splitext(args.image_file)
file_extension = file_extension.lower()
if file_extension == ".imd":
    img_type = "imd"
elif file_extension == ".dsk":
    img_type = "dsk"
else:
    sys.exit ("File extension " + str (file_extension) + " not recognised.")

# Fetch file length (useful for DSK format).
file_size = Path(args.image_file).stat().st_size

# Create class instances for appropriate format.
cpm = cpm_fs.cpm (debug)
if img_type == "imd":
    disk = imdformat.imd (debug)
if img_type == "dsk":
    disk = dskformat.dsk (debug, file_size)

# Read supplied disk image.
disk.ReadFile (args.image_file)

# Use the disk parameters to set CP/M filing system parameters where possible.
cpm.FindDPB (disk, img_type)

cpm.SaveFiles (disk, filename)     # Save all files on disk

cpm.SaveSystem (disk, filename)    # Save system tracks

# print ("s5")
# img_funcs.DisplaySector (dDisk_data [(12, 0, 5)])

