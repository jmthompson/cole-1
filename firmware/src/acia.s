; *******************************
; *  COLE-1 65816 SBC Firmware  *
; * (C) 2021 Joshua M. Thompson *
; *******************************

        .setcpu "65816"
        .a8
        .i8

        .export acia_init
        .export acia_irq
        .export acia_read
        .export acia_write

buffer_size = 256
max_unread  = buffer_size - 16

CMD_RESET       = %00000011    ; master reset
CMD_8N1_DIV64   = %10010110    ; 8N1, clock/64, enable Rx interrupts
CMD_RTS_HIGH    = %01000000    ; Raise RTS

acia_ctrl   := $8000
acia_status := acia_ctrl
acia_data   := $8001

        .segment "BUFFERS"

acia_buffer:
        .res    buffer_size

        .segment "ZEROPAGE"

rx_rd_idx:
        .res   1
rx_wr_idx:
        .res   1

        .segment "BOOTROM"

acia_init:
        stz     rx_rd_idx
        stz     rx_wr_idx

        lda     #CMD_RESET
        sta     acia_ctrl
        lda     #CMD_8N1_DIV64
        sta     acia_ctrl

        rts

acia_irq:
        lda     acia_status
        and     #%00000001          ; Rx full or overrun
        beq     @exit
        ldx     rx_wr_idx
        lda     acia_data
        sta     acia_buffer,x
        inx
        stx     rx_wr_idx
        txa
        sec
        sbc     rx_rd_idx
        cmp     max_unread
        bcc     @exit

        lda     #CMD_8N1_DIV64|CMD_RTS_HIGH
        sta     acia_ctrl

@exit:  rts

acia_read:
        lda     rx_rd_idx
        cmp     rx_wr_idx
        beq     @empty
        phx
        tax
        lda     acia_buffer,X
        inx
        stx     rx_rd_idx
        pha
        txa
        sec
        sbc     rx_wr_idx
        cmp     max_unread
        bcs     @exit

; < max_unread unread, so lower RTS again
        lda     #CMD_8N1_DIV64
        sta     acia_ctrl

@exit:  pla
        plx
        cmp     #0      ; set zero flag
        sec
        rtl

@empty: clc
        rtl

acia_write:
        xba
@wait:  lda     acia_status
        and     #%00000010
        beq     @wait
        xba
        sta     acia_data
        rtl
