EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:65xx
LIBS:MAX1232
LIBS:osc
LIBS:cole-1-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1700 1150 2250 1950
U 5A457B7F
F0 "Core Logic" 60
F1 "cole-1-core.sch" 60
F2 "ROMSEL" I R 3950 1850 60 
F3 "RD" I R 3950 1500 60 
F4 "WR" I R 3950 1600 60 
F5 "A[0..15]" O R 3950 2150 60 
F6 "D[0..7]" B R 3950 2250 60 
F7 "RESET" O R 3950 2750 60 
F8 "PHI2" O R 3950 1700 60 
F9 "IRQ" I R 3950 2650 60 
F10 "RWB" O R 3950 1400 60 
$EndSheet
$Sheet
S 5700 1150 2550 1950
U 5A459B30
F0 "Address Decoding" 60
F1 "cole-1-decoding.sch" 60
F2 "RWB" I L 5700 1400 60 
F3 "PHI2" I L 5700 1700 60 
F4 "A[0..15]" I L 5700 2150 60 
F5 "RD" O L 5700 1500 60 
F6 "WR" O L 5700 1600 60 
F7 "ROMSEL" O L 5700 1850 60 
F8 "IOSEL[0..1]" O L 5700 2300 60 
$EndSheet
$Sheet
S 1750 3450 2200 1350
U 5A46207D
F0 "I/O" 60
F1 "cole-1-io.sch" 60
F2 "A[0..15]" I R 3950 3650 60 
F3 "D[0..7]" B R 3950 3550 60 
F4 "PHI2" I R 3950 3900 60 
F5 "RWB" I R 3950 4000 60 
F6 "IRQ" O R 3950 4100 60 
F7 "RESET" I R 3950 4200 60 
F8 "IOSEL[0..1]" I R 3950 3750 60 
$EndSheet
Wire Wire Line
	3950 1850 5700 1850
Wire Wire Line
	3950 1400 5700 1400
Wire Wire Line
	5700 1500 3950 1500
Wire Wire Line
	5700 1600 3950 1600
Wire Wire Line
	3950 1700 5700 1700
Wire Bus Line
	3950 2150 5700 2150
Wire Bus Line
	3950 2250 5050 2250
Wire Bus Line
	5050 2250 5050 3550
Wire Bus Line
	5050 3550 3950 3550
Wire Wire Line
	3950 4100 4700 4100
Wire Wire Line
	4700 4100 4700 2650
Wire Wire Line
	4700 2650 3950 2650
Wire Wire Line
	3950 2750 4550 2750
Wire Wire Line
	4550 2750 4550 4200
Wire Wire Line
	4550 4200 3950 4200
Wire Wire Line
	3950 4000 4450 4000
Wire Wire Line
	4450 4000 4450 1400
Connection ~ 4450 1400
Wire Wire Line
	3950 3900 4350 3900
Wire Wire Line
	4350 3900 4350 1700
Connection ~ 4350 1700
Wire Bus Line
	3950 3650 5150 3650
Wire Bus Line
	5150 3650 5150 2150
Connection ~ 5150 2150
$Sheet
S 8300 1150 1450 950 
U 5A482044
F0 "Decoupling Capacitors" 60
F1 "cole-1-caps.sch" 60
$EndSheet
Wire Bus Line
	5700 2300 5250 2300
Wire Bus Line
	5250 2300 5250 3750
Wire Bus Line
	5250 3750 3950 3750
$EndSCHEMATC
