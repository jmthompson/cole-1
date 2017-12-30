        .setcpu "65C02"
        .segment "OS"

        .export via_init
        .export via_irq

        .importzp jiffies

; PHI2 clock rate (Hz)
phi2_clock  = 2000000
; Desired jiffy timer rate (Hz)
jiffy_clock = 100
; Timer1 value
jiffy_timer = (phi2_clock / jiffy_clock) - 2

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

via_init:
        stz     jiffies
        stz     jiffies+1

        lda     #$ff
        sta     via1_ddra
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

        lda     via1_portb

        inc     jiffies
        bne     @strobe
        inc     jiffies+1

        eor     #$40        ; flash the LED

@strobe:
        eor     #$80        ; strobe the watchdog timer
        sta     via1_portb
        eor     #$80
        sta     via1_portb

@exit:  rts


