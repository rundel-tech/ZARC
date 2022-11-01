; *******************************************************
; * ZARC Monitor CP/M Definitions                       *
; * Written by: Merlin Skinner                          *
; * Date Started: 26/5/2020                             *
; *******************************************************
;
; Definitions related CP/M running under the monitor programme.
;
; Note that ld80 only considers the first six characters of labels significant.
;
; The following conditionals are intended to allow the same include file to be
; used in the defining module and elsewhere as required. Some includes are used
; for other applications than the monitor, such as the CP/M BIOS. In these cases,
; the extern and public statements are not desirable.
;
            ifdef monitor           ; Meaningful for monitor build only
                ifndef cpm          ; Inhibit for this module
; Constants
;
; Variables 
                extern cppags       ; CP/M page allocations
;
; Functions
                extern cpinit       ; Load and start CP/M
                extern cpmem        ; Allocate CP/M pages
;
                endif
            endif
;
;
;
; ****************
; * Memory Usage *
; ****************
;
;
; Note: memory banks are allocated by the monitor's initialisation code.
MMAP_CPM_PAGES      equ 4               ; Number of 16 kB pages
;
; The MS byte of INT_VEC_TABLE comes from the Z80 I register, and the LS byte
; from the FPGA. The 0xe0 offset is chosen to allow the table to reside at the
; top of memory (0xffe0 to 0xffff).
INT_VEC_TABLE   equ 0xffe0              ; Interrupt mode 2 vector table
;
; Copied from CP/M manual appendix A.
; MSIZE             equ 64              ; CP/M version memory size in kilobytes
;
; "BIAS" is the address offset from 0x3400 for memory systems other than 16 K.
;BIAS               equ (MSIZE-20) * 1024
CPM_BIAS            equ 0xa200          ; For CompuPro64K_CPM
CCP_START           equ 0x3400 + CPM_BIAS   ; Base of CCP
BDOS_START          equ CCP_START + 0x0806  ; Base of BDOS
BIOS_START          equ CCP_START + 0x1600  ; Base of BIOS
BIOS_CPM_START_SEC  equ 44              ; First CP/M sector of BIOS
BIOS_MAX_SIZE       equ 4096            ; 2 KB allocation for BIOS stored on MMC (ZARC)
TPA_START           equ 0x0100          ; Transient Programme Area
;
; Page zero.
IOBYTE              equ 0x0003          ; Intel I/O byte
CDISK               equ 0x0004          ; Current disk (0="A") & user no. (in high nibble)
FCB1                equ 0x005c          ; Default FCB 1
FCB2                equ 0x006c          ; Default FCB 2 (overwritten if FCB 1 is opened)
; Default 128-byte disk buffer, also filled with the command line when a transient
; is loaded under the CCP.
DEF_BUFFER          equ 0x80
DEF_BUFFER_SIZE     equ 0x80
;
; IOBYTE bit definitions.
IOB_CON_MASK        equ 0x03
IOB_RDR_MASK        equ 0x0c
IOB_PUN_MASK        equ 0x30
IOB_LST_MASK        equ 0xc0
;
; BIOS option bits.
BITDEF BIOS_OPT_DEBUG, 0                ; Enable BIOS debugging messages
BITDEF BIOS_OPT_NOINTS, 1               ; Disables interrupts (use basic I/O mode)
BITDEF BIOS_OPT_RAWCON, 2               ; Disables ADM-3A to VT-100 translation
;
;
;
; ***************
; * Disk System *
; ***************
;
;
CPM_SECTOR_SIZE     equ 128             ; CP/M disk sector size
NUM_DISKS           equ 16              ; Number of disk drives
NUM_DISKS_MAX       equ 16              ; Maximum number of disk drives
CPM_SYS_SIZE        equ 1024 * 1024     ; System area size (bytes)
CPM_DISK_SIZE       equ 1024 * 1024     ; Disk size (bytes)
FILENAME_SIZE       equ 8               ; Filename size
FILEEXT_SIZE        equ 3               ; File extension size
FILE_EOF            equ 0x1a            ; End of file (^Z)
MAX_USER            equ 15              ; Maximum user number
;
BDOS_READ_SEQ_EOF   equ 1               ; Sequential read EOF error code
;
; Disk Parameter Header (DPH) structure.
                STRUCT
                STR_WORD DPH_XLT        ; Address of sector translation table
                STR_WORD DPH_SCRATCH0   ; BDOS scratch area
                STR_WORD DPH_SCRATCH1
                STR_WORD DPH_SCRATCH2
                STR_WORD DPH_DIRBF      ; BDOS directory scratch area
                STR_WORD DPH_DPB        ; Pointer to DPB
                STR_WORD DPH_CSV        ; Pointer to the directory checksum vector
                STR_WORD DPH_ALV        ; Pointer to the allocation vector
                STR_END DPH_SIZE
;
;
; Disk Parameter Block (DPB) structure.
                STRUCT
                STR_WORD DPB_SPT        ; Number of 128-byte records per track
                STR_BYTE DPB_BSH        ; Block shift. 3 => 1k, 4 => 2k, 5 => 4k....
                STR_BYTE DPB_BLM        ; Block mask. 7 => 1k, 0Fh => 2k, 1Fh => 4k...
                STR_BYTE DPB_EXM        ; Extent mask
                STR_WORD DPB_DSM        ; Maximum block number
                STR_WORD DPB_DRM        ; Maximum directory entry number
                STR_BYTE DPB_AL0        ; Directory allocation bitmap
                STR_BYTE DPB_AL1
                STR_WORD DPB_CKS        ; Checksum vector size, 0 for a fixed disc
                STR_WORD DPB_OFF        ; Offset, number of reserved tracks
                STR_END DPB_SIZE
;
;
; Directory entry structure.
                STRUCT
                STR_BYTE DIRE_USER      ; User number. 0xe5 if entry unused
                STR_BLOCK DIRE_NAME, FILENAME_SIZE  ; Filename
                STR_BLOCK DIRE_TYP, FILEEXT_SIZE    ; File type
                STR_BYTE DIRE_EX        ; Extent counter, low byte (0-31)
                STR_BYTE DIRE_S1        ; Reserved, set to 0
                STR_BYTE DIRE_S2        ; Extent counter, high byte
                STR_BYTE DIRE_RC        ; Record count (low byte)
                STR_BLOCK DIRE_ALLOC, 16 ; Associated block numbers
                STR_END DIRE_SIZE
;
;
; File Control Block (FCB) structure.
                STRUCT
                STR_BYTE FCB_DRIVE      ; Drive. 0 for default, 1-16 for A-P
                STR_BLOCK FCB_NAME, FILENAME_SIZE   ; Filename in ASCII upper-case
                STR_BLOCK FCB_TYP, FILEEXT_SIZE     ; File type
                STR_BYTE FCB_EX         ; Current extent (*)
                STR_BYTE FCB_S1         ; Reserved (*)
                STR_BYTE FCB_S2         ; Reserved (*)
                STR_BYTE FCB_RC         ; Reserved (*)
                STR_BLOCK FCB_ALLOC, 16 ; Associated block numbers
                STR_BYTE FCB_CR         ; Current record within extent
                STR_BLOCK FCB_RECORD, 3 ; Record number (low byte first)
                STR_END FCB_SIZE
;
; * - Set this to 0 when opening a file and then leave it to CP/M. You can rewind
; a file by setting EX, RC, S2 and CR to 0.
;
;
;
; **************
; * BIOS Calls *
; **************
;
;
; Calculate offsets into jump tables. Entries here must match the jump table in
; the BIOS. The base address of the BIOS must be added to these addresses. A call
; routine might look like:
;
; Call BIOS, allowing for its unknown base address.
; Call with:
; BC - operand (depends on BIOS function called)
; DE - operand (depends on BIOS function called)
; HL - offset for the routine (e.g. BIOS_CONIN)
; call_bios       push de
;                 ex de, hl
;                 ld hl, (1)              ; Find WBOOT (warm boot) address
;                 add hl, de              ; Add offset
;                 pop de
;                 jp (hl)                 ; Jump to BIOS then return to caller
;
; The above method is a bit clumsy, but then application code shouldn't normally
; call the BIOS directly.
;
    JPTBL_START 0                   ; Generate offsets as BIOS_START isn't always known
;
; From monitor.z80
; Note - cold start routine omitted to align with use of address at (1) to find BIOS.
    JPTBL_ENTRY BIOS_WBOOT          ; Warm boot - reload command processor
    JPTBL_ENTRY BIOS_CONST          ; Console status
    JPTBL_ENTRY BIOS_CONIN          ; Console input
    JPTBL_ENTRY BIOS_CONOUT         ; Console output
    JPTBL_ENTRY BIOS_PLIST          ; Printer output
    JPTBL_ENTRY BIOS_PUNCH          ; Paper tape punch output
    JPTBL_ENTRY BIOS_READER         ; Paper tape reader input
    JPTBL_ENTRY BIOS_HOME           ; Move disc head to track 0
    JPTBL_ENTRY BIOS_SELDSK         ; Select disc drive
    JPTBL_ENTRY BIOS_SETTRK         ; Set track number
    JPTBL_ENTRY BIOS_SETSEC         ; Set sector number
    JPTBL_ENTRY BIOS_SETDMA         ; Set DMA address
    JPTBL_ENTRY BIOS_READ           ; Read a sector
    JPTBL_ENTRY BIOS_WRITE          ; Write a sector
; CP/M 2 functions.
    JPTBL_ENTRY BIOS_LISTST         ; Status of list device
    JPTBL_ENTRY BIOS_SECTRAN        ; Sector translation for skewing
; CP/M 3 functions (not supported yet). From https://www.seasip.info/Cpm/bios.html
    JPTBL_ENTRY BIOS_CONOST         ; Status of console output
    JPTBL_ENTRY BIOS_AUXIST         ; Status of auxiliary input
    JPTBL_ENTRY BIOS_AUXOST         ; Status of auxiliary output
    JPTBL_ENTRY BIOS_DEVTBL         ; Address of devices table
    JPTBL_ENTRY BIOS_DEVINI         ; Initialise a device
    JPTBL_ENTRY BIOS_DRVTBL         ; Address of discs table
    JPTBL_ENTRY BIOS_MULTIO         ; Read/write multiple sectors
    JPTBL_ENTRY BIOS_FLUSH          ; Flush host buffers
    JPTBL_ENTRY BIOS_MOVE           ; Move a block of memory
    JPTBL_ENTRY BIOS_TIME           ; Real time clock
    JPTBL_ENTRY BIOS_SELMEM         ; Select memory bank
    JPTBL_ENTRY BIOS_SETBNK         ; Select bank for DMA operation
    JPTBL_ENTRY BIOS_XMOVE          ; Preload banks for MOVE
    JPTBL_ENTRY BIOS_USERF          ; System-depedent functions
    JPTBL_ENTRY BIOS_RESERV1        ; Reserved
    JPTBL_ENTRY BIOS_RESERV2        ; Reserved
; ZARC-specific items.
    JPTBL_BLOCK BIOS_ID, 3          ; BIOS ID ("ZRC")
    JPTBL_BLOCK BIOS_VER, 3         ; Version (see below)
    JPTBL_ENTRY BIOS_STARTUP        ; CP/M startup entry point
    JPTBL_ENTRY BIOS_MON_CALL       ; Call monitor function
    JPTBL_ENTRY BIOS_SUPER          ; Set supervisor state
    JPTBL_ENTRY BIOS_INT_DISABLE    ; Disable interrupts and keep count
    JPTBL_ENTRY BIOS_INT_ENABLE     ; Enable interrupts if safe
    JPTBL_ENTRY BIOS_TIRD           ; Read time and date
    JPTBL_ENTRY BIOS_SET_TIMER      ; Set timer
    JPTBL_ENTRY BIOS_GET_TIMER      ; Get timer
;
    JPTBL_END BIOS_JPTBL_NEXT
;
; BIOS_VER is <reserved (zero)>, <major version>, <minor version>. The reserved
; byte may flag capabilities at some point.
;
;
;
; **************
; * BDOS Calls *
; **************
;
;
; From http://www.gaby.de/cpm/manuals/archive/cpm22htm/ch5.htm#Section_5.2
; In general, the function number is passed in register C with the information
; address in the double byte pair DE. Single byte values are returned in register
; A, with double byte values returned in HL. A zero value is returned when the
; function number is out of range. For reasons of compatibility, register A = L
; and register B = H upon return in all cases. Example call:
;   ld c, BDOS_CONIN    ; Read next character
;   call BDOS           ; Return character in A
;
BDOS        equ 5               ; BDOS entry point
;
BDOS_SYS_RST        equ 0       ; System Reset
BDOS_CON_IN         equ 1       ; Console Input
BDOS_CON_OUT        equ 2       ; Console Output
BDOS_RDR_IN         equ 3       ; Reader Input
BDOS_PUN_OUT        equ 4       ; Punch Output
BDOS_LST_OUT        equ 5       ; List Output
BDOS_DIRECT_CON_IO  equ 6       ; Direct Console I/O
BDOS_GET_IO_BYTE    equ 7       ; Get I/O Byte
BDOS_SET_IO_BYTE    equ 8       ; Set I/O Byte
BDOS_PRINT_STRING   equ 9       ; Print String
BDOS_READ_CON_BUFF  equ 10      ; Read Console Buffer
BDOS_GET_CON_STAT   equ 11      ; Get Console Status
BDOS_VERSION        equ 12      ; Return Version Number
BDOS_RESET_DISK_SYS equ 13      ; Reset Disk System
BDOS_SEL_DISK       equ 14      ; Select Disk
BDOS_OPEN_FILE      equ 15      ; Open File
BDOS_CLOSE_FILE     equ 16      ; Close File
BDOS_SEARCH_FIRST   equ 17      ; Search for First
BDOS_SEARCH_NEXT    equ 18      ; Search for Next
BDOS_DELETE_FILE    equ 19      ; Delete File
BDOS_READ_SEQ       equ 20      ; Read Sequential
BDOS_WRITE_SEQ      equ 21      ; Write Sequential
BDOS_MAKE_FILE      equ 22      ; Make File
BDOS_RENAME_FILE    equ 23      ; Rename File
BDOS_GET_LOGIN_VEC  equ 24      ; Return Login Vector
BDOS_GET_CURR_DISK  equ 25      ; Return Current Disk
BDOS_SET_DMA_ADDR   equ 26      ; Set DMA Address
BDOS_GET_ALLOC_ADDR equ 27      ; Get Addr (Alloc)
BDOS_WRITE_PROT     equ 28      ; Write Protect Disk
BDOS_GET_RO_VEC     equ 29      ; Get R/O Vector
BDOS_SET_FILE_ATTR  equ 30      ; Set File Attributes
BDOS_GET_DPB        equ 31      ; Get Addr (Disk Parms)
BDOS_GET_SET_USER   equ 32      ; Set/Get User Code
BDOS_READ_RANDOM    equ 33      ; Read Random
BDOS_WRITE_RANDOM   equ 34      ; Write Random
BDOS_GET_FILE_SIZE  equ 35      ; Compute File Size
BDOS_SET_RANDOM_REC equ 36      ; Set Random Record
BDOS_RESET_DRIVES   equ 37      ; Selectively reset disc drives
BDOS_WRITE_RAN_ZFILL equ 40     ; Write Random with Zero Fill

; Functions 28 and 32 should be avoided in application programs to maintain upward
; compatibility with CP/M.
;

