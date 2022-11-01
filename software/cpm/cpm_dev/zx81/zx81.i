; *******************************************************
; * ZX81 Emulator for ZARC Z80 Computer (ZX81)          *
; * Include file                                        *
; * Written by: Merlin Skinner                          *
; * Date Started: 22/3/2021                             *
; *******************************************************
;
;
;
; *************
; * Constants *
; *************
;
;
;DEBUG           equ 1                   ; Define to enable debug messages
;
STACK_SIZE      equ 64                  ; Stack space allocation
BREAK_CHAR      equ 'C' - 0x40
MMAP_ZX81_PAGES equ 4                   ; Number of pages allocated
;
; Emulated machine memory map.
EM_ROM_START    equ 0                   ; Start of ROM
EM_ROM_SIZE     equ 0x4000
;
; ZX81 system variables.
ZX81_E_LINE     equ 0x4014              ; Pointer to input buffer/workspace
ZX81_VERSN      equ 0x4009              ; 0x00 to identify ZX81 cassette files
;
MON_VIS_VAR     equ MMAP_BANK2_START    ; Start of variables visible to the monitor
EM_XFER_START   equ 0x1e00              ; Start of transfer code in emulated space

;
; CP/M to emulated space command codes. These are passed to the emulated space
; in the C register.
                ENUM_START
                ENUM CTOE_RESET         ; Reset the emulated machine
                ENUM CTOE_RET           ; Return to caller (continue)
                ENUM_END CTOE_SIZE      ; Number of codes
;
; Emulated to CP/M space command codes. These are passed to CP/M space
; in the C register.
                ENUM_START
                ENUM ETOC_EXIT          ; Terminate the session
                ENUM ETOC_DISP          ; Display character (A)
                ENUM ETOC_SCROLL        ; Scroll the display
                ENUM ETOC_INKEY         ; Fetch keyboard state (DE)
                ENUM ETOC_WAIT_KEY      ; Wait for a character from keyboard (DE)
                ENUM ETOC_SAVE          ; Save BASIC programme
                ENUM ETOC_LOAD          ; Load BASIC programme
                ENUM_END CTOE_SIZE      ; Number of codes
;
; CTOE_RESET - start the emulated machine from location 0x0000. Parameters:
;   B - bank 0 CP/M page (for return).
;
;
; **************
; * Structures *
; **************
;
;
; Some variables must be visible to the monitor, and therefore cannot be in
; banks 0 or 1 as these will be paged out by the BIOS mon_call function so it
; can call the monitor. This application uses bank 2 (0x8000 to 0xdfff) to
; access the emulator memory space, and have determined that this space is not
; required either by CP/M or the programme. Hence we can use this space as long
; as the CP/M page (CPU2) is selected. This structure defines offsets (from
; MON_VIS_VAR) into this space.
                STRUCT
                STR_BLOCK MVV_PAGE_NAME, MPA_NAME_LEN  ; Filename
                STR_END MVV_SIZE

