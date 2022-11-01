# !/usr/bin/env python3

# ***************************************************
# * ImageDisk (IMD) file handling                   *
# * Written by: Merlin Skinner                      *
# * Date Started: 31/5/2020                         *
# ***************************************************

# ImageDisk (IMD) file handling. Initially written for ZARC, but may have
# other uses. See:
# https://amaus.net/static/S100/dave%20dunfield/code/imagedisk117/IMD.TXT
# for format details.

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

class imd:
    # ImageDisk (IMD) file handling. Initially written for ZARC, but may have
    # other uses. See:
    # https://amaus.net/static/S100/dave%20dunfield/code/imagedisk117/IMD.TXT
    # for format details.
    
    def __init__(self, debug):
    
        self.debug = debug          # Enable debugging messages

        # Dictionary of disk sectors. Keys are a tuple in the form (cylinder, head,
        # sector). The sector data itself is a list of bytes.
        self.dData = {}

        # Dictionaries of track parameters. Keys are a tuple in the form (cylinder, head).
        self.dModes = {}
        self.dSecs_per_track = {}
        self.dSec_size = {}
        
        # "Mode value" lookup.
        # This value indicates the data transfer rate and density in which the
        # original track was recorded. Note:   kbps indicates transfer rate,
        # not the data rate, which is 1/2 for FM encoding.
        self.MODE_TEXT = [ "500 kbits/s FM (SD)", \
            "300 kbits/s FM", \
            "250 kbits/s FM", \
            "500 kbits/s MFM (DD)", \
            "300 kbits/s MFM", \
            "250 kbits/s MFM" ]


    # Open an IMD format file and read the data into the dictionary.
    # Returns with a series of parameters, each presented as a list with
    # one entry per track. See return statement at the end of this function.
    def ReadFile (self, file):

        try:
            fin = open (file, 'rb')
        except Exception:
            print ("*** Can't open file: " + file + " error: " + str (sys.exc_info() [0]) + " ***")
            sys.exit (1)

        # Read and display the header
        ascii_text = ""
        # Loop for each character.
        while True:
            byte = fin.read (1)
            if byte == b'\x1a':
                # Stop at EOF
                break
            ascii_text = ascii_text + byte.decode ('utf-8')
        print ("Header: " + ascii_text)
        
        tracks_count = 0;
        
        # Loop for each track
        while True:
            # Reading the first parameter of a new track may encounter EOF
            # if there are no more tracks to read.
            #try:
            byte = fin.read (1)
            if not byte:
                break

            # One or more tracks left to read
            # Check range of mode, but we don't need it to extract the data.
            mode = int.from_bytes (byte, "little")
            if not ((mode >= 0) and (mode <= 5)):
                print ("Illegal mode: " + str (mode))
                raise AssertionError

            cyl = int.from_bytes (fin.read (1), "little")
            if not ((cyl >= 0) and (cyl <= 80)):
                print ("Illegal cylinder: " + str (cyl))
                raise AssertionError

            # Note, optional cylinder and head maps not supported.
            head = int.from_bytes (fin.read (1), "little")
            if not ((head >= 0) and (head <= 63)):
                print ("Cylinder and head maps not supported. The perversity that makes such a feature necessary smacks of copy protection.")
                sys.exit (1)

            secs_per_track = int.from_bytes (fin.read (1), "little")
            if not ((secs_per_track >= 0) and (secs_per_track <= 26)):
                print ("Illegal sectors per track: " + str (secs_per_track))
                raise AssertionError

            sec_size_code = int.from_bytes (fin.read (1), "little")
            if not ((sec_size_code >= 0) and (sec_size_code <= 6)):
                print ("Illegal sector size: " + str (sec_size_code))
                raise AssertionError
            sec_size = 128 * (2 ** sec_size_code)

            # Sector numbering map
            sec_map = []
            for s in range(0, secs_per_track):
                sec = int.from_bytes (fin.read (1), "little")
                if not ((sec >= 0) and (sec <= secs_per_track)):
                    print ("WARNING - Sector number out of range in map (cyl: " + str (cyl) + \
                        ", head: " + str (head) + \
                        ", sector: " + str (sec) + ")" )
                sec_map.append (sec)

            # Store the parameters
            self.dModes [(cyl, head)] = mode
            self.dSecs_per_track [(cyl, head)] = secs_per_track
            self.dSec_size [(cyl, head)] = sec_size

            # Display the parameters
            if self.debug:
                print ("Mode: " + str (self.MODE_TEXT [mode]) + \
                    ", cyl: " + str (cyl) + \
                    ", head: " + str (head) + \
                    ", sectors per track: " + str (secs_per_track) + \
                    ", sector size: " + str (sec_size))
                    # ", sector map: " + str (sec_map))

            # Read sector data
            for s in range(0, secs_per_track):
                sec = sec_map [s]       # Look up sector in map
                if self.debug:
                    print ("Sector:" + str (sec))

                # Each sector begins with a code to indicate what data follows.
                code = (int.from_bytes (fin.read (1), "little"))
                if not ((code >= 0) and (code <= 8)):
                    print ("Illegal sector data code: " + str (code))
                    raise AssertionError

                if code == 0:
                    if self.debug:
                        print ("Sector data unavailable - could not be read")

                elif code == 1:
                    if self.debug:
                        print ("Normal data")
                    self.dData [(cyl, head, sec)] = []
                    for b in range(0, sec_size):
                        a = (int.from_bytes (fin.read (1), "little"))
                        self.dData [(cyl, head, sec)].append(a)      # Add to sector data

                elif code == 2:
                    a = (int.from_bytes (fin.read (1), "little"))
                    if self.debug:
                        print ("Compressed: All bytes in sector have same value (0x"+ Tools.Hex8 (a) + ")")
                    self.dData [(cyl, head, sec)] = []
                    for b in range(0, sec_size):
                        self.dData [(cyl, head, sec)].append(a)      # Add to sector data

                elif code == 3:
                    print ("WARNING - Normal data with 'Deleted-Data address mark' - not supported")
                    # Data ignored in this version
                    for b in range(0, sec_size):
                        # print ("b:" + str (b))
                        a = (int.from_bytes (fin.read (1), "little"))

                elif code == 4:
                    a = (int.from_bytes (fin.read (1), "little"))
                    print ("WARNING - Compressed data with 'Deleted-Data address mark': all bytes in sector have same value (0x"+ Tools.Hex8 (a) + ") - not supported")
                    # Data ignored in this version

                elif code == 5:
                    print ("WARNING - Normal data read with data error - not supported")
                    # Data ignored in this version
                    for b in range(0, sec_size):
                        # print ("b:" + str (b))
                        a = (int.from_bytes (fin.read (1), "little"))

                elif code == 6:
                    a = (int.from_bytes (fin.read (1), "little"))
                    print ("WARNING - Compressed data read with data error: all bytes in sector have same value (0x"+ Tools.Hex8 (a) + ") - not supported")
                    # Data ignored in this version

                elif code == 7:
                    print ("WARNING - Deleted data read with data error - not supported")
                    # Data ignored in this version
                    for b in range(0, sec_size):
                        # print ("b:" + str (b))
                        a = (int.from_bytes (fin.read (1), "little"))

                elif code == 8:
                    a = (int.from_bytes (fin.read (1), "little"))
                    print ("WARNING - Compressed deleted data read with data error: all bytes in sector have same value (0x"+ Tools.Hex8 (a) + ") - not supported")
                    # Data ignored in this version

                if self.debug:
                    if  (cyl, head, sec) in self.dData:
                        img_funcs.DisplaySector (self.dData [(cyl, head, sec)] )
            tracks_count = tracks_count + 1

        print ("Read " + str (tracks_count) + " tracks")   
        fin.close


