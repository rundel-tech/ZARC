; *******************************************************
; * CP/M 3 BIOS for ZARC Z80 Computer Include File      *
; * Written by: Merlin Skinner                          *
; * Date Started: 23/1/2023                             *
; *******************************************************
;
;
;
; *************
; * Constants *
; *************
;
;
BIOS_CPM_VER        equ 3               ; Supported CP/M version
;
; BIOS version
BIOS_MAJ_VER        equ 1
BIOS_MIN_VER        equ 1
;
STACK_SIZE      equ 64                  ; Stack space allocation
; The interrupt stack need only be deep enough to meet the requirements of the
; interrupt service routines plus a NMI. As the monitor switches to its own
; stack for NMIs, this is a light requirement.
INT_STACK_SIZE      equ 16              ; Interrupt service routine stack size
;
DISK_SPT            equ 256             ; Logical sectors per track
CPM_PER_PHYS_SECT   equ MMC_SECTOR_SIZE / CPM_SECTOR_SIZE  
DISK_PHYS_SPT       equ DISK_SPT / CPM_PER_PHYS_SECT
DISK_DSM            equ 511             ; Maximum block number
; Minimum partition size. This allows for the system area, 8 CP/M 2.2 drives
; and 16 CP/M 3 drives with one shared between the two systems.
CPM_MIN_PRT_SIZE    equ CPM_SYS_SIZE + ((NUM_DISKS + CP3_NUM_DISKS - 1) * CPM_DISK_SIZE)  ; In bytes
CPM_MIN_PRT_SIZE_MS equ CPM_MIN_PRT_SIZE / MMC_SECTOR_SIZE  ; In MMC sectors
CPM_TRACK_SIZE      equ DISK_SPT * CPM_SECTOR_SIZE   ; "Track" size in bytes
CPM_SYS_TRACKS      equ CPM_SYS_SIZE / CPM_TRACK_SIZE   ; System area size in tracks
CPM_DRIVE_TRACKS    equ CPM_DISK_SIZE / CPM_TRACK_SIZE  ; Drive size in tracks
;
; *** DEVTBL constants from MODEBAUD.LIB ***
;
; Equates for mode byte bit fields in CHRTBL (@CTBL)
mb$input            equ 00000001b       ; device may do input
mb$output           equ 00000010b       ; device may do output
mb$in$out           equ mb$input+mb$output
mb$soft$baud		equ 00000100b       ; software selectable baud rates
mb$serial           equ 00001000b       ; device may use protocol
mb$xon$xoff         equ 00010000b       ; XON/XOFF protocol enabled
;
; Baud rates
baud$none           equ 0       ; no baud rate associated with this device
baud$50             equ 1       ; 50 baud
baud$75             equ 2       ; 75 baud
baud$110            equ 3       ; 110 baud
baud$134            equ 4       ; 134.5 baud
baud$150            equ 5       ; 150 baud
baud$300            equ 6       ; 300 baud
baud$600            equ 7       ; 600 baud
baud$1200           equ 8       ; 1200 baud
baud$1800           equ 9       ; 1800 baud
baud$2400           equ 10      ; 2400 baud
baud$3600           equ 11      ; 3600 baud
baud$4800           equ 12      ; 4800 baud
baud$7200           equ 13      ; 7200 baud
baud$9600           equ 14      ; 9600 baud
baud$19200          equ 15      ; 19.2k baud
;
;
; CPMLDR BIOS common area. We can't use this for CP/M 3 itself as this is
; required for CPMLDR. However, we can use it for variables once CPMLDR itself
; has finished.
CPMLDR_B_C_START    equ 0xfc00          ; Start address
CPMLDR_B_C_MAXLEN   equ INT_VEC_TABLE - CPMLDR_B_C_START    ; Maximum length
;
; Allocate space for variables in this block.
                ALLOC CPMLDR_B_C_START
                ALL_BLOCK COM_SEC_BUFFER, MMC_SECTOR_SIZE   ; Sector buffer
; Monitor call stack.
                ALL_BLOCK MC_STACK, STACKS_SIZE
MC_STK_TOP_P1   equ all_addr                                ; Stack top + 1
; Interrupts stack.
                ALL_BLOCK INT_STACK, STACKS_SIZE
INT_STK_TOP_P1  equ all_addr                                ; Stack top + 1
                ALL_END CPMLDR_B_C_LEN
;
                assert CPMLDR_B_C_LEN <= CPMLDR_B_C_MAXLEN
