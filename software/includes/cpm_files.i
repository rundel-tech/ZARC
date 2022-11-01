; *******************************************************
; * Utility Routines for CP/M Applications              *
; * Version: V1.0                                       *
; * Merlin Skinner, 16/12/2021                          *
; *******************************************************
;
; Note that ld80 only considers the first six characters of labels significant.
;
            ifndef CPMF         ; Inhibit for this module
                extern finit    ; Initialise FCBR structure
                extern fbfcb    ; Build FCB
                extern fdel     ; Delete file *
                extern fopen    ; Open existing file for R/W *
                extern fmake    ; Create new file *
                extern fwrrec   ; Write record to file *
                extern fwrby    ; Write byte to file *
                extern fwrblk   ; Write block to file *
                extern frdrec   ; Read record from file *
                extern frdby    ; Read byte from file *
                extern frdblk   ; Read block from file *
                extern fclose   ; Close file *
                extern fdfcb    ; Display FCB
                extern fdnam    ; Display filename
                extern fdswem   ; Display sequential write error message
                extern fdsrem   ; Display sequential read error message
            endif
;
; * Any errors are reported to the console.
;
; FCB with record buffer. This is used by the cpm_files routines.
                STRUCT
                STR_BLOCK FCBR_FCB, FCB_SIZE    ; FCB structure
                STR_BYTE FCBR_FLAGS             ; Status flags
                STR_BYTE FCBR_CONTENTS          ; No. of bytes in RBUFF (*)
                STR_BLOCK FCBR_RBUFF, CPM_SECTOR_SIZE   ; Record buffer
                STR_END FCBR_SIZE               ; Structure size
;
; Flags are active if the bit is zero.
BITDEF FCBR_FL_OPEN, 0          ; File is open
BITDEF FCBR_FL_DIRTY, 1         ; RBUFF contains data to write

