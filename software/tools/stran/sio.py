# !/usr/bin/env python3

# ***************************************************
# * STran I/O Functions                             *
# * Written by: Merlin Skinner                      *
# * Date Started: 31/3/2021                         *
# ***************************************************

# Handles packet I/O.

# If "ImportError: No module named xxx" results, install the package with
#   "sudo apt install python3-xxx"

# System imports
import struct       # String to binary packing and unpacking
import sys
import time
import serial       # pySerial
import queue        # FIFOs etc.
import crcmod       # CRC calculations
from enum import Enum

# Application imports
import Tools        # Hex conversion



#  *************
#  * Constants *
#  *************

BLKLEN = 512        # Maximum data block size


#  ***************
#  * Subroutines *
#  ***************


#  ***********
#  * Classes *
#  ***********


# PHF_TYPE can have any of the following values:
class cPHF_Type (Enum):
    NULL = 0    # Null packet type
    ACK = 1     # Positive acknowledgement
    NAK = 2     # Negative acknowledgement
    EXIT = 3    # Exit CP/M stran and return to CP/M
    TX = 4      # Transmit file (PC to CP/M)
    RX = 5      # Receive file (CP/M to PC)
    END = 6     # Normal end of transfer
    ABORT = 7   # Abort transfer
    DIR = 8     # Read directory


# NAK reason codes:
class cNAK (Enum):
    CRC = 0     # CRC error
    PSN = 1     # Unexpected PSN
    CMD = 2     # Unexpected command
    OPEN = 3    # Can’t open file
    RW_ERR = 4  # BDOS file read / write error
    NO_TRAN = 5 # Abort when no transfer is underway


class cPacket (object):
    # Packet format.

    def __init__(self, \
        Type = cPHF_Type.NULL, \
        PSN = 0, \
        Length = 0, \
        Data = [] ):
        self.Type = Type        # Packet type (byte)
        self.PSN = PSN          # Packet Sequence Number (16 bits)
        self.Length = Length    # Data length (0 to BLKLEN) (16 bits)
        self.Data = Data        # Data (Length bytes)
        # 1 or 2 bytes of padding to align to 3-byte boundary.
        #self.CRC = 0           # CRC (16 bits)


class cSer:

    def __init__(self, debug, port, baud):
    
        self.debug = debug          # Enable debugging messages
        self.in_fifo = queue.Queue()    # Setup a FIFO

        try:
            # Open serial port. Select no parity and hardware handshaking.
            self.ser = serial.Serial (port,
                baud,
                bytesize = serial.EIGHTBITS,
                parity = serial.PARITY_NONE,
                timeout = 1.0,          # Read timeout
                write_timeout = 2.0,    # Write timeout
                rtscts=1                # Hardware (RTS/CTS) flow control
                )
        except:
            sys.exit ("Cannot open serial port " + port)
        if self.debug:
            print("Serial port: " + self.ser.name + ", " + str(self.ser.baudrate) + " Baud")


    # Transmit synchronisation sequence. This is intended to put the CP/M side
    # into a state in which it will receive a packet. This should work even if the
    # current CP/M state is midway through a packet.
    def tx_sync (self):

        self.txdch (b" ")           # Invalid 3 to 4 byte


    # Transmit a packet. The packet is assumed to be fully built, with all fields
    # populated except the CRC.
    def txpkt (self, pkt):

        print ( "Transmitting packet: " + pkt.Type.name +
            ", PSN:", str (pkt.PSN) +
            ", Length:", str (pkt.Length) )

        # Build raw packet (less start of packet character) as a single byte string.
        raw = bytes ([pkt.Type.value]) + \
            pkt.PSN.to_bytes (2, 'little') + \
            pkt.Length.to_bytes (2, 'little') \
            + pkt.Data

        # Pad if necessary to a whole number of 3-byte units.
        while (len (raw) % 3) != 0:
            if self.debug:
                print ("Adding pad byte")
            raw = raw + b"\x20"

        tb = len (raw) // 3       # Number of units to send
        if self.debug:
            print ( "raw: " + str (raw) +
                ", length: " + str(len(raw)) +
                ", tb: " + str(tb) )
        # Send packet
        self.txdch (b"*")           # Start of packet (not encoded)
        for i in range (tb):
            idx = 3 * i
            self.tx_data_enc (raw [idx], raw [idx + 1], raw [idx + 2])

        # Generate and transmit checksum (CRC-16/XMODEM)
        # Handy checker: https://www.lammertbies.nl/comm/info/crc-calculation
        crc16 = crcmod.mkCrcFun(0x11021, rev=False, initCrc=0x0000, xorOut=0x0000)
        crc = crc16(raw)
        if self.debug:
            print ("CRC: " + str (Tools.Hex16(crc)))
        self.tx_data_enc (crc.to_bytes (2, 'little')[0],
            crc.to_bytes (2, 'little')[1],
            0 )


    # Transmit 3 bytes using the 3 to 4 bytes encoding scheme.
    def tx_data_enc (self, b0, b1, b2):
        # Encoded byte 0 = <0, 1> <byte 0 bits 7 to 2>
        e0 = 0x40 | ((b0 & 0xfc) >> 2)
        # Encoded byte 1 = <0, 1> <byte 0 bits 1 to 0> <byte 1 bits 7 to 4>
        e1 = 0x40 | ((b0 & 0x03) << 4) | ((b1 & 0xf0) >> 4)
        # Encoded byte 2 = <0, 1> <byte 1 bits 3 to 0> <byte 2 bits 7 to 6>
        e2 = 0x40 | ((b1 & 0x0f) << 2) | ((b2 & 0xc0) >> 6)
        # Encoded byte 3 = <0, 1> <byte 2 bits 5 to 0>
        e3 = 0x40 | (b2 & 0x3f)
        if self.debug:
            print("Encoded (" + Tools.Hex8(b0) + ", " +
                Tools.Hex8(b1) + ", " +
                Tools.Hex8(b2) + ") to (" +
                Tools.Hex8(e0) + ", " +
                Tools.Hex8(e1) + ", " +
                Tools.Hex8(e2) + ", " +
                Tools.Hex8(e3) + ")" )
        # Convert to bytes and send.
        self.txdch (e0.to_bytes(1, 'little'))
        self.txdch (e1.to_bytes(1, 'little'))
        self.txdch (e2.to_bytes(1, 'little'))
        self.txdch (e3.to_bytes(1, 'little'))
        
        # Read any incoming data.
        self.in_service ()


    # Transmit a character to the data port. 
    def txdch (self, ch):
        self.ser.write (ch)


    # Read and display any incoming data, leaving the input FIFO empty.
    def flush (self):
        time.sleep (0.1)
        self.in_service()
        # Loop until FIFO is empty.
        while not self.in_fifo.empty ():
            self.in_fifo.get ()
            # print ("(discard)")
        if self.debug:
            print("Flushed input FIFO")


    # Read and store incoming bytes. This is also stored for processing by rxpkt().
    def in_service (self):
        # ser.in_waiting tends to return zero unless there is a sleep(). This code
        # is a work-around for this behaviour.
        if self.ser.in_waiting == 0:
            time.sleep (0.01)
        # Copy data to the FIFO until there is no more left. A string copy is made
        # for immediate display.
        text = ""
        while self.ser.in_waiting != 0:
            a = self.ser.read(1)        # Read a byte
            self.in_fifo.put (a)        # Add to FIFO
            ch = a.decode('utf-8')
            text = text + ch
            time.sleep (0.01)           # Required to make ser.in_waiting work!
        if text != "":
            print ("CP/M: '" + text + "'")


    # Receive a packet. Returns with True if a valid packet was received, False
    # otherwise (timeout or other error).
    def rxpkt (self, pkt):

        # Await start of packet character.
        if self.debug:
            print("Waiting for packet (", end='')
        to = time.monotonic() + 1.0         # Set timeout time
        while time.monotonic() <= to:
            a = self.rxdch()                # Read character or timeout
            if a != -1:
                # Not an error
                if self.debug:
                    print (chr(a), end='')
                to = time.monotonic() + 1.0 # Reset timeout time
            if a == ord ("*"):
                # Start of packet found
                break
            # Other values or timeout (-1) are treated identically
        if self.debug:
            print (")")
        if a != ord ("*"):
            #return (pkt)                   # Return with error
            return (False)                  # Return with error
        if self.debug:
            print("Found start")

        # Read raw packet data
        raw = bytearray()
        while True:
            # Read next set of three bytes.
            (b0, b1, b2) = self.rx_data_enc()
            if b0 == -1:
                #return (pkt)               # Bail out on error
                return (False)              # Return with error
            raw.extend (b0.to_bytes (1, 'little'))
            raw.extend (b1.to_bytes (1, 'little'))
            raw.extend (b2.to_bytes (1, 'little'))
            # print ("raw: " + raw.hex())

            # Handle length
            if len (raw) >= 5:
                # We have read enough to know the length
                l = int.from_bytes(raw [3:4], "little")
                if self.debug:
                    print("Length:" + str (l))
                # Find packet length less CRC (header + data)
                plen = 5 + l
                if len (raw) >= plen:
                    # Stop reading if we have sufficient
                    break

        # The header and the data have been read, including any pad bytes to make
        # the CRC start on a three-byte encoding boundary.
        # Generate checksum (CRC-16/XMODEM)
        # Handy checker: https://www.lammertbies.nl/comm/info/crc-calculation
        crc16 = crcmod.mkCrcFun(0x11021, rev=False, initCrc=0x0000, xorOut=0x0000)
        ccrc = crc16(raw)

        # Read CRC.
        (b0, b1, b2) = self.rx_data_enc()
        if b0 == -1:
            #return (pkt)                # Bail out on error
            return (False)                 # Return with error
        rcrc = (b1 << 8) | b0
        if self.debug:
            print ("Calculated CRC: " + str (Tools.Hex16(ccrc)) +
                ", received: " + str (Tools.Hex16(rcrc)))
        if rcrc != ccrc:
            print ("CRC error")
            #return (pkt)
            return (False)                 # Return with error

        # Populate the cPacket structure with the received data.
        if self.debug:
            print ("Received raw: " + str (raw))
        pkt.Type = cPHF_Type (raw [0])
        pkt.PSN = raw [1] + (raw [2] << 8)  # Packet Sequence Number (16 bits)
        pkt.Length = raw [3] + (raw [4] << 8) # Data length (0 to BLKLEN) (16 bits)
        for i in range (pkt.Length):
            if self.debug:
                print (" " + Tools.Hex8 (raw [5 + i]), end='')
            pkt.Data.append (raw [5 + i])   # Add byte to list
        if self.debug:
            print ()
        # The CRC is not stored in the structure.

        print ( "Received packet: " + pkt.Type.name +
            ", PSN:", str (pkt.PSN) +
            ", Length:", str (pkt.Length) )
        if pkt.Type.name == "NAK":
            a = pkt.Data[0]
            r = cNAK (a)
            print ("NAK reason code: " + r.name)

        return (True)


    # Receive 3 bytes using the 3 to 4 bytes encoding scheme. Returns with the
    # decoded bytes or (-1, -1, -1) on timeout.
    def rx_data_enc (self):
        # Read the bits from the encoded four bytes.
        e0 = self.rde_char()
        if e0 == -1:
            return (-1, -1, -1)
        e1 = self.rde_char()
        if e1 == -1:
            return (-1, -1, -1)
        e2 = self.rde_char()
        if e2 == -1:
            return (-1, -1, -1)
        e3 = self.rde_char()
        if e3 == -1:
            return (-1, -1, -1)

        # Do the decoding.
        # Encoded byte 0 = <0, 1> <byte 0 bits 7 to 2>
        # Encoded byte 1 = <0, 1> <byte 0 bits 1 to 0> <byte 1 bits 7 to 4>
        # Encoded byte 2 = <0, 1> <byte 1 bits 3 to 0> <byte 2 bits 7 to 6>
        # Encoded byte 3 = <0, 1> <byte 2 bits 5 to 0>
        b0 = (e0 << 2) | ((e1 & 0x30) >> 4)
        b1 = ((e1 & 0x0f) << 4) | ((e2 & 0x3c) >> 2)
        b2 = ((e2 & 0x03) << 6) | (e3 & 0x3f)
        if self.debug:
            print("Decoded (" +
                Tools.Hex8(e0 + 0x40) + ", " +
                Tools.Hex8(e1 + 0x40) + ", " +
                Tools.Hex8(e2 + 0x40) + ", " +
                Tools.Hex8(e3 + 0x40) + ") to (" +
                Tools.Hex8(b0) + ", " +
                Tools.Hex8(b1) + ", " +
                Tools.Hex8(b2) + ")" )
        return (b0, b1, b2)


    # Fetch an encoded byte from the data port. This is checked to be in the
    # appropriate range. Returns with the six data bits recovered from the
    # encoded character as an integer. If there is a timeout or the character
    # is out of range, return with -1.
    def rde_char (self):
        a = self.rxdch()            # Read byte or timeout
        if a == -1:
            return (-1)             # Timeout
        if (a < 0x40) or (a > 0x7f):
            if self.debug:
                print("3 to 4 encoding error")
            return (-1)
        return (a - 0x40)           # Return with the required six bits


    # Fetch a received byte from the data port. If no character is available,
    # wait for a period until one arrives. Returns with the byte as an integer or
    # -1 if no character is available (timed out).
    def rxdch (self):
        to = time.monotonic() + 0.1 # Set timeout time
        self.in_service ()          # Copy any incoming data to the FIFO
        while self.in_fifo.qsize() == 0:
            # Wait for data if there is none.
            self.in_service ()      # Copy any incoming data to the FIFO
            if time.monotonic() > to:
                if self.debug:
                    print("Timout")
                return (-1)         # Timed out
        b = self.in_fifo.get()
        a = int.from_bytes(b, "little")
        #if self.debug:
        #    print("(" + Tools.Hex8(a) + ")")
        return (a)
