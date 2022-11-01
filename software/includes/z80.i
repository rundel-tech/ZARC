; ***********************************
; * ZARC Z80 Definitions            *
; * Written by: Merlin Skinner      *
; * Date Started: 28/5/2020         *
; ***********************************
;
; Definitions related to the Z80 itself.
;
; Z80 Vectors
Z80_RST00_VEC   equ 0x0000      ; RST instruction vectors
Z80_RST08_VEC   equ 0x0008
Z80_RST10_VEC   equ 0x0010
Z80_RST18_VEC   equ 0x0018
Z80_RST20_VEC   equ 0x0020
Z80_RST28_VEC   equ 0x0028
Z80_RST30_VEC   equ 0x0030
Z80_RST38_VEC   equ 0x0038
Z80_NMI_VEC     equ 0x0066      ; NMI vectors

