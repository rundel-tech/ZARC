; *******************************************************
; * ZARC Monitor Definitions                            *
; * Written by: Merlin Skinner                          *
; * Date Started: 26/5/2020                             *
; *******************************************************
;
; Definitions related to the monitor programme.
;
; Note that ld80 only considers the first six characters of labels significant.
;
;
; The following conditionals are intended to allow the same include file to be
; used in the defining module and elsewhere as required. Some includes are used
; for other applications than the monitor, such as the CP/M BIOS. In these cases,
; the extern and public statements are not desirable.
;
            ifdef monitor           ; Meaningful for monitor build only
                ifndef main         ; Inhibit for this module
; Constants
;
; Variables 
                extern tikcnt       ; Tick counter
;
; Functions
                extern panic        ; System error exception
                extern rusby        ; Read byte from user space
                extern ruswd        ; Read 16-bit word from user space
                extern wusby        ; Write byte to user space
                extern wuswd        ; Write 16-bit word to user space
;
                endif
            endif
;
;
;
; *****************
; * Monitor Calls *
; *****************
;
;
; Calculate offsets into jump tables. Entries here must match the jump table in
; monitor.z80.
    JPTBL_START %(Z80_NMI_VEC + 3)   ; Start after NMI vector
;
; From monitor.z80
    JPTBL_ENTRY MCALL_MON_ENTRY     ; Normal monitor entry
    JPTBL_ENTRY MCALL_PANIC         ; System error monitor entry
; From io.z80
    JPTBL_ENTRY MCALL_CONWCH        ; Write character to the console port
    JPTBL_ENTRY MCALL_CONRCH        ; Read character from the console port
    JPTBL_ENTRY MCALL_CONSTA        ; Fetch console port status
    JPTBL_ENTRY MCALL_S1WCH         ; Write character to serial port 1
    JPTBL_ENTRY MCALL_S1RCH         ; Read character from serial port 1
    JPTBL_ENTRY MCALL_S1STA         ; Fetch serial port 1 status
    JPTBL_ENTRY MCALL_S2WCH         ; Write character to serial port 2
    JPTBL_ENTRY MCALL_S2RCH         ; Read character from serial port 2
    JPTBL_ENTRY MCALL_S2STA         ; Fetch serial port 2 status
; From utility.z80
    JPTBL_ENTRY MCALL_CWNWLN        ; Write new line characters to console
    JPTBL_ENTRY MCALL_CONWMS        ; Print null-terminated string to the console
    JPTBL_ENTRY MCALL_CONWMN        ; Print message <n> in a list
    JPTBL_ENTRY MCALL_SKPSPC        ; Step hl past spaces
    JPTBL_ENTRY MCALL_TOUPCA        ; Convert character in A to upper case
    JPTBL_ENTRY MCALL_TOLOCA        ; Convert character in A to lower case
    JPTBL_ENTRY MCALL_CWVICH        ; Print only visible 7-bit characters
    JPTBL_ENTRY MCALL_CWPSPC        ; Print a space
    JPTBL_ENTRY MCALL_MTWDLI        ; Match word in a string against list of options
    JPTBL_ENTRY MCALL_CWPHNB        ; Print least-significant nibble in A in hexadecimal
    JPTBL_ENTRY MCALL_CWPHBY        ; Print A in hexadecimal
    JPTBL_ENTRY MCALL_CWPHWD        ; Print HL in hexadecimal
    JPTBL_ENTRY MCALL_CWPDBY        ; Print A in decimal. Leading zeros are suppressed.
    JPTBL_ENTRY MCALL_CWPDWD        ; Print HL in decimal. Leading zeros are suppressed.
    JPTBL_ENTRY MCALL_CWPDLO        ; Print DEHL in decimal. Leading zeros are suppressed
    JPTBL_ENTRY MCALL_RDHXWD        ; Read a 16-bit hexadecimal number from a string
    JPTBL_ENTRY MCALL_RDDUWD        ; Read a 16-bit unsigned decimal number from a string
    JPTBL_ENTRY MCALL_RDDULO        ; Read a 32-bit unsigned decimal number from a string
; From maths.z80
    JPTBL_ENTRY MCALL_MADLBU        ; 32-bit / 8-bit unsigned divide
    JPTBL_ENTRY MCALL_MADWBU        ; 16-bit / 8-bit unsigned divide
    JPTBL_ENTRY MCALL_MADBBU        ; 8-bit / 8-bit unsigned divide
    JPTBL_ENTRY MCALL_MAMWWU        ; 16-bit * 16-bit unsigned multiply
    JPTBL_ENTRY MCALL_MAMLBU        ; 32-bit * 8-bit unsigned multiply
    JPTBL_ENTRY MCALL_CRC16X        ; CRC-16 (XMODEM)
; From time.z80
    JPTBL_ENTRY MCALL_TIRD          ; Read current time and date
    JPTBL_ENTRY MCALL_TIWR          ; Set time and date
    JPTBL_ENTRY MCALL_TIITOS        ; Convert integer time to structure
    JPTBL_ENTRY MCALL_TISTOI        ; Convert structure time to integer
    JPTBL_ENTRY MCALL_CWPTM         ; Print time structure to console
; From mmc.z80
    JPTBL_ENTRY MCALL_MCPRER        ; Print memory card error text
; From cache.z80
    JPTBL_ENTRY MCALL_CACRS         ; CP/M read sector
    JPTBL_ENTRY MCALL_CACWS         ; CP/M write sector
    JPTBL_ENTRY MCALL_CAFLUS        ; Flush cache (write dirty buffers)
; From memory.z80
    JPTBL_ENTRY MCALL_MPALL         ; Allocate new page
    JPTBL_ENTRY MCALL_MPFREE        ; Free allocated page
    JPTBL_ENTRY MCALL_MPSTAT        ; Allocation status
;
    JPTBL_END MCALL_JPTBL_NEXT
;
;
;
; **************
; * Structures *
; **************
;
;
; Machine state structure.
                STRUCT
                STR_BYTE MST_IEN        ; Non-zero if interrupts enabled
                STR_BYTE MST_MMAP_EN    ; Non-zero if memory mapping enabled
                STR_BYTE MST_MMAP0      ; Memory mapping registers
                STR_BYTE MST_MMAP1
                STR_BYTE MST_MMAP2
                STR_BYTE MST_MMAP3
                STR_WORD MST_SP
                STR_WORD MST_PC
; The sequence of the following entries must match those in the state save and
; load routines.
                STR_WORD MST_IY
                STR_WORD MST_IX
                STR_WORD MST_HL_P
                STR_WORD MST_DE_P
                STR_WORD MST_BC_P
                STR_WORD MST_AF_P       ; Alternate ("prime") registers
                STR_WORD MST_HL
                STR_WORD MST_DE
                STR_WORD MST_BC
                STR_WORD MST_AF
; End of sequence critical entries.
                STR_BYTE MST_I
                STR_BYTE MST_R
                STR_END MST_SIZE
;
;
;
; *************
; * Constants *
; *************
;
;
; Trace mode states for trace_mode.
                ENUM_START
                ENUM TRM_NONE
                ENUM TRM_SINGLE
                ENUM TRM_TO_ADDR        ; Trace to address
                ENUM TRM_XPT            ; Exception - start running normally
                ENUM_END TRM_STATES     ; Number of states

