; *******************************
; *  COLE-1 65c02 SBC Firmware  *
; * (C) 2018 Joshua M. Thompson *
; *******************************

        .setcpu "65C02"

        .import console_read
        .import console_write
        .import writeln

        .export jeros_init

        .include "macros.inc"

        .segment "OS"

jeros_init:
        putstr  @banner
        rts

@banner:
        .byte   "JEROS Version 0.1", $0d, $00

