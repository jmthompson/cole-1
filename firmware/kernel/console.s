; *******************************
; *  COLE-1 65c02 SBC Firmware  *
; * (C) 2018 Joshua M. Thompson *
; *******************************

        .setcpu "65C02"

        .export console_read
        .export console_write
        .export readln
        .export writeln
        .export input_buffer
        .export input_index

        .include "macros.inc"

buffer_size = 64

        .segment "ZEROPAGE"

tmp:    .res    1
ptr:    .res    2

        .segment "DATA"

console_read:
        .res    3
console_write:
        .res    3
input_buffer:
        .res    256
input_index:
        .res    1

        .segment "CODE"

writeln:
        pha
        phx
        phy
        tsx
        lda     $0104,X
        sta     ptr
        clc
        adc     #2
        sta     $0104,X
        lda     $0105,X
        sta     ptr+1
        adc     #0
        sta     $0105,X

        ldy     #1
        lda     (ptr),Y
        tax
        iny
        lda     (ptr),Y
        sta     ptr+1
        stx     ptr

        ldy     #0
@loop:  lda     (ptr),Y
        beq     @exit
        jsr     console_write
        cmp     #CR
        bne     @notcr
        lda     #LF
        jsr     console_write
@notcr: iny
        bne     @loop
@exit:  ply
        plx
        pla
        rts

;
; Read a line of text with optional single-character prompt.
;
; Outputs:
;
; Null-terminated line in input_buffer
; 0 => input_index
;
readln:
        ldx     #0
@loop:  jsr     console_read
        bcs     @loop
        cmp     #BS
        beq     @bs
        cmp     #CR
        beq     @eol
        cmp     #' '
        bcc     @loop
        jsr     console_write 
        sta     input_buffer,X
        inx
        cpx     #$ff
        bne     @loop
@eol:   stz     input_buffer,X
        stz     input_index
        rts
@bs:    cpx     #0
        beq     @loop
        jsr     console_write 
        dex
        bra     @loop
