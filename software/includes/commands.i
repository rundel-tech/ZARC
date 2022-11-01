; ***********************************************
; * Commands for ZARC Include File              *
; * Written by: Merlin Skinner                  *
; * Date Started: 30/4/2021                     *
; ***********************************************
;
; Constants and structures associated with the ZARC monitor command module.
;
; The following conditionals are intended to allow the same include file to be
; used in the defining module and elsewhere as required. Some includes are used
; for other applications than the monitor, such as the CP/M BIOS. In these cases,
; the extern and public statements are not desirable.
;
            ifdef monitor           ; Meaningful for monitor build only
                ifndef commands     ; Inhibit for this module
; Functions
                extern mcexec       ; Execute a command
; Variables
; (None)
                endif
            endif
;
;
;MCCA_BUFFERS                equ 16      ; Number of cached sector buffers
;

