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
S 2250 1650 950  900 
U 596F0FEB
F0 "step_down" 60
F1 "step_down.sch" 60
F2 "PWR_IN" I L 2250 2200 60 
F3 "PWR_OUT" O R 3200 1900 60 
$EndSheet
$Sheet
S 3800 2150 900  1100
U 596F0FF5
F0 "charge" 60
F1 "charge.sch" 60
F2 "CHG_PWR" I L 3800 2350 60 
F3 "BATT" O R 4700 2900 60 
F4 "~CHARGING" O L 3800 3100 60 
$EndSheet
$Sheet
S 5350 2150 1000 1100
U 596F1001
F0 "step_up" 60
F1 "step_up.sch" 60
F2 "PWR_IN" I L 5350 2900 60 
F3 "EN" I R 6350 3100 60 
F4 "PWR_OUT" O R 6350 2750 60 
$EndSheet
$Sheet
S 7050 1550 950  1150
U 596F107C
F0 "load_switch" 60
F1 "load_switch.sch" 60
F2 "BOOSTED_BATT_IN" I L 7050 2150 60 
F3 "WALL_IN" I L 7050 1900 60 
F4 "~EN" I L 7050 2450 60 
F5 "OUT" O R 8000 2450 60 
$EndSheet
Text Notes 3350 1750 0    60   ~ 0
Can source approx 5.2V @ 2.5A\n(0.5A for charge)
$Sheet
S 4650 4650 2000 1150
U 5972F81A
F0 "supervisor" 60
F1 "supervisor.sch" 60
F2 "~WAKEUP_ON_RETURN" I L 4650 4900 60 
F3 "~ON_BUTTON" I R 6650 5500 60 
F4 "~OFF_BUTTON" I R 6650 5600 60 
F5 "SDA" B R 6650 5150 60 
F6 "SCL" B R 6650 5250 60 
F7 "SHUTDOWN" B R 6650 5050 60 
F8 "BATT" I L 4650 4800 60 
F9 "~ON_WALL" I L 4650 5350 60 
F10 "5V_EN" O R 6650 4800 60 
$EndSheet
$Comp
L CONN_01X03 J101
U 1 1 5972D04A
P 1750 2300
F 0 "J101" H 1750 2500 50  0000 C CNN
F 1 "CONN_01X03" V 1850 2300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 1750 2300 50  0001 C CNN
F 3 "" H 1750 2300 50  0001 C CNN
	1    1750 2300
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X03 J102
U 1 1 5972CB4D
P 1750 2750
F 0 "J102" H 1750 2950 50  0000 C CNN
F 1 "CONN_01X03" V 1850 2750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 1750 2750 50  0001 C CNN
F 3 "" H 1750 2750 50  0001 C CNN
	1    1750 2750
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR101
U 1 1 5972CEA0
P 2050 2950
F 0 "#PWR101" H 2050 2700 50  0001 C CNN
F 1 "GND" H 2050 2800 50  0000 C CNN
F 2 "" H 2050 2950 50  0001 C CNN
F 3 "" H 2050 2950 50  0001 C CNN
	1    2050 2950
	1    0    0    -1  
$EndComp
$Comp
L Battery_Cell BT101
U 1 1 5972F312
P 5000 3950
F 0 "BT101" H 5100 4050 50  0000 L CNN
F 1 "Battery_Cell" H 5100 3950 50  0000 L CNN
F 2 "Connectors_JST:JST_PH_S2B-PH-K_02x2.00mm_Angled" V 5000 4010 50  0001 C CNN
F 3 "" V 5000 4010 50  0001 C CNN
	1    5000 3950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR104
U 1 1 5972F3D5
P 5000 4100
F 0 "#PWR104" H 5000 3850 50  0001 C CNN
F 1 "GND" H 5000 3950 50  0000 C CNN
F 2 "" H 5000 4100 50  0001 C CNN
F 3 "" H 5000 4100 50  0001 C CNN
	1    5000 4100
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J103
U 1 1 59731824
P 3900 4650
F 0 "J103" H 3900 4800 50  0000 C CNN
F 1 "CONN_01X02" V 4000 4650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 3900 4650 50  0001 C CNN
F 3 "" H 3900 4650 50  0001 C CNN
	1    3900 4650
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR102
U 1 1 59731B32
P 3850 4950
F 0 "#PWR102" H 3850 4700 50  0001 C CNN
F 1 "GND" H 3850 4800 50  0000 C CNN
F 2 "" H 3850 4950 50  0001 C CNN
F 3 "" H 3850 4950 50  0001 C CNN
	1    3850 4950
	1    0    0    -1  
$EndComp
Text Notes 5150 4450 0    60   ~ 0
Cell must be protected\nagainst over-discharge.\nSX1308 UVLO @ 2V and\nattiny will continue draw.
$Comp
L SW_Push SW101
U 1 1 59735831
P 7000 5950
F 0 "SW101" H 7050 6050 50  0000 L CNN
F 1 "SW_Push" H 7000 5890 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_Tactile_SPST_Angled_PTS645Vx58-2LFS" H 7000 6150 50  0001 C CNN
F 3 "" H 7000 6150 50  0001 C CNN
	1    7000 5950
	0    -1   -1   0   
$EndComp
$Comp
L SW_Push SW102
U 1 1 5973591C
P 7350 5950
F 0 "SW102" H 7400 6050 50  0000 L CNN
F 1 "SW_Push" H 7350 5890 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_Tactile_SPST_Angled_PTS645Vx58-2LFS" H 7350 6150 50  0001 C CNN
F 3 "" H 7350 6150 50  0001 C CNN
	1    7350 5950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 1900 3450 1900
Wire Wire Line
	3450 1900 7050 1900
Wire Wire Line
	1950 2200 2050 2200
Wire Wire Line
	2050 2200 2150 2200
Wire Wire Line
	2150 2200 2250 2200
Wire Wire Line
	2050 2200 2050 2300
Wire Wire Line
	2050 2300 2050 2400
Wire Wire Line
	2050 2400 1950 2400
Wire Wire Line
	1950 2300 2050 2300
Connection ~ 2050 2300
Connection ~ 2050 2200
Wire Wire Line
	1950 2650 2050 2650
Wire Wire Line
	2050 2650 2050 2750
Wire Wire Line
	2050 2750 2050 2850
Wire Wire Line
	2050 2850 2050 2950
Wire Wire Line
	1950 2850 2050 2850
Connection ~ 2050 2850
Wire Wire Line
	2050 2850 2050 2750
Connection ~ 2050 2750
Wire Wire Line
	2050 2750 1950 2750
Wire Wire Line
	5000 4050 5000 4100
Wire Wire Line
	4650 4900 3950 4900
Wire Wire Line
	3950 4900 3950 4850
Wire Wire Line
	3850 4850 3850 4950
Connection ~ 5000 3650
Wire Wire Line
	6350 2750 6450 2750
Wire Wire Line
	6450 2750 6450 2150
Wire Wire Line
	6450 2150 7050 2150
Wire Wire Line
	6650 5500 7000 5500
Wire Wire Line
	7000 5500 7600 5500
Wire Wire Line
	6650 5600 7350 5600
Wire Wire Line
	7350 5600 7600 5600
Connection ~ 7000 5500
Wire Wire Line
	7350 5750 7350 5600
Connection ~ 7350 5600
$Comp
L GND #PWR107
U 1 1 59735CF0
P 7000 6250
F 0 "#PWR107" H 7000 6000 50  0001 C CNN
F 1 "GND" H 7000 6100 50  0000 C CNN
F 2 "" H 7000 6250 50  0001 C CNN
F 3 "" H 7000 6250 50  0001 C CNN
	1    7000 6250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR109
U 1 1 59735DAD
P 7350 6250
F 0 "#PWR109" H 7350 6000 50  0001 C CNN
F 1 "GND" H 7350 6100 50  0000 C CNN
F 2 "" H 7350 6250 50  0001 C CNN
F 3 "" H 7350 6250 50  0001 C CNN
	1    7350 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 6250 7350 6150
Wire Wire Line
	7000 6150 7000 6250
Text Notes 7000 3800 0    60   ~ 0
This disables both boost converter\nand output; supervisor is powered\nfrom battery and continues with\nthis off.
Text Notes 1800 1400 0    60   ~ 0
TODO: Verify there is no back diode in MP2315
Text Notes 6350 1350 0    60   ~ 0
TODO: Verify that boost converter's diode works fine\nhere, so we only need ideal diode on WALL_IN
$Comp
L Q_NMOS_GSD Q102
U 1 1 59739782
P 6750 3100
F 0 "Q102" H 6950 3150 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 6950 3050 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 6950 3200 50  0001 C CNN
F 3 "" H 6750 3100 50  0001 C CNN
	1    6750 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 2450 6850 2450
Wire Wire Line
	6850 2450 6850 2900
Wire Wire Line
	6350 3100 6450 3100
Wire Wire Line
	6450 3100 6550 3100
Wire Wire Line
	6450 3100 6450 4150
Connection ~ 6450 3100
Wire Wire Line
	6850 3300 6850 3450
$Comp
L GND #PWR106
U 1 1 59739F41
P 6850 3450
F 0 "#PWR106" H 6850 3200 50  0001 C CNN
F 1 "GND" H 6850 3300 50  0000 C CNN
F 2 "" H 6850 3450 50  0001 C CNN
F 3 "" H 6850 3450 50  0001 C CNN
	1    6850 3450
	1    0    0    -1  
$EndComp
Text Notes 5000 2800 1    60   ~ 0
<- For measuring current
Wire Wire Line
	7000 5500 7000 5750
$Comp
L CONN_01X03 J108
U 1 1 5973D57D
P 7800 5600
F 0 "J108" H 7800 5800 50  0000 C CNN
F 1 "CONN_01X03" V 7900 5600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 7800 5600 50  0001 C CNN
F 3 "" H 7800 5600 50  0001 C CNN
	1    7800 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR110
U 1 1 5973D710
P 7600 6250
F 0 "#PWR110" H 7600 6000 50  0001 C CNN
F 1 "GND" H 7600 6100 50  0000 C CNN
F 2 "" H 7600 6250 50  0001 C CNN
F 3 "" H 7600 6250 50  0001 C CNN
	1    7600 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 6250 7600 5700
Wire Wire Line
	4450 3650 4900 3650
Wire Wire Line
	4900 3650 5000 3650
$Comp
L Q_NMOS_GSD Q101
U 1 1 5973F8AB
P 3950 5600
F 0 "Q101" H 4150 5650 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 4150 5550 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 4150 5700 50  0001 C CNN
F 3 "" H 3950 5600 50  0001 C CNN
	1    3950 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 5600 3750 5600
Wire Wire Line
	4050 5400 4050 5350
Wire Wire Line
	4050 5350 4250 5350
Wire Wire Line
	4250 5350 4650 5350
$Comp
L GND #PWR103
U 1 1 5974057C
P 4050 5850
F 0 "#PWR103" H 4050 5600 50  0001 C CNN
F 1 "GND" H 4050 5700 50  0000 C CNN
F 2 "" H 4050 5850 50  0001 C CNN
F 3 "" H 4050 5850 50  0001 C CNN
	1    4050 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 5850 4050 5800
Connection ~ 3450 1900
Text Notes 2300 6550 0    60   ~ 0
TODO: Reconsider pullup value\n(it affects charging current, while\non wall, by a few uA).  Could\nprobably use built-in pullup.\n\nTODO: Is a pulldown necessary\non gate, or can we rely on the\nsmall resistors inside buck\nconverter block?
Wire Wire Line
	6450 4150 6900 4150
Wire Wire Line
	6900 4150 7200 4150
Wire Wire Line
	6900 4150 6900 4800
Wire Wire Line
	6900 4800 6650 4800
Text Notes 8250 2050 0    60   ~ 0
TODO: Ensure that step_up has completed\npower-up before enabling output.
$Comp
L CONN_01X03 J109
U 1 1 59742ECE
P 8500 2550
F 0 "J109" H 8500 2750 50  0000 C CNN
F 1 "CONN_01X03" V 8600 2550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 8500 2550 50  0001 C CNN
F 3 "" H 8500 2550 50  0001 C CNN
	1    8500 2550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 J110
U 1 1 59742ED4
P 8500 3000
F 0 "J110" H 8500 3200 50  0000 C CNN
F 1 "CONN_01X03" V 8600 3000 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 8500 3000 50  0001 C CNN
F 3 "" H 8500 3000 50  0001 C CNN
	1    8500 3000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR112
U 1 1 59742EDA
P 8200 3200
F 0 "#PWR112" H 8200 2950 50  0001 C CNN
F 1 "GND" H 8200 3050 50  0000 C CNN
F 2 "" H 8200 3200 50  0001 C CNN
F 3 "" H 8200 3200 50  0001 C CNN
	1    8200 3200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8000 2450 8200 2450
Wire Wire Line
	8200 2450 8300 2450
Wire Wire Line
	8200 2450 8200 2550
Wire Wire Line
	8200 2550 8200 2650
Wire Wire Line
	8200 2650 8300 2650
Wire Wire Line
	8300 2550 8200 2550
Connection ~ 8200 2550
Connection ~ 8200 2450
Wire Wire Line
	8300 2900 8200 2900
Wire Wire Line
	8200 2900 8200 3000
Wire Wire Line
	8200 3000 8200 3100
Wire Wire Line
	8200 3100 8200 3200
Wire Wire Line
	8300 3100 8200 3100
Connection ~ 8200 3100
Wire Wire Line
	8200 3100 8200 3000
Connection ~ 8200 3000
Wire Wire Line
	8200 3000 8300 3000
$Comp
L CONN_01X03 J107
U 1 1 597437B4
P 7800 5150
F 0 "J107" H 7800 5350 50  0000 C CNN
F 1 "CONN_01X03" V 7900 5150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 7800 5150 50  0001 C CNN
F 3 "" H 7800 5150 50  0001 C CNN
	1    7800 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 5050 7500 5050
Wire Wire Line
	7500 5050 7600 5050
Wire Wire Line
	6650 5150 7600 5150
Wire Wire Line
	7600 5250 6650 5250
Text Notes 2200 1550 0    60   ~ 0
6-24V In, rated 3A out
Wire Wire Line
	4450 4800 4650 4800
$Comp
L R R102
U 1 1 59746CE9
P 4250 5150
F 0 "R102" V 4330 5150 50  0000 C CNN
F 1 "1M" V 4250 5150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4180 5150 50  0001 C CNN
F 3 "" H 4250 5150 50  0001 C CNN
	1    4250 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 5000 4250 4650
Wire Wire Line
	4250 4650 4450 4650
Connection ~ 4450 4650
Wire Wire Line
	4250 5300 4250 5350
Connection ~ 4250 5350
$Comp
L LED D102
U 1 1 597479BC
P 7200 4650
F 0 "D102" H 7200 4750 50  0000 C CNN
F 1 "LED" H 7200 4550 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 7200 4650 50  0001 C CNN
F 3 "" H 7200 4650 50  0001 C CNN
	1    7200 4650
	0    -1   -1   0   
$EndComp
$Comp
L R R103
U 1 1 59747A8B
P 7200 4300
F 0 "R103" V 7280 4300 50  0000 C CNN
F 1 "1k" V 7200 4300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7130 4300 50  0001 C CNN
F 3 "" H 7200 4300 50  0001 C CNN
	1    7200 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR108
U 1 1 59747B63
P 7200 4850
F 0 "#PWR108" H 7200 4600 50  0001 C CNN
F 1 "GND" H 7200 4700 50  0000 C CNN
F 2 "" H 7200 4850 50  0001 C CNN
F 3 "" H 7200 4850 50  0001 C CNN
	1    7200 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 4850 7200 4800
Wire Wire Line
	7200 4500 7200 4450
Connection ~ 6900 4150
$Comp
L LED D101
U 1 1 5974862E
P 3650 2900
F 0 "D101" H 3650 3000 50  0000 C CNN
F 1 "LED" H 3650 2800 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 3650 2900 50  0001 C CNN
F 3 "" H 3650 2900 50  0001 C CNN
	1    3650 2900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3450 2350 3650 2350
Wire Wire Line
	3650 2350 3800 2350
Connection ~ 3450 2350
$Comp
L R R101
U 1 1 59748634
P 3650 2550
F 0 "R101" V 3730 2550 50  0000 C CNN
F 1 "1k" V 3650 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3580 2550 50  0001 C CNN
F 3 "" H 3650 2550 50  0001 C CNN
	1    3650 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 2400 3650 2350
Connection ~ 3650 2350
Wire Wire Line
	3650 2700 3650 2750
Wire Wire Line
	3650 3050 3650 3100
Wire Wire Line
	3650 3100 3800 3100
$Comp
L R R104
U 1 1 5974A2D9
P 6550 3350
F 0 "R104" V 6630 3350 50  0000 C CNN
F 1 "1M" V 6550 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6480 3350 50  0001 C CNN
F 3 "" H 6550 3350 50  0001 C CNN
	1    6550 3350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR105
U 1 1 5974A3A5
P 6550 3550
F 0 "#PWR105" H 6550 3300 50  0001 C CNN
F 1 "GND" H 6550 3400 50  0000 C CNN
F 2 "" H 6550 3550 50  0001 C CNN
F 3 "" H 6550 3550 50  0001 C CNN
	1    6550 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3100 6550 3200
Wire Wire Line
	6550 3500 6550 3550
Text Notes 5400 2500 0    60   ~ 0
TODO: Verify 2A max out.\nMeasured = 1.7A
$Comp
L CONN_01X02 J106
U 1 1 5974B570
P 5200 3450
F 0 "J106" H 5200 3600 50  0000 C CNN
F 1 "CONN_01X02" V 5300 3450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 5200 3450 50  0001 C CNN
F 3 "" H 5200 3450 50  0001 C CNN
	1    5200 3450
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J105
U 1 1 5974B7F2
P 4700 3450
F 0 "J105" H 4700 3600 50  0000 C CNN
F 1 "CONN_01X02" V 4800 3450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 4700 3450 50  0001 C CNN
F 3 "" H 4700 3450 50  0001 C CNN
	1    4700 3450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4900 3500 4900 3650
Connection ~ 4900 3650
Wire Wire Line
	5000 3500 5000 3650
Wire Wire Line
	5000 3650 5000 3750
Wire Wire Line
	5000 3400 5000 2900
Wire Wire Line
	5000 2900 5350 2900
Wire Wire Line
	4900 3400 4900 2900
Wire Wire Line
	4900 2900 4700 2900
$Comp
L CONN_01X02 J104
U 1 1 5974C0D5
P 4250 3850
F 0 "J104" H 4250 4000 50  0000 C CNN
F 1 "CONN_01X02" V 4350 3850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 4250 3850 50  0001 C CNN
F 3 "" H 4250 3850 50  0001 C CNN
	1    4250 3850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4450 3900 4450 4650
Wire Wire Line
	4450 4650 4450 4800
Text Notes 1850 4450 0    60   ~ 0
TODO: Evaluate choosing pre-\nor post-buck.  Q101 is only\nnecessary for pre.
$Comp
L SYMBOL P101
U 1 1 5976B096
P 6550 6700
F 0 "P101" H 6550 6650 60  0000 C CNN
F 1 "Outline" H 6550 6750 60  0000 C CNN
F 2 "Board_Outlines:Board_Outline_65x48mm" H 6550 6700 60  0001 C CNN
F 3 "" H 6550 6700 60  0001 C CNN
	1    6550 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3650 4450 3800
Connection ~ 6550 3100
Text Notes 7000 4050 0    60   ~ 0
Be mindful of R104 contributing to\noverall draw while on.
$Comp
L CONN_01X03 J111
U 1 1 597848ED
P 2750 3800
F 0 "J111" H 2750 4000 50  0000 C CNN
F 1 "CONN_01X03" V 2850 3800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 2750 3800 50  0001 C CNN
F 3 "" H 2750 3800 50  0001 C CNN
	1    2750 3800
	-1   0    0    1   
$EndComp
Wire Wire Line
	2150 2200 2150 3500
Wire Wire Line
	2150 3500 3100 3500
Wire Wire Line
	3100 3500 3100 3700
Wire Wire Line
	3100 3700 2950 3700
Connection ~ 2150 2200
Wire Wire Line
	2950 3900 3450 3900
Wire Wire Line
	3450 3900 3450 2350
Wire Wire Line
	3450 2350 3450 1900
Wire Wire Line
	2950 3800 3300 3800
Wire Wire Line
	3300 3800 3300 5600
$Comp
L SYMBOL P102
U 1 1 59785C73
P 6550 7150
F 0 "P102" H 6550 7100 60  0000 C CNN
F 1 "OSHW" H 6550 7200 60  0000 C CNN
F 2 "Symbols:OSHW-Logo2_9.8x8mm_SilkScreen" H 6550 7150 60  0001 C CNN
F 3 "" H 6550 7150 60  0001 C CNN
	1    6550 7150
	1    0    0    -1  
$EndComp
$Comp
L LED D103
U 1 1 59788AFF
P 8150 5400
F 0 "D103" H 8150 5500 50  0000 C CNN
F 1 "LED" H 8150 5300 50  0000 C CNN
F 2 "LEDs:LED_0805_HandSoldering" H 8150 5400 50  0001 C CNN
F 3 "" H 8150 5400 50  0001 C CNN
	1    8150 5400
	0    -1   -1   0   
$EndComp
$Comp
L R R105
U 1 1 59788C5F
P 8150 5000
F 0 "R105" V 8230 5000 50  0000 C CNN
F 1 "1k" V 8150 5000 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8080 5000 50  0001 C CNN
F 3 "" H 8150 5000 50  0001 C CNN
	1    8150 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 5050 7500 4750
Wire Wire Line
	7500 4750 8150 4750
Wire Wire Line
	8150 4750 8150 4850
Connection ~ 7500 5050
Wire Wire Line
	8150 5150 8150 5250
$Comp
L GND #PWR111
U 1 1 59788F56
P 8150 5650
F 0 "#PWR111" H 8150 5400 50  0001 C CNN
F 1 "GND" H 8150 5500 50  0000 C CNN
F 2 "" H 8150 5650 50  0001 C CNN
F 3 "" H 8150 5650 50  0001 C CNN
	1    8150 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 5650 8150 5550
$Comp
L SYMBOL P103
U 1 1 597C4207
P 5850 6700
F 0 "P103" H 5850 6650 60  0000 C CNN
F 1 "Fid" H 5850 6750 60  0000 C CNN
F 2 "Fiducials:Fiducial_1mm_Dia_2.54mm_Outer_CopperTop" H 5850 6700 60  0001 C CNN
F 3 "" H 5850 6700 60  0001 C CNN
	1    5850 6700
	1    0    0    -1  
$EndComp
$Comp
L SYMBOL P104
U 1 1 597C4857
P 5850 7150
F 0 "P104" H 5850 7100 60  0000 C CNN
F 1 "Fid" H 5850 7200 60  0000 C CNN
F 2 "Fiducials:Fiducial_1mm_Dia_2.54mm_Outer_CopperTop" H 5850 7150 60  0001 C CNN
F 3 "" H 5850 7150 60  0001 C CNN
	1    5850 7150
	1    0    0    -1  
$EndComp
$Comp
L SYMBOL P105
U 1 1 597C494F
P 5850 7550
F 0 "P105" H 5850 7500 60  0000 C CNN
F 1 "Fid" H 5850 7600 60  0000 C CNN
F 2 "Fiducials:Fiducial_1mm_Dia_2.54mm_Outer_CopperTop" H 5850 7550 60  0001 C CNN
F 3 "" H 5850 7550 60  0001 C CNN
	1    5850 7550
	1    0    0    -1  
$EndComp
Text Notes 5300 1850 0    60   ~ 0
TODO: Should we leave step_up\nenabled during normal operation\nfor faster switching?
$EndSCHEMATC
