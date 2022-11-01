; ***************************************
; * ZARC Monitor Disassembly Routines   *
; * Written by: Merlin Skinner          *
; * Date Started: 27/9/2020             *
; ***************************************
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
                ifndef disass   ; Inhibit for this module
;
                extern diproc   ; Disassemble an instruction to intermediate form
                extern diprnt   ; Print the result
;
                endif
            endif
;
DIS_BUF_SIZE    equ 16          ; Length of intermediate disassembly buffer
DIS_MAX_INSTLEN equ 4           ; Maximum length of instructions
; Note: invalid instructions may exceed this length.
