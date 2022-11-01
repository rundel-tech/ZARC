; ***********************************
; * ZARC Monitor Utility Routines   *
; * Written by: Merlin Skinner      *
; * Date Started: 16/5/2020         *
; ***********************************
;
; Note that ld80 only considers the first six characters of labels significant
;
; The following conditionals are intended to allow the same include file to be
; used in the defining module and elsewhere as required. Some includes are used
; for other applications than the monitor, such as the CP/M BIOS. In these cases,
; the extern and public statements are not desirable.
;
            ifdef monitor           ; Meaningful for monitor build only
                ifndef utility      ; Inhibit for this module
;
                extern cwnwln       ; Write new line characters to console.
                extern conwms       ; Print null-terminated string to the console
                extern conwmn       ; Print message <n> in a list
                extern skpspc       ; Step hl past spaces
                extern toupca       ; Convert character in A to upper case
                extern toloca       ; Convert character in A to lower case
                extern cwvich       ; Print only visible 7-bit characters
                extern cwpspc       ; Print a space
                extern mtwdli       ; Match word in a string against list of options
                extern cwphnb       ; Print least-significant nibble in A in hexadecimal
                extern cwphby       ; Print A in hexadecimal
                extern cwphwd       ; Print HL in hexadecimal
                extern cwpdby       ; Print A in decimal. Leading zeros are suppressed
                extern cwpdwd       ; Print HL in decimal. Leading zeros are suppressed
                extern cwpdlo       ; Print DEHL in decimal. Leading zeros are suppressed
                extern rdhxwd       ; Read a 16-bit hexadecimal number from a string
                extern rdduwd       ; Read a 16-bit unsigned decimal number from a string
                extern rddulo       ; Read a 32-bit unsigned decimal number from a string
;
                endif
            endif
;
;
; mtwdli (match word in a string against list of options) option bits. Each bit
; has the described effect if set.
BITDEF MTWDLI_ABBREV, 0                 ; Enable "." abbreviation
BITDEF MTWDLI_ICASE, 1                  ; Ignore case when matching
BITDEF MTWDLI_TERM, 7                   ; Terminator found (internal use only)

