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
        .import readln

OS_RESET:
        .byte   $4C
        .word   reset
OS_MONITOR_START:
        .byte   $4C
        .word   monitor_start
OS_BASIC_START:
        .byte   $4C
        .word   LAB_COLD
OS_GET_JIFFIES:
        .byte   $4C
        .word   get_jiffies
OS_SERIAL_READ:
        .byte   $4C
        .word   serial_read
OS_SERIAL_WRITE:
        .byte   $4C
        .word   serial_write
OS_READLN:
        .byte   $4C
        .word   readln
