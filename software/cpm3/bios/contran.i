; *******************************************************
; * CP/M 2 BIOS for ZARC Z80 Computer Include File      *
; * Console translation definitions                     *
; * Written by: Merlin Skinner                          *
; * Date Started: 31/5/2025                             *
; *******************************************************
;
;
;
; *************
; * Constants *
; *************
;
;
CIT_BUF_MAX_LEN     equ 4               ; Maximum sequence length
COT_BUF_MAX_LEN     equ 4               ; Maximum sequence length
;
;
; Console output translation state machine states (cot_state).
                ENUM_START
                ENUM COTST_NORM         ; Normal state
                ENUM COTST_ESC          ; Escape received
                ENUM COTST_LOAD         ; Cursor load sequence
                ENUM COTST_Y            ; Cursor load Y received
                ENUM_END COTST_STATES   ; Number of states
;
                assert COTST_NORM = 0   ; Code assumes this
;
;
; Console input translation state machine states (cistm).
                ENUM_START
                ENUM CITST_NORM         ; Normal state
                ENUM CITST_REPLAY       ; Replay unrecognised sequence
                ENUM_END CITST_STATES   ; Number of states
;
                assert CITST_NORM = 0   ; Code assumes this

