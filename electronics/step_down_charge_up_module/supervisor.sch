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
$Comp
L MCP1703A-3002/MB U?
U 1 1 5972F863
P 4600 3300
F 0 "U?" H 4750 3050 50  0000 C CNN
F 1 "MCP1703A-3002/MB" H 4600 3450 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT89-3_Housing" H 4650 3550 50  0001 C CNN
F 3 "" H 4600 3250 50  0001 C CNN
	1    4600 3300
	1    0    0    -1  
$EndComp
Text HLabel 3750 3300 0    60   Input ~ 0
STANDBY_POWER
Text Notes 3050 2450 0    60   ~ 0
Reduce total current draw so this can be\ndirectly connected to battery, or\nadd pmos to turn it completely off\nwhen wall not present.
Wire Wire Line
	4300 3300 3750 3300
Text Notes 5150 3000 0    60   ~ 0
attiny2313 @ 10MHz works down to 2.7V\n(Provide a consistent reference less than min\nbattery voltage to make AREF easier to reason about)
$Comp
L ATTINY2313-20SU U?
U 1 1 5972F8B7
P 7100 4700
F 0 "U?" H 6150 5700 50  0000 C CNN
F 1 "ATTINY2313-20SU" H 7850 3800 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-20W_7.5x12.8mm_Pitch1.27mm" H 7100 4700 50  0001 C CIN
F 3 "" H 7100 4700 50  0001 C CNN
	1    7100 4700
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5972F976
P 5700 3550
F 0 "R?" V 5780 3550 50  0000 C CNN
F 1 "100k" V 5700 3550 50  0000 C CNN
F 2 "" V 5630 3550 50  0001 C CNN
F 3 "" H 5700 3550 50  0001 C CNN
	1    5700 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 3300 7100 3300
Wire Wire Line
	7100 3300 7100 3600
Wire Wire Line
	5700 3400 5700 3300
Connection ~ 5700 3300
Wire Wire Line
	5950 3900 5700 3900
Wire Wire Line
	5700 3900 5700 3700
Text Notes 7350 3550 0    60   ~ 0
TODO see if a smaller chip will work (e.g. SO8)
Text Notes 3050 2900 0    60   ~ 0
Datasheet says power-down without WDT\n@ is <0.5uA (pull* resistors will dominate\noverall power draw)
$Comp
L GND #PWR?
U 1 1 5972FB6A
P 7100 5850
F 0 "#PWR?" H 7100 5600 50  0001 C CNN
F 1 "GND" H 7100 5700 50  0000 C CNN
F 2 "" H 7100 5850 50  0001 C CNN
F 3 "" H 7100 5850 50  0001 C CNN
	1    7100 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 5850 7100 5700
Text HLabel 3950 4550 0    60   Input ~ 0
~WAKEUP_ON_RETURN
Text HLabel 3950 4850 0    60   Input ~ 0
~ON_BUTTON
Text HLabel 3950 5050 0    60   Input ~ 0
~OFF_BUTTON
Text HLabel 3950 5200 0    60   BiDi ~ 0
SDA
Text HLabel 3900 5500 0    60   BiDi ~ 0
SCL
Text HLabel 3900 5850 0    60   BiDi ~ 0
SHUTDOWN
$EndSCHEMATC
