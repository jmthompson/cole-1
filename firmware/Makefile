ROM_VERSION := 06
HW_REVISION := 01

AS := ca65
LD := ld65

SRCS     := $(wildcard src/*.s) buildinfo.s
OBJS   	 := ${SRCS:.s=.o}
LISTINGS := ${SRCS:.s=.l}
ROMFILE  := rom.bin
UPDFILE  := flash.bin
DUMPFILE := dump.bin
RAMFILE  := ram.bin
MAPFILE  := cole-1.map

CHIP     := AT28C256

${ROMFILE}: ${OBJS}
	${LD} ${OBJS} -o ${ROMFILE} -C cole-1.cfg -m ${MAPFILE}
	dd if=${ROMFILE} of=${UPDFILE} bs=1 skip=4096

all: ${ROMFILE}

dump:
	minipro -p ${CHIP} -r ${DUMPFILE}

prog: ${ROMFILE}
	minipro -p ${CHIP} -w ${ROMFILE}

clean:
	rm -f buildinfo.s ${OBJS} ${LISTINGS} ${MAPFILE} ${ROMFILE} ${RAMFILE} ${UPDFILE}

buildinfo.s:
	echo ".segment \"BOOTROM\"" > buildinfo.s
	echo ".export hw_revision" >> buildinfo.s
	echo ".export rom_version" >> buildinfo.s
	echo ".export rom_date" >> buildinfo.s
	echo "hw_revision: .byte \$$${HW_REVISION}" >> buildinfo.s
	echo "rom_version: .byte \$$${ROM_VERSION}" >> buildinfo.s
	date "+rom_date: .byte \"%Y-%m-%d\",0" >> buildinfo.s

%.o: %.s
	${AS} -I ./include --listing ${<:.s=.l} $<

.PHONY: dump buildinfo.s
