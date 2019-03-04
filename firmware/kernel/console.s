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
        .export print_hex
        .export print_hex_digit

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
        phy
        sta     ptr
        stx     ptr+1

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

;
; Print the the lower four bits of the accumulator as a single hexadecimal
; digit. This operations destroys the accumulator contents
;
print_hex_digit:
        and     #$0f
        ora     #'0'
        cmp     #'9'+1
        bcc     @print
        adc     #6
@print: jmp     console_write

;
; Print the contents of the accumulator as a two-digit hexadecimal number.
; The contents of the accumulator are preserved.
;
print_hex:
        pha
        lsr
        lsr
        lsr
        lsr
        jsr     print_hex_digit
        pla
        pha
        and     #$0f
        jsr     print_hex_digit
        pla
        rts

