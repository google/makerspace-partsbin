EESchema Schematic File Version 2
LIBS:power
LIBS:device
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
LIBS:mosfet_tester-cache
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
S 5300 2150 1100 550 
U 595536CF
F0 "slice" 60
F1 "slice.sch" 60
F2 "5V_REF" I L 5300 2300 60 
F3 "VIN-" I R 6400 2550 60 
F4 "VIN+" I R 6400 2300 60 
F5 "Vgs" O L 5300 2550 60 
$EndSheet
$Sheet
S 5300 2950 1100 550 
U 59556746
F0 "sheet59556740" 60
F1 "slice.sch" 60
F2 "5V_REF" I L 5300 3100 60 
F3 "VIN-" I R 6400 3350 60 
F4 "VIN+" I R 6400 3100 60 
F5 "Vgs" O L 5300 3350 60 
$EndSheet
$Sheet
S 5300 3750 1100 550 
U 59556CE1
F0 "sheet59556CDB" 60
F1 "slice.sch" 60
F2 "5V_REF" I L 5300 3900 60 
F3 "VIN-" I R 6400 4150 60 
F4 "VIN+" I R 6400 3900 60 
F5 "Vgs" O L 5300 4150 60 
$EndSheet
$Sheet
S 5300 4550 1100 550 
U 59557090
F0 "sheet5955708A" 60
F1 "slice.sch" 60
F2 "5V_REF" I L 5300 4700 60 
F3 "VIN-" I R 6400 4950 60 
F4 "VIN+" I R 6400 4700 60 
F5 "Vgs" O L 5300 4950 60 
$EndSheet
$Comp
L BARREL_JACK J101
U 1 1 5955807C
P 2350 2150
F 0 "J101" H 2350 2345 50  0000 C CNN
F 1 "BARREL_JACK" H 2350 1995 50  0000 C CNN
F 2 "" H 2350 2150 50  0001 C CNN
F 3 "" H 2350 2150 50  0001 C CNN
	1    2350 2150
	1    0    0    -1  
$EndComp
$Comp
L 7805 U101
U 1 1 59558103
P 3400 2100
F 0 "U101" H 3550 1904 50  0000 C CNN
F 1 "7805" H 3400 2300 50  0000 C CNN
F 2 "" H 3400 2100 50  0001 C CNN
F 3 "" H 3400 2100 50  0001 C CNN
	1    3400 2100
	1    0    0    -1  
$EndComp
$Comp
L +12V #PWR101
U 1 1 595581A4
P 2850 1900
F 0 "#PWR101" H 2850 1750 50  0001 C CNN
F 1 "+12V" H 2850 2040 50  0000 C CNN
F 2 "" H 2850 1900 50  0001 C CNN
F 3 "" H 2850 1900 50  0001 C CNN
	1    2850 1900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR103
U 1 1 5955821C
P 4000 1900
F 0 "#PWR103" H 4000 1750 50  0001 C CNN
F 1 "+5V" H 4000 2040 50  0000 C CNN
F 2 "" H 4000 1900 50  0001 C CNN
F 3 "" H 4000 1900 50  0001 C CNN
	1    4000 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2050 3000 2050
Wire Wire Line
	2850 1900 2850 2050
Connection ~ 2850 2050
Wire Wire Line
	4000 2050 4000 1900
Wire Wire Line
	3800 2050 4000 2050
Wire Wire Line
	2650 2150 2800 2150
Wire Wire Line
	2800 2150 2800 2400
Wire Wire Line
	2800 2400 3900 2400
Wire Wire Line
	3400 2350 3400 2500
Wire Wire Line
	2650 2250 2800 2250
Connection ~ 2800 2250
$Comp
L GND #PWR102
U 1 1 5955853E
P 3400 2500
F 0 "#PWR102" H 3400 2250 50  0001 C CNN
F 1 "GND" H 3400 2350 50  0000 C CNN
F 2 "" H 3400 2500 50  0001 C CNN
F 3 "" H 3400 2500 50  0001 C CNN
	1    3400 2500
	1    0    0    -1  
$EndComp
$Comp
L C C101
U 1 1 595585F6
P 3900 2250
F 0 "C101" H 3925 2350 50  0000 L CNN
F 1 "C" H 3925 2150 50  0000 L CNN
F 2 "Capacitors_SMD_Round:C_1206" H 3938 2100 50  0001 C CNN
F 3 "" H 3900 2250 50  0001 C CNN
	1    3900 2250
	1    0    0    -1  
$EndComp
Connection ~ 3400 2400
Wire Wire Line
	3900 2100 3900 2050
Connection ~ 3900 2050
$Comp
L POT RV101
U 1 1 59558DC6
P 4100 4400
F 0 "RV101" V 3925 4400 50  0000 C CNN
F 1 "POT" V 4000 4400 50  0000 C CNN
F 2 "" H 4100 4400 50  0001 C CNN
F 3 "" H 4100 4400 50  0001 C CNN
	1    4100 4400
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR104
U 1 1 59558EEF
P 4100 4150
F 0 "#PWR104" H 4100 4000 50  0001 C CNN
F 1 "+5V" H 4100 4290 50  0000 C CNN
F 2 "" H 4100 4150 50  0001 C CNN
F 3 "" H 4100 4150 50  0001 C CNN
	1    4100 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4150 4100 4250
$Comp
L GND #PWR105
U 1 1 59559020
P 4100 4650
F 0 "#PWR105" H 4100 4400 50  0001 C CNN
F 1 "GND" H 4100 4500 50  0000 C CNN
F 2 "" H 4100 4650 50  0001 C CNN
F 3 "" H 4100 4650 50  0001 C CNN
	1    4100 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 4650 4100 4550
Wire Wire Line
	5300 2300 4800 2300
Wire Wire Line
	4800 2300 4800 4700
Wire Wire Line
	4800 4700 5300 4700
Wire Wire Line
	4250 4400 4800 4400
Wire Wire Line
	5300 3100 4800 3100
Connection ~ 4800 3100
Wire Wire Line
	5300 3900 4800 3900
Connection ~ 4800 3900
$Comp
L C C102
U 1 1 595599B9
P 4400 4600
F 0 "C102" H 4425 4700 50  0000 L CNN
F 1 "C" H 4425 4500 50  0000 L CNN
F 2 "Capacitors_SMD_Round:C_0603" H 4438 4450 50  0001 C CNN
F 3 "" H 4400 4600 50  0001 C CNN
	1    4400 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4450 4400 4400
Connection ~ 4400 4400
$Comp
L GND #PWR106
U 1 1 59559A94
P 4400 4800
F 0 "#PWR106" H 4400 4550 50  0001 C CNN
F 1 "GND" H 4400 4650 50  0000 C CNN
F 2 "" H 4400 4800 50  0001 C CNN
F 3 "" H 4400 4800 50  0001 C CNN
	1    4400 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4800 4400 4750
Wire Wire Line
	6800 2050 6800 4700
Wire Wire Line
	6800 4700 6400 4700
Wire Wire Line
	6800 3900 6400 3900
Connection ~ 6800 3900
Wire Wire Line
	6400 3100 6800 3100
Connection ~ 6800 3100
Wire Wire Line
	6400 2300 6800 2300
Connection ~ 6800 2300
Wire Wire Line
	7000 2050 7000 4950
Wire Wire Line
	7000 4950 6400 4950
Wire Wire Line
	6400 4150 7000 4150
Connection ~ 7000 4150
Wire Wire Line
	6400 3350 7000 3350
Connection ~ 7000 3350
Wire Wire Line
	6400 2550 7000 2550
Connection ~ 7000 2550
$Comp
L CONN_01X06 J102
U 1 1 59554E28
P 4300 2800
F 0 "J102" H 4300 3150 50  0000 C CNN
F 1 "CONN_01X06" V 4400 2800 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-06_06x2.54mm_Straight" H 4300 2800 50  0001 C CNN
F 3 "" H 4300 2800 50  0001 C CNN
	1    4300 2800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5300 2550 4500 2550
Wire Wire Line
	5300 3350 5200 3350
Wire Wire Line
	5200 3350 5200 2650
Wire Wire Line
	5200 2650 4500 2650
Wire Wire Line
	5100 4150 5300 4150
Wire Wire Line
	5100 4150 5100 2750
Wire Wire Line
	5100 2750 4500 2750
Wire Wire Line
	4500 2850 5000 2850
Wire Wire Line
	5000 2850 5000 4950
Wire Wire Line
	5000 4950 5300 4950
Wire Wire Line
	4800 2950 4500 2950
Connection ~ 4800 2950
$Comp
L GND #PWR107
U 1 1 59555708
P 4600 3150
F 0 "#PWR107" H 4600 2900 50  0001 C CNN
F 1 "GND" H 4600 3000 50  0000 C CNN
F 2 "" H 4600 3150 50  0001 C CNN
F 3 "" H 4600 3150 50  0001 C CNN
	1    4600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3150 4600 3050
Wire Wire Line
	4600 3050 4500 3050
Connection ~ 4800 4400
$Comp
L Screw_Terminal_1x01 J104
U 1 1 59555F63
P 6800 1850
F 0 "J104" H 6800 2000 50  0000 C TNN
F 1 "Screw_Terminal_1x01" V 6650 1850 50  0000 C TNN
F 2 "Screw_Connectors:4_Pin_Screw_Connector" H 6800 1725 50  0001 C CNN
F 3 "" H 6800 1750 50  0001 C CNN
	1    6800 1850
	0    1    1    0   
$EndComp
$Comp
L Screw_Terminal_1x01 J103
U 1 1 59556BAD
P 7000 1850
F 0 "J103" H 7000 2000 50  0000 C TNN
F 1 "Screw_Terminal_1x01" V 6850 1850 50  0000 C TNN
F 2 "Screw_Connectors:4_Pin_Screw_Connector" H 7000 1725 50  0001 C CNN
F 3 "" H 7000 1750 50  0001 C CNN
	1    7000 1850
	0    1    1    0   
$EndComp
$EndSCHEMATC
