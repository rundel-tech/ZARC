; *******************************************
; * ZARC Monitor Heap Incude File           *
; * Written by: Merlin Skinner              *
; * Date Started: 7/8/2020                  *
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
                ifndef heap         ; Inhibit for this module
;
                extern hinit        ; Initialise
                extern halloc       ; Allocate memory
;
                endif
            endif

