; *******************************
; *  COLE-1 65816 SBC Firmware  *
; * (C) 2021 Joshua M. Thompson *
; *******************************

        .include "common.s"

        .export via_init
        .export via_irq
        .export wait_ms
        .export spi_select
        .export spi_deselect
        .export spi_transfer

; Phi2 clock rate (Hz)
phi2_clock  = 3686400
; Desired jiffy timer rate (Hz)
jiffy_clock = 100
; Timer1 value
jiffy_timer = (phi2_clock / jiffy_clock) - 2

; Port B bit assignments
PORTB_MISO     = $40
PORTB_EN       = $20
PORTB_SS       = $1C
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

spi_byte:   .res    1
jiffies:    .res    4

        .segment "BOOTROM"

via_init:
        rep     #$30
        stz     jiffies
        stz     jiffies+2
        sep     #$30

        stz     via1_ddra
        lda     #PORTB_EN|PORTB_SS|PORTB_MOSI|PORTB_SCLK
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
        inc32   jiffies
@exit:  rts

; Wait up to 15ms (assuming 4MHz phi2 clock), with about 3% error because
; we use a x4096 multiplier instead of x4000.
;
; Inputs:
; A = number of ms to wait

wait_ms:
        and     #$0f        ; can't wait more than about 15 ms
        asl
        asl
        asl
        asl                 ; x4096 because this will be the upper byte
        stz     via1_t2cl
        sta     via1_t2ch
@wait:  lda     via1_ifr
        and     #$20
        beq     @wait
        rts

; Perform a single byte transfer to the specified SPI device.
;
; Inputs:
; A = byte to transmit
;
; Output:
; A = byte receiv,ed

spi_transfer:
        phx
        sta     spi_byte
        ldx     #8          ; do 8 bits
@loop:  lda     via1_portb
        and     #<~PORTB_MOSI
        bit     spi_byte    ; bit 7 => neg bit
        bpl     @out
        ora     #PORTB_MOSI
@out:   sta     via1_portb  ; set MOSI
        inc     via1_portb  ; raise SCLK
        clc
        bit     via1_portb  ; MISO => overflow
        bvc     @shift
        sec 
@shift: rol     spi_byte    ; rotate MOSI out, and MISO (via carry) in
        dec     via1_portb  ; lower SCLK
        dex
        bne     @loop
        plx
        lda     spi_byte
        rts

; Open communications to the selected SPI device
;
; Inputs:
; X = device to select (0-4)
;
; Outputs:
; None

spi_select:
        pha
        txa
        and     #7
        asl
        asl
        ora     #PORTB_EN
        ora     via1_portb
        sta     via1_portb
        pla
        rts

; Deselect the currently selected SPI device

spi_deselect:
        pha
        lda     via1_portb
        and     #<~(PORTB_EN|PORTB_SS)
        sta     via1_portb
        pla
        rts
