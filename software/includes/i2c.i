; ***********************************
; * ZARC I2C Definitions            *
; * Written by: Merlin Skinner      *
; * Date Started: 23/7/2020         *
; ***********************************
;
; Definitions associated with the I2C (Inter-Integrated Circuit) master interface.
; Used for RTC (DS1672) initially, but it may turn out to have other uses.
;
; I2C error codes.
I2C_ERR_OK      equ 0           ; No error
I2C_ERR_BUSY    equ 1           ; Master interface stuck busy
I2C_ERR_LB      equ 2           ; Loopback error
I2C_ERR_NACK    equ 3           ; No acknowledge from receiving device
I2C_ERR_RTC     equ 4           ; No valid time from RTC
;
RTC_I2C_ADDR    equ 1101000b    ; DS1672 7-bit I2C device address
;
; The register map is defines as a structure.
                STRUCT
                STR_BYTE RTC_COUNT0_REG     ; LS byte of counter
                STR_BYTE RTC_COUNT1_REG
                STR_BYTE RTC_COUNT2_REG
                STR_BYTE RTC_COUNT3_REG     ; MS byte of counter
                STR_BYTE RTC_CTRL_REG       ; Control register
                STR_BYTE RTC_TRICKLE_REG    ; Trickle charger control register
                STR_END RTC_SIZE

