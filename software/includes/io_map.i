; ***********************************
; * ZARC I/O Definitions            *
; * Written by: Merlin Skinner      *
; * Date Started: 3/9/2019          *
; ***********************************

; *** I/O register address mapping ***

; This should be kept in sync with the Definitions.vhd package file.
IOA_FPGA_MAJREV equ 0x00        ; FPGA major revision
IOA_FPGA_MINREV equ 0x01        ; FPGA minor revision
IOA_CONTROL     equ 0x02        ; System control register
IOA_FP_SW       equ 0x03        ; Front panel data switches

; Paging
IOA_MMAP_0      equ 0x04        ; Page, supervisor and protection for bank 0 (0x0000 to 0x3fff)
IOA_MMAP_1      equ 0x05        ; Page, supervisor and protection for bank 1 (0x4000 to 0x7fff)
IOA_MMAP_2      equ 0x06        ; Page, supervisor and protection for bank 2 (0x8000 to 0xbfff)
IOA_MMAP_3      equ 0x07        ; Page, supervisor and protection for bank 3 (0xc000 to 0xffff)

; Interrupts
; Note: Up to eight interrupts are supported. IM 2 is anticipated, and the
; fixed vector associated with each interrupt is supplied when the interrupt
; is serviced. Routine address is “I*256+databus”. Vector supplied is
; 0xe0 + 2 * interrupt number (0 to 7).
; Note: addresses 0x09 and 0x0b reserved for use if more than eight interrupt
; sources are required.
IOA_INT_EN      equ 0x08        ; Enables
IOA_INT_PEND    equ 0x0a        ; Pending interrupts
;
;NMI
IOA_NMI_REASONS equ 0x0c        ; NMI reasons flags
;
; Serial.
IOA_SER1_CSR    equ 0x10        ; Port 1 control / status
IOA_SER1_DATA   equ 0x11        ; Port 1 data
IOA_SER2_CSR    equ 0x12        ; Port 2 serial control / status
IOA_SER2_DATA   equ 0x13        ; Port 2 serial data

; RTC (DS1672)
; I2C, implemented using a byte interface to the CPU. Writing to the data port
; shifts out a byte. Input puts are shifted into the “other end” of the same
; register.
IOA_I2C_CSR     equ 0x18        ; Control
IOA_I2C_DATA    equ 0x19        ; Data
;
; SD Card
; Uses SPI mode, with a generally similar interface to that of the I2C.
IOA_SPI_CSR     equ 0x20        ; Control
IOA_SPI_DATA    equ 0x21        ; Data

; CRC16 / XMODEM and MultiMediaCard CRC16
; Write to the CRC register to set the initial value. Writing to the input
; data register updates the CRC.
IOA_CRC_0       equ 0x24        ; CRC register (low)
IOA_CRC_1       equ 0x25        ; CRC register (high)
IOA_CRC_DATA    equ 0x26        ; Input data

; *** Proposed features ***
; Video
;IOA_VID_CTRL    equ 0x30;       ; Control (cursor on/off ...)
;IOA_VID_DATA    equ 0x31;       ; Data
;IOA_VID_CUR_X   equ 0x32;       ; Cursor X (0 to 127)
;IOA_VID_CUR_Y   equ 0x33;       ; Cursor Y (0 to 63)
;IOA_VID_START_L equ 0x34        ; Display start address (low byte)
;IOA_VID_START_H equ 0x35        ; Display start address (high byte)

; Video palette
; Each entry consists of 6 bits of colour data. Foreground and background
; colour pairs are selected from the above palette using eight of the 22
; control codes in the display character set. This leaves codes for
; double-height, double-width etc.
;IOA_VID_PALBG0  equ 0x40        ; Background colour 0
;IOA_VID_PALFG0  equ 0x41        ; Foreground colour 0
;IOA_VID_PALBG1  equ 0x42        ; Background colour 1
;IOA_VID_PALFG1  equ 0x43        ; Foreground colour 1
;IOA_VID_PALBG2  equ 0x44        ; Background colour 2
;IOA_VID_PALFG2  equ 0x45        ; Foreground colour 2
;IOA_VID_PALBG3  equ 0x46        ; Background colour 3
;IOA_VID_PALFG3  equ 0x47        ; Foreground colour 3
;IOA_VID_PALBG4  equ 0x48        ; Background colour 4
;IOA_VID_PALFG4  equ 0x49        ; Foreground colour 4
;IOA_VID_PALBG5  equ 0x4a        ; Background colour 5
;IOA_VID_PALFG5  equ 0x4b        ; Foreground colour 5
;IOA_VID_PALBG6  equ 0x4c        ; Background colour 6
;IOA_VID_PALFG6  equ 0x4d        ; Foreground colour 6
;IOA_VID_PALBG7  equ 0x4e        ; Background colour 7
;IOA_VID_PALFG7  equ 0x4f        ; Foreground colour 7

; Arithmetic
; Multiply, divide … based on 68000 DIV, DIVU, MUL, MULU.
; Multiply does A[16] * B[16] => C[32].
; Divide does A[32] / B[16] => C[32] (16-bit remainder [high bits] and
; 16-bit quotient [low bits]).
; Status bits include “complete” and “overflow”.
;IOA_ARITH_A_L   equ 0x50        ; A register (low)
;IOA_ARITH_A_H   equ 0x51        ; A register (high)
;IOA_ARITH_B_L   equ 0x54        ; B register (low)
;IOA_ARITH_B_H   equ 0x57        ; B register (high)
;IOA_ARITH_C_0   equ 0x58        ; C register (low)
;IOA_ARITH_C_1   equ 0x59 
;IOA_ARITH_C_2   equ 0x5a
;IOA_ARITH_C_3   equ 0x5b        ; C register (high)
;IOA_ARITH_CSR   equ 0x5c        ; Command / status


; *** Register bits allocation ***

; IOA_CONTROL register
BITDEF SYSCTRL_TRARM, 0         ; 1 arms the trace interrupt
BITDEF SYSCTRL_MMAP, 1          ; 1 enables memory mapping
BITDEF SYSCTRL_NMCLR, 2         ; NMI mapping clear
BITDEF SYSCTRL_MAPARM, 3        ; NMI out arm
BITDEF SYSCTRL_MMAPN, 4         ; State of MMAP when an NMI occurred
BITDEF SYSCTRL_TRPRE0, 5        ; Number of prefixes for trace
BITDEF SYSCTRL_TRPRE1, 6
BITDEF SYSCTRL_RESERVED, 7      ; Unused bit
;
; MMAP page registers
BITDEF MMAP_PROT, 7             ; Write protection
BITDEF MMAP_SUPER, 6            ; I/O enable
MMAP_PAGE_MASK  equ 0x3f        ; RAM page number bits
;
; IOA_INT_EN and IOA_INT_PEND registers.
INTS_NUM        equ 8           ; Number of possible interrupt sources
BITDEF INT_SER1_TX, 0           ; Serial port 1 transmitter buffer is half full or less
BITDEF INT_SER1_RX, 1           ; Serial port 1 receiver has data
BITDEF INT_SER2_TX, 2           ; Serial port 2 transmitter buffer is half full or less
BITDEF INT_SER2_RX, 3           ; Serial port 2 receiver has data
BITDEF INT_TICK, 4              ; Regular timekeeping
;
; IOA_NMI_REASONS register.
NMI_REASONS_NUM equ 4           ; Number of reasons for an NMI
BITDEF NMI_SWITCH, 0;           ; Front panel switch
BITDEF NMI_PROT_VIOL, 1;        ; Write protection violation
BITDEF NMI_SUPER_VIOL, 2;       ; Supervisor violation
BITDEF NMI_TRACE, 3;            ; Debugger trace (single step)
NMI_REASONS_ALL equ NMI_SWITCH_MASK + NMI_PROT_VIOL_MASK + NMI_SUPER_VIOL_MASK + NMI_TRACE_MASK
;
; Serial CSRs (IOA_SER1_CSR and IOA_SER2_CSR).
BITDEF SER_CSR_RX_EMPTY, 0      ; Receiver buffer is empty
BITDEF SER_CSR_RX_ALHALF, 1     ; Receiver buffer is at least half full
BITDEF SER_CSR_RX_FULL, 2       ; Receiver buffer is full
BITDEF SER_CSR_FRAME_ERR, 3     ; Framing error in last character
BITDEF SER_CSR_TX_EMPTY, 4      ; Transmitter buffer is empty
BITDEF SER_CSR_TX_ALHALF, 5     ; Transmitter buffer is at least half full
BITDEF SER_CSR_TX_FULL, 6       ; Transmitter buffer is full
; Bit 7 is not used.
;
; I2C (Inter-Integrated Circuit) master interface. Used for RTC (DS1672).
; Bits in IOA_I2C_CSR
BITDEF I2C_CSR_ACKN, 0          ; (Read / write) acknowledge from receiving device
BITDEF I2C_CSR_START, 1         ; (Write only) trigger start sequence
BITDEF I2C_CSR_STOP, 2          ; (Write only) trigger stop sequence
BITDEF I2C_CSR_BUSY, 7          ; (Read only) transceiver busy
;
; SPI (Serial Peripheral Interface) master interface. Used for memory card.
; Bits in IOA_SPI_CSR
BITDEF SPI_CSR_FAST, 0          ; (Read / write) SPI speed select
BITDEF SPI_CSR_MC_SS, 1         ; (Read / write) memory card slave select
BITDEF SPI_CSR_BUSY, 7          ; (Read only) transceiver busy

