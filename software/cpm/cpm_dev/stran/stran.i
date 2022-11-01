; *******************************************************
; * Serial File Transfer for ZARC Z80 Computer (STran)  *
; * Include file                                        *
; * Written by: Merlin Skinner                          *
; * Date Started: 22/3/2021                             *
; *******************************************************
;
;
;
; *************
; * Constants *
; *************
;
;
;DEBUG           equ 1               ; Define to enable debug messages
;
STACK_SIZE      equ 64              ; Stack space allocation
BREAK_CHAR      equ 'C' - 0x40
BLKLEN          equ 512             ; Maximum data block size
FLUSH_TIMER     equ 0xffff          ; Receive buffer flush time
;
; Receive error codes.
                ENUM_START
                ENUM RXERR_OK       ; No error
                ENUM RXERR_BREAK    ; Break detected
                ENUM RXERR_ENC      ; 3 to 4 coding error
                ENUM RXERR_CRC      ; CRC error
                ENUM_END RXERR_NUM  ; Number of possible values
;
;
;
;
; **************
; * Structures *
; **************
;
;
; Packet format (header).
                STRUCT
; Start of packet "*" is hard coded, and not stored in the structure.
                STR_BYTE PKT_TYPE   ; Packet type
                STR_WORD PKT_PSN    ; Packet Sequence Number
                STR_WORD PKT_LENGTH ; Data length (0 to BLKLEN).
                STR_BLOCK PKT_DATA, BLKLEN  ; Data (PKT_LENGTH bytes)
; 1 or 2 bytes of padding to align to 3-byte boundary.
; 16-bit CRC
; 1 byte pad to align to 3-byte boundary.
                STR_END PKT_SIZE
;
; File path (for command packets).
                STRUCT
                STR_BYTE FPTH_DRIVE     ; Drive letter
                STR_BLOCK FPTH_NAME, 8  ; File name
                STR_BLOCK FPTH_EXT, 3   ; File extension
                STR_END FPTH_SIZE
;
; PKT_TYPE can have any of the following values:
                ENUM_START
                ENUM PKTYP_NULL     ; Skip zero
                ENUM PKTYP_ACK      ; Positive acknowledgement
                ENUM PKTYP_NAK      ; Negative acknowledgement
                ENUM PKTYP_EXIT     ; Exit CP/M stran and return to CP/M
                ENUM PKTYP_TX       ; Transmit file (PC to CP/M)
                ENUM PKTYP_RX       ; Receive file (CP/M to PC)
                ENUM PKTYP_END      ; Normal end of transfer
                ENUM PKTYP_ABORT    ; Abort transfer
                ENUM PKTYP_DIR      ; Read directory
                ENUM_END PKTYP_NUM  ; Number of possible values
; Zero is skipped to avoid a completely null packet appearing valid. This would
; have a zero checksum, so a string of nulls could cause confusion.
;
; NAK reason codes:
                ENUM_START
                ENUM NAK_CRC        ; CRC error
                ENUM NAK_PSN        ; Unexpected PSN
                ENUM NAK_CMD        ; Unexpected command
                ENUM NAK_OPEN       ; Can’t open file
                ENUM NAK_RW_ERR     ; BDOS file read / write error
                ENUM NAK_NO_TRAN    ; Abort when no transfer is underway
                ENUM_END NAK_NUM    ; Number of possible values

