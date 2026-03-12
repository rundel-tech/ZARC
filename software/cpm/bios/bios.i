; *******************************************************
; * CP/M 2 BIOS for ZARC Z80 Computer Include File      *
; * Written by: Merlin Skinner                          *
; * Date Started: 31/5/2025                             *
; *******************************************************
;
;
;
; *************
; * Constants *
; *************
;
;
BIOS_CPM_VER        equ 2               ; Supported CP/M version
;
; Version
BIOS_MAJ_VER        equ 1
BIOS_MIN_VER        equ 6
;
; The interrupt stack need only be deep enough to meet the requirements of the
; interrupt service routines plus a NMI. As the monitor switches to its own
; stack for NMIs, this is a light requirement.
INT_STACK_SIZE      equ 16              ; Interrupt service routine stack size
;
DISK_SPT            equ 256             ; Sectors per track
DISK_DSM            equ 511             ; Maximum block number

