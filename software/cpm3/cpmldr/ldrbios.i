; *******************************************************
; * CPMLDR BIOS for ZARC Z80 Computer Include File      *
; * Written by: Merlin Skinner                          *
; * Date Started: 12/12/2022                            *
; *******************************************************
;
;
;
; *************
; * Constants *
; *************
;
;
;DEBUG              equ 1                   ; Define to enable debug messages
;
; Version
BIOS_MAJ_VER        equ 1
BIOS_MIN_VER        equ 0
;
STACK_SIZE          equ 64                  ; Stack space allocation
;
; BLS (block size) = 2 KB.
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
; Calculate offsets into jump table. Entries here must match the jump table in
; ldrbios_comm.z80.
    JPTBL_START CPMLDR_B_C_START    ; Start at the beginning of ldrbios_comm
    JPTBL_ENTRY CCALL_PANIC         ; Unrecoverable error halt
    JPTBL_ENTRY CCALL_INIT          ; Initialise variables from monitor
    JPTBL_ENTRY CCALL_MON_CALL      ; Call monitor function

    JPTBL_END CCALL_JPTBL_NEXT
;
; CPMLDR BIOS common area code. We need to be careful when setting up CP/M that
; nothing overwrites this while CPMLDR is active. We can, however, reuse this
; space for variables etc. in the CP/M BIOS.
CPMLDR_B_C_START    equ 0xfc00          ; Start address
CPMLDR_B_C_MAXLEN   equ INT_VEC_TABLE - CPMLDR_B_C_START    ; Maximum length
;
; Variables
COM_SEC_BUFFER      equ CCALL_JPTBL_NEXT + BPS_SIZE ; Sector buffer in common area
