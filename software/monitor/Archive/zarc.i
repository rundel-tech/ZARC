; ***********************************
; * ZARC Definitions                *
; * Written by: Merlin Skinner      *
; * Date Started: 26/5/2020         *
; ***********************************
;
; Definitions related to the ZARC system.
;
;
; ************
; * Hardware *
; ************
;
; Interrupt vector numbers in INT_VEC_TABLE.
; Address is INT_VEC_TABLE + 2 * vector number).
INT_CON_TX_VEC  equ INT_CON_TX_BIT  ; Console transmitter buffer is half full or less
INT_CON_RX_VEC  equ INT_CON_RX_BIT  ; Console receiver has data
INT_AUX_TX_VEC  equ INT_AUX_TX_BIT  ; Auxiliary transmitter buffer is half full or less
INT_AUX_RX_VEC  equ INT_AUX_RX_BIT  ; Auxiliary receiver has data
INT_TICK_VEC    equ INT_TICK_BIT    ; Regular timekeeping
;
MS_PER_TICK     equ 100             ; ms per tick
TICK_FREQ       equ 10              ; Tick rate in Hz
;
; Memory map
MMAP_PAGE_SIZE  equ 0x4000      ; Memory mapping bank / page size
MMAP_BANKS      equ 4           ; Number of 16 kB banks
MMAP_PAGES      equ 0x40        ; Number of 16 kB RAM pages
;
;
; ************
; * Software *
; ************
;
; The MS byte of INT_VEC_TABLE comes from the Z80 I register, and the LS byte
; from the FPGA. The 0xe0 offset is chosen to allow the table to reside at the
; top of memory (0xffe0 to 0xffff).
INT_VEC_TABLE   equ 0xffe0      ; Interrupt mode 2 vector table
;
XPT_STACK_TOP   equ INT_VEC_TABLE - 1   ; Top of exception stack (just below INT_VEC_TABLE)
STACK_TOP       equ INT_VEC_TABLE - 64  ; Top of monitor stack
;
; Memory map
MMAP_MON_PAGE0  equ 0x3f        ; Page for MMAP 0 when monitor is running
MMAP_MON_PAGE3  equ 0x3e        ; Page for MMAP 3 when monitor is running
; Time
TICK_CNT_BYTES  equ 4           ; Length of tick_counter in bytes
;
;
;
; **********
; * Macros *
; **********
;
;
; 
; Invoke to initialise enumeration.
ENUM            macro x
enum_offset     set 0
                endm
;
; Invoke for each item.
ENUM_ITEM       macro x
x               set enum_offset
enum_offset     set enum_offset + 1
                endm
;
;
; *****************
; * Monitor Calls *
; *****************
;
; The monitor uses RST 08 to call some functions. The byte following identifies
; the function required.
MCALL           macro func
                rst 08          ; Function entry point
                byte func
                endm
;
; Function codes associated with the mcall macro. This must correspond to the
; entry point table at callm_table.
MC_CONW_CH      equ 0           ; conwch: Write character in A to the console
MC_CONR_CH      equ 1           ; conrch: Read character from the console and return it in A
MC_I2C_WR       equ 2           ; i2cwr: Write to I2C device
MC_I2C_RD       equ 3           ; i2crd: Read from I2C device
;
; From utility.z80
MC_CONW_NLN     equ 4           ; cwnwln: Write new line characters to console
MC_CONW_STR     equ 5           ; conwms: Print null-terminated string to the console
MC_CONW_MSGN    equ 6           ; conwmn: Print message <n> in a list
MC_SKIP_SPCS    equ 7           ; skpspc: Step hl past spaces
MC_TOUPPER      equ 8           ; toupca: Convert character in A to upper case
MC_CONW_VIS     equ 9           ; cwvich: Print only visible 7-bit characters
MC_CONW_SPC     equ 10          ; cwpspc: Print a space
MC_MAT_WORD     equ 11           ; mtwdli: Match word in a string against list of options
MC_CONW_HNIB    equ 12          ; cwphnb: Print least-significant nibble in A in hexadecimal
MC_CONW_HNBY    equ 13          ; cwphby: Print A in hexadecimal
MC_CONW_HNWD    equ 14          ; cwphwd: Print HL in hexadecimal
MC_CONW_DNBY    equ 15          ; cwpdby: Print A in decimal. Leading zeros are suppressed.
MC_CONW_DNWD    equ 16          ; cwpdwd: Print HL in decimal. Leading zeros are suppressed.
MC_READ_HWD     equ 17          ; rdhxwd: Read a 16-bit hexadecimal number from a string
; From maths.z80
MC_DIV328U      equ 18          ; mad328u: 32-bit / 8-bit unsigned divide
MC_DIV168U      equ 19          ; mad168u: 16-bit / 8-bit unsigned divide
MC_DIV88U       equ 20          ; mad88u: 8-bit / 8-bit unsigned divide
;
; From interrupts.z80
MC_INT_EN       equ 21          ; itena: Enable interrupts if safe
MC_INT_DIS      equ 22          ; itdis: Disable interrupts and keep count
;
; From time.z80
MC_TIM_READRTC  equ 23          ; tirrtc: read time from RTC hardware
MC_TIM_WRITERTC equ 24          ; tiwrtc: write time to RTC hardware

;
MCALL_LAST_FUNC equ 24          ; Last function number
