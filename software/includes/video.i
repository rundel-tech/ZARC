; ***********************************
; * ZARC Video Definitions          *
; * Written by: Merlin Skinner      *
; * Date Started: 26/5/2020         *
; ***********************************
;
; See io.i for I/O mapping.
;
; Video control codes.
; Codes recognised by the hardware video system.
; In double width modes, characters displayed are alternately left and right
; halves, so characters following must be duplicated.
VID_CTRL_NORM   equ 0x00        ; Normal height, normal width
;  0x01 is reserved (duplicate of above in hardware)
VID_CTRL_NH_DW  equ 0x02 ; Normal height, double width
;  0x03 is reserved (duplicate of above in hardware)
VID_CTRL_DHU_NW equ 0x04        ; Double height (upper), normal width
VID_CTRL_DHL_NW equ 0x05        ; Double height (lower), normal width
VID_CTRL_DHU_DW equ 0x06        ; Double height (upper), double width
VID_CTRL_DHL_DW equ 0x07        ; Double height (lower), double width
VID_CTRL_CS_0   equ 0x08        ; Select colour set 0
VID_CTRL_CS_1   equ 0x09        ; Select colour set 1
VID_CTRL_CS_2   equ 0x0a        ; Select colour set 2
VID_CTRL_CS_3   equ 0x0b        ; Select colour set 3
VID_CTRL_CS_4   equ 0x0c        ; Select colour set 4
VID_CTRL_CS_5   equ 0x0d        ; Select colour set 5
VID_CTRL_CS_6   equ 0x0e        ; Select colour set 6
VID_CTRL_CS_7   equ 0x0f        ; Select colour set 7
; 0x10 to 0x16 are reserved

; Video layout
VID_ROWS        equ 64          ; Rows of characters onscreen
VID_COLS        equ 128         ; Columns of characters onscreen
VID_RAM_SIZE    equ (VID_ROWS * VID_COLS)
