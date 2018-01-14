; *******************************
; *  COLE-1 65c02 SBC Firmware  *
; * (C) 2018 Joshua M. Thompson *
; *******************************

        .segment "OSENTRY"

        .import reset
        .import monitor_start
        .import LAB_COLD
        .import get_jiffies
        .import serial_read
        .import serial_write

        .word   reset
        .word   monitor_start
        .word   LAB_COLD
        .word   get_jiffies
        .word   serial_read
        .word   serial_write
