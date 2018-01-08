BS      := $08
LF      := $0a
CR      := $0d

; Left-shift a 16 bit value in memory
.macro  asl16   addr
        asl     addr
        rol     addr+1
.endmacro

; Increment a 16-bit value in memory
.macro  inc16   addr
        inc     addr
        bne     :+
        inc     addr+1
:
.endmacro

; Get a single character
.macro  getc
        jsr     console_read
.endmacro

; Output a single character
.macro  putc    char
        lda     char
        jsr     console_write
.endmacro

; Output a CR/LF combo
.macro  puteol
        putc    #CR
        putc    #LF
.endmacro

; Output a null-terminated string
.macro  putstr  string
        jsr     writeln
        .word   string
.endmacro

; Output a two-digit hex number
.macro  puthex  value
        lda     value
        jsr     print_hex
.endmacro
