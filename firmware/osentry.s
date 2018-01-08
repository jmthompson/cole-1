        .segment "OSENTRY"

        .import reset
        .import get_jiffies
        .import monitor_entry
        .import console_read
        .import console_write
        .import serial_read
        .import serial_write

        .word   reset
        .word   console_read
        .word   console_write
        .word   serial_read
        .word   serial_write
        .word   get_jiffies
        .word   monitor_entry
