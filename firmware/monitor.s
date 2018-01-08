        .setcpu "65C02"

        .export monitor_entry
        .export monitor_brk

        .import console_read
        .import console_write
        .import readln
        .import writeln
        .import input_buffer
        .importzp input_index

        .include "macros.inc"

        .segment "ZEROPAGE"

ptr:    .res    2
hex:    .res    2
a_reg:  .res    1
x_reg:  .res    1
y_reg:  .res    1
p_reg:  .res    1
s_reg:  .res    1
pc_reg: .res    1
start_loc:
        .res    2
end_loc:
        .res    2
row_end:
        .res    2

        .segment "OS"

commands:
        .byte 'm'

num_commands = *-commands

handlers:
        .word   dump_memory

monitor_brk:
        lda     $0101,X
        sta     y_reg
        lda     $0102,X
        sta     x_reg
        lda     $0103,X
        sta     a_reg
        lda     $0104,X
        and     #$EF
        sta     p_reg
        lda     $0105,X
        sec
        sbc     #2
        sta     pc_reg
        lda     $0106,X
        sbc     #0
        sta     pc_reg+1
        txa
        sec
        sbc     #6
        sta     s_reg

        putstr  brk_banner
        jsr     print_registers

monitor_entry:
        putstr  entry_banner

@loop:  puteol
        putc    #'*'
        putc    #'>'
        putc    #' '
        jsr     readln
        puteol
        jsr     parse_command
        bcs     @loop
        jsr     dispatch
        bra     @loop

dispatch:
        asl
        tax
        jmp     (handlers,X)

parse_command:
        jsr     parse_hex
        bcs     @no_start_loc

        lda     hex
        sta     start_loc
        lda     hex+1
        sta     start_loc+1

@no_start_loc:
        lda     start_loc
        sta     end_loc
        lda     start_loc+1
        sta     end_loc+1

        ldx     input_index
        lda     input_buffer,X
        cmp     #'.'            ; did they specify a memory range?
        bne     @find

        inc     input_index
        jsr     parse_hex       ; get end range
        bcs     @bad
        lda     hex
        sta     end_loc
        lda     hex+1
        sta     end_loc+1

        ldx     input_index
@find:  lda     input_buffer,X
        bne     @found
        lda     #'m'        ; if no command given default to 'm'
@found: ldy     #0
@loop:  cmp     commands,Y
        beq     @match
        iny
        cpy     num_commands
        bne     @loop
        bra     @bad
@match: inx
        stx     input_index
        tya
        clc
        rts
@bad:   jsr     syntax_error
        sec
        rts

syntax_error:
        lda     #' '
        jsr     console_write
        jsr     console_write
        jsr     console_write   ; 3x for prompt
        ldx     input_index
        beq     @show
@loop:  jsr     console_write
        dex
        bne     @loop
@show:  putc    #'^'
        puteol
        rts

skip_whitespace:
        pha
        phx
        ldx     input_buffer
@loop:  lda     input_buffer,X
        beq     @exit
        cmp     #$20
        bne     @exit
        inx
        bne     @loop
@exit:  stx     input_buffer
        plx
        pla
        rts

parse_hex:
        pha
        phx
        phy
        stz     hex
        stz     hex+1
        ldx     input_index
        ldy     #0
@loop:  lda     input_buffer,X
        cmp     #$21
        bcc     @end
        sbc     #'0'
        bcc     @end
        cmp     #10
        bcc     @store
        ora     #$20            ; shift uppercase to lowercase
        sbc     #'a'-'0'-10
        cmp     #10
        bcc     @end
        cmp     #16
        bcs     @end
@store: asl16   hex
        asl16   hex
        asl16   hex
        asl16   hex
        ora     hex
        sta     hex
        inx
        iny
        cpy     #4
        bne     @loop
@end:   cpy     #0
        beq     @bad
        stx     input_index
        ply
        plx
        pla
        clc
        rts
@bad:   ply
        plx
        pla
        sec
        rts

print_hex_digit:
        cmp     #10
        bcs     @alpha
        adc     #'0'
        bra     @print
@alpha: adc     #'A'-11         ; carry is already set, so -11 instead of -12
@print: jmp     console_write

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

print_registers:
        putc    #'A'
        putc    #'='
        puthex  a_reg
        putc    #' '
        putc    #'X'
        putc    #'='
        puthex  x_reg
        putc    #' '
        putc    #'Y'
        putc    #'='
        puthex  y_reg
        putc    #' '
        putc    #'P'
        putc    #'='
        puthex  p_reg
        putc    #' '
        putc    #'S'
        putc    #'='
        puthex  s_reg
        putc    #' '
        putc    #'P'
        putc    #'C'
        putc    #'='
        puthex  pc_reg+1
        puthex  pc_reg
        puteol
        rts

dump_memory:
        lda     start_loc
        ora     #7
        sta     row_end
        lda     start_loc+1
        jsr     print_hex
        cmp     end_loc+1
        bne     @ok         ; if high bytes don't match we are definitely
        lda     end_loc     ; not at the end of the row. If they are then
        cmp     row_end     ; check the low bytes
        bcs     @ok         
        sta     row_end     ; cap row end to range end
@ok:    lda     start_loc
        pha                 ; save original start for ascii loop
        jsr     print_hex
        putc    #':'
@loop1: putc    #' '
        lda     (start_loc)
        jsr     print_hex
        lda     start_loc    
        cmp     row_end     ; at last byte of line?
        beq     @ascii      ; yes, so now draw the ascii version
        inc
        sta     start_loc
        bra     @loop1
@ascii: putc    #' '
        putc    #'|'
        putc    #' '
        pla
        sta     start_loc
@loop2: lda     (start_loc)
        and     #$7F
        cmp     #' '
        bcs     @printable
        lda     #'?'
@printable:
        jsr     console_write
        lda     start_loc
        cmp     row_end
        beq     @endofrow
        inc
        sta     start_loc
        bra     @loop2
@endofrow:
        puteol
        lda     start_loc+1
        cmp     end_loc+1
        bne     @nextrow
        lda     row_end
        cmp     end_loc
        bne     @nextrow
        rts
@nextrow:
        lda     row_end
        clc
        adc     #1
        sta     start_loc
        lda     start_loc+1
        adc     #0
        sta     start_loc+1
        jmp     dump_memory

brk_banner:
        .byte   "Break", $0d, $00

entry_banner:
        .byte   "Monitor Ready.", $0d, $00

