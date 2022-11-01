; *******************************************
; * ZARC Monitor Memory Card Include File   *
; * Written by: Merlin Skinner              *
; * Date Started: 7/8/2020                  *
; *******************************************
;
;
; Note that ld80 only considers the first six characters of labels significant.
;
; The following conditionals are intended to allow the same include file to be
; used in the defining module and elsewhere as required. Some includes are used
; for other applications than the monitor, such as the CP/M BIOS. In these cases,
; the extern and public statements are not desirable.
;
            ifdef monitor           ; Meaningful for monitor build only
                ifndef mmc          ; Inhibit for this module
; Functions
                extern mcinit       ; Initialise memory card
                extern mcprer       ; Print memory card error text
                extern mcrrs        ; Raw read sector
                extern mcrws        ; Raw write sector
; Variables
                extern mcstat       ; Card state (MC_STAT_xxx)
;
                endif
            endif
;
;
MMC_SECTOR_SIZE             equ 512     ; Sector size
MMC_LOG2_SEC_SIZE           equ 9       ; Save number of shifts for above
MMC_CMD_START               equ 0x40    ; Command start bits (01b) shifted for
                                        ; command byte
MMC_CMD_STOP                equ 0x01    ; Stop bit (in CRC byte)
;
;
; Card state (mcstat) states.
                ENUM_START
                ENUM MMC_STAT_IDLE      ; Not initialised
                ENUM MMC_STAT_INIT      ; Initialised (can do raw read / writes)

                ENUM_END MC_STATES  ; Number of states
;
;
; Memory card command structure
                STRUCT
                STR_BYTE MMC_CMD    ; Command including start bits
                STR_BYTE MMC_ARG1   ; Arguments
                STR_BYTE MMC_ARG2   ; Arguments
                STR_BYTE MMC_ARG3   ; Arguments
                STR_BYTE MMC_ARG4   ; Arguments
                STR_BYTE MMC_CRC    ; CRC and stop bit
                STR_END MMC_SIZE
;
;
; SPI mode commands (CMDn from MMC-System-Spec-v3.31.pdf chapter 4.9).
MMC_CMD_GO_IDLE_STATE       equ 0   ; Resets the memory card
MMC_CMD_SEND_OP_COND        equ 1   ; Sends host capacity support information and init.
MMC_CMD_SEND_CSD            equ 9   ; Read card specific data
MMC_CMD_SEND_CID            equ 10  ; Read card identification
MMC_CMD_SEND_STATUS         equ 13  ; Read card status register
MMC_CMD_SET_BLOCKLEN        equ 16  ; Set block length (in bytes)
MMC_CMD_READ_SINGLE_BLOCK   equ 17  ; Reads a block
MMC_CMD_WRITE_BLOCK         equ 24  ; Writes a block
MMC_CMD_APP_CMD             equ 55  ; Next command is an application specific command
MMC_CMD_CRC_ON_OFF          equ 59  ; Turns the CRC option on or off
;
; The list describes all the application specific commands supported/reserved by the 
; memory card. All the following commands shall be preceded with APP_CMD (CMD55).
MMC_ACMD_MC_SEND_OP_COND    equ 41  ; Sends host capacity support information and init
;
; R1 response bits
BITDEF MMC_R1_IDLE, 0           ; In idle state
BITDEF MMC_R1_ERA_RST, 1        ; Erase reset
BITDEF MMC_R1_ILL_CMD, 2        ; Illegal command
BITDEF MMC_R1_CMD_CRC_ERR, 3    ; Command CRC error
BITDEF MMC_R1_ERA_SEQ_ERR, 4    ; Erase sequence error
BITDEF MMC_R1_ADDR_ERR, 5       ; Address error
BITDEF MMC_R1_PAR_ERR, 6        ; Parameter error
BITDEF MMC_R1_START, 7          ; Zero identifies an R1 response
;
;
MMC_CID_PNM_SIZE      equ 6   ; Product name length (bytes)
;
; Card IDentification (CID) register (128 bits)
                STRUCT
                STR_BYTE MMC_CID_MID    ; Manufacturer ID
                STR_WORD MMC_CID_OID    ; OEM/Application ID
                STR_BLOCK MMC_CID_PNM, MMC_CID_PNM_SIZE ; Product name
                STR_BYTE MMC_CID_PRV    ; Product revision
                STR_LONG MMC_CID_PSN    ; Product serial number
                STR_BYTE MMC_CID_MDT    ; Manufacturing date
                STR_BYTE MMC_CID_CRC    ; CRC7 checksum and "1"
                STR_END MMC_CID_SIZE
;
;
; Card-Specific Data (CSD) register (128 bits). It contains a number of bit fields
; that aren't necessarily byte aligned. In these cases, the entries simply identify
; the bit numbers contained.
                STRUCT
                STR_BYTE MMC_CSD_VERSION    ; (127-120) CSD version, spec version
                STR_BYTE MMC_CSD_TAAC       ; (119-112) data read access-time-1
                STR_BYTE MMC_CSD_NSAC       ; (111-104) data read access-time-2
                STR_BYTE MMC_CSD_TR_SPD     ; (103-96) max. data transfer rate
                STR_BYTE MMC_CSD_95_88      ; Card command classes (MS 8 bits)
                STR_BYTE MMC_CSD_87_80      ; CCC (LS bits) and max. read data length
                STR_BYTE MMC_CSD_79_72      ; Flags and C_SIZE bits 10 and 11
                STR_BYTE MMC_CSD_71_64      ; C_SIZE bits 2 to 9
                STR_BYTE MMC_CSD_63_56      ; C_SIZE bits 1 to 0 and some currents
                STR_BYTE MMC_CSD_55_48      ; Currents & C_SIZE_MULT (MS 2 bits)
                STR_BYTE MMC_CSD_47_40      ; C_SIZE_MULT (LS bit) and erase size (part)
                STR_BYTE MMC_CSD_39_32      ; Erase size (part) and WP group size
                STR_BYTE MMC_CSD_31_24      ; WP group enable, ECC and write parameters (part)
                STR_BYTE MMC_CSD_23_16      ; Write block lenth (part) and reserved
                STR_BYTE MMC_CSD_15_8       ; Flags
                STR_BYTE MMC_CSD_CRC        ; CRC7 checksum and "1"
                STR_END MMC_CSD_SIZE

