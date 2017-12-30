;
; COLE-1 firmware
;

        .setcpu "65C02"

        .importzp jiffies
        .importzp tx_ptr

        .import acia_init
        .import acia_irq
        .import print_string
        .import print_char

        .import via_init
        .import via_irq

        .segment "OSENTRY"
        .segment "OS"

reset:
        ldx     #$ff
        txs

        jsr     via_init
        jsr     acia_init

        cli

        lda     #<boot_banner
        sta     tx_ptr
        lda     #>boot_banner
        sta     tx_ptr+1
        jsr     print_string

@loop:
        bra     @loop

nmi:    jmp     nmi

irq_brk: 
        pha
        phx
        phy

        jsr     via_irq
        jsr     acia_irq

        ply
        plx
        pla
        rti

boot_banner:
        .byte   $0d, $0a
        .byte   "COLE-1 65C02 SBC", $0d, $0a
        .byte   "Firmware Revision 0.1 (2017-12-31)", $0d, $0a
        .byte   $00

        .segment "VECTORS"

        .word   nmi             ; NMI
        .word   reset           ; RESET
        .word   irq_brk         ; IRQ/BRK
