; *******************************************************
; * Terminal Control Routines for CP/M Applications     *
; * Version: V1.0                                       *
; * Merlin Skinner, 16/12/2021                          *
; *******************************************************
;
; These routines provide more complex control over the terminal than is offered
; by the simple generic character read / write used by the monitor and CP/M.
;
; Note that ld80 only considers the first six characters of labels significant.
;
; The following conditionals are intended to allow the same include file to be
; used in the defining module and elsewhere as required. Some includes are used
; for other applications than the monitor, such as the CP/M BIOS. In these cases,
; the extern and public statements are not desirable.
;
            ifndef cpm_terminal ; Inhibit for this module
                extern concap   ; Console capabilities (CONCAP_xxx)
                extern ccinit   ; Determine terminal capabilities
                extern cldcur   ; Load cursor position
                extern conuln   ; Set underline
                extern conrev   ; Set reverse video
                extern csrvis   ; Show or hide cursor
                extern ccls     ; Clear screen
                extern cscrup   ; Scroll screen up
            endif
;
;
VT100_ROWS          equ 24
VT100_COLS          equ 80
;
;
; The concap (determine terminal capabilities) routine returns a byte
; indicating various capabilities of the attached terminal. The bits are
; defined here.
BITDEF CONCAP_ZARC, 0           ; ZARC BIOS present
BITDEF CONCAP_ANSI, 1           ; ANSI control codes, e.g. VT100
BITDEF CONCAP_UNICODE, 2        ; Terminal is capable of Unicode characters
;
; Note that Minicom by default emulates a VT102, and is capable of Unicode. If
; this terminal is detected, both CONCAP_VT100 and CONCAP_UNICODE are set.
;
;
; ANSI graphical rendition (SGR) codes. From https://en.wikipedia.org/wiki/ANSI_escape_code
ANSI_SGR_NORMAL     equ 0           ; All attributes off
ANSI_SGR_BOLD       equ 1           ; Bold or increased intensity
ANSI_SGR_FAINT      equ 2           ; Faint, decreased intensity, or dim
ANSI_SGR_ULINE      equ 4           ; Underline
ANSI_SGR_SBLINK     equ 5           ; Slow blink
ANSI_SGR_RBLINK     equ 6           ; Rapid blink
ANSI_SGR_REV        equ 7           ; Reverse video or invert
ANSI_SGR_STRIKE     equ 9           ; Characters legible but marked as if for deletion
ANSI_SGR_PRI_FONT   equ 10          ; Primary (default) font
ANSI_SGR_FONT_1     equ 11          ; Alternative fonts
ANSI_SGR_FONT_2     equ 12
ANSI_SGR_FONT_3     equ 13
ANSI_SGR_FONT_4     equ 14
ANSI_SGR_FONT_5     equ 15
ANSI_SGR_FONT_6     equ 16
ANSI_SGR_FONT_7     equ 17
ANSI_SGR_FONT_8     equ 18
ANSI_SGR_FONT_9     equ 19
ANSI_SGR_GOTHIC     equ 20          ; Fraktur (Gothic) (not widely supported)
ANSI_SGR_DULINE     equ 21          ; Doubly underlined *or* not bold
ANSI_SGR_NORM_INTEN equ 22          ; Normal intensity
ANSI_SGR_ITAL_OFF   equ 23          ; Neither italic, nor blackletter
ANSI_SGR_ULINE_OFF  equ 24          ; Underline off
ANSI_SGR_BLINK_OFF  equ 25          ; Blinking off
ANSI_SGR_REV_OFF    equ 27          ; Reverse image off
ANSI_SGR_HIDE_OFF   equ 28          ; Reveal (not concealed)
ANSI_SGR_STRIKE_OFF equ 29

