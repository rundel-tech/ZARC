; *******************************************************
; * CP/M File System Checker                            *
; * Include file                                        *
; * Written by: Merlin Skinner                          *
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
; DEBUG           equ 1                   ; Define to enable debugging mode
;
STACK_SIZE      equ 64                  ; Stack space allocation
BREAK_CHAR      equ 'C' - 0x40
BDIS_CHARS_MAX  equ (VT100_ROWS / 2) * VT100_COLS ; Maximum display area for block usage display
;
; Allocation counter and flags
BITDEF ALLCF_UNUSED, 7                  ; Set if any allocation is unused
BITDEF ALLCF_SPARSE, 6                  ; Set file contains a hole
; LS bits serve as a counter.
ALLCF_COUNT     equ 0x0f                ; Used allocation counter
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
                STR_WORD FI_LAST_PEXT               ; Highest physical extent number found
                STR_BYTE FI_LAST_RC                 ; RC associated with the extent in FI_LAST_PEXT
                STR_BYTE FI_EX_FL_LEN               ; No. of extent flag bytes
                STR_BLOCK FI_EX_FLAGS, 0            ; Start of extent flags
                STR_END FI_SIZE

