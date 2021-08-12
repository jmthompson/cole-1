EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 3 3
Title "COLE-1+ Main Logic"
Date "2021-08-09"
Rev "2.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L cole-1-rescue:VCC #PWR09
U 1 1 5A4373CF
P 800 1750
F 0 "#PWR09" H 800 1600 50  0001 C CNN
F 1 "VCC" H 800 1900 50  0000 C CNN
F 2 "" H 800 1750 50  0001 C CNN
F 3 "" H 800 1750 50  0001 C CNN
	1    800  1750
	1    0    0    -1  
$EndComp
$Comp
L cole-1-rescue:GND #PWR015
U 1 1 5A437413
P 2050 3950
F 0 "#PWR015" H 2050 3700 50  0001 C CNN
F 1 "GND" H 2050 3800 50  0000 C CNN
F 2 "" H 2050 3950 50  0001 C CNN
F 3 "" H 2050 3950 50  0001 C CNN
	1    2050 3950
	1    0    0    -1  
$EndComp
$Comp
L cole-1-rescue:GND #PWR010
U 1 1 5A437D93
P 800 7350
F 0 "#PWR010" H 800 7100 50  0001 C CNN
F 1 "GND" H 800 7200 50  0000 C CNN
F 2 "" H 800 7350 50  0001 C CNN
F 3 "" H 800 7350 50  0001 C CNN
	1    800  7350
	1    0    0    -1  
$EndComp
$Comp
L cole-1-rescue:R_Small R4
U 1 1 5A4389A5
P 1000 2800
F 0 "R4" V 1100 2750 50  0000 L CNN
F 1 "3.3K" V 1000 2750 30  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1000 2800 50  0001 C CNN
F 3 "" H 1000 2800 50  0001 C CNN
	1    1000 2800
	0    1    1    0   
$EndComp
$Comp
L cole-1-rescue:R_Small R1
U 1 1 5A438DE8
P 1000 1900
F 0 "R1" V 900 1850 50  0000 L CNN
F 1 "3.3K" V 1000 1850 30  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1000 1900 50  0001 C CNN
F 3 "" H 1000 1900 50  0001 C CNN
	1    1000 1900
	0    1    1    0   
$EndComp
$Comp
L cole-1-rescue:R_Small R3
U 1 1 5A438F75
P 1000 2700
F 0 "R3" V 900 2650 50  0000 L CNN
F 1 "3.3K" V 1000 2650 30  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1000 2700 50  0001 C CNN
F 3 "" H 1000 2700 50  0001 C CNN
	1    1000 2700
	0    1    1    0   
$EndComp
$Comp
L cole-1-rescue:R_Small R5
U 1 1 5A4391F7
P 3650 6500
F 0 "R5" H 3500 6550 50  0000 L CNN
F 1 "10k" H 3600 6500 30  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3650 6500 50  0001 C CNN
F 3 "" H 3650 6500 50  0001 C CNN
	1    3650 6500
	-1   0    0    1   
$EndComp
$Comp
L Memory_RAM:CY62256-70PC U6
U 1 1 5A43EA39
P 6350 1850
F 0 "U6" H 6350 2800 60  0000 C CNN
F 1 "CY62256NLL-70PXC" H 7100 1000 60  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_Socket" H 6350 1850 50  0001 C CIN
F 3 "" H 6350 1850 50  0001 C CNN
	1    6350 1850
	1    0    0    -1  
$EndComp
$Comp
L MAX1232:MAX1232CPA U3
U 1 1 5A4409A5
P 2500 7050
F 0 "U3" H 2150 7650 60  0000 L BNN
F 1 "MAX1232CPA" H 2600 6500 60  0000 L BNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 2600 7900 50  0001 L BNN
F 3 "Maxim Integrated" H 2750 8100 50  0001 L BNN
	1    2500 7050
	1    0    0    -1  
$EndComp
$Comp
L cole-1-rescue:VCC #PWR016
U 1 1 5A44137B
P 2500 6200
F 0 "#PWR016" H 2500 6050 50  0001 C CNN
F 1 "VCC" H 2500 6350 50  0000 C CNN
F 2 "" H 2500 6200 50  0001 C CNN
F 3 "" H 2500 6200 50  0001 C CNN
	1    2500 6200
	1    0    0    -1  
$EndComp
$Comp
L cole-1-rescue:SW_Push SW1
U 1 1 5A442107
P 1200 6650
F 0 "SW1" H 1250 6750 50  0000 L CNN
F 1 "SW_Push" H 1200 6590 50  0001 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 1200 6850 50  0001 C CNN
F 3 "" H 1200 6850 50  0001 C CNN
	1    1200 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 2800 1100 2800
Wire Wire Line
	900  2800 800  2800
Wire Wire Line
	1450 1900 1100 1900
Wire Wire Line
	900  1900 800  1900
Wire Wire Line
	1450 2700 1100 2700
Wire Wire Line
	900  2700 800  2700
Wire Wire Line
	900  2100 800  2100
Wire Wire Line
	1850 7100 800  7100
Connection ~ 800  7100
Wire Wire Line
	3650 6350 3650 6400
Wire Wire Line
	3650 6600 3650 7000
Wire Wire Line
	6850 2250 7050 2250
NoConn ~ 3150 7100
$Comp
L cole-1-rescue:VCC #PWR013
U 1 1 5A514B68
P 1700 6450
F 0 "#PWR013" H 1700 6300 50  0001 C CNN
F 1 "VCC" H 1700 6600 50  0000 C CNN
F 2 "" H 1700 6450 50  0001 C CNN
F 3 "" H 1700 6450 50  0001 C CNN
	1    1700 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 7000 1700 7000
Wire Wire Line
	800  7100 800  7350
$Comp
L osc:Osc_8pin U1
U 1 1 5A43653F
P 1450 5100
F 0 "U1" H 1300 5450 60  0000 C CNN
F 1 "EC11TS-3.6864M" H 1900 4750 60  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_Socket" H 1450 5100 60  0001 C CNN
F 3 "" H 1450 5100 60  0001 C CNN
	1    1450 5100
	1    0    0    -1  
$EndComp
Text GLabel 1450 2000 0    50   Input ~ 0
~IRQ
Text GLabel 6850 2350 2    50   Input ~ 0
~WR
Text GLabel 7050 2250 2    50   Input ~ 0
~RD
Text GLabel 2650 1200 2    50   Output ~ 0
A0
Text GLabel 2650 1300 2    50   Output ~ 0
A1
Text GLabel 2650 1400 2    50   Output ~ 0
A2
Text GLabel 2650 1500 2    50   Output ~ 0
A3
Text GLabel 2650 1600 2    50   Output ~ 0
A4
Text GLabel 2650 1700 2    50   Output ~ 0
A5
Text GLabel 2650 1800 2    50   Output ~ 0
A6
Text GLabel 2650 1900 2    50   Output ~ 0
A7
Text GLabel 2650 2000 2    50   Output ~ 0
A8
Text GLabel 2650 2100 2    50   Output ~ 0
A9
Text GLabel 2650 2200 2    50   Output ~ 0
A10
Text GLabel 2650 2300 2    50   Output ~ 0
A11
Text GLabel 2650 2400 2    50   Output ~ 0
A12
Text GLabel 2650 2500 2    50   Output ~ 0
A13
Text GLabel 2650 2600 2    50   Output ~ 0
A14
Text GLabel 2650 2700 2    50   Output ~ 0
A15
Text GLabel 5850 1150 0    50   Input ~ 0
A0
Text GLabel 5850 1250 0    50   Input ~ 0
A1
Text GLabel 5850 1350 0    50   Input ~ 0
A2
Text GLabel 5850 1450 0    50   Input ~ 0
A3
Text GLabel 5850 1550 0    50   Input ~ 0
A4
Text GLabel 5850 1650 0    50   Input ~ 0
A5
Text GLabel 5850 1750 0    50   Input ~ 0
A6
Text GLabel 5850 1850 0    50   Input ~ 0
A7
Text GLabel 5850 1950 0    50   Input ~ 0
A8
Text GLabel 5850 2050 0    50   Input ~ 0
A9
Text GLabel 5850 2150 0    50   Input ~ 0
A10
Text GLabel 5850 2250 0    50   Input ~ 0
A11
Text GLabel 5850 2350 0    50   Input ~ 0
A12
Text GLabel 5850 2450 0    50   Input ~ 0
A13
Text GLabel 5850 2550 0    50   Input ~ 0
A14
Text GLabel 6850 1150 2    50   BiDi ~ 0
D0
Text GLabel 6850 1250 2    50   BiDi ~ 0
D1
Text GLabel 6850 1350 2    50   BiDi ~ 0
D2
Text GLabel 6850 1450 2    50   BiDi ~ 0
D3
Text GLabel 6850 1550 2    50   BiDi ~ 0
D4
Text GLabel 6850 1650 2    50   BiDi ~ 0
D5
Text GLabel 6850 1750 2    50   BiDi ~ 0
D6
Text GLabel 6850 1850 2    50   BiDi ~ 0
D7
Text GLabel 6850 2050 2    50   Input ~ 0
~RAMSEL
Text GLabel 3950 7000 2    50   Output ~ 0
~RESET
Wire Wire Line
	3150 7000 3650 7000
Text GLabel 1450 1200 0    50   Input ~ 0
~RESET
Connection ~ 3650 7000
Wire Wire Line
	3650 7000 3950 7000
Text GLabel 1450 1500 0    50   Input ~ 0
PHI2
Text GLabel 1450 2400 0    50   Output ~ 0
R~W
Text GLabel 1850 5100 2    50   Output ~ 0
PHI2
Text GLabel 3150 6650 2    50   Input ~ 0
PHI2
$Comp
L cole-1-rescue:GND #PWR017
U 1 1 61452521
P 2500 7800
F 0 "#PWR017" H 2500 7550 50  0001 C CNN
F 1 "GND" H 2500 7650 50  0000 C CNN
F 2 "" H 2500 7800 50  0001 C CNN
F 3 "" H 2500 7800 50  0001 C CNN
	1    2500 7800
	1    0    0    -1  
$EndComp
$Comp
L cole-1-rescue:VCC #PWR011
U 1 1 6145304C
P 1450 4600
F 0 "#PWR011" H 1450 4450 50  0001 C CNN
F 1 "VCC" H 1450 4750 50  0000 C CNN
F 2 "" H 1450 4600 50  0001 C CNN
F 3 "" H 1450 4600 50  0001 C CNN
	1    1450 4600
	1    0    0    -1  
$EndComp
$Comp
L cole-1-rescue:GND #PWR012
U 1 1 6145355F
P 1450 5600
F 0 "#PWR012" H 1450 5350 50  0001 C CNN
F 1 "GND" H 1450 5450 50  0000 C CNN
F 2 "" H 1450 5600 50  0001 C CNN
F 3 "" H 1450 5600 50  0001 C CNN
	1    1450 5600
	1    0    0    -1  
$EndComp
$Comp
L cole-1-rescue:VCC #PWR014
U 1 1 614669D9
P 2050 850
F 0 "#PWR014" H 2050 700 50  0001 C CNN
F 1 "VCC" H 2050 1000 50  0000 C CNN
F 2 "" H 2050 850 50  0001 C CNN
F 3 "" H 2050 850 50  0001 C CNN
	1    2050 850 
	1    0    0    -1  
$EndComp
Text GLabel 2650 2900 2    50   BiDi ~ 0
D0
Text GLabel 2650 3000 2    50   BiDi ~ 0
D1
Text GLabel 2650 3100 2    50   BiDi ~ 0
D2
Text GLabel 2650 3200 2    50   BiDi ~ 0
D3
Text GLabel 2650 3300 2    50   BiDi ~ 0
D4
Text GLabel 2650 3400 2    50   BiDi ~ 0
D5
Text GLabel 2650 3500 2    50   BiDi ~ 0
D6
Text GLabel 2650 3600 2    50   BiDi ~ 0
D7
$Comp
L 65xx:W65C816SxP U?
U 1 1 5A4348C3
P 2050 2400
AR Path="/5A4348C3" Ref="U?"  Part="1" 
AR Path="/5A457B7F/5A4348C3" Ref="U2"  Part="1" 
F 0 "U2" H 2050 3450 60  0000 C CNN
F 1 "W65C816" H 2300 1000 60  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm_Socket" H 1500 2600 60  0001 C CNN
F 3 "" H 1500 2600 60  0000 C CNN
	1    2050 2400
	1    0    0    -1  
$EndComp
NoConn ~ 1450 3500
NoConn ~ 1450 3600
NoConn ~ 1450 3200
NoConn ~ 1450 3300
NoConn ~ 1450 2900
NoConn ~ 1450 3000
Wire Wire Line
	1450 2100 1100 2100
$Comp
L cole-1-rescue:R_Small R2
U 1 1 5A43905F
P 1000 2100
F 0 "R2" V 900 2050 50  0000 L CNN
F 1 "3.3K" V 1000 2050 30  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1000 2100 50  0001 C CNN
F 3 "" H 1000 2100 50  0001 C CNN
	1    1000 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	800  1750 800  1900
Connection ~ 800  2700
Wire Wire Line
	800  2700 800  2800
Connection ~ 800  1900
Wire Wire Line
	800  1900 800  2100
Connection ~ 800  2100
Wire Wire Line
	800  2100 800  2700
Text GLabel 4600 1850 2    50   BiDi ~ 0
D7
Text GLabel 4600 1750 2    50   BiDi ~ 0
D6
Text GLabel 4600 1650 2    50   BiDi ~ 0
D5
Text GLabel 4600 1550 2    50   BiDi ~ 0
D4
Text GLabel 4600 1450 2    50   BiDi ~ 0
D3
Text GLabel 4600 1350 2    50   BiDi ~ 0
D2
Text GLabel 4600 1250 2    50   BiDi ~ 0
D1
Text GLabel 4600 1150 2    50   BiDi ~ 0
D0
Text GLabel 3600 2550 0    50   Input ~ 0
A14
Text GLabel 3600 2450 0    50   Input ~ 0
A13
Text GLabel 3600 2350 0    50   Input ~ 0
A12
Text GLabel 3600 2250 0    50   Input ~ 0
A11
Text GLabel 3600 2150 0    50   Input ~ 0
A10
Text GLabel 3600 2050 0    50   Input ~ 0
A9
Text GLabel 3600 1950 0    50   Input ~ 0
A8
Text GLabel 3600 1850 0    50   Input ~ 0
A7
Text GLabel 3600 1750 0    50   Input ~ 0
A6
Text GLabel 3600 1650 0    50   Input ~ 0
A5
Text GLabel 3600 1550 0    50   Input ~ 0
A4
Text GLabel 3600 1450 0    50   Input ~ 0
A3
Text GLabel 3600 1350 0    50   Input ~ 0
A2
Text GLabel 3600 1250 0    50   Input ~ 0
A1
Text GLabel 3600 1150 0    50   Input ~ 0
A0
$Comp
L Memory_RAM:CY62256-70PC U?
U 1 1 5A43E9DE
P 4100 1850
AR Path="/5A43E9DE" Ref="U?"  Part="1" 
AR Path="/5A457B7F/5A43E9DE" Ref="U4"  Part="1" 
F 0 "U4" H 4100 2850 60  0000 C CNN
F 1 "AT28C256-15PU" H 4750 950 60  0000 C CNN
F 2 "Package_DIP:DIP-28_W15.24mm_Socket" H 4100 1850 50  0001 C CNN
F 3 "" H 4100 1850 50  0001 C CNN
	1    4100 1850
	1    0    0    -1  
$EndComp
$Comp
L cole-1-rescue:VCC #PWR023
U 1 1 614BD6BA
P 6350 950
F 0 "#PWR023" H 6350 800 50  0001 C CNN
F 1 "VCC" H 6350 1100 50  0000 C CNN
F 2 "" H 6350 950 50  0001 C CNN
F 3 "" H 6350 950 50  0001 C CNN
	1    6350 950 
	1    0    0    -1  
$EndComp
$Comp
L cole-1-rescue:GND #PWR024
U 1 1 614BE8C3
P 6350 2750
F 0 "#PWR024" H 6350 2500 50  0001 C CNN
F 1 "GND" H 6350 2600 50  0000 C CNN
F 2 "" H 6350 2750 50  0001 C CNN
F 3 "" H 6350 2750 50  0001 C CNN
	1    6350 2750
	1    0    0    -1  
$EndComp
$Comp
L cole-1-rescue:GND #PWR020
U 1 1 614CD52A
P 4100 2750
F 0 "#PWR020" H 4100 2500 50  0001 C CNN
F 1 "GND" H 4100 2600 50  0000 C CNN
F 2 "" H 4100 2750 50  0001 C CNN
F 3 "" H 4100 2750 50  0001 C CNN
	1    4100 2750
	1    0    0    -1  
$EndComp
$Comp
L cole-1-rescue:VCC #PWR019
U 1 1 614D66F9
P 4100 950
F 0 "#PWR019" H 4100 800 50  0001 C CNN
F 1 "VCC" H 4100 1100 50  0000 C CNN
F 2 "" H 4100 950 50  0001 C CNN
F 3 "" H 4100 950 50  0001 C CNN
	1    4100 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 1300 9550 1300
Wire Wire Line
	9300 1900 9550 1900
Text GLabel 9550 1900 2    50   Input ~ 0
~ROMSEL
Wire Wire Line
	9300 1800 10000 1800
Text GLabel 10000 1800 2    50   Input ~ 0
~RAMSEL
Wire Wire Line
	9300 1700 9550 1700
Text GLabel 9550 1700 2    50   Input ~ 0
~VIASEL
Text GLabel 9550 1300 2    50   Input ~ 0
~RD
Text GLabel 10000 1400 2    50   Input ~ 0
~WR
Wire Wire Line
	9300 1400 10000 1400
Wire Wire Line
	9300 1600 10000 1600
Text GLabel 10000 1600 2    50   Input ~ 0
~UARTSEL
Wire Wire Line
	9300 1500 9550 1500
Text GLabel 9550 1500 2    50   Input ~ 0
~IRQ
Wire Wire Line
	8300 1400 8050 1400
Text GLabel 8050 1400 0    50   Input ~ 0
~VIAIRQ
Wire Wire Line
	8300 1300 7750 1300
Text GLabel 7750 1300 0    50   Input ~ 0
~UARTIRQ
Wire Wire Line
	8300 1200 8050 1200
Text GLabel 8050 1200 0    50   Input ~ 0
R~W
Text GLabel 8300 1100 0    50   Input ~ 0
PHI2
Text GLabel 8300 2100 0    50   Input ~ 0
A15
Text GLabel 8300 2000 0    50   Input ~ 0
A14
Text GLabel 8300 1900 0    50   Input ~ 0
A13
Text GLabel 8300 1800 0    50   Input ~ 0
A12
Text GLabel 8300 1500 0    50   Input ~ 0
A4
$Comp
L gal:CGL U8
U 1 1 613F9AE2
P 8800 1600
F 0 "U8" H 8500 2200 50  0000 C CNN
F 1 "CGL" H 9050 2200 50  0000 C CNN
F 2 "Package_DIP:DIP-24_W7.62mm_Socket" H 8800 1600 50  0001 C CNN
F 3 "" H 8800 1600 50  0001 C CNN
	1    8800 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2250 4800 2250
Text GLabel 4600 2350 2    50   Input ~ 0
~WR
Text GLabel 4800 2250 2    50   Input ~ 0
~RD
Text GLabel 4600 2050 2    50   Input ~ 0
~ROMSEL
$Comp
L cole-1-rescue:GND #PWR029
U 1 1 615EC56E
P 8800 2300
F 0 "#PWR029" H 8800 2050 50  0001 C CNN
F 1 "GND" H 8800 2150 50  0000 C CNN
F 2 "" H 8800 2300 50  0001 C CNN
F 3 "" H 8800 2300 50  0001 C CNN
	1    8800 2300
	1    0    0    -1  
$EndComp
$Comp
L cole-1-rescue:VCC #PWR028
U 1 1 615ECD3B
P 8800 900
F 0 "#PWR028" H 8800 750 50  0001 C CNN
F 1 "VCC" H 8800 1050 50  0000 C CNN
F 2 "" H 8800 900 50  0001 C CNN
F 3 "" H 8800 900 50  0001 C CNN
	1    8800 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 5600 7300 5600
Wire Wire Line
	7300 5600 7300 6000
Wire Wire Line
	7700 4800 6800 4800
Wire Wire Line
	6800 4700 7700 4700
Text GLabel 4650 4450 0    50   Input ~ 0
A0
Text GLabel 4650 4550 0    50   Input ~ 0
A1
Text GLabel 4650 4650 0    50   Input ~ 0
A2
Text GLabel 4650 4750 0    50   Input ~ 0
A3
Text GLabel 4650 4250 0    50   Input ~ 0
~VIASEL
Text GLabel 4650 3750 0    50   Input ~ 0
PHI2
Text GLabel 4650 4950 0    50   Input ~ 0
R~W
Text GLabel 4350 3650 0    50   Input ~ 0
~RESET
Text GLabel 7700 3600 0    50   BiDi ~ 0
D0
Text GLabel 7700 3700 0    50   BiDi ~ 0
D1
Text GLabel 7700 3800 0    50   BiDi ~ 0
D2
Text GLabel 7700 3900 0    50   BiDi ~ 0
D3
Text GLabel 7700 4000 0    50   BiDi ~ 0
D4
Text GLabel 7700 4100 0    50   BiDi ~ 0
D5
Text GLabel 7700 4200 0    50   BiDi ~ 0
D6
Text GLabel 7700 4300 0    50   BiDi ~ 0
D7
Text GLabel 7700 4600 0    50   Input ~ 0
A0
Text GLabel 7700 4900 0    50   Input ~ 0
~UARTSEL
Text GLabel 7500 4500 0    50   Input ~ 0
R~W
$Comp
L cole-1-rescue:GND #PWR?
U 1 1 6160D4B1
P 8200 6200
AR Path="/5A46207D/6160D4B1" Ref="#PWR?"  Part="1" 
AR Path="/5A457B7F/6160D4B1" Ref="#PWR027"  Part="1" 
F 0 "#PWR027" H 8200 5950 50  0001 C CNN
F 1 "GND" H 8200 6050 50  0000 C CNN
F 2 "" H 8200 6200 50  0001 C CNN
F 3 "" H 8200 6200 50  0001 C CNN
	1    8200 6200
	1    0    0    -1  
$EndComp
Text GLabel 4650 3950 0    50   Output ~ 0
~VIAIRQ
Text GLabel 9150 3800 2    50   Output ~ 0
~UARTIRQ
Text GLabel 7450 5300 0    50   Input ~ 0
PHI2
Wire Wire Line
	7550 5300 7700 5300
Connection ~ 7550 5300
Wire Wire Line
	7550 5200 7550 5300
Wire Wire Line
	7700 5200 7550 5200
Wire Wire Line
	7450 5300 7550 5300
$Comp
L Interface_UART:MC6850 U?
U 1 1 6160D4BF
P 8200 4700
AR Path="/5A46207D/6160D4BF" Ref="U?"  Part="1" 
AR Path="/5A457B7F/6160D4BF" Ref="U7"  Part="1" 
F 0 "U7" H 8200 5600 60  0000 C CNN
F 1 "MC68B50" H 8200 3800 60  0000 C CNN
F 2 "Package_DIP:DIP-24_W15.24mm_Socket" H 8200 4050 60  0001 C CNN
F 3 "" H 8200 4050 60  0000 C CNN
	1    8200 4700
	1    0    0    -1  
$EndComp
Text GLabel 8600 5600 2    50   Output ~ 0
RTS
Text GLabel 7700 5700 0    50   Input ~ 0
CTS
Text GLabel 7700 5500 0    50   Input ~ 0
RXD
Text GLabel 8600 5500 2    50   Output ~ 0
TXD
Wire Wire Line
	7500 4500 7700 4500
Wire Wire Line
	7700 5000 7550 5000
Wire Wire Line
	7550 5000 7550 5200
Connection ~ 7550 5200
Wire Wire Line
	8200 5900 8200 6000
Wire Wire Line
	8200 6000 7300 6000
Connection ~ 8200 6000
Wire Wire Line
	8200 6000 8200 6200
$Comp
L cole-1-rescue:VCC #PWR?
U 1 1 6160D4D1
P 8200 3200
AR Path="/5A46207D/6160D4D1" Ref="#PWR?"  Part="1" 
AR Path="/5A457B7F/6160D4D1" Ref="#PWR026"  Part="1" 
F 0 "#PWR026" H 8200 3050 50  0001 C CNN
F 1 "VCC" H 8200 3350 50  0000 C CNN
F 2 "" H 8200 3200 50  0001 C CNN
F 3 "" H 8200 3200 50  0001 C CNN
	1    8200 3200
	1    0    0    -1  
$EndComp
$Comp
L 65xx:W65C22SxP U?
U 1 1 6160D4D7
P 5250 4750
AR Path="/6160D4D7" Ref="U?"  Part="1" 
AR Path="/5A46207D/6160D4D7" Ref="U?"  Part="1" 
AR Path="/5A457B7F/6160D4D7" Ref="U5"  Part="1" 
F 0 "U5" H 5250 5800 60  0000 C CNN
F 1 "WD65C22" H 5250 3600 60  0000 C CNN
F 2 "Package_DIP:DIP-40_W15.24mm_Socket" H 4750 4950 60  0001 C CNN
F 3 "" H 4750 4950 60  0000 C CNN
	1    5250 4750
	1    0    0    -1  
$EndComp
Text GLabel 4650 5150 0    50   BiDi ~ 0
D0
Text GLabel 4650 5250 0    50   BiDi ~ 0
D1
Text GLabel 4650 5350 0    50   BiDi ~ 0
D2
Text GLabel 4650 5450 0    50   BiDi ~ 0
D3
Text GLabel 4650 5550 0    50   BiDi ~ 0
D4
Text GLabel 4650 5650 0    50   BiDi ~ 0
D5
Text GLabel 4650 5750 0    50   BiDi ~ 0
D6
Text GLabel 4650 5850 0    50   BiDi ~ 0
D7
Text GLabel 5850 4950 2    50   BiDi ~ 0
PB1
Text GLabel 5850 5050 2    50   BiDi ~ 0
PB2
Text GLabel 5850 5150 2    50   BiDi ~ 0
PB3
Text GLabel 5850 5250 2    50   BiDi ~ 0
PB4
Text GLabel 5850 5350 2    50   BiDi ~ 0
PB5
Text GLabel 5850 5450 2    50   BiDi ~ 0
PB6
Text GLabel 5850 5550 2    50   BiDi ~ 0
PB7
Text GLabel 5850 4850 2    50   BiDi ~ 0
PB0
Text GLabel 5850 5750 2    50   BiDi ~ 0
CB1
Text GLabel 5850 5850 2    50   BiDi ~ 0
CB2
Wire Wire Line
	4350 3650 4650 3650
$Comp
L cole-1-rescue:GND #PWR?
U 1 1 6160D4F0
P 5250 6200
AR Path="/5A46207D/6160D4F0" Ref="#PWR?"  Part="1" 
AR Path="/5A457B7F/6160D4F0" Ref="#PWR022"  Part="1" 
F 0 "#PWR022" H 5250 5950 50  0001 C CNN
F 1 "GND" H 5250 6050 50  0000 C CNN
F 2 "" H 5250 6200 50  0001 C CNN
F 3 "" H 5250 6200 50  0001 C CNN
	1    5250 6200
	1    0    0    -1  
$EndComp
$Comp
L cole-1-rescue:VCC #PWR?
U 1 1 6160D4F6
P 5250 3300
AR Path="/5A46207D/6160D4F6" Ref="#PWR?"  Part="1" 
AR Path="/5A457B7F/6160D4F6" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 5250 3150 50  0001 C CNN
F 1 "VCC" H 5250 3450 50  0000 C CNN
F 2 "" H 5250 3300 50  0001 C CNN
F 3 "" H 5250 3300 50  0001 C CNN
	1    5250 3300
	1    0    0    -1  
$EndComp
$Comp
L cole-1-rescue:VCC #PWR?
U 1 1 6160D4FC
P 3900 4000
AR Path="/5A46207D/6160D4FC" Ref="#PWR?"  Part="1" 
AR Path="/5A457B7F/6160D4FC" Ref="#PWR018"  Part="1" 
F 0 "#PWR018" H 3900 3850 50  0001 C CNN
F 1 "VCC" H 3900 4150 50  0000 C CNN
F 2 "" H 3900 4000 50  0001 C CNN
F 3 "" H 3900 4000 50  0001 C CNN
	1    3900 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4000 3900 4150
Wire Wire Line
	3900 4150 4650 4150
Text GLabel 5850 3750 2    50   BiDi ~ 0
PA1
Text GLabel 5850 3850 2    50   BiDi ~ 0
PA2
Text GLabel 5850 3950 2    50   BiDi ~ 0
PA3
Text GLabel 5850 4050 2    50   BiDi ~ 0
PA4
Text GLabel 5850 4150 2    50   BiDi ~ 0
PA5
Text GLabel 5850 4250 2    50   BiDi ~ 0
PA6
Text GLabel 5850 4350 2    50   BiDi ~ 0
PA7
Text GLabel 5850 3650 2    50   BiDi ~ 0
PA0
Text GLabel 5850 4550 2    50   BiDi ~ 0
CA1
Text GLabel 5850 4650 2    50   BiDi ~ 0
CA2
$Comp
L cole-1-rescue:VCC #PWR?
U 1 1 6160D50E
P 6800 4550
AR Path="/5A46207D/6160D50E" Ref="#PWR?"  Part="1" 
AR Path="/5A457B7F/6160D50E" Ref="#PWR025"  Part="1" 
F 0 "#PWR025" H 6800 4400 50  0001 C CNN
F 1 "VCC" H 6800 4700 50  0000 C CNN
F 2 "" H 6800 4550 50  0001 C CNN
F 3 "" H 6800 4550 50  0001 C CNN
	1    6800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 4550 6800 4700
Connection ~ 6800 4700
Wire Wire Line
	6800 4700 6800 4800
Wire Wire Line
	1700 6450 1700 7000
Wire Wire Line
	1400 6650 1850 6650
Wire Wire Line
	1000 6650 800  6650
Wire Wire Line
	800  6650 800  7100
$Comp
L cole-1-rescue:VCC #PWR0101
U 1 1 61696487
P 3650 6350
F 0 "#PWR0101" H 3650 6200 50  0001 C CNN
F 1 "VCC" H 3650 6500 50  0000 C CNN
F 2 "" H 3650 6350 50  0001 C CNN
F 3 "" H 3650 6350 50  0001 C CNN
	1    3650 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3800 8850 3800
$Comp
L cole-1-rescue:R_Small R6
U 1 1 61137B95
P 8850 3650
F 0 "R6" H 8700 3650 50  0000 L CNN
F 1 "3.3K" V 8850 3600 30  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8850 3650 50  0001 C CNN
F 3 "" H 8850 3650 50  0001 C CNN
	1    8850 3650
	-1   0    0    1   
$EndComp
Wire Wire Line
	8200 3200 8200 3300
Wire Wire Line
	8850 3750 8850 3800
Connection ~ 8850 3800
Wire Wire Line
	8850 3800 9150 3800
Wire Wire Line
	8850 3550 8850 3300
Wire Wire Line
	8850 3300 8200 3300
Connection ~ 8200 3300
Wire Wire Line
	8200 3300 8200 3400
Text GLabel 8300 1600 0    50   Input ~ 0
A10
Text GLabel 8300 1700 0    50   Input ~ 0
A11
$EndSCHEMATC
