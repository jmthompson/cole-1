; *******************************
; *  COLE-1 65c02 SBC Firmware  *
; * (C) 2018 Joshua M. Thompson *
; *******************************

        .setcpu "65C02"

        .import console_read
        .import console_write
        .import readln
        .import writeln
        .import input_buffer
        .import input_index

        .import DISASM
        .import XModemSend
        .import XModemRcv

        .importzp xmptr
        .importzp xmeofp

        .export monitor_start
        .export monitor_brk
        .export print_spaces
        .export print_hex

        .exportzp start_loc
        .exportzp end_loc

        .include "macros.inc"

        .segment "DATA"

hex:    .res    2
a_reg:  .res    1
x_reg:  .res    1
y_reg:  .res    1
p_reg:  .res    1
s_reg:  .res    1
pc_reg: .res    1
zp_save:
        .res   32

        .segment "ZEROPAGE"

ptr:    .res    2
start_loc:
        .res    2
end_loc:
        .res    2
row_end:
        .res    1

        .segment "CODE"

commands:
        .byte   'l'
        .byte   'm'
        .byte   'r'
        .byte   'q'
        .byte   '<'
        .byte   '>'

num_commands = *-commands

handlers:
        .word   disassemble
        .word   dump_memory
        .word   run_code
        .word   monitor_exit
        .word   xmodem_receive
        .word   xmodem_send

start_banner:
        .byte   "Monitor Ready.", $0d, $00
brk_banner:
        .byte   "Break", $0d, $00

monitor_start:
        jsr     save_zeropage

        putstr  start_banner
        bra     monitor_loop

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

        jsr     save_zeropage

        putstr  brk_banner
        jsr     print_registers

monitor_loop:        
        puteol
        putc    #'*'
        putc    #' '
        jsr     readln
        puteol
        jsr     parse_input_buffer
        bcs     monitor_loop
        jsr     dispatch
        bra     monitor_loop

dispatch:
        asl
        tax
        jmp     (handlers,X)

;
; Parse the current input_buffer.
;
parse_input_buffer:
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
        cpy     #num_commands
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

;
; Display the position of a syntax error in the input buffer
; The error is assumed to be at the current input_index.
;
syntax_error:
        ldx     input_index
        inx
        inx
        jsr     print_spaces
        putstr  syntax_error_msg
        rts

syntax_error_msg:
        .byte   "^ Syntax Error", $0d, $00

;
; Print out a string of space whose length is given in the X register.
; X may be zero, in which case nothing is printed.
;
print_spaces:
        cpx     #0
        beq     @exit
        pha
        phx
        lda     #' '
@loop:  jsr     console_write
        dex
        bne     @loop
        plx
        pla
@exit:  rts

;
; Skip input_index ahead to either the first non-whitespace character,
; or the end of line NULL, whichever occurs first.
;
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

;
; Attempt to parse up to four hex digits at the current input_index.
; On exit, if carry is set, no valid hex digits were found. If carry
; is clear, the hex number parsed will be in the "hex" variable, and
; the input_index will point to the first character after the parsed
; value.
;
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

;
; Display the values of the saved CPU registers.
;
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

disassemble:
        ldx     #24
@loop:  phx
        jsr     DISASM
        plx
        dex
        bne     @loop
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
        lda     end_loc
        clc
        adc     #1
        sta     start_loc
        lda     end_loc+1
        adc     #0
        sta     start_loc+1
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

run_code:
        jmp     (start_loc)

save_zeropage:
        ldx     #$1f
@loop:  lda     zp_save,x
        sta     $e0,x
        dex
        bpl     @loop
        rts

restore_zeropage:
        ldx     #$1f
@loop:  lda     $e0,x
        sta     zp_save,x
        dex
        bpl     @loop
        rts

monitor_exit:
        jsr     restore_zeropage
        pla                         ; pop return address of the dispatcher
        pla
        rts

xmodem_send:
        lda     start_loc
        sta     xmptr
        lda     start_loc+1
        sta     xmptr+1
        lda     end_loc
        sta     xmeofp
        lda     end_loc+1
        sta     xmeofp+1
        jmp     XModemSend

xmodem_receive:
        lda     start_loc
        sta     xmptr
        lda     start_loc+1
        sta     xmptr+1
        jmp     XModemRcv
