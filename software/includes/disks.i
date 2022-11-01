; *******************************************
; * ZARC Monitor Disk Format Include File   *
; * Written by: Merlin Skinner              *
; * Date Started: 13/11/2020                *
; *******************************************
;
; Constants and structures for use when handling disks (memory cards) in the
; monitor.
;
; Master Boot Record (MBR) parameters. This follows the format of the "Structure
; of a classical generic MBR" at https://en.wikipedia.org/wiki/Master_boot_record#PTE
; This is consistent what what I found on one of the MMC cards I examined.
DSK_BOOT_SIGN               equ 0xaa55
DSK_BOOT_SIGN_OFFSET        equ 0x01fe
DSK_MAX_PARTS               equ 4       ; Maximum allowed in a "classical" MBR
DSK_PART1_OFFSET            equ 0x01be
DSK_PART_TYP_EXPER          equ 0x7f    ; Experimental (no CP/M 2.2 type coded)
;
;
; Partition table entry structure.
; Derived from https://en.wikipedia.org/wiki/Master_boot_record#PTE
                STRUCT
                STR_BYTE DPART_STATUS
; CHS of first sector.
                STR_BYTE DPART_START_HD     ; Head
                STR_BYTE DPART_START_SEC    ; Cylinder MS bits and sector
                STR_BYTE DPART_START_CYL    ; Cylinder
                STR_BYTE DPART_TYPE
; CHS of last sector.
                STR_BYTE DPART_END_HD
                STR_BYTE DPART_END_SEC
                STR_BYTE DPART_END_CYL
; Logical Block Address (LBA) parameters.
                STR_LONG DPART_START_LBA    ; Start sector
                STR_LONG DPART_SIZE_SECS    ; Size in sectors
                STR_END DPART_SIZE

