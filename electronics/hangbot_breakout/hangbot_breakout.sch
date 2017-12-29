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
Text GLabel 4300 3200 2    60   Output ~ 0
MOT_A
Text GLabel 4300 3100 2    60   Output ~ 0
MOT_B
Text GLabel 4300 3000 2    60   Output ~ 0
MOT_C
Text GLabel 4300 2900 2    60   Output ~ 0
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
	4150 3800 4150 3700
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
Text GLabel 8050 2450 0    60   Input ~ 0
MOT_A
Text GLabel 8050 2550 0    60   Input ~ 0
MOT_B
Text GLabel 8050 2650 0    60   Input ~ 0
MOT_C
Text GLabel 8050 2750 0    60   Input ~ 0
MOT_D
$Comp
L CONN_01X04 J2
U 1 1 5A4531B3
P 8400 2600
F 0 "J2" H 8400 2850 50  0000 C CNN
F 1 "CONN_01X04" V 8500 2600 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-04_04x2.54mm_Straight" H 8400 2600 50  0001 C CNN
F 3 "" H 8400 2600 50  0001 C CNN
	1    8400 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 2450 8050 2450
Wire Wire Line
	8200 2550 8050 2550
Wire Wire Line
	8200 2650 8050 2650
Wire Wire Line
	8200 2750 8050 2750
Text GLabel 8050 3450 0    60   Input ~ 0
LAYER_FAN_N
Text GLabel 8050 3550 0    60   Input ~ 0
LAYER_FAN_P
Text GLabel 8050 4250 0    60   Input ~ 0
HOT_ZONE_FAN_P
Text GLabel 8050 4150 0    60   Input ~ 0
HOT_ZONE_FAN_N
Text GLabel 8050 4800 0    60   Input ~ 0
THERMISTOR_A
Text GLabel 8050 4900 0    60   Input ~ 0
THERMISTOR_B
Text GLabel 8050 5750 0    60   Input ~ 0
HEATER_A
Text GLabel 8050 5850 0    60   Input ~ 0
HEATER_B
$Comp
L CONN_01X02 J3
U 1 1 5A453492
P 8400 3500
F 0 "J3" H 8400 3650 50  0000 C CNN
F 1 "CONN_01X02" V 8500 3500 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 8400 3500 50  0001 C CNN
F 3 "" H 8400 3500 50  0001 C CNN
	1    8400 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 3450 8600 3450
Connection ~ 8200 3450
Wire Wire Line
	8050 3550 8600 3550
Connection ~ 8200 3550
$Comp
L CONN_01X02 J4
U 1 1 5A4535E6
P 8400 4200
F 0 "J4" H 8400 4350 50  0000 C CNN
F 1 "CONN_01X02" V 8500 4200 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 8400 4200 50  0001 C CNN
F 3 "" H 8400 4200 50  0001 C CNN
	1    8400 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 4150 9150 4150
Wire Wire Line
	8050 4250 9050 4250
Connection ~ 8200 4250
Connection ~ 8200 4150
Text Notes 7300 2250 0    60   ~ 0
Your choice of JST-XH or Molex KK100
Text Notes 7350 3200 0    60   ~ 0
Dual fans, JST-XH or Molex KK100
Text Notes 7450 3900 0    60   ~ 0
JST-XH/KK100 or spring term
Text Notes 7100 1750 0    60   ~ 0
TODO: Check polarity of all fans
$Comp
L CONN_01X02 J5
U 1 1 5A453AA5
P 8400 4850
F 0 "J5" H 8400 5000 50  0000 C CNN
F 1 "CONN_01X02" V 8500 4850 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 8400 4850 50  0001 C CNN
F 3 "" H 8400 4850 50  0001 C CNN
	1    8400 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 4800 9350 4800
Wire Wire Line
	8050 4900 9350 4900
Connection ~ 8200 4900
Connection ~ 8200 4800
Text Notes 7450 4550 0    60   ~ 0
JST-XH/KK100 or spring term
Text Notes 7600 6250 0    60   ~ 0
TODO: Verify pin size on custom MicroFit
$Comp
L CONN_01X02 J8
U 1 1 5A453BE2
P 8400 5800
F 0 "J8" H 8400 5950 50  0000 C CNN
F 1 "CONN_01X02" V 8500 5800 50  0000 C CNN
F 2 "Connectors_Molex_MicroFit:Molex_MicroFit_43650-0200_2Pin" H 8400 5800 50  0001 C CNN
F 3 "" H 8400 5800 50  0001 C CNN
	1    8400 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 5750 9050 5750
Wire Wire Line
	8050 5850 9150 5850
Text Notes 7600 5500 0    60   ~ 0
Micro-Fit, or spring term
Connection ~ 8200 5750
Connection ~ 8200 5850
$Comp
L SYMBOL P1
U 1 1 5A454486
P 6550 6700
F 0 "P1" H 6550 6650 60  0000 C CNN
F 1 "OSHW" H 6550 6750 60  0000 C CNN
F 2 "Symbols:OSHW-Logo2_9.8x8mm_SilkScreen" H 6550 6700 60  0001 C CNN
F 3 "" H 6550 6700 60  0001 C CNN
	1    6550 6700
	1    0    0    -1  
$EndComp
Text Notes 5650 4350 0    60   ~ 0
Note: Although E3D ships\na Micro-Fit connector on this,\nit won't reach to the Titan\nstepper.
$Comp
L Conn_01x06 J9
U 1 1 5A4602B5
P 9550 4800
F 0 "J9" H 9550 5100 50  0000 C CNN
F 1 "Conn_01x06" H 9550 4400 50  0000 C CNN
F 2 "TerminalBlocks_TE:Spring_Horizontal_3.81mm_1-2834017-6" H 9550 4800 50  0001 C CNN
F 3 "" H 9550 4800 50  0001 C CNN
	1    9550 4800
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J7
U 1 1 5A46034F
P 8800 3500
F 0 "J7" H 8800 3650 50  0000 C CNN
F 1 "CONN_01X02" V 8900 3500 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 8800 3500 50  0001 C CNN
F 3 "" H 8800 3500 50  0001 C CNN
	1    8800 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 4600 9150 4600
Wire Wire Line
	9150 4600 9150 4150
Wire Wire Line
	9050 4250 9050 4700
Wire Wire Line
	9050 4700 9350 4700
Wire Wire Line
	9350 5100 9150 5100
Wire Wire Line
	9150 5100 9150 5850
Wire Wire Line
	9050 5750 9050 5000
Wire Wire Line
	9050 5000 9350 5000
$EndSCHEMATC
