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
Sheet 1 7
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
S 2250 1800 950  1100
U 596F0FEB
F0 "step_down" 60
F1 "step_down.sch" 60
F2 "PWR_IN" I L 2250 2150 60 
F3 "PWR_OUT" O R 3200 2200 60 
$EndSheet
$Sheet
S 3700 3200 900  1100
U 596F0FF5
F0 "charge" 60
F1 "charge.sch" 60
F2 "CHG_PWR" I L 3700 3800 60 
F3 "BATT" O R 4600 3800 60 
$EndSheet
$Sheet
S 5050 3200 1000 1100
U 596F1001
F0 "step_up" 60
F1 "step_up.sch" 60
F2 "PWR_IN" I L 5050 3800 60 
F3 "EN" I L 5050 4050 60 
F4 "PWR_OUT" O R 6050 3800 60 
$EndSheet
$Sheet
S 6500 1850 950  1150
U 596F107C
F0 "load_switch" 60
F1 "load_switch.sch" 60
F2 "BOOSTED_BATT_IN" I L 6500 2450 60 
F3 "WALL_IN" I L 6500 2200 60 
$EndSheet
Wire Wire Line
	2050 1100 2050 3600
Connection ~ 2050 2150
$Comp
L D_x2_KCom_AAK D?
U 1 1 596F5BE9
P 4100 4800
F 0 "D?" H 4150 4700 50  0000 C CNN
F 1 "D_x2_KCom_AAK" H 4100 4900 50  0000 C CNN
F 2 "" H 4100 4800 50  0001 C CNN
F 3 "" H 4100 4800 50  0001 C CNN
	1    4100 4800
	1    0    0    -1  
$EndComp
Text Notes 3900 1400 0    60   ~ 0
Approx 5.2V @ 2.5A\n(0.5A for charge)
Wire Wire Line
	3200 2200 6500 2200
Wire Wire Line
	3700 3800 3500 3800
Wire Wire Line
	3500 2200 3500 4800
Connection ~ 3500 2200
Wire Wire Line
	6050 3800 6250 3800
Wire Wire Line
	6250 3800 6250 2450
Wire Wire Line
	6250 2450 6500 2450
$Sheet
S 8150 3150 1250 2000
U 5972B990
F0 "raspi_interface" 60
F1 "raspi_interface.sch" 60
F2 "POWER_OUT" I L 8150 3500 60 
F3 "SHUTDOWN" B L 8150 4250 60 
F4 "~ONBATT" I L 8150 3750 60 
F5 "~CHARGING" I L 8150 3900 60 
F6 "SDA" B L 8150 4850 60 
F7 "SCL" B L 8150 5000 60 
F8 "~ON_BUTTON" O L 8150 4500 60 
F9 "~OFF_BUTTON" O L 8150 4650 60 
F10 "POWER_IN" O L 8150 3300 60 
$EndSheet
Wire Wire Line
	8150 3300 8000 3300
Wire Wire Line
	8000 3300 8000 1100
Wire Wire Line
	8000 1100 2050 1100
Wire Wire Line
	2250 2150 2050 2150
Wire Wire Line
	8150 3500 7700 3500
Wire Wire Line
	7700 3500 7700 2550
Wire Wire Line
	4600 3800 5050 3800
Text Notes 3600 4450 0    60   ~ 0
Includes battery symbol
Wire Wire Line
	3500 4800 3800 4800
Connection ~ 3500 3800
Wire Wire Line
	4850 3800 4850 4800
Wire Wire Line
	4850 4800 4400 4800
Connection ~ 4850 3800
$Sheet
S 4750 4950 2000 1150
U 5972F81A
F0 "supervisor" 60
F1 "supervisor.sch" 60
F2 "STANDBY_POWER" I L 4750 5200 60 
F3 "~WAKEUP_ON_RETURN" I L 4750 5450 60 
F4 "~ON_BUTTON" I R 6750 5500 60 
F5 "~OFF_BUTTON" I R 6750 5650 60 
F6 "SDA" B R 6750 5800 60 
F7 "SCL" B R 6750 5900 60 
F8 "SHUTDOWN" B R 6750 5050 60 
$EndSheet
Wire Wire Line
	4750 5200 4100 5200
Wire Wire Line
	4100 5200 4100 5000
Wire Wire Line
	6750 5900 7850 5900
Wire Wire Line
	7850 5900 7850 5000
Wire Wire Line
	7850 5000 8150 5000
Wire Wire Line
	8150 4850 7700 4850
Wire Wire Line
	7700 4850 7700 5800
Wire Wire Line
	7700 5800 6750 5800
Wire Wire Line
	8150 4650 7550 4650
Wire Wire Line
	7550 4650 7550 5650
Wire Wire Line
	7550 5650 6750 5650
Wire Wire Line
	6750 5500 7400 5500
Wire Wire Line
	7400 5500 7400 4500
Wire Wire Line
	7400 4500 8150 4500
Wire Wire Line
	8150 4250 7050 4250
Wire Wire Line
	7050 4250 7050 5050
Wire Wire Line
	7050 5050 6750 5050
$EndSCHEMATC
