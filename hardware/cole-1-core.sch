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
$Descr USLetter 11000 8500
encoding utf-8
Sheet 2 5
Title "COLE-1 Core Logic"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L WD65C02_ U1
U 1 1 5A4348C3
P 1900 2100
F 0 "U1" H 1900 3150 60  0000 C CNN
F 1 "WD65C02" H 1900 950 60  0000 C CNN
F 2 "Housings_DIP:DIP-40_W15.24mm_Socket" H 1350 2300 60  0001 C CNN
F 3 "" H 1350 2300 60  0000 C CNN
	1    1900 2100
	1    0    0    -1  
$EndComp
NoConn ~ 2550 2900
NoConn ~ 2550 3000
$Comp
L VCC #PWR01
U 1 1 5A4373CF
P 600 2100
F 0 "#PWR01" H 600 1950 50  0001 C CNN
F 1 "VCC" H 600 2250 50  0000 C CNN
F 2 "" H 600 2100 50  0001 C CNN
F 3 "" H 600 2100 50  0001 C CNN
	1    600  2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5A437413
P 600 3200
F 0 "#PWR02" H 600 2950 50  0001 C CNN
F 1 "GND" H 600 3050 50  0000 C CNN
F 2 "" H 600 3200 50  0001 C CNN
F 3 "" H 600 3200 50  0001 C CNN
	1    600  3200
	1    0    0    -1  
$EndComp
NoConn ~ 1250 2300
$Comp
L GND #PWR03
U 1 1 5A437D93
P 800 7350
F 0 "#PWR03" H 800 7100 50  0001 C CNN
F 1 "GND" H 800 7200 50  0000 C CNN
F 2 "" H 800 7350 50  0001 C CNN
F 3 "" H 800 7350 50  0001 C CNN
	1    800  7350
	1    0    0    -1  
$EndComp
$Comp
L R_Small R4
U 1 1 5A4389A5
P 800 2900
F 0 "R4" V 700 2850 50  0000 L CNN
F 1 "3.3K" V 800 2850 30  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 800 2900 50  0001 C CNN
F 3 "" H 800 2900 50  0001 C CNN
	1    800  2900
	0    1    1    0   
$EndComp
$Comp
L R_Small R1
U 1 1 5A438DE8
P 800 2200
F 0 "R1" V 700 2150 50  0000 L CNN
F 1 "3.3K" V 800 2150 30  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 800 2200 50  0001 C CNN
F 3 "" H 800 2200 50  0001 C CNN
	1    800  2200
	0    1    1    0   
$EndComp
NoConn ~ 1250 2000
$Comp
L R_Small R3
U 1 1 5A438F75
P 800 2600
F 0 "R3" V 700 2550 50  0000 L CNN
F 1 "3.3K" V 800 2550 30  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 800 2600 50  0001 C CNN
F 3 "" H 800 2600 50  0001 C CNN
	1    800  2600
	0    1    1    0   
$EndComp
NoConn ~ 1250 2100
$Comp
L R_Small R2
U 1 1 5A43905F
P 800 2400
F 0 "R2" V 700 2350 50  0000 L CNN
F 1 "3.3K" V 800 2350 30  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 800 2400 50  0001 C CNN
F 3 "" H 800 2400 50  0001 C CNN
	1    800  2400
	0    1    1    0   
$EndComp
$Comp
L R_Small R6
U 1 1 5A4391F7
P 3600 2600
F 0 "R6" H 3450 2650 50  0000 L CNN
F 1 "10k" H 3550 2600 30  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" H 3600 2600 50  0001 C CNN
F 3 "" H 3600 2600 50  0001 C CNN
	1    3600 2600
	-1   0    0    1   
$EndComp
$Comp
L 28C256 U4
U 1 1 5A43E9DE
P 5750 2050
F 0 "U4" H 5750 3050 60  0000 C CNN
F 1 "AT28C256-15PU" H 5750 1000 60  0000 C CNN
F 2 "Housings_DIP:DIP-28_W15.24mm_Socket" H 5750 2050 50  0001 C CNN
F 3 "" H 5750 2050 50  0001 C CNN
	1    5750 2050
	1    0    0    -1  
$EndComp
$Comp
L HM62256BLP-7 U5
U 1 1 5A43EA39
P 8750 1950
F 0 "U5" H 8750 2900 60  0000 C CNN
F 1 "CY62256NLL-70PXC" H 8750 1100 60  0000 C CNN
F 2 "Housings_DIP:DIP-28_W15.24mm_Socket" H 8750 1950 50  0001 C CIN
F 3 "" H 8750 1950 50  0001 C CNN
	1    8750 1950
	1    0    0    -1  
$EndComp
$Comp
L MAX1232CPA U3
U 1 1 5A4409A5
P 2500 7050
F 0 "U3" H 2450 7350 60  0000 L BNN
F 1 "MAX1232CPA" H 2200 6700 60  0000 L BNN
F 2 "Housings_DIP:DIP-8_W7.62mm_Socket" H 2600 7900 50  0001 L BNN
F 3 "Maxim Integrated" H 2750 8100 50  0001 L BNN
	1    2500 7050
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 5A44137B
P 3600 2450
F 0 "#PWR04" H 3600 2300 50  0001 C CNN
F 1 "VCC" H 3600 2600 50  0000 C CNN
F 2 "" H 3600 2450 50  0001 C CNN
F 3 "" H 3600 2450 50  0001 C CNN
	1    3600 2450
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 5A442107
P 1200 6900
F 0 "SW1" H 1250 7000 50  0000 L CNN
F 1 "SW_Push" H 1200 6840 50  0001 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 1200 7100 50  0001 C CNN
F 3 "" H 1200 7100 50  0001 C CNN
	1    1200 6900
	1    0    0    -1  
$EndComp
Entry Wire Line
	1050 1800 1150 1900
Entry Wire Line
	1050 1700 1150 1800
Entry Wire Line
	1050 1600 1150 1700
Entry Wire Line
	1050 1500 1150 1600
Entry Wire Line
	1050 1400 1150 1500
Entry Wire Line
	1050 1300 1150 1400
Entry Wire Line
	1050 1200 1150 1300
Entry Wire Line
	1050 1100 1150 1200
Entry Wire Line
	4750 1050 4850 1150
Entry Wire Line
	4750 1150 4850 1250
Entry Wire Line
	4750 1250 4850 1350
Entry Wire Line
	4750 1350 4850 1450
Entry Wire Line
	4750 1450 4850 1550
Entry Wire Line
	4750 1550 4850 1650
Entry Wire Line
	4750 1650 4850 1750
Entry Wire Line
	4750 1750 4850 1850
Entry Wire Line
	4750 1850 4850 1950
Entry Wire Line
	4750 1950 4850 2050
Entry Wire Line
	4750 2050 4850 2150
Entry Wire Line
	4750 2150 4850 2250
Entry Wire Line
	4750 2250 4850 2350
Entry Wire Line
	4750 2350 4850 2450
Entry Wire Line
	4750 2450 4850 2550
Entry Wire Line
	7950 1100 8050 1200
Entry Wire Line
	7950 1200 8050 1300
Entry Wire Line
	7950 1300 8050 1400
Entry Wire Line
	7950 1400 8050 1500
Entry Wire Line
	7950 1500 8050 1600
Entry Wire Line
	7950 1600 8050 1700
Entry Wire Line
	7950 1700 8050 1800
Entry Wire Line
	7950 1800 8050 1900
Entry Wire Line
	7950 1900 8050 2000
Entry Wire Line
	7950 2000 8050 2100
Entry Wire Line
	7950 2100 8050 2200
Entry Wire Line
	7950 2200 8050 2300
Entry Wire Line
	7950 2300 8050 2400
Entry Wire Line
	7950 2400 8050 2500
Entry Wire Line
	7950 2500 8050 2600
Entry Wire Line
	9400 1200 9500 1100
Entry Wire Line
	9400 1300 9500 1200
Entry Wire Line
	9400 1400 9500 1300
Entry Wire Line
	9400 1500 9500 1400
Entry Wire Line
	9400 1600 9500 1500
Entry Wire Line
	9400 1700 9500 1600
Entry Wire Line
	9400 1800 9500 1700
Entry Wire Line
	9400 1900 9500 1800
Entry Wire Line
	6650 1150 6750 1050
Entry Wire Line
	6650 1250 6750 1150
Entry Wire Line
	6650 1350 6750 1250
Entry Wire Line
	6650 1450 6750 1350
Entry Wire Line
	6650 1550 6750 1450
Entry Wire Line
	6650 1650 6750 1550
Entry Wire Line
	6650 1750 6750 1650
Entry Wire Line
	6650 1850 6750 1750
Text Label 1250 1200 2    60   ~ 0
D0
Text Label 1250 1300 2    60   ~ 0
D1
Text Label 1250 1400 2    60   ~ 0
D2
Text Label 1250 1500 2    60   ~ 0
D3
Text Label 1250 1600 2    60   ~ 0
D4
Text Label 1250 1700 2    60   ~ 0
D5
Text Label 1250 1800 2    60   ~ 0
D6
Text Label 1250 1900 2    60   ~ 0
D7
Text Label 2700 1200 2    60   ~ 0
A0
Text Label 2700 1300 2    60   ~ 0
A1
Text Label 2700 1400 2    60   ~ 0
A2
Text Label 2700 1500 2    60   ~ 0
A3
Text Label 2700 1600 2    60   ~ 0
A4
Text Label 2700 1700 2    60   ~ 0
A5
Text Label 2700 1800 2    60   ~ 0
A6
Text Label 2700 1900 2    60   ~ 0
A7
Text Label 2700 2000 2    60   ~ 0
A8
Text Label 2700 2100 2    60   ~ 0
A9
Text Label 2700 2200 2    60   ~ 0
A10
Text Label 2700 2300 2    60   ~ 0
A11
Text Label 2700 2400 2    60   ~ 0
A12
Text Label 2700 2500 2    60   ~ 0
A13
Text Label 2700 2600 2    60   ~ 0
A14
Text Label 2700 2700 2    60   ~ 0
A15
Text Label 4950 1150 2    60   ~ 0
A0
Text Label 4950 1250 2    60   ~ 0
A1
Text Label 4950 1350 2    60   ~ 0
A2
Text Label 4950 1450 2    60   ~ 0
A3
Text Label 4950 1550 2    60   ~ 0
A4
Text Label 4950 1650 2    60   ~ 0
A5
Text Label 4950 1750 2    60   ~ 0
A6
Text Label 4950 1850 2    60   ~ 0
A7
Text Label 4950 1950 2    60   ~ 0
A8
Text Label 4950 2050 2    60   ~ 0
A9
Text Label 4950 2150 2    60   ~ 0
A10
Text Label 4950 2250 2    60   ~ 0
A11
Text Label 4950 2350 2    60   ~ 0
A12
Text Label 4950 2450 2    60   ~ 0
A13
Text Label 4950 2550 2    60   ~ 0
A14
Text HLabel 9800 5350 2    60   Input ~ 0
ROMSEL
Text HLabel 9800 5250 2    60   Input ~ 0
RD
Text HLabel 9800 5150 2    60   Input ~ 0
WR
Entry Wire Line
	9700 2300 9800 2200
Text Label 9700 2300 2    60   ~ 0
A15
Text Label 8050 1200 0    60   ~ 0
A0
Text Label 8050 1300 0    60   ~ 0
A1
Text Label 8050 1400 0    60   ~ 0
A2
Text Label 8050 1500 0    60   ~ 0
A3
Text Label 8050 1600 0    60   ~ 0
A4
Text Label 8050 1700 0    60   ~ 0
A5
Text Label 8050 1800 0    60   ~ 0
A6
Text Label 8050 1900 0    60   ~ 0
A7
Text Label 8050 2000 0    60   ~ 0
A8
Text Label 8050 2100 0    60   ~ 0
A9
Text Label 8050 2200 0    60   ~ 0
A10
Text Label 8050 2300 0    60   ~ 0
A11
Text Label 8050 2400 0    60   ~ 0
A12
Text Label 8050 2500 0    60   ~ 0
A13
Text Label 8050 2600 0    60   ~ 0
A14
Text Label 9300 1200 0    60   ~ 0
D0
Text Label 9300 1300 0    60   ~ 0
D1
Text Label 9300 1400 0    60   ~ 0
D2
Text Label 9300 1500 0    60   ~ 0
D3
Text Label 9300 1600 0    60   ~ 0
D4
Text Label 9300 1700 0    60   ~ 0
D5
Text Label 9300 1800 0    60   ~ 0
D6
Text Label 9300 1900 0    60   ~ 0
D7
Text Label 6550 1150 0    60   ~ 0
D0
Text Label 6550 1250 0    60   ~ 0
D1
Text Label 6550 1350 0    60   ~ 0
D2
Text Label 6550 1450 0    60   ~ 0
D3
Text Label 6550 1550 0    60   ~ 0
D4
Text Label 6550 1650 0    60   ~ 0
D5
Text Label 6550 1750 0    60   ~ 0
D6
Text Label 6550 1850 0    60   ~ 0
D7
Text HLabel 10050 800  2    60   Output ~ 0
A[0..15]
Text HLabel 10050 700  2    60   BiDi ~ 0
D[0..7]
Wire Wire Line
	2450 4000 2700 4000
Wire Wire Line
	1250 3100 600  3100
Wire Wire Line
	600  3100 600  3200
Wire Wire Line
	600  3000 1250 3000
Wire Wire Line
	600  2100 600  3000
Wire Wire Line
	800  6900 800  7350
Wire Wire Line
	1250 2900 900  2900
Wire Wire Line
	700  2900 600  2900
Connection ~ 600  2900
Wire Wire Line
	1250 2200 900  2200
Wire Wire Line
	700  2200 600  2200
Connection ~ 600  2200
Wire Wire Line
	1250 2600 900  2600
Wire Wire Line
	700  2600 600  2600
Connection ~ 600  2600
Wire Wire Line
	1250 2400 900  2400
Wire Wire Line
	700  2400 600  2400
Connection ~ 600  2400
Wire Wire Line
	1850 7100 800  7100
Connection ~ 800  7100
Wire Wire Line
	3600 2450 3600 2500
Wire Wire Line
	1000 6900 800  6900
Wire Wire Line
	1400 6900 1850 6900
Wire Bus Line
	7950 800  7950 2500
Wire Bus Line
	1050 700  1050 1800
Wire Bus Line
	9500 700  9500 1800
Wire Bus Line
	6750 700  6750 1750
Wire Bus Line
	4750 800  4750 2450
Wire Bus Line
	2800 800  2800 2600
Wire Wire Line
	2550 1200 2700 1200
Wire Wire Line
	2550 1300 2700 1300
Wire Wire Line
	2550 1400 2700 1400
Wire Wire Line
	2550 1500 2700 1500
Wire Wire Line
	2550 1600 2700 1600
Wire Wire Line
	2550 1700 2700 1700
Wire Wire Line
	2550 1800 2700 1800
Wire Wire Line
	2550 1900 2700 1900
Wire Wire Line
	2550 2000 2700 2000
Wire Wire Line
	2550 2100 2700 2100
Wire Wire Line
	2550 2200 2700 2200
Wire Wire Line
	2550 2300 2700 2300
Wire Wire Line
	2550 2400 2700 2400
Wire Wire Line
	2550 2500 2700 2500
Wire Wire Line
	2550 2600 2700 2600
Wire Wire Line
	2550 2700 2700 2700
Wire Wire Line
	1150 1200 1250 1200
Wire Wire Line
	1150 1300 1250 1300
Wire Wire Line
	1150 1400 1250 1400
Wire Wire Line
	1150 1500 1250 1500
Wire Wire Line
	1150 1600 1250 1600
Wire Wire Line
	1150 1700 1250 1700
Wire Wire Line
	1150 1800 1250 1800
Wire Wire Line
	1150 1900 1250 1900
Wire Wire Line
	4850 1150 5050 1150
Wire Wire Line
	4850 1250 5050 1250
Wire Wire Line
	4850 1350 5050 1350
Wire Wire Line
	4850 1450 5050 1450
Wire Wire Line
	4850 1550 5050 1550
Wire Wire Line
	4850 1650 5050 1650
Wire Wire Line
	4850 1750 5050 1750
Wire Wire Line
	4850 1850 5050 1850
Wire Wire Line
	4850 1950 5050 1950
Wire Wire Line
	4850 2050 5050 2050
Wire Wire Line
	4850 2150 5050 2150
Wire Wire Line
	4850 2250 5050 2250
Wire Wire Line
	4850 2350 5050 2350
Wire Wire Line
	4850 2450 5050 2450
Wire Wire Line
	4850 2550 5050 2550
Wire Wire Line
	6450 1150 6650 1150
Wire Wire Line
	6450 1250 6650 1250
Wire Wire Line
	6450 1350 6650 1350
Wire Wire Line
	6450 1450 6650 1450
Wire Wire Line
	6450 1550 6650 1550
Wire Wire Line
	6450 1650 6650 1650
Wire Wire Line
	6450 1750 6650 1750
Wire Wire Line
	6450 1850 6650 1850
Wire Wire Line
	8050 1200 8250 1200
Wire Wire Line
	8050 1300 8250 1300
Wire Wire Line
	8050 1400 8250 1400
Wire Wire Line
	8050 1500 8250 1500
Wire Wire Line
	8050 1600 8250 1600
Wire Wire Line
	8050 1700 8250 1700
Wire Wire Line
	8050 1800 8250 1800
Wire Wire Line
	8050 1900 8250 1900
Wire Wire Line
	8050 2000 8250 2000
Wire Wire Line
	8050 2100 8250 2100
Wire Wire Line
	8050 2200 8250 2200
Wire Wire Line
	8050 2300 8250 2300
Wire Wire Line
	8050 2400 8250 2400
Wire Wire Line
	8050 2500 8250 2500
Wire Wire Line
	8050 2600 8250 2600
Wire Wire Line
	9250 1200 9400 1200
Wire Wire Line
	9250 1300 9400 1300
Wire Wire Line
	9250 1400 9400 1400
Wire Wire Line
	9250 1500 9400 1500
Wire Wire Line
	9250 1600 9400 1600
Wire Wire Line
	9250 1700 9400 1700
Wire Wire Line
	9250 1800 9400 1800
Wire Wire Line
	9250 1900 9400 1900
Wire Wire Line
	9250 2150 9450 2150
Wire Wire Line
	4750 5250 9800 5250
Wire Wire Line
	4650 5350 9800 5350
Wire Wire Line
	1050 2700 1250 2700
Wire Wire Line
	2550 2800 2700 2800
Wire Bus Line
	2800 800  10050 800 
Wire Bus Line
	1050 700  10050 700 
Wire Wire Line
	1250 2800 1150 2800
Wire Wire Line
	3600 2700 3600 7000
Wire Wire Line
	3600 3100 2550 3100
Wire Wire Line
	9250 2300 9700 2300
Wire Bus Line
	9800 800  9800 2200
Wire Wire Line
	4400 2750 5050 2750
Wire Wire Line
	4750 5250 4750 2850
Wire Wire Line
	4750 2850 5050 2850
Wire Wire Line
	4650 5350 4650 2950
Wire Wire Line
	4650 2950 5050 2950
Wire Wire Line
	9450 2150 9450 5150
Wire Wire Line
	9250 2050 9350 2050
Wire Wire Line
	9350 2050 9350 5250
Connection ~ 9350 5250
Text HLabel 9850 5550 2    60   Output ~ 0
RESET
Connection ~ 3600 3100
Wire Wire Line
	2700 2800 2700 5050
$Comp
L Osc_8pin U2
U 1 1 5A43653F
P 1900 4150
F 0 "U2" H 1900 4450 60  0000 C CNN
F 1 "ECS-2100AX-2.0MHZ" H 1950 3850 60  0000 C CNN
F 2 "Housings_DIP:DIP-8_W7.62mm_Socket" H 1900 4150 60  0001 C CNN
F 3 "" H 1900 4150 60  0001 C CNN
	1    1900 4150
	1    0    0    -1  
$EndComp
Text HLabel 9800 5050 2    60   Output ~ 0
PHI2
Wire Wire Line
	2700 5050 9800 5050
Connection ~ 2700 4000
Text HLabel 9800 4950 2    60   Input ~ 0
IRQ
Text HLabel 9800 4850 2    60   Output ~ 0
RWB
Wire Wire Line
	9800 4950 1050 4950
Wire Wire Line
	1050 4950 1050 2700
Wire Wire Line
	1150 2800 1150 4850
Wire Wire Line
	1150 4850 9800 4850
Wire Wire Line
	3150 7000 4800 7000
NoConn ~ 3150 7100
Wire Wire Line
	9850 5550 4800 5550
Wire Wire Line
	4800 5550 4800 7000
Connection ~ 3600 7000
Entry Wire Line
	2700 2700 2800 2600
Entry Wire Line
	2700 2400 2800 2300
Entry Wire Line
	2700 2500 2800 2400
Entry Wire Line
	2700 2600 2800 2500
Entry Wire Line
	2700 1200 2800 1100
Entry Wire Line
	2700 1300 2800 1200
Entry Wire Line
	2700 1400 2800 1300
Entry Wire Line
	2700 1500 2800 1400
Entry Wire Line
	2700 1600 2800 1500
Entry Wire Line
	2700 1700 2800 1600
Entry Wire Line
	2700 1800 2800 1700
Entry Wire Line
	2700 1900 2800 1800
Entry Wire Line
	2700 2000 2800 1900
Entry Wire Line
	2700 2100 2800 2000
Entry Wire Line
	2700 2200 2800 2100
Entry Wire Line
	2700 2300 2800 2200
$Comp
L VCC #PWR05
U 1 1 5A514B68
P 1700 6650
F 0 "#PWR05" H 1700 6500 50  0001 C CNN
F 1 "VCC" H 1700 6800 50  0000 C CNN
F 2 "" H 1700 6650 50  0001 C CNN
F 3 "" H 1700 6650 50  0001 C CNN
	1    1700 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 7000 1700 7000
Wire Wire Line
	1700 7000 1700 6650
$Comp
L VCC #PWR06
U 1 1 5A514D73
P 4400 2400
F 0 "#PWR06" H 4400 2250 50  0001 C CNN
F 1 "VCC" H 4400 2550 50  0000 C CNN
F 2 "" H 4400 2400 50  0001 C CNN
F 3 "" H 4400 2400 50  0001 C CNN
	1    4400 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2400 4400 2750
Wire Wire Line
	9450 5150 9800 5150
Wire Wire Line
	3150 6900 3500 6900
Wire Wire Line
	3500 6900 3500 5050
Connection ~ 3500 5050
$EndSCHEMATC
