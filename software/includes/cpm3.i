; *******************************************************
; * ZARC Monitor CP/M 3 Definitions                     *
; * Written by: Merlin Skinner                          *
; * Date Started: 26/5/2020                             *
; *******************************************************
;
; Definitions related CP/M running under the monitor programme. It may also
; be used for CP/M applications.
;
; This include file contains defintions specific to CP/M 3. It is not a
; replacement for cpm.i, but rather an addition to it.
;
; Note that ld80 only considers the first six characters of labels significant.
;
; The following conditionals are intended to allow the same include file to be
; used in the defining module and elsewhere as required. Some includes are used
; for other applications than the monitor, such as the CP/M BIOS. In these cases,
; the extern and public statements are not desirable.
;
            ifdef monitor           ; Meaningful for monitor build only
                ifndef cpm3         ; Inhibit for this module
; Constants
;
; Variables
;
; Functions
                extern cp3ini       ; Load and start CP/M 3
                extern cp3mem       ; Allocate CP/M pages
;
                endif
            endif
;
;
;
; ****************
; * Memory Usage *
; ****************
;
;
; Note: memory banks are allocated by the monitor's initialisation code.
MMAP_CP3_BANKS      equ 4               ; Number of CP/M 3 banks
MMAP_CP3_PAGES      equ (3 * MMAP_CP3_BANKS) + 1    ; Number of 16 kB pages
MMAP_CP3_BK0_ST     equ 0               ; CP/M bank 0 first page
MMAP_CP3_BK1_ST     equ 3               ; CP/M bank 1 first page
MMAP_CP3_BK2_ST     equ 6               ; CP/M bank 2 first page
MMAP_CP3_BK3_ST     equ 9               ; CP/M bank 3 first page
MMAP_CP3_COMM_PG    equ 0xc             ; CP/M common bank
;
;
;
; ***************
; * Disk System *
; ***************
;
;
CPMLDR_START_SEC    equ 19              ; First MMC sector of CPMLDR
; CPMLDR_MAX_SIZE must be a multiple of MMC_SECTOR_SIZE (512).
CPMLDR_MAX_SIZE     equ 10240           ; 10 KB allocation for CPMLDR
TPA_START           equ 0x0100          ; Transient Programme Area
CP3_NUM_DISKS       equ 8               ; Number of disk drives
CP3_NUM_DISKS_MAX   equ 16              ; Maximum number of disk drives
; CP/M 3 drive A is CP/M 2.2 drive P to allow for initialisation.
CP3_DRIVE_A         equ 8               ; Drive A MB offset
CP3_DRIVE_B         equ 1               ; Drives B to H MB offset
CP3_XDPH_SIZE       equ CP3_DPH_SIZE + 10   ; Extended Disk Parameter Header size
DLBLE_NAME_SIZE     equ 8               ; Disk label name size
DLBLE_TYP_SIZE      equ 3               ; Disk label type size
DIR_PWD_SIZE        equ 8               ; Directory password size
;
;
; CP/M 3 Disk Parameter Header (DPH) structure.
                STRUCT
                STR_WORD CP3_DPH_XLT        ; Address of sector translation table
                STR_BLOCK CP3_DPH_SCRATCH, 9   ; BDOS scratch area
                STR_BYTE CP3_DPH_MF         ; Media flag
                STR_WORD CP3_DPH_DPB        ; Pointer to DPB
                STR_WORD CP3_DPH_CSV        ; Pointer to the directory checksum vector
                STR_WORD CP3_DPH_ALV        ; Pointer to the allocation vector
                STR_WORD CP3_DPH_DIRBCB     ; Pointer to directory buffer chain
                STR_WORD CP3_DPH_DTABCB     ; Pointer to data buffer chain
                STR_WORD CP3_DPH_HASH       ; Address of hash buffer
                STR_BYTE CP3_DPH_HBANK      ; Bank for hash buffer
                STR_END CP3_DPH_SIZE
;
;
; CP/M 3 Disk Parameter Block (DPB) structure.
                STRUCT
                STR_WORD CP3_DPB_SPT        ; Number of 128-byte records per track
                STR_BYTE CP3_DPB_BSH        ; Block shift. 3 => 1k, 4 => 2k, 5 => 4k....
                STR_BYTE CP3_DPB_BLM        ; Block mask. 7 => 1k, 0Fh => 2k, 1Fh => 4k...
                STR_BYTE CP3_DPB_EXM        ; Extent mask
                STR_WORD CP3_DPB_DSM        ; Maximum block number
                STR_WORD CP3_DPB_DRM        ; Maximum directory entry number
                STR_BYTE CP3_DPB_AL0        ; Directory allocation bitmap
                STR_BYTE CP3_DPB_AL1
                STR_WORD CP3_DPB_CKS        ; Checksum vector size, 0 for a fixed disc
                STR_WORD CP3_DPB_OFF        ; Offset, number of reserved tracks
                STR_BYTE CP3_DPB_PSH        ; Physical record shift factor
                STR_BYTE CP3_DPB_PHM        ; Physical record mask
                STR_END CP3_DPB_SIZE
;
;
; Directory date stamp structure.
                STRUCT
                STR_WORD DSTAMP_DAY         ; Julien day number (1 = 1 Jan 78)
                STR_BYTE DSTAMP_HOUR        ; BCD hour
                STR_BYTE DSTAMP_MIN         ; BCD minute
                STR_END DSTAMP_SIZE 
;
                assert DSTAMP_SIZE = 4
;
;
; Disk label structure.
                STRUCT
                STR_BYTE DLBLE_USER      ; "User number" (0x20)
                STR_BLOCK DLBLE_NAME, DLBLE_NAME_SIZE ; Name
                STR_BLOCK DLBLE_TYP, DLBLE_TYP_SIZE   ; Label type
                STR_BYTE DLBLE_LB        ; Label byte (flags)
                STR_BYTE DLBLE_PB        ; Password decode byte
                STR_BYTE DLBLE_RR0       ; Reserved, should be zero
                STR_BYTE DLBLE_RR1
                STR_BLOCK DLBLE_PWD, DIR_PWD_SIZE    ; Password
                STR_BLOCK DLBLE_CREATE_DATE, DSTAMP_SIZE ; Create date stamp
                STR_BLOCK DLBLE_UPDATE_DATE, DSTAMP_SIZE ; Update date stamp
                STR_END DLBLE_SIZE
;
                assert DLBLE_SIZE = 0x20
;
;
; Date stamp directory entry structure.
                STRUCT
                STR_BYTE DSTE_USER      ; "User number" (0x21)
                STR_BLOCK DSTE_F1_DATE, DSTAMP_SIZE ; File 1 *
                STR_BLOCK DSTE_F1_UPD_DATE, DSTAMP_SIZE ; File 1 update date
                STR_BYTE DSTE_M1        ; File 1 password mode
                STR_BYTE DSTE_R0        ; Reserved, should be zero
                STR_BLOCK DSTE_F2_DATE, DSTAMP_SIZE ; File 2 *
                STR_BLOCK DSTE_F2_UPD_DATE, DSTAMP_SIZE ; File 2 update date
                STR_BYTE DSTE_M2        ; File 2 password mode
                STR_BYTE DSTE_R1        ; Reserved, should be zero
                STR_BLOCK DSTE_F3_DATE, DSTAMP_SIZE ; File 3 *
                STR_BLOCK DSTE_F3_UPD_DATE, DSTAMP_SIZE ; File 3 update date
                STR_BYTE DSTE_M3        ; File 3 password mode
                STR_BYTE DSTE_R2        ; Reserved, should be zero
                STR_BYTE DSTE_R3
                STR_END DSTE_SIZE
;
; * Create OR access date stamp.
;
                assert DSTE_SIZE = 0x20
;
;
; Password directory entry structure.
                STRUCT
                STR_BYTE DPWDE_USER     ; User number
                STR_BLOCK DPWDE_NAME, FILENAME_SIZE ; Filename
                STR_BLOCK DPWDE_TYP, FILEEXT_SIZE   ; File type
                STR_BYTE DPWDE_PM       ; Mode byte
                STR_BYTE DPWDE_PB       ; Decode byte
                STR_BLOCK DPWDE_RESVD1, 2
                STR_BLOCK DPWDE_PWD, DIR_PWD_SIZE   ; Password
                STR_BLOCK DPWDE_RESVD2, 8
                STR_END DPWDE_SIZE
;
                assert DPWDE_SIZE = 0x20
;
; DPWDE_PM bits.
BITDEF DPWDE_PM_DEL, 5                 ; Password required to delete file
BITDEF DPWDE_PM_WRITE, 6               ; Password required to write to file
BITDEF DPWDE_PM_READ, 7                ; Password required to read file
;
;
;
; ********
; * BIOS *
; ********
;
;
; PUNCH and READER are replaced by AUXOUT and AUXIN for CP/M 3. This allows the
; use of either name.
BIOS_AUXOUT         equ BIOS_PUNCH
BIOS_AUXIN          equ BIOS_READER
;
;
;
; ********
; * BDOS *
; ********
;
;
; Direct Console I/O (BDOS_DIRECT_CON_IO) command codes not supported by CP/M 2.
DCONIO_IN_STAT      equ 0xfe    ; Return console input status. Zero if no character is waiting, nonzero
DCONIO_GET_WT       equ 0xfd    ; Get character (no echo), wait if no key
;
;
;
; ***************
; * CMPLDR BIOS *
; ***************
;
;
; BIOS parameters structure. This is passed from the monitor to the CPMLDR
; BIOS and the CP/M 3 BIOS.
                STRUCT
                STR_BYTE BPS_OPTIONS    ; See BIOS_OPT_xxx definitions
                STR_BLOCK BPS_PAGES, MMAP_CP3_PAGES ; Memory page list
                STR_WORD BPS_PARTITION  ; Pointer to partition table entry
                STR_END BPS_SIZE
;
