; ***********************************
; * ZARC Basic I/O Extern Symbols   *
; * Written by: Merlin Skinner      *
; * Date Started: 16/5/2020         *
; ***********************************
;
; Note that ld80 only considers the first six characters of labels significant.

; The following conditionals are intended to allow the same include file to be
; used in the defining module and elsewhere as required. Some includes are used
; for other applications than the monitor, such as the CP/M BIOS. In these cases,
; the extern and extern statements are not desirable.
;
            ifdef monitor           ; Meaningful for monitor build only
                ifndef io           ; Inhibit for this module
;
                ; Variables
                extern coport   ; Current console port (PRT_xxx)
                extern trport   ; Current data transfer port (PRT_xxx)
;
                ; Routines
                extern conwch   ; Write character to the console
                extern conrch   ; Read character from the console
                extern consta   ; Fetch console port status
                extern trawch   ; Write character to the data transfer port
                extern trarch   ; Read character from the data transfer port
                extern s1wch    ; Write character to serial port 1
                extern s1rch    ; Read character from serial port 1
                extern s1sta    ; Fetch serial port 1 status
                extern s2wch    ; Write character to serial port 2
                extern s2rch    ; Read character from serial port 2
                extern s2sta    ; Fetch serial port 2 status
                extern i2cwr    ; Write to I2C device
                extern i2crd    ; Read from I2C device
                extern spiini   ; Initialise SPI interface and set speed
                extern spiss    ; Set SPI slave select(s)
                extern spitr    ; Transfer byte to / from SPI device
;
                endif
            endif
;
;
; Port enumeration. Used for console and transfer port selection. Definitions must
; match names in prt_name_list (monitor.z80).
                ENUM_START
                ENUM PORT_SER1          ; Serial port 1
                ENUM PORT_SER2          ; Serial port 2
                ENUM_END PORT_STATES    ; Number of states
;

