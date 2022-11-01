; ***********************************
; * ZARC Interrupts Routines        *
; * Written by: Merlin Skinner      *
; * Date Started: 30/5/2020         *
; ***********************************
;
; Note that ld80 only considers the first six characters of labels significant.
;
; The following conditionals are intended to allow the same include file to be
; used in the defining module and elsewhere as required. Some includes are used
; for other applications than the monitor, such as the CP/M BIOS. In these cases,
; the extern and public statements are not desirable.
;
            ifdef monitor           ; Meaningful for monitor build only
                ifndef interrupts   ; Inhibit for this module
; Variables 
                extern itenfl   ; Int. enable flag (0 = basic, 1 = normal I/O mode)
                extern itdsct   ; DI nest count
; Functions
                extern itinit   ; Initialise interrupt variables and set basic I/O mode
                extern itstrt   ; Start monitor interrupts
                extern itena    ; Enable interrupts if safe
                extern itdis    ; Disable interrupts and keep count
                extern itsvec   ; Set interrupt vector to point to a new service routine
;
                endif
            endif

