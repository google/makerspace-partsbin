EESchema Schematic File Version 4
LIBS:esp32_button-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 "(c) 2017-2019 Google"
Comment3 "CC-BY 4.0 International"
Comment4 ""
$EndDescr
Text HLabel 5300 2800 0    60   Input ~ 0
IN
Text HLabel 7000 2800 2    60   Output ~ 0
OUT
Text HLabel 7000 4800 2    60   Input ~ 0
KEEPALIVE
Text HLabel 3450 4800 0    60   Input ~ 0
POWERON
$Comp
L Device:Q_PMOS_GSD Q602
U 1 1 59E6AC5E
P 6450 2900
F 0 "Q602" H 6650 2950 50  0000 L CNN
F 1 "AO3401" H 6650 2850 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6650 3000 50  0001 C CNN
F 3 "" H 6450 2900 50  0001 C CNN
	1    6450 2900
	0    1    -1   0   
$EndComp
$Comp
L Device:R R601
U 1 1 59E6AD0B
P 5850 3050
F 0 "R601" V 5930 3050 50  0000 C CNN
F 1 "100k" V 5850 3050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5780 3050 50  0001 C CNN
F 3 "" H 5850 3050 50  0001 C CNN
	1    5850 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C601
U 1 1 59E6AD3E
P 6450 3500
AR Path="/59E6AD3E" Ref="C601"  Part="1" 
AR Path="/59E84265/59E6AD3E" Ref="C601"  Part="1" 
F 0 "C601" H 6475 3600 50  0000 L CNN
F 1 "220p" H 6475 3400 50  0000 L CNN
F 2 "Capacitors_SMD_Round:C_0603" H 6488 3350 50  0001 C CNN
F 3 "" H 6450 3500 50  0001 C CNN
F 4 "C1608X7R1C224K080AC" H 6450 3500 60  0001 C CNN "MPN"
	1    6450 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GSD Q601
U 1 1 59E6AD85
P 5950 4800
F 0 "Q601" H 5750 5050 50  0000 L CNN
F 1 "AO3400" H 5650 4950 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 6150 4900 50  0001 C CNN
F 3 "" H 5950 4800 50  0001 C CNN
	1    5950 4800
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 59E6AE49
P 6450 3700
F 0 "#PWR029" H 6450 3450 50  0001 C CNN
F 1 "GND" H 6450 3550 50  0000 C CNN
F 2 "" H 6450 3700 50  0001 C CNN
F 3 "" H 6450 3700 50  0001 C CNN
	1    6450 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R603
U 1 1 59E6AF05
P 6550 4800
F 0 "R603" V 6630 4800 50  0000 C CNN
F 1 "10k" V 6550 4800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6480 4800 50  0001 C CNN
F 3 "" H 6550 4800 50  0001 C CNN
	1    6550 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R602
U 1 1 59E6AF56
P 6250 5050
F 0 "R602" V 6330 5050 50  0000 C CNN
F 1 "100k" V 6250 5050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6180 5050 50  0001 C CNN
F 3 "" H 6250 5050 50  0001 C CNN
	1    6250 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR030
U 1 1 59E6AFF9
P 5850 5400
F 0 "#PWR030" H 5850 5150 50  0001 C CNN
F 1 "GND" H 5850 5250 50  0000 C CNN
F 2 "" H 5850 5400 50  0001 C CNN
F 3 "" H 5850 5400 50  0001 C CNN
	1    5850 5400
	1    0    0    -1  
$EndComp
Text Notes 6450 5300 0    60   ~ 0
Note: Increase value of resistors if\nexpected to be on for extended periods\nas this wastes about 37uA each\n(only while on).
Text Notes 6900 3800 0    60   ~ 0
R601/C601 define the length of time\nthe firmware can take before\nasserting KEEPALIVE.\n\nCould also use a pullup\nfrom OUT to Q601 but\nthen needs diode\nto MCU.\n
Text Notes 4900 2250 0    60   ~ 0
This was initially inspired by\nhttps://hackaday.io/project/12866-esp8266-power-latch
Wire Wire Line
	5300 2800 5850 2800
Wire Wire Line
	5850 2900 5850 2800
Connection ~ 5850 2800
Wire Wire Line
	6450 3100 6450 3300
Wire Wire Line
	5850 3200 5850 3300
Connection ~ 6450 3300
Wire Wire Line
	6450 3700 6450 3650
Wire Wire Line
	6150 4800 6250 4800
Wire Wire Line
	6700 4800 7000 4800
Wire Wire Line
	6250 4900 6250 4800
Connection ~ 6250 4800
Wire Wire Line
	6250 5200 6250 5300
Wire Wire Line
	6250 5300 5850 5300
Wire Wire Line
	5850 5000 5850 5300
Connection ~ 5850 5300
Connection ~ 5850 3300
Wire Wire Line
	7000 2800 6650 2800
Wire Wire Line
	5850 3300 6450 3300
$Comp
L Device:Q_NMOS_GSD Q603
U 1 1 5A09FCAB
P 4400 4800
F 0 "Q603" H 4200 5100 50  0000 L CNN
F 1 "AO3400" H 4200 5000 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 4600 4900 50  0001 C CNN
F 3 "" H 4400 4800 50  0001 C CNN
	1    4400 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR031
U 1 1 5A09FDBC
P 4500 5400
F 0 "#PWR031" H 4500 5150 50  0001 C CNN
F 1 "GND" H 4500 5250 50  0000 C CNN
F 2 "" H 4500 5400 50  0001 C CNN
F 3 "" H 4500 5400 50  0001 C CNN
	1    4500 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 5000 4500 5300
Wire Wire Line
	3450 4800 4100 4800
Connection ~ 4100 4800
Text HLabel 3450 4450 0    60   Output ~ 0
PRESSED
Wire Wire Line
	3450 4450 3650 4450
$Comp
L Device:R R604
U 1 1 5A0A0027
P 4100 5050
F 0 "R604" V 4180 5050 50  0000 C CNN
F 1 "10k" V 4100 5050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4030 5050 50  0001 C CNN
F 3 "" H 4100 5050 50  0001 C CNN
	1    4100 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 5300 4100 5300
Wire Wire Line
	4100 5300 4100 5200
Connection ~ 4500 5300
Wire Wire Line
	4100 4450 4100 4800
Wire Wire Line
	4100 4450 3950 4450
Text Label 6000 3300 0    60   ~ 0
PGate
Wire Wire Line
	4500 4600 4500 4200
Wire Wire Line
	4500 4200 5850 4200
Connection ~ 5850 4200
Text Notes 2900 4150 0    60   ~ 0
This needs a pullup on MCU side.\n\nThis is a simple type of level\nshifter, in which the cathode\nis either at 0V or 5V; with the\nMCU pullup that side sees\neither Vcc or diode Vf (0.6v).
$Comp
L Device:D_Schottky D601
U 1 1 5A0A13FE
P 3800 4450
F 0 "D601" H 3800 4550 50  0000 C CNN
F 1 "B5819W" H 3800 4350 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-123" H 3800 4450 50  0001 C CNN
F 3 "" H 3800 4450 50  0001 C CNN
F 4 "B5819WS-TP" H 3800 4450 60  0001 C CNN "MPN"
	1    3800 4450
	-1   0    0    1   
$EndComp
Wire Wire Line
	5850 2800 6250 2800
Wire Wire Line
	6450 3300 6450 3350
Wire Wire Line
	6250 4800 6400 4800
Wire Wire Line
	5850 5300 5850 5400
Wire Wire Line
	5850 3300 5850 4200
Wire Wire Line
	4100 4800 4200 4800
Wire Wire Line
	4100 4800 4100 4900
Wire Wire Line
	4500 5300 4500 5400
Wire Wire Line
	5850 4200 5850 4600
$EndSCHEMATC
