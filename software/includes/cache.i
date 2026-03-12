; ***********************************************
; * ZARC Monitor Memory Card Cache Include File *
; * Written by: Merlin Skinner                  *
; * Date Started: 23/11/2020                    *
; ***********************************************
;
; Constants and structures associated with the MMC memory card sector cache.
;
; "Dirty" in this case indicates sector data that is in the cache, but has not yet
; been written to the MMC.
;
;
; The following conditionals are intended to allow the same include file to be
; used in the defining module and elsewhere as required. Some includes are used
; for other applications than the monitor, such as the CP/M BIOS. In these cases,
; the extern and public statements are not desirable.
;
            ifdef monitor           ; Meaningful for monitor build only
                ifndef cache        ; Inhibit for this module
; Functions
                extern cacold       ; Reset cache (cold start)
                extern cawarm       ; Initialise cache (warm start)
                extern carpt        ; Report status
                extern caflus       ; Flush cache
                extern cars         ; Read sector
                extern caws         ; Write sector
                extern cacrs        ; Read CP/M sector
                extern cacws        ; Write CP/M sector
; Variables
; Counters
                extern cntrs        ; Read MMC sector counter
                extern cntws        ; Write MMC sector counter
                extern cntcrs       ; Read CP/M sector counter
                extern cntcws       ; Write CP/M sector counter
                endif
            endif
;
;
MCCA_PAGES          equ 8               ; RAM (16 KB) pages used for cache
MCCA_BUFS_PER_PAGE  equ MMAP_PAGE_SIZE / MMC_SECTOR_SIZE
MCCA_BUFFERS        equ MCCA_PAGES * MCCA_BUFS_PER_PAGE ; No. of sector buffers
MCCA_DIRT_THRES     equ MCCA_BUFFERS / 2    ; Target no. of dirty buffers
MMAP_CP3_BANKS      equ 4               ; Number of CP/M 3 banks
;
;
; Sector cache structure. This contains the data associated with a single cached
; sector.
                STRUCT
                STR_BYTE MCCAS_STATUS       ; Status byte
                STR_24BIT MCCAS_SECTOR      ; 24-bit sector number
                STR_WORD MCCAS_CSUM         ; Checksum of data
                STR_WORD MCCAS_ADDR         ; Address of data *1
                STR_BYTE MCCAS_PAGE         ; Page containing data
                STR_END MCCAS_SIZE
;
; *1 Address is in the range 0x8000 to 0xbfff to allow direct use when the page
; in MCCAS_PAGE is mapped to bank 2.
;
;
; MCCAS_STATUS byte is defined as follows:
; Bits 0 to 3 - set if the corresponding CP/M sector in this MMC sector is dirty.
BITDEF MCCAS_STAT_CPM0, 0       ; CP/M sector 0 (0 to 0x7f)
BITDEF MCCAS_STAT_CPM1, 1       ; CP/M sector 1 (0x80 to 0x0ff)
BITDEF MCCAS_STAT_CPM2, 2       ; CP/M sector 2 (0x100 to 0x17f)
BITDEF MCCAS_STAT_CPM3, 3       ; CP/M sector 3 (0x180 to 0x1ff)
BITDEF MCCAS_STAT_VALID, 4      ; Buffer contains valid data
;
MCCAS_STAT_DIRT_MASK    equ MCCAS_STAT_CPM0_MASK + MCCAS_STAT_CPM1_MASK + MCCAS_STAT_CPM2_MASK + MCCAS_STAT_CPM3_MASK

