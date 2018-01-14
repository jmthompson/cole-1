AS := ca65
LD := ld65

SRCS     := console.s ehbasic.s monitor.s osentry.s serial.s vectors.s via.s
OBJS   	 := ${SRCS:.s=.o}
LISTINGS := ${SRCS:.s=.l}
ROMFILE  := rom.bin
RAMFILE  := ram.bin
MAPFILE  := cole-1.map

${ROMFILE}: ${OBJS}
	${LD} ${OBJS} -o ${ROMFILE} -C cole-1.cfg -m ${MAPFILE}

burn: ${ROMFILE}
	minipro -p AT28C256 -w ${ROMFILE}

all: ${ROMFILE}

clean:
	rm -f ${OBJS} ${LISTINGS} ${MAPFILE} ${ROMFILE} ${RAMFILE}

.s.o:
	${AS} --listing ${<:.s=.l} $<
