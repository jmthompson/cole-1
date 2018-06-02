AS := ca65
LD := ld65

SRCS     := console.s disasm.s ehbasic.s jeros.s monitor.s osentry.s serial.s startup.s via.s version.s xmodem.s
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

version.s:
	echo ".segment \"OS\"" > version.s
	echo ".export rom_version" >> version.s
	date "+rom_version: .byte \"%Y%m%d\",0" >> version.s


.s.o:
	${AS} --listing ${<:.s=.l} $<

.PHONY: version.s
