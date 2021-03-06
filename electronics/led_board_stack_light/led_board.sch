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
LIBS:zeropin
LIBS:led_board-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Machine Status Indicator"
Date ""
Rev ""
Comp "(c) Google LLC"
Comment1 "CC-BY 4.0 International"
Comment2 ""
Comment3 "(c) Google LLC"
Comment4 "CC-BY 4.0 International"
$EndDescr
$Comp
L LED D1
U 1 1 5A7DDCE9
P 6000 3000
F 0 "D1" H 6000 3100 50  0000 C CNN
F 1 "LED" H 6000 2900 50  0000 C CNN
F 2 "LEDs:LED_PLCC-2" H 6000 3000 50  0001 C CNN
F 3 "" H 6000 3000 50  0001 C CNN
F 4 "LTW-670DS" H 6000 3000 60  0001 C CNN "MPN"
F 5 "Lite-On Inc." H 6000 3000 60  0001 C CNN "MFN"
	1    6000 3000
	0    -1   -1   0   
$EndComp
$Comp
L LED D2
U 1 1 5A7DDEDF
P 6000 3400
F 0 "D2" H 6000 3500 50  0000 C CNN
F 1 "LED" H 6000 3300 50  0000 C CNN
F 2 "LEDs:LED_PLCC-2" H 6000 3400 50  0001 C CNN
F 3 "" H 6000 3400 50  0001 C CNN
F 4 "LTW-670DS" H 6000 3000 60  0001 C CNN "MPN"
F 5 "Lite-On Inc." H 6000 3000 60  0001 C CNN "MFN"
	1    6000 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 3150 6000 3250
$Comp
L LED D3
U 1 1 5A7DDF07
P 6000 3800
F 0 "D3" H 6000 3900 50  0000 C CNN
F 1 "LED" H 6000 3700 50  0000 C CNN
F 2 "LEDs:LED_PLCC-2" H 6000 3800 50  0001 C CNN
F 3 "" H 6000 3800 50  0001 C CNN
F 4 "LTW-670DS" H 6000 3000 60  0001 C CNN "MPN"
F 5 "Lite-On Inc." H 6000 3000 60  0001 C CNN "MFN"
	1    6000 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6000 3550 6000 3650
$Comp
L R R1
U 1 1 5A7DDF3A
P 6000 4300
F 0 "R1" V 6080 4300 50  0000 C CNN
F 1 "56R" V 6000 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 5930 4300 50  0001 C CNN
F 3 "" H 6000 4300 50  0001 C CNN
F 4 "LTW-670DS" H 6000 3000 60  0001 C CNN "MPN"
F 5 "Lite-On Inc." H 6000 3000 60  0001 C CNN "MFN"
	1    6000 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 4150 6000 3950
$Comp
L LED D4
U 1 1 5A7DE251
P 6400 3000
F 0 "D4" H 6400 3100 50  0000 C CNN
F 1 "LED" H 6400 2900 50  0000 C CNN
F 2 "LEDs:LED_PLCC-2" H 6400 3000 50  0001 C CNN
F 3 "" H 6400 3000 50  0001 C CNN
F 4 "LTW-670DS" H 6000 3000 60  0001 C CNN "MPN"
F 5 "Lite-On Inc." H 6000 3000 60  0001 C CNN "MFN"
	1    6400 3000
	0    -1   -1   0   
$EndComp
$Comp
L LED D5
U 1 1 5A7DE258
P 6400 3400
F 0 "D5" H 6400 3500 50  0000 C CNN
F 1 "LED" H 6400 3300 50  0000 C CNN
F 2 "LEDs:LED_PLCC-2" H 6400 3400 50  0001 C CNN
F 3 "" H 6400 3400 50  0001 C CNN
F 4 "LTW-670DS" H 6000 3000 60  0001 C CNN "MPN"
F 5 "Lite-On Inc." H 6000 3000 60  0001 C CNN "MFN"
	1    6400 3400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 3150 6400 3250
$Comp
L LED D6
U 1 1 5A7DE260
P 6400 3800
F 0 "D6" H 6400 3900 50  0000 C CNN
F 1 "LED" H 6400 3700 50  0000 C CNN
F 2 "LEDs:LED_PLCC-2" H 6400 3800 50  0001 C CNN
F 3 "" H 6400 3800 50  0001 C CNN
F 4 "LTW-670DS" H 6000 3000 60  0001 C CNN "MPN"
F 5 "Lite-On Inc." H 6000 3000 60  0001 C CNN "MFN"
	1    6400 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 3550 6400 3650
$Comp
L R R2
U 1 1 5A7DE268
P 6400 4300
F 0 "R2" V 6480 4300 50  0000 C CNN
F 1 "56R" V 6400 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805" V 6330 4300 50  0001 C CNN
F 3 "" H 6400 4300 50  0001 C CNN
	1    6400 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 4150 6400 3950
Wire Wire Line
	6000 2850 6000 2800
Connection ~ 6000 2800
Wire Wire Line
	6400 2800 6400 2850
Wire Wire Line
	5550 2900 5550 4550
Wire Wire Line
	5000 2900 5550 2900
Wire Wire Line
	6000 4450 6000 4550
Connection ~ 6000 4550
Wire Wire Line
	6400 4450 6400 4550
$Comp
L SYMBOL P1
U 1 1 5A7DEBA2
P 6000 6700
F 0 "P1" H 6000 6650 60  0000 C CNN
F 1 "OSHW" H 6000 6750 60  0000 C CNN
F 2 "Symbols:OSHW-Logo2_9.8x8mm_SilkScreen" H 6000 6700 60  0001 C CNN
F 3 "" H 6000 6700 60  0001 C CNN
	1    6000 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 2800 5050 2800
Wire Wire Line
	5050 2800 6000 2800
Wire Wire Line
	6000 2800 6400 2800
Wire Wire Line
	6400 4550 6000 4550
Wire Wire Line
	6000 4550 5550 4550
Text Notes 6700 4450 0    60   ~ 0
White 3528 (PLCC-2) size LEDs,\n12V in, 3.4Vf gives 61mW\ndissipated in each resistor.
$Comp
L SYMBOL P2
U 1 1 5A7E09DF
P 6600 6700
F 0 "P2" H 6600 6650 60  0000 C CNN
F 1 "Slot" H 6600 6750 60  0000 C CNN
F 2 "Slots:Slot_3.1x15" H 6600 6700 60  0001 C CNN
F 3 "" H 6600 6700 60  0001 C CNN
	1    6600 6700
	1    0    0    -1  
$EndComp
$Comp
L SYMBOL P3
U 1 1 5A7E0A7E
P 6600 7100
F 0 "P3" H 6600 7050 60  0000 C CNN
F 1 "Slot" H 6600 7150 60  0000 C CNN
F 2 "Slots:Slot_3.1x15" H 6600 7100 60  0001 C CNN
F 3 "" H 6600 7100 60  0001 C CNN
	1    6600 7100
	1    0    0    -1  
$EndComp
$Comp
L SYMBOL P4
U 1 1 5A7E0AC2
P 6600 7500
F 0 "P4" H 6600 7450 60  0000 C CNN
F 1 "Slot" H 6600 7550 60  0000 C CNN
F 2 "Slots:Slot_3.1x15" H 6600 7500 60  0001 C CNN
F 3 "" H 6600 7500 60  0001 C CNN
	1    6600 7500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J1
U 1 1 5A7E0D6B
P 5000 2550
F 0 "J1" H 5000 2700 50  0000 C CNN
F 1 "CONN_01X02" V 5100 2550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 5000 2550 50  0001 C CNN
F 3 "" H 5000 2550 50  0001 C CNN
	1    5000 2550
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 J2
U 1 1 5A7E137D
P 5000 3150
F 0 "J2" H 5000 3250 50  0000 C CNN
F 1 "CONN_01X01" V 5100 3150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 5000 3150 50  0001 C CNN
F 3 "" H 5000 3150 50  0001 C CNN
	1    5000 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 2900 5000 2950
Wire Wire Line
	5050 2800 5050 2750
Wire Wire Line
	4900 2800 4900 2750
Connection ~ 5050 2800
Text Notes 4450 2300 0    60   ~ 0
+12V in, out to next light
Text Notes 4700 3450 0    60   ~ 0
Switched GND
$Comp
L SYMBOL P5
U 1 1 5AA05060
P 6000 7100
F 0 "P5" H 6000 7050 60  0000 C CNN
F 1 "US0119" H 6000 7150 60  0000 C CNN
F 2 "OSHWA_Certification_Mark:OSHW_Mono_0.15_Scale" H 6000 7100 60  0001 C CNN
F 3 "" H 6000 7100 60  0001 C CNN
	1    6000 7100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
