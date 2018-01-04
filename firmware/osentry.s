        .segment "OSENTRY"

        .import reset
        .import get_jiffies
        .import serial_read
        .import serial_write
        .import serial_print

        .word   reset
        .word   serial_read
        .word   serial_write
        .word   serial_print
        .word   get_jiffies
