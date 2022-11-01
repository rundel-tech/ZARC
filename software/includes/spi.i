; ***********************************
; * ZARC SPI Definitions            *
; * Written by: Merlin Skinner      *
; * Date Started: 7/8/2020          *
; ***********************************
;
; Definitions associated with the SPI (Inter-Integrated Circuit) master interface.
; Used for the memory card initially, but it may turn out to have other uses.
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

; SPI error codes. This should be maintained in sync with err_msgs in mmc_card.z80.
                ENUM_START
                ENUM SPI_ERR_OK         ; No error
                ENUM SPI_ERR_BUSY       ; Master interface stuck busy
; Memory card error codes.
                ENUM SPI_ERR_NORESP     ; No response received from card
                ENUM SPI_ERR_BADINIT    ; Initialisation failed
                ENUM SPI_ERR_BADCRC     ; CRC error
                ENUM SPI_ERR_BADSEC     ; Bad sector size
                ENUM SPI_ERR_RANGE      ; Parameter out of range
                ENUM SPI_ERR_DATAERR    ; Data error token received
                ENUM SPI_ERR_BAD_R1     ; Card reported error in R1 response
                ENUM SPI_ERR_BAD_R2     ; Card reported error in R2 response
                ENUM SPI_ERR_HEAP       ; Out of heap space
                ENUM SPI_ERR_TIMEOUT    ; Busy timeout
                ENUM SPI_ERR_WRITE      ; Write error
                ENUM SPI_ERR_UNKN       ; Unknown error
                ENUM_END SPI_ERR_NUM    ; Number of errors
