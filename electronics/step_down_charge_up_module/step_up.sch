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
Sheet 4 6
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
L SX1308 U401
U 1 1 596F1ED4
P 5700 3650
F 0 "U401" H 5450 4150 60  0000 C CNN
F 1 "SX1308" H 5700 3550 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6_Handsoldering" H 5700 3650 60  0001 C CNN
F 3 "" H 5700 3650 60  0001 C CNN
	1    5700 3650
	1    0    0    -1  
$EndComp
$Comp
L C C401
U 1 1 596F1F17
P 4400 3600
F 0 "C401" H 4425 3700 50  0000 L CNN
F 1 "22u" H 4425 3500 50  0000 L CNN
F 2 "Capacitors_SMD_Round:C_0805" H 4438 3450 50  0001 C CNN
F 3 "" H 4400 3600 50  0001 C CNN
	1    4400 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3650 5200 3650
Wire Wire Line
	4150 3350 5200 3350
Wire Wire Line
	4400 3350 4400 3450
Connection ~ 5050 3350
Wire Wire Line
	5200 3450 5050 3450
$Comp
L GND #PWR402
U 1 1 596F1FC5
P 5050 4150
F 0 "#PWR402" H 5050 3900 50  0001 C CNN
F 1 "GND" H 5050 4000 50  0000 C CNN
F 2 "" H 5050 4150 50  0001 C CNN
F 3 "" H 5050 4150 50  0001 C CNN
	1    5050 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3950 5050 3950
Wire Wire Line
	5050 3950 5050 4150
$Comp
L GND #PWR401
U 1 1 596F1FE8
P 4400 3850
F 0 "#PWR401" H 4400 3600 50  0001 C CNN
F 1 "GND" H 4400 3700 50  0000 C CNN
F 2 "" H 4400 3850 50  0001 C CNN
F 3 "" H 4400 3850 50  0001 C CNN
	1    4400 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3750 4400 3850
Text HLabel 4150 3350 0    60   Input ~ 0
PWR_IN
Connection ~ 4400 3350
$Comp
L L L401
U 1 1 596F2043
P 5700 3000
F 0 "L401" V 5650 3000 50  0000 C CNN
F 1 "L" V 5775 3000 50  0000 C CNN
F 2 "Inductors2:L_7.3x7.3_Handsoldering" H 5700 3000 50  0001 C CNN
F 3 "" H 5700 3000 50  0001 C CNN
	1    5700 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 3000 5050 3000
Wire Wire Line
	5850 3000 6400 3000
Wire Wire Line
	6400 3000 6400 3350
Wire Wire Line
	6200 3350 6550 3350
$Comp
L D_Schottky D401
U 1 1 596F20FA
P 6700 3350
F 0 "D401" H 6700 3450 50  0000 C CNN
F 1 "D_Schottky" H 6700 3250 50  0000 C CNN
F 2 "Diodes_SMD:D_SMA" H 6700 3350 50  0001 C CNN
F 3 "" H 6700 3350 50  0001 C CNN
	1    6700 3350
	-1   0    0    1   
$EndComp
Connection ~ 6400 3350
$Comp
L R R401
U 1 1 596F2135
P 7050 3700
F 0 "R401" V 7130 3700 50  0000 C CNN
F 1 "267k" V 7050 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6980 3700 50  0001 C CNN
F 3 "" H 7050 3700 50  0001 C CNN
	1    7050 3700
	1    0    0    -1  
$EndComp
$Comp
L R R402
U 1 1 596F216E
P 7050 4200
F 0 "R402" V 7130 4200 50  0000 C CNN
F 1 "34.8k" V 7050 4200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6980 4200 50  0001 C CNN
F 3 "" H 7050 4200 50  0001 C CNN
	1    7050 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4050 7050 3850
Wire Wire Line
	7050 3950 6200 3950
Connection ~ 7050 3950
$Comp
L GND #PWR403
U 1 1 596F21D2
P 7050 4450
F 0 "#PWR403" H 7050 4200 50  0001 C CNN
F 1 "GND" H 7050 4300 50  0000 C CNN
F 2 "" H 7050 4450 50  0001 C CNN
F 3 "" H 7050 4450 50  0001 C CNN
	1    7050 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 4450 7050 4350
Wire Wire Line
	7050 3550 7050 3350
Wire Wire Line
	6850 3350 7450 3350
Connection ~ 7050 3350
$Comp
L C C402
U 1 1 596F2248
P 7350 3950
F 0 "C402" H 7375 4050 50  0000 L CNN
F 1 "10u" H 7375 3850 50  0000 L CNN
F 2 "Capacitors_SMD_Round:C_0805" H 7388 3800 50  0001 C CNN
F 3 "" H 7350 3950 50  0001 C CNN
	1    7350 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 3800 7350 3350
Connection ~ 7350 3350
$Comp
L GND #PWR404
U 1 1 596F2295
P 7350 4450
F 0 "#PWR404" H 7350 4200 50  0001 C CNN
F 1 "GND" H 7350 4300 50  0000 C CNN
F 2 "" H 7350 4450 50  0001 C CNN
F 3 "" H 7350 4450 50  0001 C CNN
	1    7350 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4450 7350 4100
Text Notes 6200 3900 0    60   ~ 0
Feedback pin\nneeds 0.6V
Wire Wire Line
	5050 3000 5050 3450
Text HLabel 5050 3650 0    60   Input ~ 0
EN
Text HLabel 7450 3350 2    60   Output ~ 0
PWR_OUT
$EndSCHEMATC
