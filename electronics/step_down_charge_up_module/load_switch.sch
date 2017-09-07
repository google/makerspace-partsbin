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
LIBS:switches
LIBS:switcher-monolithicpower
LIBS:switcher-suosemi
LIBS:tlv43x
LIBS:mcp73831
LIBS:zeropin
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
Text HLabel 6550 2950 1    60   Input ~ 0
BOOSTED_BATT_IN
Text HLabel 4600 3200 0    60   Input ~ 0
WALL_IN
Text HLabel 6950 3750 3    60   Input ~ 0
~EN
Text Notes 7100 3750 0    60   ~ 0
This needs to be able to cut\npower regardless of source.
$Comp
L Q_PMOS_GSD Q502
U 1 1 597383B5
P 5800 3300
F 0 "Q502" H 6000 3350 50  0000 L CNN
F 1 "AO3401A" H 6000 3250 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 6000 3400 50  0001 C CNN
F 3 "" H 5800 3300 50  0001 C CNN
	1    5800 3300
	0    -1   -1   0   
$EndComp
$Comp
L Q_PNP_BEC Q501
U 1 1 59738401
P 5500 3600
F 0 "Q501" H 5700 3650 50  0000 L CNN
F 1 "2N3906" H 5700 3550 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 5700 3700 50  0001 C CNN
F 3 "" H 5500 3600 50  0001 C CNN
	1    5500 3600
	-1   0    0    1   
$EndComp
$Comp
L Q_PNP_BEC Q503
U 1 1 59738462
P 6050 3600
F 0 "Q503" H 6250 3650 50  0000 L CNN
F 1 "2N3906" H 6250 3550 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 6250 3700 50  0001 C CNN
F 3 "" H 6050 3600 50  0001 C CNN
	1    6050 3600
	1    0    0    1   
$EndComp
$Comp
L R R501
U 1 1 5973856A
P 5400 4100
F 0 "R501" V 5480 4100 50  0000 C CNN
F 1 "10k" V 5400 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5330 4100 50  0001 C CNN
F 3 "" H 5400 4100 50  0001 C CNN
	1    5400 4100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR501
U 1 1 5973861D
P 5400 4350
F 0 "#PWR501" H 5400 4100 50  0001 C CNN
F 1 "GND" H 5400 4200 50  0000 C CNN
F 2 "" H 5400 4350 50  0001 C CNN
F 3 "" H 5400 4350 50  0001 C CNN
	1    5400 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR502
U 1 1 5973863E
P 6150 4350
F 0 "#PWR502" H 6150 4100 50  0001 C CNN
F 1 "GND" H 6150 4200 50  0000 C CNN
F 2 "" H 6150 4350 50  0001 C CNN
F 3 "" H 6150 4350 50  0001 C CNN
	1    6150 4350
	1    0    0    -1  
$EndComp
$Comp
L Q_PMOS_GSD Q504
U 1 1 59738846
P 6950 3300
F 0 "Q504" H 7150 3350 50  0000 L CNN
F 1 "Q_PMOS_GSD" H 7150 3250 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 7150 3400 50  0001 C CNN
F 3 "" H 6950 3300 50  0001 C CNN
	1    6950 3300
	0    1    -1   0   
$EndComp
$Comp
L R R502
U 1 1 5973897F
P 6150 4100
F 0 "R502" V 6230 4100 50  0000 C CNN
F 1 "47k" V 6150 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6080 4100 50  0001 C CNN
F 3 "" H 6150 4100 50  0001 C CNN
	1    6150 4100
	1    0    0    -1  
$EndComp
$Comp
L R R503
U 1 1 597389BF
P 6700 3400
F 0 "R503" V 6780 3400 50  0000 C CNN
F 1 "100k" V 6700 3400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6630 3400 50  0001 C CNN
F 3 "" H 6700 3400 50  0001 C CNN
	1    6700 3400
	1    0    0    -1  
$EndComp
Text HLabel 7700 3200 2    60   Output ~ 0
OUT
Wire Wire Line
	5700 3600 5850 3600
Wire Wire Line
	4600 3200 5600 3200
Wire Wire Line
	5400 3200 5400 3400
Wire Wire Line
	6150 3200 6150 3400
Wire Wire Line
	5800 3500 5800 3850
Wire Wire Line
	5800 3850 6150 3850
Wire Wire Line
	6150 3800 6150 3950
Wire Wire Line
	5750 3600 5750 3850
Wire Wire Line
	5750 3850 5400 3850
Wire Wire Line
	5400 3800 5400 3950
Connection ~ 5750 3600
Connection ~ 6150 3850
Connection ~ 5400 3850
Wire Wire Line
	6150 4350 6150 4250
Wire Wire Line
	5400 4350 5400 4250
Connection ~ 6150 3200
Wire Wire Line
	6700 3550 6700 3600
Wire Wire Line
	6700 3600 6950 3600
Wire Wire Line
	6950 3500 6950 3750
Connection ~ 6950 3600
Connection ~ 5400 3200
Wire Wire Line
	6550 2950 6550 3200
Connection ~ 6550 3200
Wire Wire Line
	7150 3200 7700 3200
Wire Wire Line
	6700 3250 6700 3200
Connection ~ 6700 3200
Wire Wire Line
	6000 3200 6750 3200
Wire Notes Line
	6300 2950 5250 2950
Wire Notes Line
	5250 2950 5250 4600
Wire Notes Line
	5250 4600 6300 4600
Wire Notes Line
	6300 4600 6300 2950
Text Notes 5250 2800 0    60   ~ 0
This is an ideal diode.\n(Inspired by Raspberry Pi)
$EndSCHEMATC
