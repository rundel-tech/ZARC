; ***********************************
; * ZARC Macro Definitions          *
; * Written by: Merlin Skinner      *
; * Date Started: 30/7/2020         *
; ***********************************
;
;
;
; **********
; * Macros *
; **********
;
;
; Initialise enumeration.
; The absolute segment is used so the offsets are not marked as relocatable. This
; avoids "Not relocatable" errors.
ENUM_START      macro
                .aseg
enum_counter    set 0
                endm
;
; Invoke for each item.
ENUM            macro x
x               equ enum_counter
enum_counter    set enum_counter + 1
                endm
;
ENUM_END        macro x
x               set enum_counter    ; Set label to count of items
                .cseg
                endm
;
;
; Initialise a structure. This is used to generate offsets for data structures.
; The absolute segment is used so the offsets are not marked as relocatable. This
; avoids "Not relocatable" errors.
STRUCT          macro
                .aseg
str_offset      set 0
                endm
;
; Add a byte entry.
STR_BYTE        macro x
x               equ str_offset
str_offset      set str_offset + 1
                endm
;
; Add a word (16-bit) entry.
STR_WORD        macro x
x               equ str_offset
str_offset      set str_offset + 2
                endm
;
; Add a 3 byte (24-bit) entry.
STR_24BIT       macro x
x               equ str_offset
str_offset      set str_offset + 3
                endm
;
; Add a long (32-bit) entry.
STR_LONG        macro x
x               equ str_offset
str_offset      set str_offset + 4
                endm
;
; Add an arbitrary length entry.
STR_BLOCK       macro x, size   ; <name>, <size>
x               equ str_offset
str_offset      set str_offset + size
                endm
;
; End of structure (used to set size)
STR_END         macro x
x               equ str_offset
                .cseg
                endm
;
;
; Allocate space. This is used to generate variable addresses, affectively
; providing a new variables segment. Allocated size is kept track of separately
; to the address as the latter may overflow in certain error cases.
ALLOC           macro x
                .aseg
all_addr        set x
all_size        set 0
                endm
;
; Add a byte entry.
ALL_BYTE        macro x
x               equ all_addr
all_addr        set all_addr + 1
all_size        set all_size + 1
                endm
;
; Add a word (16-bit) entry.
ALL_WORD        macro x
x               equ all_addr
all_addr        set all_addr + 2
all_size        set all_size + 2
                endm
;
; Add a 3 byte (24-bit) entry.
ALL_24BIT       macro x
x               equ all_addr
all_addr        set all_addr + 3
all_size        set all_size + 3
                endm
;
; Add a long (32-bit) entry.
ALL_LONG        macro x
x               equ all_addr
all_addr        set all_addr + 4
all_size        set all_size + 4
                endm
;
; Add an arbitrary length entry.
ALL_BLOCK       macro x, size   ; <name>, <size>
x               equ all_addr
all_addr        set all_addr + size
all_size        set all_size + size
                endm
;
; End of allocated space. Returns size of block.
ALL_END         macro x
x               equ all_size
                .cseg
                endm
;
;
; Calculate offsets into jump tables.
; The absolute segment is used so the offsets are not marked as relocatable. This
; avoids "Not relocatable" errors.
JPTBL_START     macro x
                .aseg
jptbl_addr      set x               ; Set start address
                endm
;
; Invoke for each item.
JPTBL_ENTRY     macro x
x               equ jptbl_addr
jptbl_addr      set jptbl_addr + 3
                endm
;
; Invoke for a data block in the jump table
JPTBL_BLOCK     macro x, size   ; <name>, <size>
x               equ jptbl_addr
jptbl_addr      set jptbl_addr + size
                endm
;
JPTBL_END       macro x
x               set jptbl_addr      ; Set label to next address
                .cseg
                endm
;
;
; Define bits and masks. This is inspired by the Commodore Amiga BITDEF mechanism.
; Given:
; BITDEF I2C_CSR_STOP, 2
; Yields:
; I2C_CSR_STOP_BIT  EQU 2       ; Bit number
; I2C_CSR_STOP_MASK EQU 1<<2    ; Bit mask
BITDEF          macro n, b      ; <Name>, <bit>
n`_BIT          equ b
n`_MASK         equ 1 << b
                endm
;
;
; Force alignment. This asserts an appropriate number of zero bytes to achieve
; the required alignment. Note that these macros cannot work for relocatable
; files.
; 16-bit
ALIGN_WORD      macro
                if $ and 1
                    byte 0
                endif
                endm
;
; 32-bit
ALIGN_LONG      macro
                ALIGN_WORD
                if $ and 2
                    byte 0, 0
                endif
                endm
;
;
; Write message to console (short for "call conwms").
CON_WR_MSG      macro
                rst 08
                endm
;
;
; Write character to console (short for "call conwch").
CON_WR_CHAR     macro
                rst 16
                endm

