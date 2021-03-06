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
LIBS:zeropin
LIBS:smd_class-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "SMD Class Board"
Date "2017-08-16"
Rev "1"
Comp ""
Comment1 "https://hackaday.io/project/25265-an-unfortunate-smd-project"
Comment2 "Inspired by MakersBox \"SMD Challenge\" (with permission)"
Comment3 ""
Comment4 "CC-BY 4.0 International"
$EndDescr
$Comp
L ATTINY85-20SU U1
U 1 1 5994CCB3
P 5550 3300
F 0 "U1" H 4400 3700 50  0000 C CNN
F 1 "ATTINY85-20SU" H 6550 2900 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6500 3300 50  0001 C CIN
F 3 "" H 5550 3300 50  0001 C CNN
	1    5550 3300
	-1   0    0    -1  
$EndComp
$Comp
L Battery_Cell BT1
U 1 1 5994CD14
P 3000 3350
F 0 "BT1" H 3100 3450 50  0000 L CNN
F 1 "Battery_Cell" H 3100 3350 50  0000 L CNN
F 2 "Battery_Holders:Keystone_1058_1x2032-CoinCell" V 3000 3410 50  0001 C CNN
F 3 "" V 3000 3410 50  0001 C CNN
	1    3000 3350
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW1
U 1 1 5994CDE7
P 3500 3050
F 0 "SW1" H 3550 3150 50  0000 L CNN
F 1 "SW_Push" H 3500 2990 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_EVQP0" H 3500 3250 50  0001 C CNN
F 3 "" H 3500 3250 50  0001 C CNN
	1    3500 3050
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5994CE38
P 4050 3300
F 0 "C1" H 4075 3400 50  0000 L CNN
F 1 "C" H 4075 3200 50  0000 L CNN
F 2 "Capacitors_SMD_Round:C_0805" H 4088 3150 50  0001 C CNN
F 3 "" H 4050 3300 50  0001 C CNN
	1    4050 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5994CF2B
P 3000 3650
F 0 "#PWR01" H 3000 3400 50  0001 C CNN
F 1 "GND" H 3000 3500 50  0000 C CNN
F 2 "" H 3000 3650 50  0001 C CNN
F 3 "" H 3000 3650 50  0001 C CNN
	1    3000 3650
	1    0    0    -1  
$EndComp
$Comp
L AVR-ISP-6 CON1
U 1 1 5994CF67
P 8800 2600
F 0 "CON1" H 8695 2840 50  0000 C CNN
F 1 "AVR-ISP-6" H 8535 2370 50  0000 L BNN
F 2 "Pogo_Pads:Pogo_6_Doublerow" V 8280 2640 50  0001 C CNN
F 3 "" H 8775 2600 50  0001 C CNN
	1    8800 2600
	1    0    0    -1  
$EndComp
$Comp
L LED D1
U 1 1 5994CFFF
P 7100 3950
F 0 "D1" H 7100 4050 50  0000 C CNN
F 1 "LED" H 7100 3850 50  0000 C CNN
F 2 "LEDs:LED_1206" H 7100 3950 50  0001 C CNN
F 3 "" H 7100 3950 50  0001 C CNN
	1    7100 3950
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 5994D050
P 7100 4350
F 0 "R1" V 7180 4350 50  0000 C CNN
F 1 "330" V 7100 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 7030 4350 50  0001 C CNN
F 3 "" H 7100 4350 50  0001 C CNN
	1    7100 4350
	-1   0    0    1   
$EndComp
$Comp
L LED D2
U 1 1 5994D377
P 7450 3950
F 0 "D2" H 7450 4050 50  0000 C CNN
F 1 "LED" H 7450 3850 50  0000 C CNN
F 2 "LEDs:LED_0805" H 7450 3950 50  0001 C CNN
F 3 "" H 7450 3950 50  0001 C CNN
	1    7450 3950
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 5994D37E
P 7450 4350
F 0 "R2" V 7530 4350 50  0000 C CNN
F 1 "330" V 7450 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7380 4350 50  0001 C CNN
F 3 "" H 7450 4350 50  0001 C CNN
	1    7450 4350
	-1   0    0    1   
$EndComp
$Comp
L LED D3
U 1 1 5994D42F
P 7800 3950
F 0 "D3" H 7800 4050 50  0000 C CNN
F 1 "LED" H 7800 3850 50  0000 C CNN
F 2 "LEDs:LED_0603" H 7800 3950 50  0001 C CNN
F 3 "" H 7800 3950 50  0001 C CNN
	1    7800 3950
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 5994D436
P 7800 4350
F 0 "R3" V 7880 4350 50  0000 C CNN
F 1 "330" V 7800 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7730 4350 50  0001 C CNN
F 3 "" H 7800 4350 50  0001 C CNN
	1    7800 4350
	-1   0    0    1   
$EndComp
$Comp
L LED D4
U 1 1 5994D4CD
P 8150 3950
F 0 "D4" H 8150 4050 50  0000 C CNN
F 1 "LED" H 8150 3850 50  0000 C CNN
F 2 "LEDs:LED_0603" H 8150 3950 50  0001 C CNN
F 3 "" H 8150 3950 50  0001 C CNN
	1    8150 3950
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 5994D4D4
P 8150 4350
F 0 "R4" V 8230 4350 50  0000 C CNN
F 1 "330" V 8150 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 8080 4350 50  0001 C CNN
F 3 "" H 8150 4350 50  0001 C CNN
	1    8150 4350
	-1   0    0    1   
$EndComp
$Comp
L LED D5
U 1 1 5994D585
P 8500 3950
F 0 "D5" H 8500 4050 50  0000 C CNN
F 1 "LED" H 8500 3850 50  0000 C CNN
F 2 "LEDs:LED_0603" H 8500 3950 50  0001 C CNN
F 3 "" H 8500 3950 50  0001 C CNN
	1    8500 3950
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 5994D58C
P 8500 4350
F 0 "R5" V 8580 4350 50  0000 C CNN
F 1 "330" V 8500 4350 50  0000 C CNN
F 2 "Resistors_SMD:R_0201" V 8430 4350 50  0001 C CNN
F 3 "" H 8500 4350 50  0001 C CNN
	1    8500 4350
	-1   0    0    1   
$EndComp
Text Notes 7000 4900 0    60   ~ 0
1206
Text Notes 7350 4900 0    60   ~ 0
0805
Text Notes 7700 4900 0    60   ~ 0
0603
Text Notes 8050 4900 0    60   ~ 0
0402
Text Notes 8400 4900 0    60   ~ 0
0201
Text Label 6950 3050 0    60   ~ 0
MOSI
Text Label 6950 3150 0    60   ~ 0
MISO
Text Label 6950 3250 0    60   ~ 0
SCK
Text Label 6950 3550 0    60   ~ 0
~RESET
$Comp
L GND #PWR02
U 1 1 5994DA1D
P 9200 2800
F 0 "#PWR02" H 9200 2550 50  0001 C CNN
F 1 "GND" H 9200 2650 50  0000 C CNN
F 2 "" H 9200 2800 50  0001 C CNN
F 3 "" H 9200 2800 50  0001 C CNN
	1    9200 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3050 4200 3050
Wire Wire Line
	4050 2900 4050 3150
Wire Wire Line
	3000 3550 4200 3550
Wire Wire Line
	4050 3550 4050 3450
Wire Wire Line
	3300 3050 3000 3050
Wire Wire Line
	3000 3050 3000 3150
Connection ~ 4050 3050
Wire Wire Line
	3000 3450 3000 3650
Connection ~ 4050 3550
Connection ~ 3000 3550
Wire Wire Line
	7100 4200 7100 4100
Wire Wire Line
	7450 4200 7450 4100
Wire Wire Line
	7800 4200 7800 4100
Wire Wire Line
	8150 4200 8150 4100
Wire Wire Line
	8500 4200 8500 4100
Wire Wire Line
	6900 3050 7100 3050
Wire Wire Line
	7100 3050 7100 3800
Wire Wire Line
	6900 3150 7450 3150
Wire Wire Line
	7450 3150 7450 3800
Wire Wire Line
	6900 3250 7800 3250
Wire Wire Line
	7800 3250 7800 3800
Wire Wire Line
	6900 3350 8150 3350
Wire Wire Line
	8150 3350 8150 3800
Wire Wire Line
	6900 3450 8500 3450
Wire Wire Line
	8500 3450 8500 3800
Wire Wire Line
	6900 3550 7000 3550
Wire Wire Line
	8650 2500 8050 2500
Wire Wire Line
	8650 2600 8050 2600
Wire Wire Line
	8650 2700 8050 2700
Wire Wire Line
	8900 2500 9200 2500
Wire Wire Line
	8900 2600 9400 2600
Wire Wire Line
	8900 2700 9200 2700
Wire Wire Line
	9200 2700 9200 2800
Wire Wire Line
	9200 2500 9200 2400
$Comp
L VCC #PWR03
U 1 1 5994DC0F
P 4050 2900
F 0 "#PWR03" H 4050 2750 50  0001 C CNN
F 1 "VCC" H 4050 3050 50  0000 C CNN
F 2 "" H 4050 2900 50  0001 C CNN
F 3 "" H 4050 2900 50  0001 C CNN
	1    4050 2900
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR04
U 1 1 5994DCBF
P 9200 2400
F 0 "#PWR04" H 9200 2250 50  0001 C CNN
F 1 "VCC" H 9200 2550 50  0000 C CNN
F 2 "" H 9200 2400 50  0001 C CNN
F 3 "" H 9200 2400 50  0001 C CNN
	1    9200 2400
	1    0    0    -1  
$EndComp
Text Label 9250 2600 0    60   ~ 0
MOSI
Text Label 8050 2600 0    60   ~ 0
SCK
Text Label 8050 2500 0    60   ~ 0
MISO
Text Label 8050 2700 0    60   ~ 0
~RESET
$Comp
L GND #PWR05
U 1 1 5994DDA9
P 7100 4600
F 0 "#PWR05" H 7100 4350 50  0001 C CNN
F 1 "GND" H 7100 4450 50  0000 C CNN
F 2 "" H 7100 4600 50  0001 C CNN
F 3 "" H 7100 4600 50  0001 C CNN
	1    7100 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4600 7100 4500
$Comp
L GND #PWR06
U 1 1 5994DE32
P 7450 4600
F 0 "#PWR06" H 7450 4350 50  0001 C CNN
F 1 "GND" H 7450 4450 50  0000 C CNN
F 2 "" H 7450 4600 50  0001 C CNN
F 3 "" H 7450 4600 50  0001 C CNN
	1    7450 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5994DE6A
P 7800 4600
F 0 "#PWR07" H 7800 4350 50  0001 C CNN
F 1 "GND" H 7800 4450 50  0000 C CNN
F 2 "" H 7800 4600 50  0001 C CNN
F 3 "" H 7800 4600 50  0001 C CNN
	1    7800 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5994DEA2
P 8150 4600
F 0 "#PWR08" H 8150 4350 50  0001 C CNN
F 1 "GND" H 8150 4450 50  0000 C CNN
F 2 "" H 8150 4600 50  0001 C CNN
F 3 "" H 8150 4600 50  0001 C CNN
	1    8150 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5994DEDA
P 8500 4600
F 0 "#PWR09" H 8500 4350 50  0001 C CNN
F 1 "GND" H 8500 4450 50  0000 C CNN
F 2 "" H 8500 4600 50  0001 C CNN
F 3 "" H 8500 4600 50  0001 C CNN
	1    8500 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 4600 8500 4500
Wire Wire Line
	8150 4500 8150 4600
Wire Wire Line
	7800 4500 7800 4600
Wire Wire Line
	7450 4500 7450 4600
$Comp
L SYMBOL P1
U 1 1 5994E10B
P 6600 6700
F 0 "P1" H 6600 6650 60  0000 C CNN
F 1 "Outline" H 6600 6750 60  0000 C CNN
F 2 "Board_Outlines:Board_Outline_30mm_Square" H 6600 6700 60  0001 C CNN
F 3 "" H 6600 6700 60  0001 C CNN
	1    6600 6700
	1    0    0    -1  
$EndComp
$Comp
L SYMBOL P2
U 1 1 5994E172
P 6600 7150
F 0 "P2" H 6600 7100 60  0000 C CNN
F 1 "OSHW" H 6600 7200 60  0000 C CNN
F 2 "Symbols:OSHW-Logo2_9.8x8mm_SilkScreen" H 6600 7150 60  0001 C CNN
F 3 "" H 6600 7150 60  0001 C CNN
	1    6600 7150
	1    0    0    -1  
$EndComp
$EndSCHEMATC
