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
LIBS:zeropin
LIBS:step_down_charge_up_module-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 6
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCP73831 U301
U 1 1 596F3B7D
P 5750 3800
F 0 "U301" H 5525 4075 60  0000 C CNN
F 1 "MCP73831" H 5750 3525 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5_HandSoldering" H 5750 3800 60  0001 C CNN
F 3 "" H 5750 3800 60  0001 C CNN
	1    5750 3800
	1    0    0    -1  
$EndComp
$Comp
L C C301
U 1 1 596F3BD4
P 4950 3900
F 0 "C301" H 4975 4000 50  0000 L CNN
F 1 "C" H 4975 3800 50  0000 L CNN
F 2 "Capacitors_SMD_Round:C_0805" H 4988 3750 50  0001 C CNN
F 3 "" H 4950 3900 50  0001 C CNN
	1    4950 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3650 5200 3650
Wire Wire Line
	4950 3750 4950 3650
Connection ~ 4950 3650
Wire Wire Line
	5200 3950 5200 4300
$Comp
L GND #PWR301
U 1 1 596F3CDF
P 4950 4200
F 0 "#PWR301" H 4950 3950 50  0001 C CNN
F 1 "GND" H 4950 4050 50  0000 C CNN
F 2 "" H 4950 4200 50  0001 C CNN
F 3 "" H 4950 4200 50  0001 C CNN
	1    4950 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 4050 4950 4200
$Comp
L GND #PWR302
U 1 1 596F3D0A
P 6400 4200
F 0 "#PWR302" H 6400 3950 50  0001 C CNN
F 1 "GND" H 6400 4050 50  0000 C CNN
F 2 "" H 6400 4200 50  0001 C CNN
F 3 "" H 6400 4200 50  0001 C CNN
	1    6400 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4200 6400 3950
Wire Wire Line
	6400 3950 6300 3950
$Comp
L R R301
U 1 1 596F3D31
P 6550 3800
F 0 "R301" V 6630 3800 50  0000 C CNN
F 1 "R" V 6550 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6480 3800 50  0001 C CNN
F 3 "" H 6550 3800 50  0001 C CNN
	1    6550 3800
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 3800 6300 3800
$Comp
L GND #PWR303
U 1 1 596F3D86
P 6800 4200
F 0 "#PWR303" H 6800 3950 50  0001 C CNN
F 1 "GND" H 6800 4050 50  0000 C CNN
F 2 "" H 6800 4200 50  0001 C CNN
F 3 "" H 6800 4200 50  0001 C CNN
	1    6800 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 3800 6800 3800
Wire Wire Line
	6800 3800 6800 4200
$Comp
L C C302
U 1 1 596F3DB4
P 7000 3850
F 0 "C302" H 7025 3950 50  0000 L CNN
F 1 "C" H 7025 3750 50  0000 L CNN
F 2 "Capacitors_SMD_Round:C_0805" H 7038 3700 50  0001 C CNN
F 3 "" H 7000 3850 50  0001 C CNN
	1    7000 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3650 7250 3650
Wire Wire Line
	7000 3700 7000 3650
Connection ~ 7000 3650
$Comp
L GND #PWR304
U 1 1 596F3E53
P 7000 4200
F 0 "#PWR304" H 7000 3950 50  0001 C CNN
F 1 "GND" H 7000 4050 50  0000 C CNN
F 2 "" H 7000 4200 50  0001 C CNN
F 3 "" H 7000 4200 50  0001 C CNN
	1    7000 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4200 7000 4000
Text HLabel 4750 3650 0    60   Input ~ 0
CHG_PWR
Text HLabel 7250 3650 2    60   Output ~ 0
BATT
Text HLabel 5400 4300 2    60   Output ~ 0
~CHARGING
Wire Wire Line
	5200 4300 5400 4300
$EndSCHEMATC
