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
        .word     reset
OS_MONITOR_START:
        .word     monitor_start
OS_BASIC_START:
        .word     LAB_COLD
OS_GET_JIFFIES:
        .word     get_jiffies
OS_WAIT_MS:
        .word     wait_ms
OS_SERIAL_READ:
        .word     serial_read
OS_SERIAL_WRITE:
        .word     serial_write
OS_CONSOLE_READ:
        .word     console_read
OS_CONSOLE_WRITE:
        .word     console_write
OS_READLN:
        .word     readln
OS_WRITELN:
        .word     writeln
OS_SPI_SELECT:
        .word     spi_select
OS_SPI_DESELECT:
        .word     spi_deselect
OS_SPI_TRANSFER:
        .word     spi_transfer

        .segment "HWVECTORS"

        .word   nmi
        .word   reset
        .word   irq
