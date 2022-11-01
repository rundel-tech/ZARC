; *******************************************************
; * Mathematical Routines for ZARC Z80 Computer         *
; * Written by: Merlin Skinner                          *
; * Date Started: 29/5/2020                             *
; *******************************************************
;
; Note that ld80 only considers the first six characters of labels significant.
;
; The following conditionals are intended to allow the same include file to be
; used in the defining module and elsewhere as required. Some includes are used
; for other applications than the monitor, such as the CP/M BIOS. In these cases,
; the extern and public statements are not desirable.
;
            ifdef monitor           ; Meaningful for monitor build only
                ifndef maths        ; Inhibit for this module
;
                extern madlbu       ; 32-bit / 8-bit unsigned divide
                extern madwbu       ; 16-bit / 8-bit unsigned divide
                extern madbbu       ; 8-bit / 8-bit unsigned divide
                extern mamwwu       ; 16-bit * 16-bit unsigned multiply
                extern mamlbu       ; 32-bit * 8-bit unsigned multiply
                extern crc16x       ; Software CRC-16 (XMODEM)
;
                endif
            endif

