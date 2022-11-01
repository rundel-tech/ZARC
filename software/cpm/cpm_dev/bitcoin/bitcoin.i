; *******************************************************
; * Bitcoin Mining for CP/M                             *
; * Include file                                        *
; * Written by: Merlin Skinner                          *
; * Date Started: 5/9/2022                              *
; *******************************************************
;
;
;
; *************
; * Constants *
; *************
;
;
;DEBUG           equ 1                   ; Define to enable debug messages
;
STACK_SIZE      equ 64                  ; Stack space allocation
BREAK_CHAR      equ 'C' - 0x40
;
MSG_PERIOD      equ 2 * 1000            ; Time between messages in ms (ZARC)
MSG_REP_MASK    equ 32 - 1              ; Iteration report mask
; MSG_REP_MASK must be 2^n - 1, where n is a positive integer. Reports will
; occur every 2^n iterations.
SH2_CHUNK_BITS  equ 512                 ; SHA-2 chunk size in bits
SH2_CHUNK_BYTES equ (SH2_CHUNK_BITS / 8) ; Above in bytes
SH2_CHUNK_LONGS equ (SH2_CHUNK_BYTES / 4) ; Above in 32-bit words
SH2_DIGEST_BITS equ 256                 ; SHA-2 digest size in bits
SH2_DIGEST_BYTES equ (SH2_DIGEST_BITS / 8) ; Above in bytes
;
; Block header structure.
                STRUCT
                STR_LONG BH_VER         ; Bitcoin version number
                STR_BLOCK BH_PREV_HASH, 32  ; Previous block hash
                STR_BLOCK BH_MERKLE, 32 ; Merkle root
                STR_LONG BH_TIME_STAMP  ; Bitcoin version number
                STR_LONG BH_DIFFICULTY  ; Difficulty target for the block
                STR_LONG BH_NONCE
                STR_END BH_SIZE
;
                assert BH_SIZE = 80
;
; From https://developer.bitcoin.org/reference/block_chain.html
; The hashes are in internal byte order; the other values are all in
; little-endian order.
;
;
