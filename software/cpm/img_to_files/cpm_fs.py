# !/usr/bin/env python3

# ***************************************************
# * CP/M Filing System Support                      *
# * Written by: Merlin Skinner                      *
# * Date Started: 31/5/2020                         *
# ***************************************************

# Initially written for ZARC Z80 Computer, but may have other uses.
# See http://www.gaby.de/cpm/manuals/archive/cpm22htm/ch6.htm#Table_6-9
# for format details.


# System imports
import sys
import os
import math

# Application imports
import Tools        # Hex conversion
import img_funcs    # Format-independent functions



#  *************
#  * Constants *
#  *************



#  ***********
#  * Globals *
#  ***********



#  ***********
#  * Classes *
#  ***********


class cDirEntry (object):
    # A single directory entry.
    def __init__(self, \
        UserNum = "None", \
        FileName = "None", \
        FileType = "None", \
        Extent = "None", \
        RecordCount = "None", \
        AllocationList = "None", \
        LastExtent = True):
        self.UserNum = UserNum
        self.FileName = FileName
        self.FileType = FileType
        self.Extent = Extent
        self.RecordCount = RecordCount
        self.AllocationList = AllocationList
        self.LastExtent = LastExtent


class cpm:
    # CP/M Filing System Support

    def __init__(self, debug):
    
        self.debug = debug          # Enable debugging messages

        # Disk parameters
        self.disk_type = "unknown"  # Type string
        self.fs_mode = -1           # Encoding mode, as IMD format
        self.disk_cylinders = -1
        self.fs_secs_per_trk = -1 # Physical sectors per disk
        self.disk_heads = -1
        self.fs_sector_size = -1
        self.disk_size = -1         # Overall image size in bytes
        self.disk_bls = -1          # Block size in bytes

        # CP/M Disk Parameter Block (DPB)
        self.dpb_spt = -1           # Number of sectors per track
        self.dpb_bsh = -1           # Data allocation block shift factor (derived from disk_bls)
        self.dpb_blm = -1           # Data allocation block mask (derived from disk_bls)
        self.dpb_exm = -1           # Extent mask
        self.dpb_dsm = -1           # Determines storage capacity
        self.dpb_drm = -1           # Number of directory entries - 1
        self.dpb_al0 = -1           # Reserved directory block
        self.dpb_al1 = -1
        self.dpb_off = -1           # Number of reserved tracks
        # Logical to physical translation table. Index = CP/M logical sector,
        # Operating system track parameters
        self.os_mode = -1
        self.os_spt = -1
        self.os_sector_size = -1
        # value = physical sector.
        self.disk_sec_trans = []

        # From http://www.gaby.de/cpm/manuals/archive/cpm22htm/ch6.htm table Table 6-8.
        # Key is BLS, list is [BSH, BLM]
        self.BLS_TABLE = { \
            1024: [3, 7], \
            2048: [4, 15], \
            4096: [5, 31], \
            8192: [6, 63], \
            16384: [7, 127] }

        # From http://www.gaby.de/cpm/manuals/archive/cpm22htm/ch6.htm table Table 6-9.
        # Key is BLS, result is EXM.
        self.EXM_TABLE_SMALL = { \
            1024: 0, \
            2048: 1, \
            4096: 3, \
            8192: 7, \
            16384: 15 }
        self.EXM_TABLE_LARGE = { \
            1024: -1, \
            2048: 0, \
            4096: 1, \
            8192: 3, \
            16384: 7 }
        # Note - BLS = 1024 is illegal in this case.


        # Constants
        self.PHYS_SEC_START = 1     # First physical sector
        self.LOG_SEC_START = 0      # First logical sector
        self.LOG_SEC_SIZE = 128
        self.DIR_ENTRY_SIZE = 32
        self.USER_MAX = 15          # Maximum user number


    # Return the CP/M sector required. CP/M only "knows" about cylinders and
    # sectors, the latter of which are always 128 bytes long regardless of
    # the physical sector length. Things to consider are:
    # 1 - allowing for sector translation (skew)
    # 2 - mapping of cylinders and sectors across multiple heads
    # 3 - sector "deblocking"
    def GetSec (self, disk, cyl, sec):
    
        if not (self.disk_heads == 1):
            raise AssertionError ("Multiple heads not supported")
        head = 0        # Until I implement mapping

        # Translate according to the translation table.
        s = self.disk_sec_trans [sec - self.LOG_SEC_START]
        # s is the 128-byte physical sector required
        # self.fs_secs_per_trk - number of physical sectors per track
        # self.dpb_spt - number of logical sectors per track
        ls_per_ps = self.dpb_spt // self.fs_secs_per_trk

        ls = s - self.PHYS_SEC_START    # Ensure sectors start at zero
        ls_in_ps = ls % ls_per_ps
        ps = (ls // ls_per_ps) + self.PHYS_SEC_START
        if self.debug:
            print ("[GetSec] Logical sec: " + str (ls) + \
                ", offset: " + str (ls_in_ps) + \
                ", physical cyl: " + str (cyl) + \
                ", physical sec: " + str (ps) )
        ps_data = disk.dData [(cyl, head, ps)]  # Fetch physical sector
        # Find offset into physical sector
        ls_offset = ls_in_ps * self.LOG_SEC_SIZE
        return ps_data [ls_offset : ls_offset + self.LOG_SEC_SIZE]


    # Return the block required.
    # disk - disk image class
    # block - required block number
    def GetBlock (self, disk, block):
        secs_per_block = self.disk_bls // self.LOG_SEC_SIZE

        s = block * secs_per_block + self.LOG_SEC_START

        cyl = self.dpb_off + (s // self.dpb_spt)
        s = s % self.dpb_spt

        if self.debug:
            print ("Fetching block: " + str (block))

        block_data = []
        for i in range(0, secs_per_block):
            block_data = block_data + self.GetSec (disk, cyl, s)
            # Next sector
            s = s + 1
            if s >= self.dpb_spt:
                s = self.LOG_SEC_START
                cyl = cyl + 1
        return block_data


    # Use the disk parameters to set CP/M filing system parameters where possible.
    # Other useful parameters are also derived.
    # CP/M Disk Parameter Block (DPB) entries are:
    # See http://www.gaby.de/cpm/manuals/archive/cpm22htm/ch6.htm
    # section 6.10 for details of EXM etc.
    #    SPT is the total number of sectors per track.
    #    BSH is the data allocation block shift factor, determined by the data block allocation size.
    #    BLM is the data allocation block mask (2[BSH-1]).
    #    EXM is the extent mask, determined by the data block allocation size and the number of disk blocks.
    #    DSM determines the total storage capacity of the disk drive.
    #    DRM determines the total number of directory entries that can be stored on this drive.
    #    AL0, AL1 determine reserved directory blocks.
    #    CKS is the size of the directory check vector.
    #    OFF is the number of reserved tracks at the beginning of the (logical) disk. 
    def FindDPB (self, disk, img_type):

        if img_type == "imd":
            # ImageDisk file

            # Examine the data loaded and extract some parameters.
            cyl_min = sys.maxsize
            cyl_max = -1
            head_min = sys.maxsize
            head_max = -1
            for key in disk.dModes:
                (c, h) = key
                # Update cylinder minimum and maximum.
                if c < cyl_min:
                    cyl_min = c
                if c > cyl_max:
                    cyl_max = c
                # Update head minimum and maximum.
                if h < head_min:
                    head_min = c
                if h > head_max:
                    head_max = c

            # Assumes first cylinder is always 0, which seems reasonable regardless of
            # whether or not it is included in the image.
            self.disk_cylinders = cyl_max + 1

            # Number of heads
            if head_min != 0:
                print ("No head 0 data found!")
                sys.exit (1)
            self.disk_heads = head_max + 1

            # The disk format can very substantially between the reserved operating
            # system tracks and the filing system. Take this track as a sample of the
            # latter. This should work well enough for floppy disks, at least.
            fs_sample_cyl = 10
            fs_sample_head = 0

            # Fetch filing system track parameters
            self.fs_mode = disk.dModes [(fs_sample_cyl, fs_sample_head)]
            self.fs_secs_per_trk = disk.dSecs_per_track [(fs_sample_cyl, fs_sample_head)]
            self.fs_sector_size = disk.dSec_size [(fs_sample_cyl, fs_sample_head)]

            # Fetch operating system track parameters
            self.os_mode = disk.dModes [(0, 0)]
            self.os_spt = disk.dSecs_per_track [(0, 0)]
            self.os_sector_size = disk.dSec_size [(0, 0)]

            # Find overall image size in bytes. Note that this assumes that all
            # tracks are formatted the same as the filing system tracks. The
            # error should be small, however.
            self.disk_size = self.disk_cylinders * self.disk_heads * self.fs_secs_per_trk * self.fs_sector_size

            print ("Disk parameters: " + \
                "cylinders: " + str (self.disk_cylinders) + \
                ", heads: " + str (self.disk_heads))

            print ("Operating system tracks parameters: " + \
                "encoding rate: " + str (disk.MODE_TEXT [self.os_mode]) + \
                ", sectors per track: " + str (self.os_spt) + \
                ", sector size: " + str (self.os_sector_size))

            print ("Filing system tracks parameters: " + \
                "encoding rate: " + str (disk.MODE_TEXT [self.fs_mode]) + \
                ", sectors per track: " + str (self.fs_secs_per_trk) + \
                ", sector size: " + str (self.fs_sector_size) + \
                ", capacity: " + str (self.disk_size // 1024) + " kB")

            # Make an educated guess at other parameters based on this.
            if (self.fs_mode == 0) and (self.disk_cylinders == 77) and (self.disk_heads == 1) and (self.fs_secs_per_trk == 26):
                # Single-sided floppy disk. Probably "A1" format.
                print ("Identified as: 8 inch \"A1\" format")
                self.disk_type = "8in_A1"   # Type string
                self.disk_bls = 1024    # Block size in bytes
                # CP/M (128-byte) sectors per track
                self.dpb_spt = (self.fs_secs_per_trk * self.fs_sector_size) // self.LOG_SEC_SIZE
                self.dpb_dsm = 242      # Maximum block number
                self.dpb_drm = 64 - 1   # Number of directory entries - 1
                self.dpb_off = 2        # Reserved tracks
                # Logical to physical translation table for skew = 6
                # Index = CP/M logical sector, value = physical sector.
                self.disk_sec_trans = [1, 7, 13 ,19, 25, 5, 11, 17, \
                    23, 3, 9, 15, 21, 2, 8, 14, \
                    20, 26, 6, 12, 18, 24, 4, 10, \
                    16, 22]

            elif (self.fs_mode == 3) and (self.disk_cylinders == 80) and (self.disk_heads == 2) and (self.fs_secs_per_trk == 16):
                # AltairZ80 Configuration file for Cromemco CP/M 2.2 (found on cpm22sys.imd)
                # *** Not complete ***
                print ("Identified as: AltairZ80 for Cromemco CP/M 2.2")
                self.disk_type = "CDOS_DS_TBD"   # Type string
                self.disk_bls = 2048    # Block size in bytes
                # CP/M (128-byte) sectors per track
                self.dpb_spt = (self.fs_secs_per_trk * self.fs_sector_size) // self.LOG_SEC_SIZE
                self.dpb_dsm = 627      # Maximum block number
                self.dpb_drm = 256 - 1  # Number of directory entries - 1
                self.dpb_off = 1        # Reserved tracks
                # Logical to physical translation table for skew = 6
                # Index = CP/M logical sector, value = physical sector.
                self.disk_sec_trans = [1, 5, 9 ,13, 2, 6, 10, 14, \
                    3, 7, 11, 15, 4, 8, 12, 16]

            elif (self.fs_mode == 3) and (self.disk_cylinders == 77) and (self.disk_heads == 1) and (self.fs_secs_per_trk == 26):
                # CompuPro Systems 64K CP/M (found on oem256ssdd.imd)
                print ("Identified as: CompuPro Systems 8 inch SSDD")
                self.disk_type = "8in_SSDD_CompuPro"    # Type string
                self.disk_bls = 2048     # Block size in bytes
                # CP/M (128-byte) sectors per track
                self.dpb_spt = (self.fs_secs_per_trk * self.fs_sector_size) // self.LOG_SEC_SIZE
                self.dpb_dsm = 240      # Maximum block number
                self.dpb_drm = 128 - 1  # Number of directory entries - 1
                self.dpb_off = 2        # Reserved tracks
                # Logical to physical translation table for skew = 6
                # Index = CP/M logical sector, value = physical sector.
                self.disk_sec_trans = [ \
                     1,  2, 19, 20, 37, 38,  3,  4, 21, 22, \
                    39, 40,  5,  6, 23, 24, 41, 42,  7,  8, \
                    25, 26, 43, 44,  9, 10, 27, 28, 45, 46, \
                    11, 12, 29, 30, 47, 48, 13, 14, 31, 32, \
                    49, 50, 15, 16, 33, 34, 51, 52, 17, 18, \
                    35, 36 ]

            else:
                # Need to add more here as I encounter them.
                print ("Add allocaton block size (BLS) rule to code!")
                sys.exit (1)

        elif img_type == "dsk":
            # Altair (DSK) file. We can use a different approach for selecting a
            # suitable DPB in this case.

            self.disk_heads = 1         # CP/M has no concept of multiple heads

            # Most parameters come from the reader.
            if disk.tracks == 254:
                self.disk_type = "ALTAIRZ80 SIMH *dsk MITS 88-DISK 137 Byte/Sector"    # Type string
                self.disk_bls = 2048    # Block size in bytes
                # CP/M (128-byte) sectors per track
                self.dpb_spt = 32
                self.dpb_dsm = 496 - 1  # Maximum block number
                self.dpb_drm = 256 - 1  # Number of directory entries - 1
                self.dpb_off = 6        # Reserved tracks
                # Logical to physical translation table for skew = 17
                # Index = CP/M logical sector, value = physical sector.
                self.disk_sec_trans = [ \
                     1, 18,  3, 20,  5, 22,  7, 24,  9, 26, \
                    11, 28, 13, 30, 15, 32, 17,  2, 19,  4, \
                    21,  6, 23,  8, 25, 10, 27, 12, 29, 14, \
                    31, 16 ]

            # Fetch filing system track parameters
            self.fs_secs_per_trk = self.dpb_spt
            self.fs_sector_size = self.LOG_SEC_SIZE

            # Fetch operating system track parameters
            self.os_spt = self.dpb_spt
            self.os_sector_size = self.LOG_SEC_SIZE

        # Derive EXM from DSM and BLS.
        if self.dpb_dsm < 256:
            self.dpb_exm = self.EXM_TABLE_SMALL [self.disk_bls]
        else:
            self.dpb_exm = self.EXM_TABLE_LARGE [self.disk_bls]

        # Calculate AL0 and AL1
        dir_entries = self.dpb_drm + 1
        dir_size = dir_entries * self.DIR_ENTRY_SIZE
        dir_blocks = math.ceil (dir_size / self.disk_bls)
        al = 0
        for n in range (0, dir_blocks):
            al = (al >> 1) | 0x8000
        self.dpb_al0 = al >> 8
        self.dpb_al1 = al & 0xff

        # Derive BSH and BLM from block size.
        # BSH is the data allocation block shift factor, determined by the data
        # block allocation size.
        # BLM is the data allocation block mask (2[BSH-1]).
        (self.dpb_bsh, self.dpb_blm) = self.BLS_TABLE [self.disk_bls]

        # Perform rationalness checks on the translation table
        if not (len (self.disk_sec_trans) == self.dpb_spt):
            raise AssertionError ("Incorrect number of entries in disk_sec_trans table!")
        # Each sector should appear in the table exactly once. Scan the table
        # for each sector in turn, reporting errors as we go.
        errors = 0
        for s in range (0, self.dpb_spt):
            count = self.disk_sec_trans.count (s + self.PHYS_SEC_START)
            if count != 1:
                print ("disk_sec_trans error: " + str (s + self.PHYS_SEC_START) + \
                    " occurs " + str (count) + " times!")
                errors += 1
        if errors > 0:
            raise AssertionError ("Problem with disk_sec_trans")

        # Print DPB
        print ("disk_type: " + str (self.disk_type) + \
            ", disk_bls: " + str (self.disk_bls) + \
            ", dir_blocks: " + str (dir_blocks) + \
            ", dpb_spt: " + str (self.dpb_spt) + \
            ", dpb_exm: " + str (self.dpb_exm) + \
            ", dpb_dsm: " + str (self.dpb_dsm) + \
            ", dpb_drm: " + str (self.dpb_drm) + \
            ", dpb_al0: " + str (self.dpb_al0) + \
            ", dpb_al1: " + str (self.dpb_al1) + \
            ", dpb_off: " + str (self.dpb_off) )
        print ("Sector translation: " + str (self.disk_sec_trans) )


    # Save all files on the disk
    # disk - disk image class
    # file - IMD filename, used for directory name for recovered files
    def SaveFiles (self, disk, imd_filename):
        
        dir_entries = self.dpb_drm + 1
        dir_blocks =  (dir_entries * self.DIR_ENTRY_SIZE) // self.disk_bls
        
        # Read the directory blocks
        dir_data = []           # Directory data
        for b in range (0, dir_blocks):
            dir_data = dir_data + self.GetBlock (disk, b)

        lEntries = []           # List of cDirEntry (processed directory entries)

        # Loop for each directory entry, building a list of processed ones in
        # lEntries as we go.
        for e in range (0, self.dpb_drm + 1):
            valid = True        # Assume entry is valid
            
            o = e * self.DIR_ENTRY_SIZE     # Find offset into directory area
            entry = dir_data [o : o + self.DIR_ENTRY_SIZE]
            if self.debug:
                print ("Directory extent: " + str (entry))

            # What we do next depends on the entry type.
            if entry [0] == 0x20:
                # Disk label found
                label = ""
                for i in range(0, 11):
                    a = entry [1 + i]
                    a = a & 0x7f            # Ignore bit 7
                    if a >= 32 and a < 127:
                        # Character is printable
                        label = label + chr (a)
                    else:
                        label = label + "?"
                print ("Disk label: " + label)
            
            if entry [0] == 0x81:
                # Cromemco/CDOS disk label found.
                label = ""
                for i in range(0, 11):
                    a = entry [1 + i]
                    a = a & 0x7f            # Ignore bit 7
                    if a >= 32 and a < 127:
                        # Character is printable
                        label = label + chr (a)
                # CDOS seems to pad with zeros, so just ignore unprintables.
                print ("Cromemco/CDOS disk label: " + label)
                print ("WARNING - this is likely a CDOS disk, not a CP/M one!")
            
            elif entry [0] == 0xe5:
                # Deleted or unused entry.
                if entry [1] != 0xe5:
                    # There appears to be a filename, which may be interesting.
                    name = ""       # Filename
                    for i in range(0, 11):
                        a = entry [1 + i]
                        a = a & 0x7f            # Ignore read only and system bits
                        if a >= 32 and a < 127:
                            # Character is printable
                            name = name + chr (a)
                        else:
                            asc = asc + "?"
                    print ("Found deleted file: " + name)

            else:
                # Directory entry

                usernum = entry [0]
                if usernum > self.USER_MAX:
                    print ("Invalid user number: " + str (usernum))
                    valid = False           # Mark entry invalid

                name = ""       # Filename
                for i in range(0, 11):
                    a = entry [1 + i]
                    a = a & 0x7f            # Ignore read only and system bits
                    if a >= 32 and a < 127:
                        # Character is printable
                        name = name + chr (a)
                    else:
                        name = name + "?"
                        valid = False       # Mark entry invalid

                fn = name [0:8]
                typ = name [8:11]

                # Fetch extent
                extent_low = entry [12]     # EX - 0 to 31
                if not (extent_low <= 31):
                    print ("Illegal extent")
                    valid = False           # Mark entry invalid
                extent_high = entry [14]    # S2 (extent counter high byte)
                extent = ((32 * extent_high) + extent_low) // (self.dpb_exm + 1)

                # Reserved
                s1 = entry [13]             # S1 - should be zero
                if not (s1 == 0):
                    print ("Illegal S1")
                    valid = False           # Mark entry invalid

                # Record count (records used in this extent)
                record_count_low = entry [15]
                record_count = (extent_low & self.dpb_exm) * 128 + record_count_low

                # If RC is 80h, this extent is full and there may be another one
                # on the disc.
                lastextent = (entry [15] != 0x80)

                # Allocation units
                alloc_list = []
                if (self.dpb_dsm + 1) < 256:
                    # 8-bit pointers
                    end_flag = False
                    for i in range(0, 16):
                        a = entry [16 + i]
                        if a == 0:
                            end_flag = True
                        else:
                            if end_flag:
                                print ("WARNING: Hole in file!")
                                valid = False           # Mark entry invalid
                            alloc_list.append (a)
                else:
                    # 16-bit pointers
                    end_flag = False
                    for i in range(0, 8):
                        a = entry [16 + (2 * i)] + 256 * entry [17 + (2 * i)]
                        if a == 0:
                            end_flag = True
                        else:
                            if end_flag:
                                print ("Hole in file!")
                                valid = False           # Mark entry invalid
                            alloc_list.append (a)


                if self.debug:
                    print (name + ", extent: " + str (extent) + ", record count: " + str (record_count) + " (" + str (record_count * self.LOG_SEC_SIZE) + " bytes)")
                    print ("Allocation list: " + str (alloc_list))

                if valid:
                    lEntries.append (cDirEntry( usernum, fn, typ, extent, \
                        record_count, alloc_list, lastextent))


        # Use .IMD filename as a folder name.
        folder = imd_filename

        # Create output folder if required
        if not os.path.exists (folder):
            os.makedirs (folder)

        # Iterate through the entries, saving data in files as we go. The first
        # pass saves data in the first extent of each file only. Subsequent passes
        # append later extents.

        save_count = 0          # Files with data saved on this pass
        extent_num = 0          # Start at extent zero
        while True:
            for e in lEntries:
                if e.Extent == extent_num:

                    save_count += 1

                    if e.UserNum == 0:
                        prefix = ""         # No prefix for user zero
                    else:
                        prefix = str (e.UserNum) + "_"
                    fn = imd_filename + "/" + prefix + e.FileName + "." + e.FileType
                    fn = fn.replace (" ", "")   # Remove spaces from filename

                    if extent_num == 0:
                        # First extent so we should overwrite any existing data.
                        print ("Saving file: " + fn)
                        try:
                            fout = open (fn, 'wb')
                        except Exception:
                            print ("Can't open output file")
                            return (False)
                    else:
                        # Subsequent extents are appended.
                        if self.debug:
                            print ("Saving file: " + fn + " extent " + str (extent_num))
                        try:
                            fout = open (fn, 'ab')
                        except Exception:
                            print ("Can't append output file")
                            return (False)

                    # Read the data for this extent.
                    extent_data = []
                    for a in e.AllocationList:
                        extent_data = extent_data + self.GetBlock (disk, a)
                    # Write only the records included in the length.
                    length = e.RecordCount * self.LOG_SEC_SIZE
                    if self.debug:
                        print ("Writing " + str (length) + " bytes")
                    fout.write (bytes (extent_data [0 : length]))

                    fout.close 

            if save_count == 0:
                # If this pass did nothing, we have finished.
                break;
            else:
                # Keep going in case there are more extents to save.
                save_count = 0
                extent_num += 1



    # Save system area as binary files.
    # disk - disk image class
    # file - IMD filename, used for directory name for recovered files
    def SaveSystem (self, disk, imd_filename):
        
        # Use .IMD filename as a folder name.
        folder = imd_filename + "/system/"

        boot_fn = folder + "boot.bin"
        bios_fn = folder + "bios.bin"
        ccp_fn = folder + "ccp.bin"
        bdos_fn = folder + "bdos.bin"

        # Create output folder if required
        if not os.path.exists (folder):
            os.makedirs (folder)

        try:
            fbootout = open (boot_fn, 'wb')
        except Exception:
            print ("Can't open file: " + str (boot_fn))
            return (False)

        try:
            fbiosout = open (bios_fn, 'wb')
        except Exception:
            print ("Can't open file: " + str (bios_fn))
            return (False)

        try:
            fccpout = open (ccp_fn, 'wb')
        except Exception:
            print ("Can't open file: " + str (ccp_fn))
            return (False)

        try:
            fbdosout = open (bdos_fn, 'wb')
        except Exception:
            print ("Can't open file: " + str (bdos_fn))
            return (False)

        # Use of the system tracks varies widely according to the system.
        if self.disk_type == "8in_SSDD_CompuPro":
            # This format is single-sided, and has no skew for these sectors.
            # Track 0 is FM with a conventional 26 128-byte sectors.
            # Track 1 is MFM with 26 256-byte sectors.
            # Loop for each reserved cylinder.
            cyl = 0
            head = 0                # Single-sided disk
            print ("Saving bootstrap to file: " + boot_fn)
            for sec in range (0, 4):
                # Sectors 0 - 3
                sec_data = disk.dData [(cyl, head, sec + 1)]
                fbootout.write (bytes (sec_data))

            print ("Saving BIOS to file: " + bios_fn)
            for sec in range (4, 26):
                # Sectors 4 - 25
                sec_data = disk.dData [(cyl, head, sec + 1)]
                fbiosout.write (bytes (sec_data))

            cyl = 1
            print ("Saving CCP to file: " + ccp_fn)
            for sec in range (0, 8):
                # Sectors 0 - 7
                sec_data = disk.dData [(cyl, head, sec + 1)]
                fccpout.write (bytes (sec_data))

            print ("Saving BDOS to file: " + bdos_fn)
            for sec in range (8, 22):
                # Sectors 8 – 21
                sec_data = disk.dData [(cyl, head, sec + 1)]
                fbdosout.write (bytes (sec_data))

            # Track 1 sectors 22 – 25 are reserved for future expansion.

        elif self.disk_type == "ALTAIRZ80 SIMH *dsk MITS 88-DISK 137 Byte/Sector":
            # This format has a different skew (2) for the system tracks.
            self.disk_sec_trans = [ \
                 1,  3,  5,  7,  9, 11, 13, 15, 17, 19, \
                21, 23, 25, 27, 29, 31,  2,  4,  6,  8, \
                10, 12, 14, 16, 18, 20, 22, 24, 26, 28, \
                30, 32 ]

            # No obvious BIOS or bootstrap is found on the image.

            print ("Saving CCP to file: " + ccp_fn)
            # CCP spans tracks 0 and 1.
            for sec in range (24, 32):
                # GetSec (disk, cyl, sec)
                sec_data = self.GetSec (disk, 0, sec)
                fccpout.write (bytes (sec_data))
            for sec in range (0, 8):
                # GetSec (disk, cyl, sec)
                sec_data = self.GetSec (disk, 1, sec)
                fccpout.write (bytes (sec_data))

            print ("Saving BDOS to file: " + bdos_fn)
            # CCP spans tracks 1 and 2.
            for sec in range (8, 32):
                # GetSec (disk, cyl, sec)
                sec_data = self.GetSec (disk, 1, sec)
                fbdosout.write (bytes (sec_data))
            for sec in range (0, 4):
                # GetSec (disk, cyl, sec)
                sec_data = self.GetSec (disk, 2, sec)
                fbdosout.write (bytes (sec_data))


        # Add other disk types as required.
        else:
            print ("disk_type not supported in SaveSystem ()")

        fbootout.close
        fbiosout.close
        fccpout.close
        fbdosout.close

