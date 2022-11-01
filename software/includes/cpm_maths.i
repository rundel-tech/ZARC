; *******************************************************
; * Mathematical Routines for CP/M Applications         *
; * Version: V1.0                                       *
; * Merlin Skinner, 10/9/2022                           *
; *******************************************************
;
; Note that ld80 only considers the first six characters of labels significant.
;
            ifndef CPMM         ; Inhibit for this module
; CP/M specific.
; 32-bit arithmetic.
                extern mclr32       ; 32-bit clear (zero)
                extern mcop32       ; 32-bit copy from (hl) to (de)
                extern minc32       ; 32-bit increment
                extern mcp32        ; 32-bit compare (hl) - (de)
                extern madd32       ; 32-bit add (hl) <- (hl) + (de)
                extern msub32       ; 32-bit sub (hl) <- (hl) - (de)
;
; Derived from the monitor's maths.z80.
                extern madlbu       ; 32-bit / 8-bit unsigned divide
                extern madwbu       ; 16-bit / 8-bit unsigned divide
                extern madbbu       ; 8-bit / 8-bit unsigned divide
                extern mamwwu       ; 16-bit * 16-bit unsigned multiply
                extern mamlbu       ; 32-bit * 8-bit unsigned multiply
                extern crc16x       ; Software CRC-16 (XMODEM)
;
            endif
;
