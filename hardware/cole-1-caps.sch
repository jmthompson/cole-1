EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLetter 11000 8500
encoding utf-8
Sheet 2 3
Title "COLE-1+ I/O Ports & Decoupling Capacitors"
Date "2021-08-09"
Rev "2.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L cole-1-rescue:C_Small C6
U 1 1 5A48259A
P 7450 4400
F 0 "C6" V 7300 4350 50  0000 L CNN
F 1 "0.1u" V 7600 4350 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7450 4400 50  0001 C CNN
F 3 "" H 7450 4400 50  0001 C CNN
	1    7450 4400
	0    1    1    0   
$EndComp
$Comp
L cole-1-rescue:C_Small C7
U 1 1 5A4827B9
P 7450 4700
F 0 "C7" V 7300 4650 50  0000 L CNN
F 1 "0.1u" V 7600 4650 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7450 4700 50  0001 C CNN
F 3 "" H 7450 4700 50  0001 C CNN
	1    7450 4700
	0    1    1    0   
$EndComp
$Comp
L cole-1-rescue:C_Small C8
U 1 1 5A48281D
P 7450 5000
F 0 "C8" V 7300 4950 50  0000 L CNN
F 1 "0.1u" V 7600 4950 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7450 5000 50  0001 C CNN
F 3 "" H 7450 5000 50  0001 C CNN
	1    7450 5000
	0    1    1    0   
$EndComp
$Comp
L cole-1-rescue:C_Small C9
U 1 1 5A482823
P 7450 5300
F 0 "C9" V 7300 5250 50  0000 L CNN
F 1 "0.1u" V 7600 5250 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7450 5300 50  0001 C CNN
F 3 "" H 7450 5300 50  0001 C CNN
	1    7450 5300
	0    1    1    0   
$EndComp
$Comp
L cole-1-rescue:C_Small C2
U 1 1 5A48299D
P 7450 3200
F 0 "C2" V 7300 3150 50  0000 L CNN
F 1 "0.1u" V 7600 3150 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7450 3200 50  0001 C CNN
F 3 "" H 7450 3200 50  0001 C CNN
	1    7450 3200
	0    1    1    0   
$EndComp
$Comp
L cole-1-rescue:C_Small C3
U 1 1 5A4829A3
P 7450 3500
F 0 "C3" V 7300 3450 50  0000 L CNN
F 1 "0.1u" V 7600 3450 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7450 3500 50  0001 C CNN
F 3 "" H 7450 3500 50  0001 C CNN
	1    7450 3500
	0    1    1    0   
$EndComp
$Comp
L cole-1-rescue:C_Small C4
U 1 1 5A4829A9
P 7450 3800
F 0 "C4" V 7300 3750 50  0000 L CNN
F 1 "0.1u" V 7600 3750 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7450 3800 50  0001 C CNN
F 3 "" H 7450 3800 50  0001 C CNN
	1    7450 3800
	0    1    1    0   
$EndComp
$Comp
L cole-1-rescue:C_Small C5
U 1 1 5A4829AF
P 7450 4100
F 0 "C5" V 7300 4050 50  0000 L CNN
F 1 "0.1u" V 7600 4050 50  0001 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7450 4100 50  0001 C CNN
F 3 "" H 7450 4100 50  0001 C CNN
	1    7450 4100
	0    1    1    0   
$EndComp
$Comp
L cole-1-rescue:GND #PWR08
U 1 1 5A482A89
P 7750 5650
F 0 "#PWR08" H 7750 5400 50  0001 C CNN
F 1 "GND" H 7750 5500 50  0000 C CNN
F 2 "" H 7750 5650 50  0001 C CNN
F 3 "" H 7750 5650 50  0001 C CNN
	1    7750 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 3200 7750 3500
Wire Wire Line
	7750 3200 7550 3200
Wire Wire Line
	7550 3500 7750 3500
Connection ~ 7750 3500
Wire Wire Line
	7550 3800 7750 3800
Connection ~ 7750 3800
Wire Wire Line
	7550 4100 7750 4100
Connection ~ 7750 4100
Wire Wire Line
	7550 4400 7750 4400
Connection ~ 7750 4400
Wire Wire Line
	7550 4700 7750 4700
Connection ~ 7750 4700
Wire Wire Line
	7550 5000 7750 5000
Connection ~ 7750 5000
Wire Wire Line
	7550 5300 7750 5300
Connection ~ 7750 5300
Wire Wire Line
	7350 3200 7150 3200
$Comp
L cole-1-rescue:VCC #PWR05
U 1 1 5A482C0A
P 7150 2850
F 0 "#PWR05" H 7150 2700 50  0001 C CNN
F 1 "VCC" H 7150 3000 50  0000 C CNN
F 2 "" H 7150 2850 50  0001 C CNN
F 3 "" H 7150 2850 50  0001 C CNN
	1    7150 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 2850 7150 3200
Connection ~ 7150 3200
Wire Wire Line
	7350 3500 7150 3500
Connection ~ 7150 3500
Wire Wire Line
	7350 3800 7150 3800
Connection ~ 7150 3800
Wire Wire Line
	7350 4100 7150 4100
Connection ~ 7150 4100
Wire Wire Line
	7350 4400 7150 4400
Connection ~ 7150 4400
Wire Wire Line
	7350 5300 7150 5300
Wire Wire Line
	7350 5000 7150 5000
Connection ~ 7150 5000
Wire Wire Line
	7350 4700 7150 4700
Connection ~ 7150 4700
Wire Wire Line
	7750 3500 7750 3800
Wire Wire Line
	7750 3800 7750 4100
Wire Wire Line
	7750 4100 7750 4400
Wire Wire Line
	7750 4400 7750 4700
Wire Wire Line
	7750 4700 7750 5000
Wire Wire Line
	7750 5000 7750 5300
Wire Wire Line
	7150 3200 7150 3500
Wire Wire Line
	7150 3500 7150 3800
Wire Wire Line
	7150 3800 7150 4100
Wire Wire Line
	7150 4100 7150 4400
Wire Wire Line
	7150 4400 7150 4700
Wire Wire Line
	7150 5000 7150 5300
Wire Wire Line
	7150 4700 7150 5000
$Comp
L Device:CP C?
U 1 1 61361812
P 7350 1850
AR Path="/5A46207D/61361812" Ref="C?"  Part="1" 
AR Path="/5A482044/61361812" Ref="C1"  Part="1" 
F 0 "C1" H 7468 1896 50  0000 L CNN
F 1 "470uf" H 7468 1805 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D13.0mm_P7.50mm" H 7388 1700 50  0001 C CNN
F 3 "~" H 7350 1850 50  0001 C CNN
	1    7350 1850
	1    0    0    -1  
$EndComp
$Comp
L cole-1-rescue:GND #PWR?
U 1 1 61361818
P 7350 2000
AR Path="/5A46207D/61361818" Ref="#PWR?"  Part="1" 
AR Path="/5A482044/61361818" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 7350 1750 50  0001 C CNN
F 1 "GND" H 7350 1850 50  0000 C CNN
F 2 "" H 7350 2000 50  0001 C CNN
F 3 "" H 7350 2000 50  0001 C CNN
	1    7350 2000
	1    0    0    -1  
$EndComp
$Comp
L cole-1-rescue:VCC #PWR?
U 1 1 6136181E
P 7350 1700
AR Path="/5A46207D/6136181E" Ref="#PWR?"  Part="1" 
AR Path="/5A482044/6136181E" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 7350 1550 50  0001 C CNN
F 1 "VCC" H 7350 1850 50  0000 C CNN
F 2 "" H 7350 1700 50  0001 C CNN
F 3 "" H 7350 1700 50  0001 C CNN
	1    7350 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 5300 7750 5650
$Comp
L cole-1-rescue:Conn_01x06 J?
U 1 1 6164DE88
P 4050 5450
AR Path="/5A46207D/6164DE88" Ref="J?"  Part="1" 
AR Path="/5A482044/6164DE88" Ref="J3"  Part="1" 
F 0 "J3" H 4050 5750 50  0000 C CNN
F 1 "TTL Serial" H 4050 5050 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 4050 5450 50  0001 C CNN
F 3 "" H 4050 5450 50  0001 C CNN
	1    4050 5450
	-1   0    0    -1  
$EndComp
$Comp
L cole-1-rescue:PWR_FLAG #FLG?
U 1 1 6164DE8E
P 5150 4850
AR Path="/5A46207D/6164DE8E" Ref="#FLG?"  Part="1" 
AR Path="/5A482044/6164DE8E" Ref="#FLG01"  Part="1" 
F 0 "#FLG01" H 5150 4925 50  0001 C CNN
F 1 "PWR_FLAG" H 5150 5000 50  0000 C CNN
F 2 "" H 5150 4850 50  0001 C CNN
F 3 "" H 5150 4850 50  0001 C CNN
	1    5150 4850
	1    0    0    -1  
$EndComp
$Comp
L cole-1-rescue:PWR_FLAG #FLG?
U 1 1 6164DE94
P 5650 4850
AR Path="/5A46207D/6164DE94" Ref="#FLG?"  Part="1" 
AR Path="/5A482044/6164DE94" Ref="#FLG02"  Part="1" 
F 0 "#FLG02" H 5650 4925 50  0001 C CNN
F 1 "PWR_FLAG" H 5650 5000 50  0000 C CNN
F 2 "" H 5650 4850 50  0001 C CNN
F 3 "" H 5650 4850 50  0001 C CNN
	1    5650 4850
	1    0    0    -1  
$EndComp
Text Label 5150 5200 2    60   ~ 0
VCC
Text Label 5650 5200 2    60   ~ 0
GND
$Comp
L cole-1-rescue:Conn_01x12 J?
U 1 1 6164DE9C
P 4000 1950
AR Path="/5A46207D/6164DE9C" Ref="J?"  Part="1" 
AR Path="/5A482044/6164DE9C" Ref="J1"  Part="1" 
F 0 "J1" H 4050 2550 50  0000 C CNN
F 1 "PORT A" H 4050 1250 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 4000 1950 50  0001 C CNN
F 3 "" H 4000 1950 50  0001 C CNN
	1    4000 1950
	-1   0    0    -1  
$EndComp
$Comp
L cole-1-rescue:Conn_01x12 J?
U 1 1 6164DEA2
P 4000 3400
AR Path="/5A46207D/6164DEA2" Ref="J?"  Part="1" 
AR Path="/5A482044/6164DEA2" Ref="J2"  Part="1" 
F 0 "J2" H 4050 4000 50  0000 C CNN
F 1 "PORT B" H 4050 2700 50  0001 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 4000 3400 50  0001 C CNN
F 3 "" H 4000 3400 50  0001 C CNN
	1    4000 3400
	-1   0    0    -1  
$EndComp
$Comp
L cole-1-rescue:VCC #PWR?
U 1 1 6164DEA8
P 4550 1400
AR Path="/5A46207D/6164DEA8" Ref="#PWR?"  Part="1" 
AR Path="/5A482044/6164DEA8" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 4550 1250 50  0001 C CNN
F 1 "VCC" H 4550 1550 50  0000 C CNN
F 2 "" H 4550 1400 50  0001 C CNN
F 3 "" H 4550 1400 50  0001 C CNN
	1    4550 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5150 5550 4250 5550
Wire Wire Line
	5150 4850 5150 5550
Wire Wire Line
	5650 4850 5650 5750
Wire Wire Line
	5650 5750 4250 5750
Wire Wire Line
	4200 1450 4550 1450
Wire Wire Line
	4550 1450 4550 1400
$Comp
L cole-1-rescue:VCC #PWR?
U 1 1 6164DEB4
P 4550 2850
AR Path="/5A46207D/6164DEB4" Ref="#PWR?"  Part="1" 
AR Path="/5A482044/6164DEB4" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 4550 2700 50  0001 C CNN
F 1 "VCC" H 4550 3000 50  0000 C CNN
F 2 "" H 4550 2850 50  0001 C CNN
F 3 "" H 4550 2850 50  0001 C CNN
	1    4550 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2900 4550 2900
Wire Wire Line
	4550 2900 4550 2850
$Comp
L cole-1-rescue:GND #PWR?
U 1 1 6164DEBC
P 4300 2650
AR Path="/5A46207D/6164DEBC" Ref="#PWR?"  Part="1" 
AR Path="/5A482044/6164DEBC" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 4300 2400 50  0001 C CNN
F 1 "GND" H 4300 2500 50  0000 C CNN
F 2 "" H 4300 2650 50  0001 C CNN
F 3 "" H 4300 2650 50  0001 C CNN
	1    4300 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2550 4300 2550
Wire Wire Line
	4300 2550 4300 2650
$Comp
L cole-1-rescue:GND #PWR?
U 1 1 6164DEC4
P 4300 4100
AR Path="/5A46207D/6164DEC4" Ref="#PWR?"  Part="1" 
AR Path="/5A482044/6164DEC4" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 4300 3850 50  0001 C CNN
F 1 "GND" H 4300 3950 50  0000 C CNN
F 2 "" H 4300 4100 50  0001 C CNN
F 3 "" H 4300 4100 50  0001 C CNN
	1    4300 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4000 4300 4000
Wire Wire Line
	4300 4000 4300 4100
Text GLabel 4250 5450 2    50   Output ~ 0
RXD
Text GLabel 4250 5350 2    50   Input ~ 0
TXD
Text GLabel 4250 5650 2    50   Input ~ 0
RTS
Text GLabel 4250 5250 2    50   Output ~ 0
CTS
Text GLabel 4200 1650 2    50   BiDi ~ 0
PA1
Text GLabel 4200 1750 2    50   BiDi ~ 0
PA2
Text GLabel 4200 1850 2    50   BiDi ~ 0
PA3
Text GLabel 4200 1950 2    50   BiDi ~ 0
PA4
Text GLabel 4200 2050 2    50   BiDi ~ 0
PA5
Text GLabel 4200 2150 2    50   BiDi ~ 0
PA6
Text GLabel 4200 2250 2    50   BiDi ~ 0
PA7
Text GLabel 4200 1550 2    50   BiDi ~ 0
PA0
Text GLabel 4200 2350 2    50   BiDi ~ 0
CA1
Text GLabel 4200 2450 2    50   BiDi ~ 0
CA2
Text GLabel 4200 3100 2    50   BiDi ~ 0
PB1
Text GLabel 4200 3200 2    50   BiDi ~ 0
PB2
Text GLabel 4200 3300 2    50   BiDi ~ 0
PB3
Text GLabel 4200 3400 2    50   BiDi ~ 0
PB4
Text GLabel 4200 3500 2    50   BiDi ~ 0
PB5
Text GLabel 4200 3600 2    50   BiDi ~ 0
PB6
Text GLabel 4200 3700 2    50   BiDi ~ 0
PB7
Text GLabel 4200 3000 2    50   BiDi ~ 0
PB0
Text GLabel 4200 3800 2    50   BiDi ~ 0
CB1
Text GLabel 4200 3900 2    50   BiDi ~ 0
CB2
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 616BA6A9
P 1850 3000
F 0 "H4" H 1950 3049 50  0000 L CNN
F 1 "MountingHole_Pad" H 1950 2958 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad_Via" H 1850 3000 50  0001 C CNN
F 3 "~" H 1850 3000 50  0001 C CNN
	1    1850 3000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 616BBDA7
P 1550 3000
F 0 "H3" H 1650 3049 50  0000 L CNN
F 1 "MountingHole_Pad" H 1650 2958 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad_Via" H 1550 3000 50  0001 C CNN
F 3 "~" H 1550 3000 50  0001 C CNN
	1    1550 3000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 616BD794
P 1250 3000
F 0 "H2" H 1350 3049 50  0000 L CNN
F 1 "MountingHole_Pad" H 1350 2958 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad_Via" H 1250 3000 50  0001 C CNN
F 3 "~" H 1250 3000 50  0001 C CNN
	1    1250 3000
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 616BD79A
P 950 3000
F 0 "H1" H 1050 3049 50  0000 L CNN
F 1 "MountingHole_Pad" H 1050 2958 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.5mm_Pad_Via" H 950 3000 50  0001 C CNN
F 3 "~" H 950 3000 50  0001 C CNN
	1    950  3000
	1    0    0    -1  
$EndComp
$Comp
L cole-1-rescue:GND #PWR?
U 1 1 616BE497
P 1850 3350
AR Path="/5A46207D/616BE497" Ref="#PWR?"  Part="1" 
AR Path="/5A482044/616BE497" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 1850 3100 50  0001 C CNN
F 1 "GND" H 1850 3200 50  0000 C CNN
F 2 "" H 1850 3350 50  0001 C CNN
F 3 "" H 1850 3350 50  0001 C CNN
	1    1850 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 3100 1850 3250
Wire Wire Line
	950  3100 950  3250
Wire Wire Line
	950  3250 1250 3250
Connection ~ 1850 3250
Wire Wire Line
	1850 3250 1850 3350
Wire Wire Line
	1250 3100 1250 3250
Connection ~ 1250 3250
Wire Wire Line
	1250 3250 1550 3250
Wire Wire Line
	1550 3100 1550 3250
Connection ~ 1550 3250
Wire Wire Line
	1550 3250 1850 3250
$EndSCHEMATC
