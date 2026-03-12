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
; Version
MAJ_VER         equ 2
MIN_VER         equ 0
;
; DEBUG           equ 1                   ; Define to enable debug messages
;
STACK_SIZE      equ 0x80                ; Stack space allocation
BREAK_CHAR      equ 'C' - 0x40
BLKLEN          equ 512                 ; Maximum data block size
FLUSH_TIMER     equ 0x8000              ; Receive buffer flush time
DIR_ENTRY_SIZE  equ FILENAME_SIZE + FILEEXT_SIZE    ; Size of each entry in packet
;
;
; Receive error codes.
                ENUM_START
                ENUM RXERR_OK           ; No error
                ENUM RXERR_BREAK        ; Break detected
                ENUM RXERR_ENC          ; 3 to 4 coding error
                ENUM RXERR_CRC          ; CRC error
                ENUM_END RXERR_NUM      ; Number of possible values
;
; Command line option flags. The order must match clopt_list in stran.z80.
BITDEF CLOPT_BUILD, 0                   ; Show build time
BITDEF CLOPT_VERBOSE, 1                 ; Enable debugging messages
BITDEF CLOPT_CON, 2                     ; Use CON: for data transfer
BITDEF CLOPT_AUX, 3                     ; Use AUX: for data transfer
BITDEF CLOPT_FORCE, 4                   ; Transfer even if identical
;
; Assorted flags.
BITDEF FLG_ZARC, 0                      ; Set if on a ZARC system
BITDEF FLG_CPM3, 1                      ; Set if running on CP/M 3.x
BITDEF FLG_AUXST, 2                     ; Set if AUX: status is available
BITDEF FLG_BREAK, 3                     ; Set if break character detected
BITDEF FLG_AUX, 4                       ; Set if using AUX: instead of CON:
BITDEF FLG_AUTO, 5                      ; Set if in auto-port mode
BITDEF FLG_TXB_VALID, 6                 ; Set if tx_packet_buf contains data
BITDEF FLG_DIR_END, 7                   ; Set if end of directory
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
                STR_BYTE PKT_TYPE       ; Packet type
                STR_WORD PKT_PSN        ; Packet Sequence Number
                STR_WORD PKT_LENGTH     ; Data length (0 to BLKLEN).
                STR_BLOCK PKT_DATA, BLKLEN  ; Data (PKT_LENGTH bytes)
; 1 or 2 bytes of padding to align to 3-byte boundary.
; 16-bit CRC
; 1 byte pad to align to 3-byte boundary.
                STR_END PKT_SIZE
;
; File descriptor block (for Tx and Rx file command packets).
                STRUCT
                STR_BYTE FDESC_DRIVE    ; Drive letter
                STR_BLOCK FDESC_NAME, 8 ; File name
                STR_BLOCK FDESC_EXT, 3  ; File extension
                STR_BLOCK FDESC_LEN, 4  ; File length (bytes)
                STR_BLOCK FDESC_ADLER, 4    ; Adler-32 checksum of entire file
                STR_BLOCK FDESC_CRC16, 2    ; CRC-16 (XMODEM) of entire file
                STR_END FDESC_SIZE
;
; PKT_TYPE can have any of the following values:
                ENUM_START
                ENUM PKTYP_NULL         ; Skip zero
                ENUM PKTYP_ACK          ; Positive acknowledgement
                ENUM PKTYP_NAK          ; Negative acknowledgement
                ENUM PKTYP_EXIT         ; Exit CP/M stran and return to CP/M
                ENUM PKTYP_TX           ; Transmit file (PC to CP/M)
                ENUM PKTYP_RX           ; Receive file (CP/M to PC)
                ENUM PKTYP_END          ; Normal end of transfer
                ENUM PKTYP_RESET        ; Reset (aborts any transfer)
                ENUM PKTYP_DIR          ; Read directory
                ENUM PKTYP_DATA         ; File data block
                ENUM PKTYP_DREQ         ; Request data block
                ENUM_END PKTYP_NUM      ; Number of possible values
; Zero is skipped to avoid a completely null packet appearing valid. This would
; have a zero checksum, so a string of nulls could cause confusion.
; Entries must match dh_types_msg in stran.z80.
;
; NAK reason codes:
                ENUM_START
                ENUM NAK_CRC            ; CRC error
                ENUM NAK_CMD            ; Unexpected command
                ENUM NAK_OPEN           ; Can’t open file
                ENUM NAK_RW_ERR         ; BDOS file read / write error
                ENUM NAK_BAD_DRIVE      ; Bad drive letter
                ENUM_END NAK_NUM        ; Number of possible values
;
; TX or TX command acknowledge packet codes are sent in the data field of the
; corresponding ACK. These determine whether or no a transfer is actually 
; required.
                ENUM_START
                ENUM TRA_IDENTICAL      ; Files are identical (skip transfer)
                ENUM TRA_FORCED         ; Forced (/f command line option)
                ENUM TRA_BAD_LEN        ; Bad file length
                ENUM TRA_LEN_MISMATCH   ; File lengths differ
                ENUM TRA_SUMS_ERROR     ; Error calculating checksums
                ENUM TRA_CRC_MISMATCH   ; CRC does not match
                ENUM TRA_ADL_MISMATCH   ; Adler-32 does not match
                ENUM_END TRA_NUM        ; Number of possible values

