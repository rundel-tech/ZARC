; ***********************************
; * ZARC Terminal Definitions       *
; * Written by: Merlin Skinner      *
; * Date Started: 16/5/2020         *
; ***********************************
;
; Definitions associated with terminals connected to an RS-232 port.
;
ASCII_ENQ           equ 0x05        ; Enquiry
ASCII_BS            equ 0x08        ; Backspace
ASCII_HT            equ 0x09
ASCII_LF            equ 0x0a        ; Line feed
ASCII_VT            equ 0x0b        ; Upline (ADM-3A)
ASCII_FF            equ 0x0c        ; Forward space (ADM-3A)
ASCII_CR            equ 0x0d        ; Carriage return
ASCII_SYN           equ 0x16        ; Synchronous idle
ASCII_SUB           equ 0x1a        ; Clear screen (ADM-3A)
ASCII_ESC           equ 0x1b        ; Escape
ASCII_RS            equ 0x1e        ; Home cursor (ADM-3A)
ASCII_DEL           equ 0x7f        ; Delete
;
; ZARC CP/M terminal input key codes. Some are copied from Amstrad PCW and
; Spectrum +3, others are unique to ZARC. Delete seems very common.
ZKEY_CSR_UP         equ 0x1f        ; Cursor up
ZKEY_CSR_DOWN       equ 0x1e        ; Cursor down
ZKEY_CSR_RIGHT      equ 0x06        ; Cursor right
ZKEY_CSR_LEFT       equ 0x01        ; Cursor left
ZKEY_HOME           equ 0x02
ZKEY_INSERT         equ 0x16
ZKEY_DELETE         equ 0x7f
ZKEY_END            equ 0x04
ZKEY_PAGE_UP        equ 0x1d
ZKEY_PAGE_DOWN      equ 0x1c

