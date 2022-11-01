# !/usr/bin/env python3

# ***************************************************
# * Altair (DSK) file handling                      *
# * Written by: Merlin Skinner                      *
# * Date Started: 28/12/2020                        *
# ***************************************************

# Altair (DSK) file handling. Initially written for ZARC, but may have other uses.
# DSK format is essentially just a binary dump of the sector data with no preceding
# header. Note that there are other DSK formats, notably used by the CPC community
# that are not compatible. References:
# https://deramp.com/downloads/mfe_archive/010-S100%20Computers%20and%20Boards/00-MITS/40-Software/DSK%20Disk%20Images/Altair%20cpm%20Disk%20Images/Burcon%20(MITS)%20CPM.pdf
# https://comp.os.cpm.narkive.com/ZEyv8zVO/reading-254-track-simh-altair-disks-using-cpmtools

# This module is filesystem agnostic, so it may have uses beyond ZARC and
# CP/M.

# System imports
import struct       # String to binary packing and unpacking
import sys

# Application imports
import Tools        # Hex conversion
import img_funcs    # Format-independent functions



#  *************
#  * Constants *
#  *************



#  ***************
#  * Subroutines *
#  ***************


#  ***********
#  * Classes *
#  ***********

class dsk:
    # Altair (DSK) file handling. Initially written for ZARC, but may have other
    # uses. file_size is useful because this format has no header or other means
    # of determining the disk organisation.
    
    def __init__(self, debug, file_size):
    
        self.debug = debug          # Enable debugging messages
        self.file_size = file_size  # Image file size

        # Dictionary of disk sectors. Keys are a tuple in the form (cylinder, head,
        # sector). The sector data itself is a list of bytes.
        self.dData = {}

        # Dictionaries of track parameters. Keys are a tuple in the form (cylinder, head).
        self.dModes = {}
        self.dSecs_per_track = {}
        self.dSec_size = {}

        self.sec_size = 128         # Data size per sector
        self.disk_sec_size = -1     # Flag format unknown
        # Test for a "small" image.
        img_size = 315392
        if file_size == img_size:
            self.disk_sec_size = 128     # Sector size on disk
            self.secs_per_track = 32     # Sectors per track
            self.tracks = 77
            if self.disk_sec_size * self.secs_per_track * self.tracks != img_size:
                print ("Disk size calculation error")
                raise AssertionError

        # Test for a "large" image.
        img_size = 1113536
        if file_size == img_size:
            self.disk_sec_size = 137     # Sector size on disk
            self.secs_per_track = 32     # Sectors per track
            self.tracks = 254
            if self.disk_sec_size * self.secs_per_track * self.tracks != img_size:
                print ("Disk size calculation error")
                raise AssertionError

        if self.disk_sec_size == -1:
            sys.exit ("File length " + str (file_size) + " not recognised.")


    # Open a DSK format file and read the data into the dictionary.
    # Returns with a series of parameters, each presented as a list with
    # one entry per track. See return statement at the end of this function.
    def ReadFile (self, file):

        try:
            fin = open (file, 'rb')
        except Exception:
            print ("*** Can't open file: " + file + " error: " + str (sys.exc_info() [0]) + " ***")
            sys.exit (1)

        head = 0                # No concept of head in this format
        tracks_count = 0;

        # Loop for each track
        for cyl in range(0, self.tracks):
            
            # Store the parameters
            self.dModes [(cyl, head)] = -1      # No mode information
            self.dSecs_per_track [(cyl, head)] = self.secs_per_track
            self.dSec_size [(cyl, head)] = self.sec_size

            # Display the parameters
            if self.debug:
                print ("Cyl: " + str (cyl) + \
                    ", head: " + str (head) + \
                    ", sectors per track: " + str (self.secs_per_track) + \
                    ", sector size: " + str (self.disk_sec_size))
                    # ", sector map: " + str (sec_map))

            # Read sector data
            for sec in range(1, self.secs_per_track + 1):
                #sec = sec_map [s]       # Look up sector in map
                if self.debug:
                    print ("Sector:" + str (sec))

                # If we are reading 137 byte sectors, we need to discard the first
                # three bytes.
                if self.disk_sec_size == 137:
                    head_bytes = []
                    for b in range(0, 3):
                        head_bytes.append (int.from_bytes (fin.read (1), "little"))
                    if self.debug:
                        print ("Header:" + str (head_bytes))

                # Read sector data
                self.dData [(cyl, head, sec)] = []
                for b in range(0, self.sec_size):
                    a = (int.from_bytes (fin.read (1), "little"))
                    self.dData [(cyl, head, sec)].append(a)      # Add to sector data

                # If we are reading 137 byte sectors, we need to discard the last
                # six bytes.
                if self.disk_sec_size == 137:
                    tail_bytes = []
                    for b in range(0, 6):
                        tail_bytes.append (int.from_bytes (fin.read (1), "little"))
                    # Don't display this until after the sector data.

                if self.debug:
                    if  (cyl, head, sec) in self.dData:
                        img_funcs.DisplaySector (self.dData [(cyl, head, sec)] )
                    if self.disk_sec_size == 137:
                        print ("Tail:" + str (tail_bytes))

            tracks_count = tracks_count + 1

        print ("Read " + str (tracks_count) + " tracks")   
        fin.close

