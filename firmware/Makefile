AS := ca65
LD := ld65

SRCS     := $(wildcard */*.s) version.s
OBJS   	 := ${SRCS:.s=.o}
LISTINGS := ${SRCS:.s=.l}
ROMFILE  := rom.bin
RAMFILE  := ram.bin
MAPFILE  := cole-1.map

${ROMFILE}: ${OBJS}
	${LD} ${OBJS} -o ${ROMFILE} -C cole-1.cfg -m ${MAPFILE}

all: ${ROMFILE}

burn: ${ROMFILE}
	minipro -p AT28C256 -w ${ROMFILE}

clean:
	rm -f ${OBJS} ${LISTINGS} ${MAPFILE} ${ROMFILE} ${RAMFILE}

version.s:
	echo ".segment \"OS\"" > version.s
	echo ".export rom_version" >> version.s
	date "+rom_version: .byte \"%Y%m%d\",0" >> version.s

.s.o:
	${AS} -I ./ --listing ${<:.s=.l} $<

.PHONY: version.s
