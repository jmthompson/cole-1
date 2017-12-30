AS := ca65
LD := ld65

SRCS   := fw.s acia.s via.s zp.s
OBJS   := ${SRCS:.s=.o}
TARGET := fw.bin

${TARGET}: ${OBJS}
	${LD} ${OBJS} -o ${TARGET} -C fw.cfg -m fw.map

burn: ${TARGET}
	minipro -p AT28C256 -w ${TARGET}

all: ${TARGET}

clean:
	rm -f ${OBJS} ${TARGET} fw.map
.s.o:
	${AS} $<
