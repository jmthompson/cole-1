; *******************************
; *  COLE-1 65c02 SBC Firmware  *
; * (C) 2018 Joshua M. Thompson *
; *******************************

        .setcpu "65C02"

        .import serial_init
        .import serial_irq
        .import serial_read
        .import serial_write
        .import monitor_start
        .import monitor_brk
        .import console_read
        .import console_write
        .import writeln

        .import via_init
        .import via_irq

        .export reset

        .include "macros.inc"

        .segment "OS"

reset:  ldx     #$ff
        txs
        cld

        lda     #$4c        ; JMP
        sta     console_read
        sta     console_write

        lda     #<serial_read
        sta     console_read+1
        lda     #>serial_read
        sta     console_read+2

        lda     #<serial_write
        sta     console_write+1
        lda     #>serial_write
        sta     console_write+2

        jsr     via_init
        jsr     serial_init

        cli

        putstr  boot_banner
        jmp     monitor_start

nmi:    jmp     reset

irq: 
        pha
        phx
        phy
        tsx
        lda     $0104,X
        and     #$10        ; check B bit
        bne     @brk
        jsr     via_irq
        jsr     serial_irq
        ply
        plx
        pla
        rti
@brk:   cli
        jmp     monitor_brk

boot_banner:
        .byte   $0d
        .byte   "******************************", $0d
        .byte   "*      COLE-1 65C02 SBC      *", $0d
        .byte   "* Firmware Version: 20180106 *", $0d
        .byte   "******************************", $0d
        .byte   $0d
        .byte   $00

        .segment "HWVECTORS"

        .word   nmi
        .word   reset
        .word   irq
