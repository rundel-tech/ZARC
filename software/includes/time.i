; ***********************************
; * ZARC Monitor Time Routines      *
; * Written by: Merlin Skinner      *
; * Date Started: 30/7/2020         *
; ***********************************
;
; The system keeps track of time as a Unix-style 32-bit number. Unlike Unix, this
; is treated as an unsigned integer and so will not suffer from the Year 2038 problem
; as it doubles the allowable postive time. It does, however, mean that it is not
; possible to represent dates before 1970.

; Note that ld80 only considers the first six characters of labels significant.
;
            ifdef monitor           ; Meaningful for monitor build only
                ifndef time         ; Inhibit for this module
;
                extern tird         ; Read current time and date
                extern tiwr         ; Set time and date
                extern tiitos       ; Convert integer time to structure
                extern tistoi       ; Convert structure time to integer
                extern cwptm        ; Print time structure to console
;
                endif
            endif
;
;
TIM_EPOCH_YEAR  equ 70              ; Epoch year byte
;
; The following structure is used to store dates and times in human units. It is based
; on the Unix time.h tm structure.
                STRUCT
                STR_BYTE TM_SECS    ; Seconds [0,59]
                STR_BYTE TM_MINS    ; Minutes [0,59]
                STR_BYTE TM_HOURS   ; Hours [0,23]
                STR_BYTE TM_MDAY    ; Day of month [1,31]
                STR_BYTE TM_MON     ; Month of year [1,12]
                STR_BYTE TM_YEAR    ; Years since 1900 [70,255]
                STR_BYTE TM_WDAY    ; Day of week [0,6] (Sunday = 0)
                STR_WORD TM_YDAY    ; Day of year [0,365]
                STR_BYTE TM_DST     ; Daylight savings status
                STR_END TM_SIZE

; TM_DST can have any of the following values:
                ENUM_START
                ENUM TMDST_UNKNOWN
                ENUM TMDST_GMT      ; The time is GMT
                ENUM TMDST_DST      ; The time has DST applied (is one hour advanced)
                ENUM_END TMDST_NUM  ; Number of possible values

