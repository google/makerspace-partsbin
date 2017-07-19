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
LIBS:switcher-monolithicpower
LIBS:switcher-suosemi
LIBS:tlv43x
LIBS:mcp73831
LIBS:switches
LIBS:step_down_charge_up_module-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 5600 4150 0    60   Input ~ 0
PWR_IN
Text HLabel 5150 3300 0    60   Input ~ 0
BATT
$Comp
L TLV43X U?
U 1 1 596F2FB8
P 6700 4400
F 0 "U?" H 6600 4250 60  0000 C CNN
F 1 "TLV43X" H 6700 4575 60  0000 C CNN
F 2 "" H 6700 4400 60  0001 C CNN
F 3 "" H 6700 4400 60  0001 C CNN
	1    6700 4400
	1    0    0    -1  
$EndComp
$Comp
L Q_PMOS_GSD Q?
U 1 1 596F3032
P 6700 3400
F 0 "Q?" H 6900 3450 50  0000 L CNN
F 1 "Q_PMOS_GSD" H 6900 3350 50  0000 L CNN
F 2 "" H 6900 3500 50  0001 C CNN
F 3 "" H 6700 3400 50  0001 C CNN
	1    6700 3400
	0    1    -1   0   
$EndComp
Wire Wire Line
	6700 3600 6700 3950
$Comp
L R R?
U 1 1 596F30CB
P 6400 3550
F 0 "R?" V 6480 3550 50  0000 C CNN
F 1 "100k" V 6400 3550 50  0000 C CNN
F 2 "" V 6330 3550 50  0001 C CNN
F 3 "" H 6400 3550 50  0001 C CNN
	1    6400 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3850 6400 3850
Wire Wire Line
	6400 3850 6400 3700
Connection ~ 6700 3850
Wire Wire Line
	5850 3300 6500 3300
Wire Wire Line
	6400 3400 6400 3300
Connection ~ 6400 3300
$Comp
L R R?
U 1 1 596F3125
P 6150 4150
F 0 "R?" V 6230 4150 50  0000 C CNN
F 1 "R" V 6150 4150 50  0000 C CNN
F 2 "" V 6080 4150 50  0001 C CNN
F 3 "" H 6150 4150 50  0001 C CNN
	1    6150 4150
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 596F314C
P 6150 4600
F 0 "R?" V 6230 4600 50  0000 C CNN
F 1 "R" V 6150 4600 50  0000 C CNN
F 2 "" V 6080 4600 50  0001 C CNN
F 3 "" H 6150 4600 50  0001 C CNN
	1    6150 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 596F31CC
P 6700 4950
F 0 "#PWR?" H 6700 4700 50  0001 C CNN
F 1 "GND" H 6700 4800 50  0000 C CNN
F 2 "" H 6700 4950 50  0001 C CNN
F 3 "" H 6700 4950 50  0001 C CNN
	1    6700 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4800 6700 4950
Connection ~ 6700 4800
Wire Wire Line
	6650 4800 6150 4800
Wire Wire Line
	6150 4800 6150 4750
Wire Wire Line
	6300 4400 6150 4400
Wire Wire Line
	6150 4300 6150 4450
Connection ~ 6150 4400
Wire Wire Line
	6150 4000 6150 3300
Connection ~ 6150 3300
$Comp
L R R?
U 1 1 596F36BA
P 5650 4450
F 0 "R?" V 5730 4450 50  0000 C CNN
F 1 "100k" V 5650 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5580 4450 50  0001 C CNN
F 3 "" H 5650 4450 50  0001 C CNN
	1    5650 4450
	1    0    0    -1  
$EndComp
Text HLabel 7300 3300 2    60   Output ~ 0
PG
Text Notes 5550 2550 0    60   ~ 0
Okay to power on when\nboth input present, AND\nbattery sufficiently charged.\n\nPWR_IN check first to lower\nbattery draw on pullup.
Text Notes 4250 4050 0    60   ~ 0
Input assumed to be 12-24V\n(this will be above BATT\nby 7+V, or at GND)
$Comp
L Q_NMOS_GSD Q?
U 1 1 596F4B01
P 5650 3400
F 0 "Q?" H 5850 3450 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 5850 3350 50  0000 L CNN
F 2 "" H 5850 3500 50  0001 C CNN
F 3 "" H 5650 3400 50  0001 C CNN
	1    5650 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 3600 5650 4300
Wire Wire Line
	5650 4150 5600 4150
Connection ~ 5650 4150
$Comp
L GND #PWR?
U 1 1 596F4F65
P 5650 4950
F 0 "#PWR?" H 5650 4700 50  0001 C CNN
F 1 "GND" H 5650 4800 50  0000 C CNN
F 2 "" H 5650 4950 50  0001 C CNN
F 3 "" H 5650 4950 50  0001 C CNN
	1    5650 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4950 5650 4600
Wire Wire Line
	5450 3300 5150 3300
Wire Wire Line
	7300 3300 6900 3300
$EndSCHEMATC
