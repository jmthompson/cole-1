; *******************************
; *  COLE-1 65c02 SBC Firmware  *
; * (C) 2018 Joshua M. Thompson *
; *******************************

        .setcpu "65C02"

        .import serial_init
        .import serial_irq
        .import serial_read
        .import serial_write
        .import monitor_brk
        .import console_read
        .import console_write
        .import writeln
        .import LAB_COLD
        .import rom_version
        .import via_init
        .import via_irq

        .import jros_init

        .export irq
        .export nmi
        .export reset

        .include "macros.inc"

        .segment "CODE"

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

        putstr  boot_banner1    ; Display the boot banner
        putstr  rom_version
        putstr  boot_banner2

        jsr     jros_init        ; Initialize JR/OS

        jmp     LAB_COLD        ; ... and drop the user into BASIC

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

boot_banner1:
        .byte   $0d
        .byte   "*******************************", $0d
        .byte   "*      COLE-1 65C02 SBC       *", $0d
        .byte   "* System ROM Version "
        .byte   $00
boot_banner2:
        .byte   " *", $0d
        .byte   "*******************************", $0d, $0d
        .byte   $00
