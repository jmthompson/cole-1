        .setcpu "65C02"
        .segment "OS"

        .importzp tx_ptr

        .export acia_init
        .export acia_irq
        .export print_string
        .export print_char

acia_ctrl   := $8000
acia_status := acia_ctrl
acia_tx     := $8001
acia_rx     := acia_tx

; serial rx buffer
rs_buffer   := $200

acia_init:
        lda     #%00000011          ; master reset
        sta     acia_ctrl
        lda     #%10010101          ; 8N1, clock/16, enable Rx interrupts
        sta     acia_ctrl
        rts

acia_irq:
        lda     acia_status
        and     #%00000001          ; Rx full or overrun
        beq     @exit
        lda     acia_rx             ; clear interrupt, ignore data for now
@exit:  rts

print_string:
        pha
        phx
        phy
        ldy     #0
@loop:  lda     (tx_ptr),Y
        beq     @exit
        tax
@wait:  lda     acia_status
        and     #%00000010
        beq     @wait
        stx     acia_tx
        iny
        bne     @loop
@exit:  ply
        plx
        pla
        rts

print_char:
        pha
@wait:  lda     acia_status
        and     #%00000010
        beq     @wait
        pla
        sta     acia_tx
        rts

