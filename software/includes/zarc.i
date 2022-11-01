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
INT_SER1_TX_VEC     equ INT_SER1_TX_BIT ; Serial port 1 transmitter buffer is half full or less
INT_SER1_RX_VEC     equ INT_SER1_RX_BIT ; Serial port 1 receiver has data
INT_SER2_TX_VEC     equ INT_SER2_TX_BIT ; Serial port 2 transmitter buffer is half full or less
INT_SER2_RX_VEC     equ INT_SER2_RX_BIT ; Serial port 2 receiver has data
INT_TICK_VEC        equ INT_TICK_BIT    ; Regular timekeeping
;
MS_PER_TICK         equ 100             ; ms per tick
TICK_FREQ           equ 10              ; Tick rate in Hz
;

