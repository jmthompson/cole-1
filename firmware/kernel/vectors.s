; *******************************
; *  COLE-1 65c02 SBC Firmware  *
; * (C) 2018 Joshua M. Thompson *
; *******************************

        .import reset
        .import monitor_start
        .import LAB_COLD
        .import get_jiffies
        .import wait_ms
        .import serial_read
        .import serial_write
        .import console_read
        .import console_write
        .import readln
        .import writeln
        .import spi_transfer
        .import spi_select
        .import spi_deselect

        .import irq
        .import nmi
        .import reset

        .segment "VECTORS"

OS_RESET:
        jmp     reset
OS_MONITOR_START:
        jmp     monitor_start
OS_BASIC_START:
        jmp     LAB_COLD
OS_GET_JIFFIES:
        jmp     get_jiffies
OS_WAIT_MS:
        jmp     wait_ms
OS_SERIAL_READ:
        jmp     serial_read
OS_SERIAL_WRITE:
        jmp     serial_write
OS_CONSOLE_READ:
        jmp     console_read
OS_CONSOLE_WRITE:
        jmp     console_write
OS_READLN:
        jmp     readln
OS_WRITELN:
        jmp     writeln
OS_SPI_SELECT:
        jmp     spi_select
OS_SPI_DESELECT:
        jmp     spi_deselect
OS_SPI_TRANSFER:
        jmp     spi_transfer

        .segment "HWVECTORS"

        .word   nmi
        .word   reset
        .word   irq
