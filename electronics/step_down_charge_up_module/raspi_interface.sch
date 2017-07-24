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
Sheet 7 7
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4650 2800 0    60   Output ~ 0
POWER_IN
$Comp
L GND #PWR?
U 1 1 5972BB1F
P 4800 3650
F 0 "#PWR?" H 4800 3400 50  0001 C CNN
F 1 "GND" H 4800 3500 50  0000 C CNN
F 2 "" H 4800 3650 50  0001 C CNN
F 3 "" H 4800 3650 50  0001 C CNN
	1    4800 3650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 J?
U 1 1 5972BB33
P 5100 2900
F 0 "J?" H 5100 3100 50  0000 C CNN
F 1 "CONN_01X03" V 5200 2900 50  0000 C CNN
F 2 "" H 5100 2900 50  0001 C CNN
F 3 "" H 5100 2900 50  0001 C CNN
	1    5100 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2800 4650 2800
Wire Wire Line
	4900 2900 4800 2900
Wire Wire Line
	4800 2800 4800 3000
Connection ~ 4800 2800
Wire Wire Line
	4800 3000 4900 3000
Connection ~ 4800 2900
$Comp
L CONN_01X03 J?
U 1 1 5972BB74
P 5100 3450
F 0 "J?" H 5100 3650 50  0000 C CNN
F 1 "CONN_01X03" V 5200 3450 50  0000 C CNN
F 2 "" H 5100 3450 50  0001 C CNN
F 3 "" H 5100 3450 50  0001 C CNN
	1    5100 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3550 4800 3550
Wire Wire Line
	4800 3350 4800 3650
Wire Wire Line
	4900 3450 4800 3450
Connection ~ 4800 3550
Wire Wire Line
	4900 3350 4800 3350
Connection ~ 4800 3450
Text HLabel 6800 2800 0    60   Input ~ 0
POWER_OUT
$Comp
L GND #PWR?
U 1 1 5972BCFD
P 6950 3650
F 0 "#PWR?" H 6950 3400 50  0001 C CNN
F 1 "GND" H 6950 3500 50  0000 C CNN
F 2 "" H 6950 3650 50  0001 C CNN
F 3 "" H 6950 3650 50  0001 C CNN
	1    6950 3650
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 J?
U 1 1 5972BD03
P 7250 2900
F 0 "J?" H 7250 3100 50  0000 C CNN
F 1 "CONN_01X03" V 7350 2900 50  0000 C CNN
F 2 "" H 7250 2900 50  0001 C CNN
F 3 "" H 7250 2900 50  0001 C CNN
	1    7250 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2800 6800 2800
Wire Wire Line
	7050 2900 6950 2900
Wire Wire Line
	6950 2800 6950 3000
Connection ~ 6950 2800
Wire Wire Line
	6950 3000 7050 3000
Connection ~ 6950 2900
$Comp
L CONN_01X03 J?
U 1 1 5972BD0F
P 7250 3450
F 0 "J?" H 7250 3650 50  0000 C CNN
F 1 "CONN_01X03" V 7350 3450 50  0000 C CNN
F 2 "" H 7250 3450 50  0001 C CNN
F 3 "" H 7250 3450 50  0001 C CNN
	1    7250 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3550 6950 3550
Wire Wire Line
	6950 3350 6950 3650
Wire Wire Line
	7050 3450 6950 3450
Connection ~ 6950 3550
Wire Wire Line
	7050 3350 6950 3350
Connection ~ 6950 3450
$Comp
L CONN_01X08 J?
U 1 1 5972BD96
P 6300 4650
F 0 "J?" H 6300 5100 50  0000 C CNN
F 1 "CONN_01X08" V 6400 4650 50  0000 C CNN
F 2 "" H 6300 4650 50  0001 C CNN
F 3 "" H 6300 4650 50  0001 C CNN
	1    6300 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5972BE9F
P 6000 4300
F 0 "#PWR?" H 6000 4050 50  0001 C CNN
F 1 "GND" H 6000 4150 50  0000 C CNN
F 2 "" H 6000 4300 50  0001 C CNN
F 3 "" H 6000 4300 50  0001 C CNN
	1    6000 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	6100 4300 6000 4300
Text HLabel 5950 4400 0    60   BiDi ~ 0
SHUTDOWN
Wire Wire Line
	5950 4400 6100 4400
Text HLabel 5950 4700 0    60   Input ~ 0
~ONBATT
Wire Wire Line
	5950 4700 6100 4700
Text HLabel 5950 4800 0    60   Input ~ 0
~CHARGING
Wire Wire Line
	6100 4800 5950 4800
Text HLabel 5950 4500 0    60   BiDi ~ 0
SDA
Text HLabel 5950 4600 0    60   BiDi ~ 0
SCL
Wire Wire Line
	6100 4500 5950 4500
Wire Wire Line
	6100 4600 5950 4600
Text HLabel 5950 4900 0    60   Output ~ 0
~ON_BUTTON
Text HLabel 5950 5000 0    60   Output ~ 0
~OFF_BUTTON
Wire Wire Line
	5950 4900 6100 4900
Wire Wire Line
	6100 5000 5950 5000
$EndSCHEMATC
