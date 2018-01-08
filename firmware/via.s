        .setcpu "65C02"

        .export via_init
        .export via_irq
        .export get_jiffies

        .include "macros.inc"

; PHI2 clock rate (Hz)
phi2_clock  = 2000000
; Desired jiffy timer rate (Hz)
jiffy_clock = 100
; Timer1 value
jiffy_timer = (phi2_clock / jiffy_clock) - 2

; Port B bit assignments
PORTB_WATCHDOG = $80
PORTB_MISO     = $40
PORTB_SS3      = $20
PORTB_SS2      = $10
PORTB_SS1      = $08
PORTB_SS0      = $04
PORTB_MOSI     = $02
PORTB_SCLK     = $01

via1_portb  := $8010
via1_porta  := $8011
via1_ddrb   := $8012
via1_ddra   := $8013
via1_t1cl   := $8014
via1_t1ch   := $8015
via1_t1ll   := $8016
via1_t1lh   := $8017
via1_t2cl   := $8018
via1_t2ch   := $8019
via1_sr     := $801a
via1_acr    := $801b
via1_pcr    := $801c
via1_ifr    := $801d
via1_ier    := $801e
via1_portax := $801f

        .segment "ZEROPAGE"

jiffies:    .res    2
spi_out:    .res    1

        .segment "OS"

via_init:
        stz     jiffies
        stz     jiffies+1

        stz     via1_ddra
        lda     #PORTB_WATCHDOG|PORTB_SS3|PORTB_SS2|PORTB_SS1|PORTB_SS0|PORTB_MOSI|PORTB_SCLK
        sta     via1_ddrb

        stz     via1_porta
        stz     via1_portb
        stz     via1_acr

        lda     #$c0
        sta     via1_ier            ; Enable timer1 interrupt

        lda     via1_acr
        ora     #$40                ; Enable timer1 free-run mode
        sta     via1_acr

        lda     #<jiffy_timer       ; Load jiffy timer and start counting
        sta     via1_t1cl
        lda     #>jiffy_timer
        sta     via1_t1ch

        rts

via_irq:
        lda     via1_ifr
        bpl     @exit

        bit     via1_t1cl   ; clear the interrupt
        inc16   jiffies
        lda     via1_portb
        eor     #PORTB_WATCHDOG
        sta     via1_portb

@exit:  rts

get_jiffies:
        lda     jiffies
        ldy     jiffies+1
        rts

; Perform a single byte transfer to the specified SPI device.
;
; Inputs:

; A = byte to transmit
; X = device number (0-3).
;
; Output:
; A = byte received

spi_transfer:
        phx
        sta     spi_out
        jsr     spi_select_device
        ldx     #8          ; do 8 bits
@loop:  lda     via1_portb
        and     #($FF-PORTB_MOSI)
        bit     spi_out     ; bit 7 => neg bit
        bpl     @out
        ora     #PORTB_MOSI
@out:   sta     via1_portb  ; set the data line
        inc     via1_portb  ; raise SCLK
        clc
        bit     via1_portb  ; MISO => overflow
        bvc     @shift
        sec 
@shift: rol     spi_out     ; rotate MOSI out, and MISO (via carry) in
        dec     via1_portb  ; lower SCLK
        dex
        bne     @loop
        plx
        jsr     spi_select_device
        lda     spi_out
        rts

spi_select_device:
        lda     via1_portb
        eor     spi_devices,X
        sta     via1_portb
        rts

spi_devices:
        .byte   $00,PORTB_SS0,PORTB_SS1,PORTB_SS2,PORTB_SS3
