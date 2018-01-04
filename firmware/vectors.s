;
; COLE-1 firmware
;

        .setcpu "65C02"

        .import serial_init
        .import serial_irq
        .import serial_print

        .import via_init
        .import via_irq

        .segment "OS"

        .export reset

reset:
        ldx     #$ff
        txs

        jsr     via_init
        jsr     serial_init

        cli

        lda     #<boot_banner
        ldy     #>boot_banner
        jsr     serial_print

@loop:
        bra     @loop

nmi:    jmp     nmi

irq: 
        pha
        phx
        phy

        jsr     via_irq
        jsr     serial_irq

        ply
        plx
        pla
        rti

boot_banner:
        .byte   $0d, $0a
        .byte   "COLE-1 65C02 SBC", $0d, $0a
        .byte   "Firmware Revision 0.1 (2018-01-01)", $0d, $0a
        .byte   $00

        .segment "VECTORS"

        .word   nmi
        .word   reset
        .word   irq
