; *******************************************************
; * CP/M File System Checker                            *
; * Include file                                        *
; * Written by: Merlin Skinner-Oakes                    *
; * Date Started: 16/2/2022                             *
; *******************************************************
;
;
;
; *************
; * Constants *
; *************
;
;
; Version
MAJ_VER         equ 1
MIN_VER         equ 3
;
;DEBUG           equ 1                 ; Uncomment to enable debugging mode
;
BREAK_CHAR      equ 'C' - 0x40
BDIS_CHARS_MAX  equ (VT100_ROWS / 2) * VT100_COLS ; Maximum display area for block usage display
;
; Allocation counter and flags
BITDEF ALLCF_UNUSED, 7                  ; Set if any allocation is unused
BITDEF ALLCF_SPARSE, 6                  ; Set file contains a hole
; LS bits serve as a counter.
ALLCF_COUNT     equ 0x1f                ; Used allocation counter
;
; Command line option flags. The order must match clopt_list in fsck.z80.
BITDEF CLOPT_BUILD, 0                   ; Show build time
BITDEF CLOPT_SCAN, 1                    ; Enable surface scan
BITDEF CLOPT_CPM2_2, 2                  ; Assume CP/M 2.2 disk format
BITDEF CLOPT_CPM3, 3                    ; Assume CP/M 3 disk format
BITDEF CLOPT_QUIET, 4                   ; Quiet mode
BITDEF CLOPT_VERBOSE, 5                 ; Verbose mode
;
; Assorted flags.
BITDEF FLG_DRIVE, 0                     ; Drive specified in command line
BITDEF FLG_CPM3, 1                      ; CP/M 3 rules apply
;
; File information flags. These relate to individual files.
BITDEF FIF_FFLG_MMAT, 0                 ; Set if file flags differ between physical extents
BITDEF FIF_FFLG_PWD, 1                  ; Set if password associated with file
BITDEF FIF_FFLG_PEXT, 2                 ; Set if file has at least one physical extent
;
;
;
; **************
; * Structures *
; **************
;
;
; File information structure. User, name and type must match the directory
; entry structure (DIRE_xxx).
                STRUCT
                STR_BYTE FI_USER                    ; User number. 0xe5 if entry unused
                STR_BLOCK FI_NAME, FILENAME_SIZE    ; Filename in ASCII upper-case
                STR_BLOCK FI_TYP, FILEEXT_SIZE      ; File type
                STR_BYTE FI_FLAGS                   ; FIF_xxx flags
                STR_WORD FI_LAST_PEXT               ; Highest physical extent number found
                STR_BYTE FI_LAST_RC                 ; RC associated with the extent in FI_LAST_PEXT
                STR_BYTE FI_EX_FL_LEN               ; No. of extent flag bytes
                STR_BLOCK FI_EX_FLAGS, 0            ; Start of extent flags
                STR_END FI_SIZE

