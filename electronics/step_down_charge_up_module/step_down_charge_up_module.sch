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
Sheet 1 6
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
S 3100 2750 950  1100
U 596F0FEB
F0 "step_down" 60
F1 "step_down.sch" 60
F2 "PWR_IN" I L 3100 3100 60 
F3 "PWR_OUT" O R 4050 3350 60 
$EndSheet
$Sheet
S 4850 2750 900  1100
U 596F0FF5
F0 "charge" 60
F1 "charge.sch" 60
F2 "CHG_PWR" I L 4850 3350 60 
F3 "BATT" O R 5750 3600 60 
$EndSheet
$Sheet
S 6550 2750 1000 1100
U 596F1001
F0 "step_up" 60
F1 "step_up.sch" 60
F2 "PWR_IN" I L 6550 3350 60 
F3 "EN" I L 6550 3600 60 
$EndSheet
$Sheet
S 4850 4250 950  850 
U 596F1050
F0 "power_good" 60
F1 "power_good.sch" 60
F2 "PWR_IN" I L 4850 4550 60 
F3 "BATT" I R 5800 4400 60 
F4 "PG" O R 5800 4750 60 
$EndSheet
$Sheet
S 8150 2750 950  1150
U 596F107C
F0 "load_switch" 60
F1 "load_switch.sch" 60
$EndSheet
$Comp
L CONN_01X02 J?
U 1 1 596F2E8A
P 2300 3150
F 0 "J?" H 2300 3300 50  0000 C CNN
F 1 "CONN_01X02" V 2400 3150 50  0000 C CNN
F 2 "" H 2300 3150 50  0001 C CNN
F 3 "" H 2300 3150 50  0001 C CNN
	1    2300 3150
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 596F2ECD
P 2600 3300
F 0 "#PWR?" H 2600 3050 50  0001 C CNN
F 1 "GND" H 2600 3150 50  0000 C CNN
F 2 "" H 2600 3300 50  0001 C CNN
F 3 "" H 2600 3300 50  0001 C CNN
	1    2600 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 3300 2600 3200
Wire Wire Line
	2600 3200 2500 3200
Wire Wire Line
	3100 3100 2900 3100
Wire Wire Line
	2900 3100 2500 3100
Wire Wire Line
	4850 4550 2900 4550
Wire Wire Line
	2900 4550 2900 3100
Connection ~ 2900 3100
Wire Wire Line
	4850 3350 4050 3350
Wire Wire Line
	6000 4400 5800 4400
Wire Wire Line
	6000 3350 6000 3600
Wire Wire Line
	6000 3600 6000 4400
Wire Wire Line
	6000 3600 5750 3600
Wire Wire Line
	6550 3350 6000 3350
Connection ~ 6000 3600
Wire Wire Line
	6300 3600 6550 3600
$Comp
L D_x2_KCom_AAK D?
U 1 1 596F5BE9
P 6300 4750
F 0 "D?" H 6350 4650 50  0000 C CNN
F 1 "D_x2_KCom_AAK" H 6300 4850 50  0000 C CNN
F 2 "" H 6300 4750 50  0001 C CNN
F 3 "" H 6300 4750 50  0001 C CNN
	1    6300 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	6000 4750 5950 4750
Wire Wire Line
	5950 4750 5800 4750
$Comp
L Q_NMOS_GSD Q?
U 1 1 596F5E47
P 6800 5100
F 0 "Q?" H 7000 5150 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 7000 5050 50  0000 L CNN
F 2 "" H 7000 5200 50  0001 C CNN
F 3 "" H 6800 5100 50  0001 C CNN
	1    6800 5100
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 596F603A
P 6700 5400
F 0 "#PWR?" H 6700 5150 50  0001 C CNN
F 1 "GND" H 6700 5250 50  0000 C CNN
F 2 "" H 6700 5400 50  0001 C CNN
F 3 "" H 6700 5400 50  0001 C CNN
	1    6700 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 5300 6700 5400
$Comp
L R R?
U 1 1 596F616C
P 6300 4300
F 0 "R?" V 6380 4300 50  0000 C CNN
F 1 "10k" V 6300 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6230 4300 50  0001 C CNN
F 3 "" H 6300 4300 50  0001 C CNN
	1    6300 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4550 6300 4450
Wire Wire Line
	6300 4150 6300 4050
Wire Wire Line
	6300 4050 6300 3600
Wire Wire Line
	6700 4900 6700 4050
Wire Wire Line
	6700 4050 6300 4050
Connection ~ 6300 4050
Wire Wire Line
	6600 4750 7300 4750
Wire Wire Line
	7000 5100 7300 5100
Text Label 7050 4750 0    60   ~ 0
KEEPALIVE
Text Label 7050 5100 0    60   ~ 0
POWEROFF
Connection ~ 5950 4750
$Comp
L R R?
U 1 1 596F6530
P 5950 5350
F 0 "R?" V 6030 5350 50  0000 C CNN
F 1 "10k" V 5950 5350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 5880 5350 50  0001 C CNN
F 3 "" H 5950 5350 50  0001 C CNN
	1    5950 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5200 5950 4750
Wire Wire Line
	5950 5500 5950 5750
Wire Wire Line
	5950 5750 5950 5850
Wire Wire Line
	5950 5750 6400 5750
Text Label 6300 5750 0    60   ~ 0
~SHUTDOWN_REQ
$Comp
L SW_Push SW?
U 1 1 596F6A37
P 5950 6050
F 0 "SW?" H 6000 6150 50  0000 L CNN
F 1 "SW_Push" H 5950 5990 50  0000 C CNN
F 2 "" H 5950 6250 50  0001 C CNN
F 3 "" H 5950 6250 50  0001 C CNN
	1    5950 6050
	0    -1   -1   0   
$EndComp
Connection ~ 5950 5750
$Comp
L GND #PWR?
U 1 1 596F6B31
P 5950 6350
F 0 "#PWR?" H 5950 6100 50  0001 C CNN
F 1 "GND" H 5950 6200 50  0000 C CNN
F 2 "" H 5950 6350 50  0001 C CNN
F 3 "" H 5950 6350 50  0001 C CNN
	1    5950 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 6350 5950 6250
Text Notes 6300 5950 0    60   ~ 0
TODO: Right now this will just restart if still on wall power
Text Notes 6300 6150 0    60   ~ 0
Up to 4.2V (from battery)
Text Notes 5150 4900 0    60   ~ 0
(no pulldown)
$EndSCHEMATC
