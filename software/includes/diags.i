; ***************************************
; * ZARC Monitor Diagostics Routines    *
; * Written by: Merlin Skinner          *
; * Date Started: 3/8/2020              *
; ***************************************
;
; Note that ld80 only considers the first six characters of labels significant
;
; The following conditionals are intended to allow the same include file to be
; used in the defining module and elsewhere as required. Some includes are used
; for other applications than the monitor, such as the CP/M BIOS. In these cases,
; the extern and public statements are not desirable.
;
            ifdef monitor           ; Meaningful for monitor build only
                ifndef diags        ; Inhibit for this module
;
                extern cpuspd       ; Measure approximate CPU clock speed
                extern memtst       ; Test an area of memory with a range of patterns
                extern memtal       ; Test entire memory
;
                endif
            endif

