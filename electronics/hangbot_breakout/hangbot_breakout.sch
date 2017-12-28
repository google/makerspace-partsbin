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
LIBS:hangbot_breakout-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L CONN_02X10 J1
U 1 1 5A452B27
P 3850 3350
F 0 "J1" H 3850 3900 50  0000 C CNN
F 1 "CONN_02X10" V 3850 3350 50  0000 C CNN
F 2 "Connectors_Multicomp:Multicomp_MC9A12-2034_2x10x2.54mm_Straight" H 3850 2150 50  0001 C CNN
F 3 "" H 3850 2150 50  0001 C CNN
	1    3850 3350
	1    0    0    -1  
$EndComp
Text GLabel 4300 2900 2    60   Output ~ 0
MOT_A
Text GLabel 4300 3000 2    60   Output ~ 0
MOT_B
Text GLabel 4300 3100 2    60   Output ~ 0
MOT_C
Text GLabel 4300 3200 2    60   Output ~ 0
MOT_D
Text GLabel 3500 3300 0    60   Output ~ 0
LAYER_FAN_P
Text GLabel 4200 3300 2    60   Output ~ 0
LAYER_FAN_N
Text GLabel 3500 3400 0    60   Output ~ 0
HOT_ZONE_FAN_P
Text GLabel 4200 3400 2    60   Output ~ 0
HOT_ZONE_FAN_N
Text GLabel 3500 3500 0    60   Output ~ 0
THERMISTOR_A
Text GLabel 4200 3500 2    60   Output ~ 0
THERMISTOR_B
Wire Wire Line
	3600 2900 4300 2900
Connection ~ 4100 2900
Wire Wire Line
	3600 3000 4300 3000
Connection ~ 4100 3000
Wire Wire Line
	3600 3100 4300 3100
Connection ~ 4100 3100
Wire Wire Line
	3600 3200 4300 3200
Connection ~ 4100 3200
Wire Wire Line
	4200 3300 4100 3300
Wire Wire Line
	3600 3300 3500 3300
Wire Wire Line
	3600 3400 3500 3400
Wire Wire Line
	3500 3500 3600 3500
Wire Wire Line
	4100 3500 4200 3500
Wire Wire Line
	4200 3400 4100 3400
Wire Wire Line
	3550 3600 4100 3600
Wire Wire Line
	3550 3600 3550 3700
Wire Wire Line
	3500 3700 3600 3700
Connection ~ 3600 3600
Wire Wire Line
	4100 3700 4150 3700
Wire Wire Line
	4150 3700 4150 3800
Wire Wire Line
	3600 3800 4200 3800
Connection ~ 4100 3800
Text GLabel 3500 3700 0    60   Output ~ 0
HEATER_A
Text GLabel 4200 3800 2    60   Output ~ 0
HEATER_B
Connection ~ 4150 3800
Connection ~ 3550 3700
Text Notes 3000 2650 0    60   ~ 0
TODO: Find/write shrouded header footprint
Text GLabel 6900 2550 0    60   Input ~ 0
MOT_A
Text GLabel 6900 2650 0    60   Input ~ 0
MOT_B
Text GLabel 6900 2750 0    60   Input ~ 0
MOT_C
Text GLabel 6900 2850 0    60   Input ~ 0
MOT_D
$Comp
L CONN_01X04 J2
U 1 1 5A4531B3
P 7250 2700
F 0 "J2" H 7250 2950 50  0000 C CNN
F 1 "CONN_01X04" V 7350 2700 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-04_04x2.54mm_Straight" H 7250 2700 50  0001 C CNN
F 3 "" H 7250 2700 50  0001 C CNN
	1    7250 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2550 6900 2550
Wire Wire Line
	7050 2650 6900 2650
Wire Wire Line
	7050 2750 6900 2750
Wire Wire Line
	7050 2850 6900 2850
Text GLabel 6900 3650 0    60   Input ~ 0
LAYER_FAN_N
Text GLabel 6900 3550 0    60   Input ~ 0
LAYER_FAN_P
Text GLabel 6900 4250 0    60   Input ~ 0
HOT_ZONE_FAN_P
Text GLabel 6900 4350 0    60   Input ~ 0
HOT_ZONE_FAN_N
Text GLabel 6900 4900 0    60   Input ~ 0
THERMISTOR_A
Text GLabel 6900 5000 0    60   Input ~ 0
THERMISTOR_B
Text GLabel 6900 5850 0    60   Input ~ 0
HEATER_A
Text GLabel 6900 5950 0    60   Input ~ 0
HEATER_B
$Comp
L CONN_01X02 J3
U 1 1 5A453492
P 7250 3600
F 0 "J3" H 7250 3750 50  0000 C CNN
F 1 "CONN_01X02" V 7350 3600 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 7250 3600 50  0001 C CNN
F 3 "" H 7250 3600 50  0001 C CNN
	1    7250 3600
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J7
U 1 1 5A4534DE
P 7650 3600
F 0 "J7" H 7650 3750 50  0000 C CNN
F 1 "CONN_01X02" V 7750 3600 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 7650 3600 50  0001 C CNN
F 3 "" H 7650 3600 50  0001 C CNN
	1    7650 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 3550 7450 3550
Connection ~ 7050 3550
Wire Wire Line
	6900 3650 7450 3650
Connection ~ 7050 3650
$Comp
L CONN_01X02 J4
U 1 1 5A4535E6
P 7250 4300
F 0 "J4" H 7250 4450 50  0000 C CNN
F 1 "CONN_01X02" V 7350 4300 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 7250 4300 50  0001 C CNN
F 3 "" H 7250 4300 50  0001 C CNN
	1    7250 4300
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J8
U 1 1 5A45361D
P 7650 4300
F 0 "J8" H 7650 4450 50  0000 C CNN
F 1 "CONN_01X02" V 7750 4300 50  0000 C CNN
F 2 "Connectors_Molex_MicroFit:Molex_MicroFit_43650-0200_2Pin" H 7650 4300 50  0001 C CNN
F 3 "" H 7650 4300 50  0001 C CNN
	1    7650 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4250 7450 4250
Wire Wire Line
	6900 4350 7450 4350
Connection ~ 7050 4350
Connection ~ 7050 4250
Text Notes 6150 2350 0    60   ~ 0
Your choice of JST-XH or Molex KK100
Text Notes 6200 3300 0    60   ~ 0
Dual fans, JST-XH or Molex KK100
Text Notes 6300 4100 0    60   ~ 0
JST-XH/KK100 or Micro-Fit 3.0\n(as shipped by E3D)
Text Notes 5950 1850 0    60   ~ 0
TODO: Check polarity of all fans
$Comp
L CONN_01X02 J5
U 1 1 5A453AA5
P 7250 4950
F 0 "J5" H 7250 5100 50  0000 C CNN
F 1 "CONN_01X02" V 7350 4950 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 7250 4950 50  0001 C CNN
F 3 "" H 7250 4950 50  0001 C CNN
	1    7250 4950
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J9
U 1 1 5A453AAC
P 7650 4950
F 0 "J9" H 7650 5100 50  0000 C CNN
F 1 "CONN_01X02" V 7750 4950 50  0000 C CNN
F 2 "Connectors_Molex_MicroFit:Molex_MicroFit_43650-0200_2Pin" H 7650 4950 50  0001 C CNN
F 3 "" H 7650 4950 50  0001 C CNN
	1    7650 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4900 7450 4900
Wire Wire Line
	6900 5000 7450 5000
Connection ~ 7050 5000
Connection ~ 7050 4900
Text Notes 6300 4750 0    60   ~ 0
JST-XH/KK100 or Micro-Fit 3.0\n(as shipped by E3D)
Text Notes 8100 4150 0    60   ~ 0
TODO: Verify pin size on custom MicroFit
$Comp
L CONN_01X02 J6
U 1 1 5A453BDB
P 7250 5900
F 0 "J6" H 7250 6050 50  0000 C CNN
F 1 "CONN_01X02" V 7350 5900 50  0000 C CNN
F 2 "Connectors_Phoenix:PhoenixContact_MSTBA-G_02x5.08mm_Angled" H 7250 5900 50  0001 C CNN
F 3 "" H 7250 5900 50  0001 C CNN
	1    7250 5900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J10
U 1 1 5A453BE2
P 7650 5900
F 0 "J10" H 7650 6050 50  0000 C CNN
F 1 "CONN_01X02" V 7750 5900 50  0000 C CNN
F 2 "Connectors_Molex_MicroFit:Molex_MicroFit_43650-0200_2Pin" H 7650 5900 50  0001 C CNN
F 3 "" H 7650 5900 50  0001 C CNN
	1    7650 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5850 7850 5850
Wire Wire Line
	6900 5950 7850 5950
Connection ~ 7050 5950
Connection ~ 7050 5850
$Comp
L CONN_01X02 J11
U 1 1 5A453C1A
P 8050 5900
F 0 "J11" H 8050 6050 50  0000 C CNN
F 1 "CONN_01X02" V 8150 5900 50  0000 C CNN
F 2 "TerminalBlocks_KF235:KF235_2Pin_3.81mm" H 8050 5900 50  0001 C CNN
F 3 "" H 8050 5900 50  0001 C CNN
	1    8050 5900
	1    0    0    -1  
$EndComp
Text Notes 6050 5500 0    60   ~ 0
Phoenix pluggable, 5mm screw term, MicroFit, or spring term
Connection ~ 7450 5850
Connection ~ 7450 5950
$Comp
L SYMBOL P?
U 1 1 5A454380
P 6450 6850
F 0 "P?" H 6450 6800 60  0000 C CNN
F 1 "Hole" H 6450 6900 60  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 6450 6850 60  0001 C CNN
F 3 "" H 6450 6850 60  0001 C CNN
	1    6450 6850
	1    0    0    -1  
$EndComp
$Comp
L SYMBOL P?
U 1 1 5A4543F1
P 6450 7300
F 0 "P?" H 6450 7250 60  0000 C CNN
F 1 "Hole" H 6450 7350 60  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_Pad_Via" H 6450 7300 60  0001 C CNN
F 3 "" H 6450 7300 60  0001 C CNN
	1    6450 7300
	1    0    0    -1  
$EndComp
$Comp
L SYMBOL P?
U 1 1 5A454486
P 5800 6850
F 0 "P?" H 5800 6800 60  0000 C CNN
F 1 "OSHW" H 5800 6900 60  0000 C CNN
F 2 "Symbols:OSHW-Logo2_9.8x8mm_SilkScreen" H 5800 6850 60  0001 C CNN
F 3 "" H 5800 6850 60  0001 C CNN
	1    5800 6850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
