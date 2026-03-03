# !/usr/bin/env python3

# ***************************************************
# * STran, Serial file transfer for ZARC            *
# * (may have other applications).                  *
# * Written by: Merlin Skinner                      *
# * Date Started: 31/3/2021                         *
# ***************************************************

# This is the Linux end of the STran file transfer system. STRAN.COM is the
# CP/M part of the system.

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
import crcmod       # CRC calculations
import re           # Regular expressions
import glob         # Unix style pathname pattern expansion
import math         # For ceil function

# Application imports
import Tools        # Hex conversion
import sio          # Serial packet I/O



#  *************
#  * Constants *
#  *************


MOD_ADLER = 65521       # Adler-32 modulus
CPM_RECORD_SIZE = 128   # CP/M record size (bytes)
FILE_EOF = b"\x1a"      # End of file (^Z)
TX_RX_REASON_CODES = [
    "identical",
    "forced (/F)",
    "bad length or doesn't exist",
    "length mismatch",
    "checksum generation error",
    "CRC mismatch",
    "Adler-32 mismatch"
    ]
# CP/M directory entry constants.
FILENAME_SIZE = 8
FILEEXT_SIZE = 3
DIR_ENTRY_SIZE = FILENAME_SIZE + FILEEXT_SIZE   # Size of each entry in packet


#  ********************
#  * Global Variables *
#  ********************



#  ***********
#  * Classes *
#  ***********


# Adler-32 checksum. See https://en.wikipedia.org/wiki/Adler-32 for details.
class adler32:

    def __init__(self):
        self.a = 1
        self.b = 0


    # Process a single byte (int).
    def proc (self, i):
        self.a = (self.a + i) % MOD_ADLER
        self.b = (self.b + self.a) % MOD_ADLER


    def result (self):
        return (self.b << 16) | self.a



#  ***************
#  * Subroutines *
#  ***************


# Send packet and await response. The packet is assumed to be complete
# with the exception of the PSN and CRC. The PSN is incremented if a valid
# packet is received.
# Returns with the received packet.
def send_wait_resp (pkt):

    rx_pkt = sio.cPacket ()     # Create receive packet buffer
    pkt.PSN = io.psn
    tries = 5
    
    while tries > 0:
        tries -= 1
        io.txpkt (pkt)              # Send packet
        # Await response
        s = io.rxpkt (rx_pkt)
        if s:
            # Packet received
            if rx_pkt.PSN == pkt.PSN:
                # Packet received with matching sequence number (PSN).
                io.inc_psn ()
                return (True, rx_pkt)

    print ("No response received")
    return (False, None)


# Send packet and await acknowledgement. The packet is assumed to be complete
# with the exception of the PSN and CRC.
# Returns with a tuple. The first is true if an ACK was, and the second
# contains any data. This will be a reason code in the case of TX or RX
# commands. The PSN is incremented if an ACK is received.
def send_wait_ack (pkt):

    (s, rx_pkt) = send_wait_resp (pkt)

    if s:
        # Packet received
        if rx_pkt.Type == sio.cPHF_Type.ACK:
            # This is an acknowledge for the packet we just sent.
            return (True, rx_pkt.Data)

    return (False, [])


# Send a reset command. This will stop any transfer in progress.  It will set
# the PSN to 1, thereby synchronising the PC and CP/M systems.
# Returns with True if the reset was successful, False otherwise.
def reset ():

    print ("Sending reset command")

    # Send initial transmit packet.
    tx_packet = sio.cPacket (Type = sio.cPHF_Type.RESET,
        Length = 0,
        Data = b"")
    (a, d) = send_wait_ack (tx_packet)  # Send packet and await acknowledgement
    io.psn = 1
    return (a)


# Process the specified path components into CP/M format. Path must be:
# <drive>:<name>.<ext> or just a drive letter. Wildcards are not permitted.
# The path is converted to upper case unless --raw_case has been specified.
# drive: must be in the range A to P.
# name: 0 to 8 characters.
# ext: 0 to 3 characters.
# Returns with:
# (True, CP/M drive, CP/M filename, CP/M extension) if the path is valid,
# (False, None, None, None) otherwise. CP/M filename and CP/M extension will be Null
# if only the drive is specified.
def cpm_path (path):
    if not raw_case:
        path = path.upper ()

    # Is the path only a drive letter, with or without a training ":"?
    dr_patt = re.compile (r"(?P<drive>[A-Pa-p]):?$")
    match = dr_patt.match (path)

    if match != None:
        cpm_drive = match.group("drive").capitalize()
        return (True, cpm_drive, None, None)

    # Is it a full path?
    pattern = re.compile (r"(?P<drive>[A-Pa-p]):(?P<name>[A-Za-z0-9_\-]{0,8})\.(?P<ext>[A-Za-z0-9_\-]{0,3})$")
    match = pattern.match (path)

    if match == None:
        print (f"Bad CP/M file: {path}. Expected <drive>:<name>.<ext>")
        return (False, None, None, None)
    cpm_drive = match.group("drive").capitalize()
    fn = match.group("name")
    ext = match.group("ext")
    # print ("drive: " + cpm_drive + ", fn: " + fn + ", ext: " + ext)

    # Pad filename and extension for use with the CP/M File Control Block (FCB)
    cpm_fn = fn.ljust(8, " ")
    cpm_ext = ext.ljust(3, " ")
    # print ("Drive: " + cpm_drive + ", filename: " + cpm_fn + ", extension: " + cpm_ext + ".")

    return (True, cpm_drive, cpm_fn, cpm_ext)


# Process the specified path components into CP/M format. Path must be:
# <drive>:<name>.<ext>. Wildcards are permitted. A drive letter alone is not
# sufficient.
# drive: must be in the range A to P.
# name: 0 to 8 characters.
# ext: 0 to 3 characters.
# Returns with:
# (True, CP/M drive, CP/M filename) if the path is valid,
# (False, None, None) otherwise.
def cpm_src_path (path):

    pattern = re.compile (r"(?P<drive>[A-Pa-p]):(?P<name>[A-Za-z0-9_\-\*\?]{0,8})\.(?P<ext>[A-Za-z0-9_\-\*\?]{0,3})$")
    match = pattern.match (path)
    
    if match == None:
        print (f"Bad CP/M file: {path}. Expected <drive>:<name>.<ext>")
        return (False, "", "", "")
    cpm_drive = match.group("drive").capitalize()
    fn = match.group("name")
    ext = match.group("ext")
    cpm_file = fn + "." + ext
    print (f"drive: {cpm_drive}, cpm_file: {cpm_file}")

    return (True, cpm_drive, cpm_file)


# Transfer one or more files to the CP/M system. "dest" would normally be
# just a drive if multiple files are to be transferred. Call with:
# src - path to Linux file(s). May include wildcards.
# dest - CP/M path to destination.
# Returns with True if the transfers were successful, False otherwise.
def to_cpm (src, dest):

    status = True       # Assume success initially
    count = 0
    for file in glob.glob (src):
        a = to_cpm_file (file, dest)
        status = status and a
        count += 1

    print (f"{count} files processed")
    return (status)


# Transfer a single file to the CP/M system. Call with:
# src - path to Linux file.
# dest - CP/M path to destination.
# Returns with True if the transfer was successful, False otherwise.
def to_cpm_file (src, dest):

    # Process the specified path components into CP/M format.
    (a, cpm_drive, cpm_fn, cpm_ext) = cpm_path (dest)
    if a == False:
        return (False)

    # If only a drive letter was specified, use the source filename. If
    # the filename was not specified, neither should the extension.
    if cpm_fn == None:
        assert (cpm_ext == None)
        src_fn = os.path.basename (src)
        dest = cpm_drive + ":" + src_fn
        # Try again, this time with the source filename.
        (a, cpm_drive, cpm_fn, cpm_ext) = cpm_path (dest)
        if a == False:
            return (False)
    else:
        assert (cpm_ext != None)

    # print (f"src: {src}, dest: {dest}")
    # return (True)

    try:
        # Open file
        f = open (src, "rb")
    except IOError:
        print ("Can't open file " + src)
        return (False)

    # Find file length
    f_size = Path(src).stat().st_size       # Send <file size> bytes
    records = f_size // CPM_RECORD_SIZE     # Complete CP/M records
    last_rec_bytes = f_size % CPM_RECORD_SIZE   # Bytes in last CP/M record

    print ("Calculating checksums of file " + src)

    # Create CRC and Alder-32 classes.
    crc_func = crcmod.mkCrcFun (0x11021, rev=False, initCrc=0x0000, xorOut=0x0000)
    crc = 0
    adler = adler32 ()

    count = 0
    while True:
        b = f.read (1)          # Read a byte
        if len (b) == 0:
            # No more file data to process.
            break
        count += 1
        crc = crc_func (b, crc)
        i = int.from_bytes (b, "little")
        adler.proc (i)

    # Verify that we have read f_size bytes.
    assert count == f_size
    
    if last_rec_bytes != 0:
        # The final record is not complete, so we must allow for padding in
        # the checksums.
        rem = CPM_RECORD_SIZE - last_rec_bytes
        # print ("Including " + str (rem) + " pad bytes.")
        b = FILE_EOF            # Pad with EOF marker as CP/M stran does
        i = int.from_bytes (b, "little")
        while rem != 0:
            crc = crc_func (b, crc)
            adler.proc (i)
            rem -= 1

    print ("File length: " + str (f_size) + " bytes" + \
        " Adler-32: 0x" + str (Tools.Hex32 (adler.result ())) + \
        " CRC-16 (XMODEM): 0x" + str (Tools.Hex16 (crc)))

    f.seek(0)                   # Rewind file
    print ("Sending local file " + src + " to " + dest + ", " + str (f_size) + " bytes")

    # Construct the data as a string of bytes. This is a file descriptor block,
    # common to both Tx and Rx file command packets. It is the FDESC structure
    # described in stran.i for the CP/M end.
    d = cpm_drive.encode ("utf-8") + \
        cpm_fn.encode ("utf-8") + \
        cpm_ext.encode ("utf-8") + \
        f_size.to_bytes (4, "little") + \
        adler.result ().to_bytes (4, "little") + \
        crc.to_bytes (2, "little")
        
    assert len (d) == 22, "File descriptor block encoding error: " + str (d)

    # Send command packet.
    tx_packet = sio.cPacket ( Type = sio.cPHF_Type.TX, Length = len (d), Data = d )
    (a, d) = send_wait_ack (tx_packet)       # Send packet and await acknowledgement
    # a will be true if an ACK was received. d contains the results of the
    # PC and CP/M files comparison.
    if a == True:
        if d[0] == 0:
            print ("Files are already identical. Skipping transfer.")
            return (True)
        else:
            print (f"Transfer required, reason: {TX_RX_REASON_CODES [d[0]]}")
    else:
        # No ACK received.
        return (False)

    blk_count = 0
    blks_total = math.ceil (f_size / sio.BLKLEN)
    while True:
        # Send data packets until the transfer is complete. A null file would
        # result in no data packets being sent.
        tx_packet.Data = f.read (sio.BLKLEN)    # Fetch up to BLKLEN bytes
        dl = len (tx_packet.Data)
        if dl == 0:
            # No more data to send.
            break
        tx_packet.Type = sio.cPHF_Type.DATA     # This is a data packet
        tx_packet.Length = dl
        (a, i) = send_wait_ack (tx_packet)      # Send packet and await acknowledgement
        blk_count += 1
        print (f"{blk_count} of {blks_total} blocks ({int ((blk_count / blks_total)*100)}%) transferred.")
        if not a:
            return (False)

    # Transmit end packet (tell the CP/M end that the transfer is complete).
    tx_packet.Type = sio.cPHF_Type.END  # Normal end of transfer
    tx_packet.Data = b""            # No data
    tx_packet.Length = 0
    (a, i) = send_wait_ack (tx_packet)      # Send packet and await acknowledgement
    if not a:
        return (False)

    return (True)


# Transfer one or more files from the CP/M system. "dest" would normally be
# just a directory if multiple files are to be transferred. Call with:
# src - CP/M path to destination. May include wildcards.
# dest - path to Linux file(s).
# Returns with True if the transfers were successful, False otherwise.
def from_cpm (src, dest):

    # Process the specified path components into CP/M format.
    (a, cpm_drive, cpm_file) = cpm_src_path (src)
    if a == False:
        return (False)

    # Convert the filename and extension with wildcards into a regular
    # expression.
    tran_dict = {
        ".": r"\.",
        "^": r"\^",
        "$": r"\$",
        "+": r"\+",
        "{": r"\{",
        "}": r"\}",
        "[": r"\[",
        "]": r"\]",
        "(": r"\(",
        ")": r"\)",
        "?": r".",
        "*": r".*"
    }
    tran_table = str.maketrans (tran_dict)
    name_regex = "^" + cpm_file.translate (tran_table) + "$"
    if debug:
        print (f"cpm_file: {cpm_file}, name_regex: {name_regex}")
    name_regex_comp = re.compile (name_regex)

    # Get directory listing of CP/M drive.
    listing = get_dir (cpm_drive)
    if listing == False:
        return (False)

    status = True           # Assume success initially
    count = 0
    # Find files that match the src path.
    print (f"Directory received, {str (len (listing))} files")
    # print (f"cpm_drive: {cpm_drive}, cpm_fn: {cpm_fn}, cpm_ext: {cpm_ext}")
    for s in listing:
        assert len (s) == DIR_ENTRY_SIZE, "Filename format error: " + str (s)
        dir_name = s [:FILENAME_SIZE]
        dir_ext = s [FILENAME_SIZE:]
        dir_file = dir_name.rstrip() + "." + dir_ext.rstrip()
        # print (f"dir_file: {dir_file}")
        if re.match (name_regex_comp, dir_file):
            cpm_single_file = cpm_drive + ":" + dir_file
            a = from_cpm_file (cpm_single_file, dest)
            status = status and a
            count += 1

    print (f"{count} file(s) transferred")
    return (status)


# Transfer a single file from the CP/M system. Call with:
# src - CP/M path to destination.
# dest - path to Linux file.
# Returns with True if the transfer was successful, False otherwise.
def from_cpm_file (src, dest):

    # Process the specified path components into CP/M format.
    (a, cpm_drive, cpm_fn, cpm_ext) = cpm_path (src)
    if a == False:
        return (False)

    # The destination may or may not include a filename. If not, we can use
    # the source filename.
    dest_fn = os.path.basename (dest)
    dest_path = os.path.dirname (dest)
    if os.path.isdir (dest):
        # No filename supplied. We can use the source filename.
        dest_fn = cpm_fn.rstrip () + "." + cpm_ext.rstrip ()
        dest = os.path.join (dest, dest_fn)

    #print ("dest: " + dest)
    #assert (False)

    # We may already have such a file on the PC. If so, calculate the checksums
    # so we can avoid performing the transfer if we already have it. Note that
    # this assumes the final CP/M record is padded with EOF characters. This
    # may or may not be the case unless the file has previously been
    # transferred by stran. In the worst case, the file will be transferred
    # though it is not strictly necessary.
    try:
        # Open file
        f = open (dest, "rb")

        # Find file length
        f_size = Path(dest).stat().st_size      # Find file size
        records = f_size // CPM_RECORD_SIZE     # Complete CP/M records
        last_rec_bytes = f_size % CPM_RECORD_SIZE   # Bytes in last CP/M record

        print (f"Calculating checksums of existing file {dest}")

        # Create CRC and Alder-32 classes.
        crc_func = crcmod.mkCrcFun (0x11021, rev=False, initCrc=0x0000, xorOut=0x0000)
        crc = 0
        adler = adler32 ()

        count = 0
        while True:
            b = f.read (1)          # Read a byte
            if len (b) == 0:
                # No more file data to process.
                break
            count += 1
            crc = crc_func (b, crc)
            i = int.from_bytes (b, "little")
            adler.proc (i)

        # Verify that we have read f_size bytes.
        assert count == f_size
        
        if last_rec_bytes != 0:
            # The final record is not complete, so we must allow for padding in
            # the checksums.
            rem = CPM_RECORD_SIZE - last_rec_bytes
            # print ("Including " + str (rem) + " pad bytes.")
            b = FILE_EOF            # Pad with EOF marker as CP/M stran does
            i = int.from_bytes (b, "little")
            while rem != 0:
                crc = crc_func (b, crc)
                adler.proc (i)
                rem -= 1

        print (f"File length: {f_size} bytes", \
            f" Adler-32: 0x{Tools.Hex32 (adler.result ())}", \
            f" CRC-16 (XMODEM): 0x{Tools.Hex16 (crc)}")

        f.close()                   # Close file
        dest_exists = True

    except IOError:
        print (f"Destination file {dest} doesn't exist")
        # Set dummy values
        dest_exists = False
        
        
    # Construct the data as a string of bytes. This is a file descriptor block,
    # common to both Tx and Rx file command packets. It is the FDESC structure
    # described in stran.i for the CP/M end.
    d = cpm_drive.encode ("utf-8") + \
        cpm_fn.encode ("utf-8") + \
        cpm_ext.encode ("utf-8")
    if dest_exists:
        d = d + f_size.to_bytes (4, "little") + \
            adler.result ().to_bytes (4, "little") + \
            crc.to_bytes (2, "little")
    else:
        # Insert dummy values
        size = 0xffffffff       # Impossible size to flag transfer required
        adler = 0
        crc = 0
        d = d + size.to_bytes (4, "little") + \
            adler.to_bytes (4, "little") + \
            crc.to_bytes (2, "little")
        
    assert len (d) == 22, "File descriptor block encoding error: " + str (d)

    # Send command packet.
    tx_packet = sio.cPacket ( Type = sio.cPHF_Type.RX, Length = len (d), Data = d )
    (a, d) = send_wait_ack (tx_packet)       # Send packet and await acknowledgement
    # a will be true if an ACK was received. d contains the results of the
    # PC and CP/M files comparison.
    if a == True:
        if d[0] == 0:
            print ("Files are already identical. Skipping transfer.")
            return (True)
        else:
            print (f"Transfer required. Reason: {TX_RX_REASON_CODES [d[0]]}")
    else:
        # No ACK received.
        return (False)

    # Reopen file for writing.
    try:
        # Open file
        f = open (dest, "wb")        # Reopen for writing
    except IOError:
        print (f"Can't open file {dest}")
        return (False)

    print (f"Receiving remote file {src} to {dest}")

    blk_count = 0
    while True:
        # Receive data packets until the transfer is complete. A null file
        # would result in no data packets being sent.
        # Send data request.
        tx_packet = sio.cPacket ( Type = sio.cPHF_Type.DREQ,
            Length = 0,
            Data = b"")
        (s, rx_pkt) = send_wait_resp (tx_packet)
        if not s:
            return (False)

        # Packet received
        if rx_pkt.Type == sio.cPHF_Type.END:
            # No more data to send.
            break
        if rx_pkt.Type == sio.cPHF_Type.DATA:
            # File data
            try:
                f.write (rx_pkt.Data)  # Save received data
            except IOError:
                print (f"Can't write to file {dest}")
                return (False)
            blk_count += 1
            print (f"{blk_count} blocks received")

    f.close ()
    print ("File received")

    return (True)



# Read CP/M directory. Call with:
# drive - CP/M drive to examine
# Returns with a list of filenames if the transfer was successful, False
# otherwise.
def get_dir (drive):

    # Validate drive letter. A trailing colon is optional.
    pattern = re.compile (r"(?P<dr>[A-Pa-p]):?$")
    match = pattern.match (drive)
    
    if match == None:
        print (f"Bad CP/M drive: {drive}")
        return (False)
    cpm_drive = match.group ("dr").capitalize()

    # Construct the data as a string of bytes. In this case, it is just the
    # drive letter.
    d = cpm_drive.encode ("utf-8")
        
    assert len (d) == 1, "Drive encoding error: " + str (d)

    # Send command packet.
    tx_packet = sio.cPacket ( Type = sio.cPHF_Type.DIR, Length = len (d), Data = d )
    (a, d) = send_wait_ack (tx_packet)       # Send packet and await acknowledgement

    # a will be true if an ACK was received. d contains any data received (null
    # in this case).
    if a != True:
        # No ACK received.
        return (False)

    listing = []

    print (f"Receiving directory of {cpm_drive}:")

    while True:
        # Receive data packets until the transfer is complete. An empty
        # directory would result in no data packets being sent.
        # Send data request.
        tx_packet = sio.cPacket ( Type = sio.cPHF_Type.DREQ,
            Length = 0,
            Data = b"")
        (s, rx_pkt) = send_wait_resp (tx_packet)
        if not s:
            return (False)

        # Packet received
        if rx_pkt.Type == sio.cPHF_Type.END:
            # No more data to send.
            break
        if rx_pkt.Type == sio.cPHF_Type.DATA:
            # Directory data
            l = len (rx_pkt.Data)
            entries = l // DIR_ENTRY_SIZE
            if l % DIR_ENTRY_SIZE != 0:
                print (f"Packet contains partial entry! Length = {l}")
                return (False)
            for i in range (entries):
                s = i * DIR_ENTRY_SIZE          # Start of entry
                listing.append (rx_pkt.Data [s : s + DIR_ENTRY_SIZE].decode ())

    return (listing)


# Display CP/M directory. Call with:
# drive - CP/M drive to examine
# Returns with True if the transfer was successful, False otherwise.
def dir (drive):

    listing = get_dir (drive)

    if listing == False:
        return (False)

    # Display listing
    print ()
    print ("Directory received, {len (listing)} files", end = "")
    c = 0
    for s in listing:
        assert len (s) == DIR_ENTRY_SIZE, "Filename format error: " + str (s) 
        if (c % 5) == 0:
            print ()
        else:
            print (" : ", end = "")
        print (s [:FILENAME_SIZE] + "." + s [FILENAME_SIZE:], end = "")
        c += 1
    print ()

    return (True)



# *************
# * Main Code *
# *************

# Parse command line arguments. The first parse determines the command, as the
# other parameters vary depending on this.
parser = argparse.ArgumentParser (
    description="CP/M serial file transfer system.",
    epilog="Examples: 'python3 stran.py to_cpm FOO.TXT a:', 'python3 stran.py --port /dev/ttyUSB1 from_cpm b:BAR.TXT ./backups/bar_old.txt' or 'python3 stran.py dir a:'"
    )
# Some arguments depend on the command (cmd).
subparsers = parser.add_subparsers (dest = "cmd", help="Command")

parser.add_argument ("--port", help="Serial port, default = /dev/ttyUSB0", default = "/dev/ttyUSB0", type = str)
parser.add_argument ("--baud", help="Serial port Baud rate, default = 9600", default = 9600, type = int)
parser.add_argument ("--raw_case", help="Do not force upper case CP/M filenames", action="store_true")
parser.add_argument ("--debug", help="Enable debug output", action="store_true")

to_cpm_parser = subparsers.add_parser ("to_cpm")

to_cpm_parser.add_argument ("source", help = "Source PC file")
to_cpm_parser.add_argument ("destination", help="Destination CP/M file")

from_cpm_parser = subparsers.add_parser ("from_cpm")
from_cpm_parser.add_argument ("source", help = "Source CP/M file")
from_cpm_parser.add_argument ("destination", help="Destination PC file")

dir_parser = subparsers.add_parser ("dir")
dir_parser.add_argument ("drive", help="Drive (dir command only)")

args = parser.parse_args ()

global debug
debug = args.debug
global raw_case
raw_case = args.raw_case

if debug:
    print (args)

print ("STran V2.0")

# Offer help if no command is specified.
if args.cmd == None:
    sys.exit("No command specified. Use stran --help to see options.")

# Create class instances.
io = sio.cSer (debug, args.port, args.baud)   # Open serial port

# Initialise communications.
io.tx_sync ()       # Transmit synchronisation sequence
io.flush ()         # Discard any input data
t = reset ()        # Reset transfer system, aborting any current transfer
if t == False:
    sys.exit("No response from CP/M end.")

if args.cmd == "to_cpm":
    s = to_cpm (args.source, args.destination)
elif args.cmd == "from_cpm":
    s = from_cpm (args.source, args.destination)
elif args.cmd == "dir":
    s = dir (args.drive)
else:
    sys.exit("Unknown command: " + args.cmd)
if not s:
    print ("Operation failed")

# print ("Sending exit command")
tx_packet = sio.cPacket (
    Type = sio.cPHF_Type.EXIT,
    Length = 0,
    Data = b"")
#(a, i) = send_wait_ack (tx_packet)       # Send packet and await acknowledgement

#time.sleep (0.5)      # Wait for any output from the other end
print ("Exiting")
io.in_service ()
#print (str (io.in_fifo.qsize()) + " characters received.")

