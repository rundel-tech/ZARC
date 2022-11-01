; *******************************************************
; * Utility Routines for CP/M Applications              *
; * Version: V1.0                                       *
; * Merlin Skinner, 16/12/2021                          *
; *******************************************************
;
; Note that ld80 only considers the first six characters of labels significant.
;
            ifndef CPMU         ; Inhibit for this module
; CP/M specific.
                extern cbdos    ; Call BDOS with some registers saved
                extern cbios    ; Call BIOS with some registers saved
                extern panic    ; Fatal application error
                extern zrcdet   ; Detect ZARC
                extern z80det   ; Detect Z80 (instead of 8080 / 8085)
;
; Derived from the monitor's utility.z80.
                extern conwch   ; Write character to console
                extern conrch   ; Read character from the console
                extern const    ; Fetch console input status
                extern cwnwln   ; Write new line characters to console
                extern conwms   ; Print "$" terminated string to the console
                extern conwmn   ; Print message <n> in a list
                extern skpspc   ; Step hl past spaces
                extern toupca   ; Convert character in A to upper case
                extern toloca   ; Convert character in A to lower case
                extern cwvich   ; Print only visible 7-bit characters
                extern cwpspc   ; Print a space
                extern mtwdli   ; Match word in a string against list of options
                extern cwphnb   ; Print least-significant nibble in A in hexadecimal
                extern cwphby   ; Print A in hexadecimal
                extern cwphwd   ; Print HL in hexadecimal
                extern cwpdwd   ; Print HL in decimal. Leading zeros are suppressed
                extern cwpdby   ; Print A in decimal. Leading zeros are suppressed
                extern cwpdwd   ; Print HL in decimal. Leading zeros are suppressed
                extern cwpdlo   ; Print DEHL in decimal. Leading zeros are suppressed
                extern rdhxwd   ; Read a 16-bit hexadecimal number from a string
                extern rdduwd   ; Read a 16-bit unsigned decimal number from a string
                extern rddulo   ; Read a 32-bit unsigned decimal number from a string
;
            endif
;
;
; mtwdli (match word in a string against list of options) option bits. Each bit
; has the described effect if set.
BITDEF MTWDLI_ABBREV, 0                 ; Enable "." abbreviation
BITDEF MTWDLI_ICASE, 1                  ; Ignore case when matching
BITDEF MTWDLI_TERM, 7                   ; Terminator found (internal use only)

