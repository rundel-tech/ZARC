# !/usr/bin/env python3

# ***************************************************
# * STran, Serial file transfer for ZARC            *
# * (may have other applications).                  *
# * Written by: Merlin Skinner                      *
# * Date Started: 31/3/2021                         *
# ***************************************************

# This is the Linux end of the STran file transfer system. STRAN.COM is the CP/M
# part of the system.

# If "ImportError: No module named xxx" results, install the package with
#   "sudo apt install python3-xxx"
# In this case:
# sudo apt install python3-serial
# sudo apt install python3-crcmod


# System imports
import argparse     # Command arguments parser
import struct       # String to binary packing and unpacking
import sys
import time
import os
from pathlib import Path

# Application imports
import Tools        # Hex conversion
import sio          # Serial packet I/O



#  *************
#  * Constants *
#  *************



#  ***************
#  * Subroutines *
#  ***************


# Send packet and await acknowledgement.
# Returns with True if the transfer was sucessful, False otherwise.
def send_wait_ack (pkt):
    rx_pkt = sio.cPacket ()     # Create receive packet buffer
    tries = 5
    
    while tries > 0:
        tries -= 1
        io.txpkt (pkt)              # Send packet
        # Await ACK
        s = io.rxpkt (rx_pkt)
        if s and (rx_pkt.PSN == pkt.PSN):
            # Packet received with matching sequence number (PSN).
            if (rx_pkt.Type == sio.cPHF_Type.ACK):
                # This is an acknowledge for the packet we just sent.
                return (True)
            # Special case for abort packets, for which we can reasonably ignore
            # NO_TRAN errors.
            if (pkt.Type == sio.cPHF_Type.ABORT) and \
                (rx_pkt.Type == sio.cPHF_Type.NAK):
                # We send an abort and received a NAK in return.
                a = rx_pkt.Data [0]         # Isolate reason code
                r = sio.cNAK (a)
                if r.name == "NO_TRAN":
                    # This is an acknowledge for the packet we just sent.
                    return (True)

    print ("No acknowledgement received")
    return (False)


# Send an abort command. This will stop any transfer in progress.
# Returns with True if the abort was sucessful, False otherwise.
def abort ():

    print ("Sending abort command")

    # Send initial transmit packet.
    tx_packet = sio.cPacket (Type = sio.cPHF_Type.ABORT,
        PSN = 0,
        Length = 0,
        Data = b"")
    s = send_wait_ack (tx_packet)       # Send packet and await acknowledgement
    if not s:
        return (False)

    return (True)


# Process the specified path components into CP/M format. Returns with:
# (True, CP/M drive, CP/M filename, CP/M extension) if the path is valid,
# (False, "", "", "") otherwise.
def cpm_path (drive, path):

    if len (drive) != 1:
        print ("Bad CP/M drive: " + drive)
        return (False, "", "", "")
    cpm_drive = drive.capitalize()
    if (cpm_drive < "A") or (cpm_drive > "P"):
        print ("CP/M drive out of range: " + drive)
        return (False, "", "", "")

    # We are only interested in the filename part of the path.
    name = os.path.basename (path)
    name = name.upper()
    # Split filename into name proper and extension.
    a = name.find (".")
    if a == -1:
        # No "." found.
        fn = file
        ext = ""
    else:
        # File includes an extension
        fn = name [0:a]
        ext = name [a+1:]
    # print ("Filename: " + fn + ", extension: " + ext)

    # Check the filename is suitable for CP/M.
    if (fn == "") or (len (fn) > 8):
        print ("Bad CP/M file name: " + fn)
        return (False, "", "", "")
    if (ext.find (".") != -1) or (len (ext) > 3):
        print ("Bad CP/M file extension: " + ext)
        return (False, "", "", "")

    # Pad filename and extension for use with the CP/M File Control Block (FCB)
    cpm_fn = fn.ljust(8, " ")
    cpm_ext = ext.ljust(3, " ")
    #print ("Filename: " + cpm_fn + ", extension: " + cpm_ext + ".")
    return (True, cpm_drive, cpm_fn, cpm_ext)


# Transfer a single file to the CP/M system. Call with:
# path - Path to Linux file.
# cpm_drive - CP/M drive letter ("A" to "P")
# cpm_fn - CP/M filename (8 characters)
# cpm_ext - CP/M file extension (3 characters)
# Returns with True if the transfer was sucessful, False otherwise.
def to_cpm (drive, path):

    # Process the specified path components into CP/M format.
    (a, cpm_drive, cpm_fn, cpm_ext) = cpm_path (drive, path)
    if a == False:
        return (False)

    try:
        # Open file
        f = open(path, "rb")
    except IOError:
        print ("Can't open file " + path)
        return (False)
    f_size = Path(path).stat().st_size      # Send <file size> bytes

    print ("Sending file " + path + ", " + str (f_size) + " bytes")

    # Construct the data.
    d = cpm_drive.encode ('utf-8') + \
        cpm_fn.encode ('utf-8') + \
        cpm_ext.encode ('utf-8')
    assert len (d) == 12, "Name encoding error: " + str (d)

    # Send initial transmit packet.
    tx_packet = sio.cPacket ( Type = sio.cPHF_Type.TX, PSN = 0, Length = 12, Data = d )
    s = send_wait_ack (tx_packet)       # Send packet and await acknowledgement
    if not s:
        return (False)

    while True:
        # Send another packet until the transfer is complete.
        tx_packet.Data = f.read (sio.BLKLEN)    # Fetch up to BLKLEN bytes
        dl = len (tx_packet.Data)
        if dl == 0:
            # No more data to send.
            break
        tx_packet.Length = dl
        tx_packet.PSN += 1              # Next packet number
        s = send_wait_ack (tx_packet)   # Send packet and await acknowledgement
        if not s:
            return (False)

    # Transmit end packet (tell the CP/M end that the transfer is complete).
    tx_packet.Type = sio.cPHF_Type.END  # Normal end of transfer
    tx_packet.Data = b""            # No data
    tx_packet.Length = 0
    tx_packet.PSN += 1              # Next packet number
    s = send_wait_ack (tx_packet)   # Send packet and await acknowledgement
    if not s:
        return (False)

    return (True)



#  ***********
#  * Classes *
#  ***********


# *************
# * Main Code *
# *************

# Parse command line arguments
parser = argparse.ArgumentParser (
    description='CP/M serial file transfer system.',
    epilog="Example: python3 stran.py TEST.TXT to_cpm"
    )
parser.add_argument ("file", help = "File to transfer")
parser.add_argument ('drive', help="CP/M drive letter (A to P)")
parser.add_argument ('direction', choices=['to_cpm', 'from_cpm'], help="Transfer direction")
parser.add_argument ("--port", help="Serial port, default = /dev/ttyUSB0", default = '/dev/ttyUSB0', type = str)
parser.add_argument ("--baud", help="Serial port Baud rate, default = 9600", default = 9600, type = int)
parser.add_argument ("--debug", help="Enable debug output", action='store_true')
args = parser.parse_args ()

debug = args.debug

print ("STran V1.0")

# Create class instances.
io = sio.cSer (debug, args.port, args.baud)   # Open serial port

# Initialise communications.
io.tx_sync ()       # Transmit synchronisation sequence
io.flush ()         # Discard any input data
abort ()            # Abort any current transfer

if args.direction == "to_cpm":
    s = to_cpm (args.drive, args.file)
    if not s:
        print ("Transfer failed")

# print ("Sending exit command")
tx_packet = sio.cPacket (Type = sio.cPHF_Type.EXIT,
    PSN = 0,
    Length = 0,
    Data = b"")
#s = send_wait_ack (tx_packet)       # Send packet and await acknowledgement

#time.sleep (0.5)      # Wait for any output from the other end
print ("Exiting")
io.in_service ()
print (str (io.in_fifo.qsize()) + " characters received.")

