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
input_index:
        .res    1

        .segment "OSVECTORS"

console_read:
        .res    3
console_write:
        .res    3

        .segment "BUFFERS"

input_buffer:
        .res    buffer_size

        .segment "OS"

writeln:
        stx     tmp
        tsx
        pha
        phy
        lda     $0101,X
        sta     ptr
        clc
        adc     #2
        sta     $0101,X
        lda     $0102,X
        sta     ptr+1
        adc     #0
        sta     $0102,X

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
        pla
        ldx     tmp
        rts

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
