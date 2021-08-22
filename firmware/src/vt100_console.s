; *******************************
; *  COLE-1 65816 SBC Firmware  *
; * (C) 2021 Joshua M. Thompson *
; *******************************

        .include "common.s"
        .include "sys/console.s"

        .export vt100_reset
        .export vt100_write

        .import getc_seriala
        .import acia_write

        .segment "BIOSROM"

BELL     =  $07
LBRACKET =  '['

vt100_reset:
        ; Reset device
        lda     #ESC
        jsl     acia_write
        lda     #'c'
        jsl     acia_write
        ; Enable line wrap
        lda     #ESC
        jsl     acia_write
        lda     #LBRACKET
        jsl     acia_write
        lda     #'7'
        jsl     acia_write
        lda     #'h'
        jsl     acia_write
        ; Set character set G1 to the line drawing chars
        lda     #ESC
        jsl     acia_write
        lda     #')'
        jsl     acia_write
        lda     #'0'
        jsl     acia_write

        ; fall through

vt100_cls:
        lda     #ESC
        jsl     acia_write
        lda     #LBRACKET
        jsl     acia_write
        lda     #'2'
        jsl     acia_write
        lda     #'J'
        jml     acia_write

vt100_write:
        pha
        jsl     acia_write
        pla
        cmp     #CR
        bne     @exit
        lda     #LF
        jsl     acia_write
@exit:  rtl
