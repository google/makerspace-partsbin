EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
LIBS:smd_proto-cache
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
L Conn_01x20 J3
U 1 1 5A4D22F2
P 5600 3800
F 0 "J3" H 5600 4800 50  0000 C CNN
F 1 "Conn_01x20" H 5600 2700 50  0000 C CNN
F 2 "SMD_Pad_Strip:Strip_20" H 5600 3800 50  0001 C CNN
F 3 "" H 5600 3800 50  0001 C CNN
	1    5600 3800
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x20 J4
U 1 1 5A4D233F
P 6050 3800
F 0 "J4" H 6050 4800 50  0000 C CNN
F 1 "Conn_01x20" H 6050 2700 50  0000 C CNN
F 2 "SMD_Pad_Strip:Strip_20x10_NC" H 6050 3800 50  0001 C CNN
F 3 "" H 6050 3800 50  0001 C CNN
	1    6050 3800
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x20 J5
U 1 1 5A4D2363
P 6500 3800
F 0 "J5" H 6500 4800 50  0000 C CNN
F 1 "Conn_01x20" H 6500 2700 50  0000 C CNN
F 2 "SMD_Pad_Strip:Strip_20x10_NC" H 6500 3800 50  0001 C CNN
F 3 "" H 6500 3800 50  0001 C CNN
	1    6500 3800
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x20 J6
U 1 1 5A4D238C
P 6950 3800
F 0 "J6" H 6950 4800 50  0000 C CNN
F 1 "Conn_01x20" H 6950 2700 50  0000 C CNN
F 2 "SMD_Pad_Strip:Strip_20x10_NC" H 6950 3800 50  0001 C CNN
F 3 "" H 6950 3800 50  0001 C CNN
	1    6950 3800
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J1
U 1 1 5A4D23DE
P 4650 2900
F 0 "J1" H 4650 3000 50  0000 C CNN
F 1 "Conn_01x02" H 4650 2700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 4650 2900 50  0001 C CNN
F 3 "" H 4650 2900 50  0001 C CNN
	1    4650 2900
	-1   0    0    -1  
$EndComp
$Comp
L Conn_01x02 J2
U 1 1 5A4D246D
P 4750 4700
F 0 "J2" H 4750 4800 50  0000 C CNN
F 1 "Conn_01x02" H 4750 4500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 4750 4700 50  0001 C CNN
F 3 "" H 4750 4700 50  0001 C CNN
	1    4750 4700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4850 2900 5400 2900
Wire Wire Line
	4850 3000 5100 3000
Wire Wire Line
	5100 3000 5100 3300
Wire Wire Line
	5100 3300 5400 3300
Wire Wire Line
	4950 4800 5400 4800
Wire Wire Line
	4950 4700 5100 4700
Wire Wire Line
	5100 4700 5100 4400
Wire Wire Line
	5100 4400 5400 4400
$Comp
L SYMBOL P1
U 1 1 5A4D264A
P 6600 6700
F 0 "P1" H 6600 6650 60  0000 C CNN
F 1 "Hole" H 6600 6750 60  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965" H 6600 6700 60  0001 C CNN
F 3 "" H 6600 6700 60  0001 C CNN
	1    6600 6700
	1    0    0    -1  
$EndComp
$Comp
L SYMBOL P2
U 1 1 5A4D2698
P 6600 7100
F 0 "P2" H 6600 7050 60  0000 C CNN
F 1 "Hole" H 6600 7150 60  0000 C CNN
F 2 "Mounting_Holes:MountingHole_3.2mm_M3_DIN965" H 6600 7100 60  0001 C CNN
F 3 "" H 6600 7100 60  0001 C CNN
	1    6600 7100
	1    0    0    -1  
$EndComp
$Comp
L SYMBOL P3
U 1 1 5A4D29B3
P 6600 7500
F 0 "P3" H 6600 7450 60  0000 C CNN
F 1 "OSHW" H 6600 7550 60  0000 C CNN
F 2 "Symbols:OSHW-Logo2_7.3x6mm_SilkScreen" H 6600 7500 60  0001 C CNN
F 3 "" H 6600 7500 60  0001 C CNN
	1    6600 7500
	1    0    0    -1  
$EndComp
NoConn ~ 5400 3000
NoConn ~ 5400 3100
NoConn ~ 5400 3200
NoConn ~ 5400 3400
NoConn ~ 5400 3500
NoConn ~ 5400 3600
NoConn ~ 5400 3700
NoConn ~ 5400 3800
NoConn ~ 5400 4700
NoConn ~ 5400 4600
NoConn ~ 5400 4500
NoConn ~ 5400 4300
NoConn ~ 5400 4200
NoConn ~ 5400 4100
NoConn ~ 5400 4000
NoConn ~ 5400 3900
NoConn ~ 5850 4800
NoConn ~ 5850 4700
NoConn ~ 5850 4600
NoConn ~ 5850 4500
NoConn ~ 5850 4400
NoConn ~ 5850 4300
NoConn ~ 5850 4200
NoConn ~ 5850 4100
NoConn ~ 5850 4000
NoConn ~ 5850 3900
NoConn ~ 5850 3800
NoConn ~ 5850 3700
NoConn ~ 5850 3600
NoConn ~ 5850 3500
NoConn ~ 5850 3400
NoConn ~ 5850 3300
NoConn ~ 5850 3200
NoConn ~ 5850 3100
NoConn ~ 5850 3000
NoConn ~ 5850 2900
NoConn ~ 6300 2900
NoConn ~ 6300 3000
NoConn ~ 6300 3100
NoConn ~ 6300 3200
NoConn ~ 6300 3300
NoConn ~ 6300 3400
NoConn ~ 6300 3500
NoConn ~ 6300 3600
NoConn ~ 6300 3700
NoConn ~ 6300 3800
NoConn ~ 6300 3900
NoConn ~ 6300 4000
NoConn ~ 6300 4100
NoConn ~ 6300 4200
NoConn ~ 6300 4300
NoConn ~ 6300 4400
NoConn ~ 6300 4500
NoConn ~ 6300 4600
NoConn ~ 6300 4700
NoConn ~ 6300 4800
NoConn ~ 6750 4800
NoConn ~ 6750 4700
NoConn ~ 6750 4600
NoConn ~ 6750 4500
NoConn ~ 6750 4400
NoConn ~ 6750 4300
NoConn ~ 6750 4200
NoConn ~ 6750 4100
NoConn ~ 6750 4000
NoConn ~ 6750 3900
NoConn ~ 6750 3800
NoConn ~ 6750 3700
NoConn ~ 6750 3600
NoConn ~ 6750 3500
NoConn ~ 6750 3400
NoConn ~ 6750 3300
NoConn ~ 6750 3200
NoConn ~ 6750 3100
NoConn ~ 6750 3000
NoConn ~ 6750 2900
$EndSCHEMATC
