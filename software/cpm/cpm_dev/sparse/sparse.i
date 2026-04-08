; *******************************************************
; * CP/M File System Checker                            *
; * Include file                                        *
; * Written by: Merlin Skinner-Oakes                    *
; * Date Started: 5/4/2026                             *
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
MIN_VER         equ 1
;
;DEBUG           equ 1                 ; Uncomment to enable debugging mode
;
; Command line option flags. The order must match clopt_list in fsck.z80.
BITDEF CLOPT_BUILD, 0                   ; Show build time
BITDEF CLOPT_LARGE, 1                   ; Create large sparse file

