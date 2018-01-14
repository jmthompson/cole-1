; *******************************
; *  COLE-1 65c02 SBC Firmware  *
; * (C) 2018 Joshua M. Thompson *
; *******************************

        .setcpu "65C02"

        .export serial_init
        .export serial_irq
        .export serial_read
        .export serial_write

buffer_size = 256
max_unread  = buffer_size - 16

CMD_RESET       = %00000011    ; master reset
CMD_8N1_DIV16   = %10010101    ; 8N1, clock/16, enable Rx interrupts
CMD_RTS_HIGH    = %01000000    ; Raise RTS

acia_ctrl   := $8000
acia_status := acia_ctrl
acia_data   := $8001

        .segment "DATA"

; serial rx buffer

serial_buffer:
        .res    buffer_size
rx_rd_idx:
        .res   1
rx_wr_idx:
        .res   1

        .segment "OS"

serial_init:
        stz     rx_rd_idx
        stz     rx_wr_idx

        lda     #CMD_RESET
        sta     acia_ctrl
        lda     #CMD_8N1_DIV16
        sta     acia_ctrl
        rts

serial_irq:
        lda     acia_status
        and     #%00000001          ; Rx full or overrun
        beq     @exit
        ldx     rx_wr_idx
        lda     acia_data
        sta     serial_buffer,x
        inx
        stx     rx_wr_idx
        txa
        sec
        sbc     rx_rd_idx
        cmp     max_unread
        bcc     @exit

        lda     #CMD_8N1_DIV16|CMD_RTS_HIGH
        sta     acia_ctrl

@exit:  rts

serial_read:
        lda     rx_rd_idx
        cmp     rx_wr_idx
        beq     @empty
        phx
        tax
        lda     serial_buffer,X
        inx
        stx     rx_rd_idx
        pha
        txa
        sec
        sbc     rx_wr_idx
        cmp     max_unread
        bcs     @exit

; < max_unread unread, so lower RTS again
        lda     #CMD_8N1_DIV16
        sta     acia_ctrl

@exit:  pla
        plx
        cmp     #0      ; set zero flag
        clc
        rts

@empty: sec
        rts

serial_write:
        pha
        phx
        ldx     #0
@wait:  dex
        beq     @error
        lda     acia_status
        and     #%00000010
        beq     @wait
        plx
        pla
        sta     acia_data
        clc
        rts
@error: plx
        pla
        sec
        rts
