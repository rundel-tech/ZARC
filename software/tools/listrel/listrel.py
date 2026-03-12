# !/usr/bin/env python3

# ***************************************************
# * Lists the contents of CP/M .REL files           *
# * Written by: Merlin Skinner-Oakes                *
# * Date Started: 18/1/2023                         *
# ***************************************************

# File format information comes from the CP/M Programmer's Utilities Guide
# section 15.8.


# System imports
import argparse     # Command arguments parser
import struct       # String to binary packing and unpacking
import sys
import os
from pathlib import Path

# Application imports
import Tools        # Hex conversion



#  *************
#  * Constants *
#  *************



#  ***************
#  * Subroutines *
#  ***************


# Print a character, replacing unprintable ones with "?"
def printv (ch):

    a = ord (ch)
    if a >= 32 and a < 0x7f:
        print (ch, end = "")
    else:
        print ("?", end = "")


# Print 16-bit address with type (absolute ...).
def print_addr (atype, addr):

    type_str = ""
    if atype == 0:
        type_str = "absolute"
    elif atype == 1:
        type_str = "programme relative"
    elif atype == 2:
        type_str = "data relative"
    elif atype == 3:
        type_str = "common relative"
    else:
        sys.exit ("atype out of range")

    print ("[" + type_str + "] 0x" + Tools.Hex16 (addr), end = "")


# Display data block length
def disp_block (block):
    if block > 0:
        print (str (block) + " bytes loaded")



#  ***********
#  * Classes *
#  ***********


class cBitStream:

    def __init__(self, debug, file):
    
        self.debug = debug          # Enable debugging messages
        self.byte = 0               # Current byte
        self.bitcount = 0           # Bits remaining in byte

        try:
            # Open file
            self.f = open(file, "rb")
        except EOFError:
            sys.exit ("Can't open file " + file)
        f_size = Path(file).stat().st_size      # Find file length

        if self.debug:
            print ("File size: " + str (f_size) + " bytes")


    # Read a bit from the input file. If eof_flag is true, an end of file (EOF)
    # is not anticipated and if found, should be treated as an error.
    # Returns with the bit, or -1 if an EOF was encountered and eof_flag is
    # false.
    def read_bit (self, eof_flag):

        if self.bitcount == 0:
            # We need another byte
            bytes = self.f.read(1)
            if bytes == b"":
                if self.debug:
                    print ("EOF encountered")
                if eof_flag:
                    sys.exit ("Unexpected end of file")
                else:
                    return (-1)
            self.byte =  int.from_bytes (bytes, "little")
            #if self.debug:
            #    print ("0x" + Tools.Hex8 (self.byte))
            self.bitcount = 8

        bit = (self.byte >> 7) & 1      # Select MS bit
        self.byte = self.byte << 1
        self.bitcount -= 1
        # print ("byte: 0x" + Tools.Hex8 (self.byte) + ", bitcount: " + str (self.bitcount))
        if self.debug:
            print ("[" + str(bit) + "]", end = "")
        return (bit)


    # Discard bits until we are aligned with a byte boundary.
    def align_byte (self):

        count = 0
        while self.bitcount != 0:
            self.read_bit (True);       # Read and discard a bit
            count += 1
        if self.debug:
            print ("Discarded " + str (count) + " bits to byte align")
        # Now the next call to read_bit () will read a new byte.


    # Read a byte from the input file.
    def read_byte (self):

        byte = 0
        for i in range (0, 8):
            a = self.read_bit (True)    # Read bit, error on EOF
            byte = (byte <<1) | a
        #if self.debug:
        #    print ("0x" + Tools.Hex8 (byte) + " ", end = "")

        return (byte)


    # Read a 16-bit word from the input file.
    def read_word (self):

        word = self.read_byte () | (self.read_byte () << 8)
        #if self.debug:
        #    print ("0x" + Tools.Hex16 (word) + " ", end = "")

        return (word)


    # Read a name from the input file.
    def read_name (self):

        length = 0
        for i in range (0, 3):
            a = self.read_bit (True)        # Read bit, error on EOF
            length = (length <<1) | a
        if self.debug:
            print ("Length: " + str (length) + " ", end = "")

        name = ""
        if length == 0:
            print ("Zero length name!")
        else:
            for i in range (0, length):
                a = self.read_byte ()       # Read bit, error on EOF
                if self.debug:
                    printv (chr (a))
                if a > 32 and a < 0x7f:
                    name += chr (a)
                else:
                    # Report it in hexadecimal
                    name += "<0x" + Tools.Hex8 (a) + ">"

        return (name)


    # Read a value from the input file. This consists of a two-bit address type
    # and a 16-bit address.
    def read_value (self):

        atype = (self.read_bit (True) << 1) | self.read_bit (True)
        addr = self.read_word ()

        if self.debug:
            print_addr (atype, addr)

        return (atype, addr)



# *************
# * Main Code *
# *************

# Parse command line arguments
parser = argparse.ArgumentParser (
    description='List the contents of CP/M .REL files',
    epilog="Example: python3 listrel.py TEST.REL"
    )
parser.add_argument ("file", help = "File to examine")
parser.add_argument ("--debug", help="Enable debug output", action='store_true')
args = parser.parse_args ()

debug = args.debug

print ("listrel V1.0")

# Create class instances.
bs = cBitStream (debug, args.file)      # Open file for bit access

block = 0                               # Data block length

stop = False
extensions = False

while not stop:
    a = bs.read_bit (False)
    if a == -1:
        print ("Unexpected end of file encountered")
        break;

    if a == 0:
        # Load 8 bits, error if EOF found.
        b = bs.read_byte ()
        if debug:
            print ("0x" + Tools.Hex8 (b))
        block += 1                      # One more byte loaded
    else:
        # Read two bits to find out what to do next.
        op = (bs.read_bit (True) << 1) | bs.read_bit (True)
        if op == 0:
            # Display how much data was loaded before reading the rest of
            # the fields.
            disp_block (block)
            block = 0

            # Read four bit control field.
            cf = 0
            for i in range (0, 4):
                a = bs.read_bit (True)  # Read bit, error on EOF
                cf = (cf <<1) | a
            if debug:
                print ("Special link item: " + str (cf))

            if cf == 0:
                sym = bs.read_name ()
                print ("Entry (public) symbol: " + sym)

            elif cf == 1:
                comname = bs.read_name ()
                print ("Select common block: " + comname)

            elif cf == 2:
                name = bs.read_name ()
                print ("Programme name: " + name)

            elif cf == 3:
                name = bs.read_name ()
                print ("Unused control field code: " + str (cf) + ", name: " + name)
                sys.exit ("Stopping to avoid losing synchronization")

            elif cf == 4:
                # Not defined in the CP/M Programmer's Utilities Guide, but is
                # generated by the zmac assembler (and presumably understood by
                # ld80).
                name = bs.read_name ()
                print ("zmac extension, control field code: " + str (cf) + ", name: " + name)
                extensions = True               # Flag extension fount

            elif cf == 5:
                (atype, addr) = bs.read_value ()
                name = bs.read_name ()
                print ("Define common size. Name: " + name + ", size: ", end = "")
                print_addr (atype, addr)
                print ()

            elif cf == 6:
                (atype, addr) = bs.read_value ()
                name = bs.read_name ()
                print ("Chain external. Name: " + name + ", value: ", end = "")
                # I think the value in the loaded code (before replacement) is
                # used to provide the following values, with the last being
                # zero. I haven't verified this, however. There is definitely
                # only one value in the bitstream.
                print_addr (atype, addr)
                print ()

            elif cf == 7:
                (atype, addr) = bs.read_value ()
                name = bs.read_name ()
                print ("Define entry point. Name: " + name + ", value: ", end = "")
                print_addr (atype, addr)
                print ()

            elif cf == 8:
                print ("Unused control field code: " + str (cf))
                sys.exit ()

            elif cf == 9:
                (atype, addr) = bs.read_value ()
                if debug:
                    print ("External plus offset: ", end = "")
                    print_addr (atype, addr)
                    print ()

            elif cf == 10:
                (atype, addr) = bs.read_value ()
                print ("Define data size: ", end = "")
                print_addr (atype, addr)
                print ()

            elif cf == 11:
                (atype, addr) = bs.read_value ()
                print ("Set location counter: ", end = "")
                print_addr (atype, addr)
                print ()

            elif cf == 12:
                (atype, addr) = bs.read_value ()
                print ("Chain address: ", end = "")
                print_addr (atype, addr)
                print ()
                # I think the value in the loaded code (before replacement) is
                # used to provide the following values, with the last being
                # zero. I haven't verified this, however. I have also not seen
                # an instance of this.
                if debug:
                    print ("Chain address")

            elif cf == 13:
                (atype, addr) = bs.read_value ()
                print ("Define programme size: ", end = "")
                print_addr (atype, addr)
                print ()

            elif cf == 14:
                (atype, addr) = bs.read_value ()
                if addr == 0:
                    print ("End of module")
                else:
                    print ("End of module, start address: ", end = "")
                    print_addr (atype, addr)
                    print ()
                bs.align_byte ()

            elif cf == 15:
                if debug:
                    print ("End of file")
                # This is important in CP/M as file lengths are only stored to
                # a resolution of one record.
                stop = True

            else:
                sys.exit ("cf out of range")

        elif op == 1:
            w = bs.read_word ()
            if debug:
                print ("Program segment relative word 0x" + Tools.Hex16 (w))
            block += 2                  # One more word loaded

        elif op == 2:
            w = bs.read_word ()
            if debug:
                print ("Data segment relative word 0x" + Tools.Hex16 (w))
            block += 2                  # One more word loaded

        elif op == 3:
            w = bs.read_word ()
            if debug:
                print ("Common segment relative word 0x" + Tools.Hex16 (w))
            block += 2                  # One more word loaded

        else:
            sys.exit ("op out of range")

# Display how much data was loaded before reading the rest of
# the fields.
disp_block (block)

if extensions:
    print ("Warning: zmac / ld80 extensions found, such as byte relocatables. File is not suitable for processing with DRI's LINK, for example.")

print ("End of file")
