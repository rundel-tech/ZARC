; *******************************************
; * ZARC Memory Include File                *
; * Written by: Merlin Skinner              *
; * Date Started: 24/11/2021                *
; *******************************************
;
;
; Note that ld80 only considers the first six characters of labels significant.
;
; The following conditionals are intended to allow the same include file to be
; used in the defining module and elsewhere as required. Some includes are used
; for other applications than the monitor, such as the CP/M BIOS. In these cases,
; the extern and public statements are not desirable.
;
            ifdef monitor           ; Meaningful for monitor build only
                ifndef memory       ; Inhibit for this module
;
                extern mpinit       ; Initialise
                extern mprpt        ; Report status to console
                extern mpall        ; Allocate new page
                extern mpfree       ; Free allocated page
                extern mpstat       ; Allocation status
                extern mppnam       ; Print entry name
;
                endif
            endif
;
; Physical memory constants are found in zarc.i
;
MPA_NAME_LEN        equ 4               ; Page owner name length (bytes)
;
; Memory map
MMAP_PAGE_SIZE      equ 0x4000          ; Memory mapping bank / page size
MMAP_BANKS          equ 4               ; Number of 16 kB banks
MMAP_PAGES          equ 0x40            ; Number of 16 kB RAM pages
MMAP_BANK0_START    equ 0x0000
MMAP_BANK0_END      equ 0x3fff
MMAP_BANK1_START    equ 0x4000
MMAP_BANK1_END      equ 0x7fff
MMAP_BANK2_START    equ 0x8000
MMAP_BANK2_END      equ 0xbfff
MMAP_BANK3_START    equ 0xc000
MMAP_BANK3_END      equ 0xffff
;
;
;
; ****************
; * Memory Usage *
; ****************
;
;
; Memory banks setup.
; 0 (0000 - 3FFF): 3f read only, supervisor - monitor program
; 1 (4000 - 7FFF): 3e writeable - monitor variables, stacks, buffers etc.
; 2 (8000 - BFFF): (not used)
; 3 (C000 - FFFF): (mapped as required)
;
MMAP_MON_B0_PAGE    equ 0x3f        ; Page for bank 0
MMAP_MON_B1_PAGE    equ 0x3e        ; Page for bank 1
;
STACKS_SIZE     equ 64              ; Space allocated to normal stacks
;
HEAP_TOP        equ MMAP_BANK1_END  ; Top (end) of heap space.

