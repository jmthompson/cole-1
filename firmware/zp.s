        .setcpu "65C02"
        .segment "ZEROPAGE"

.exportzp jiffies     := $00
.exportzp rx_index    := $02
.exportzp tx_ptr      := $03
