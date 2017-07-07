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
LIBS:mosfet_tester-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 5
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
L Q_NMOS_GSD Q201
U 1 1 59553827
P 4050 2300
AR Path="/595536CF/59553827" Ref="Q201"  Part="1" 
AR Path="/59556746/59553827" Ref="Q301"  Part="1" 
AR Path="/59556CE1/59553827" Ref="Q401"  Part="1" 
AR Path="/59557090/59553827" Ref="Q501"  Part="1" 
F 0 "Q501" H 4250 2350 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 4250 2250 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23_Handsoldering" H 4250 2400 50  0001 C CNN
F 3 "" H 4050 2300 50  0001 C CNN
	1    4050 2300
	1    0    0    -1  
$EndComp
$Comp
L R R206
U 1 1 5955382E
P 4150 3450
AR Path="/595536CF/5955382E" Ref="R206"  Part="1" 
AR Path="/59556746/5955382E" Ref="R306"  Part="1" 
AR Path="/59556CE1/5955382E" Ref="R406"  Part="1" 
AR Path="/59557090/5955382E" Ref="R506"  Part="1" 
F 0 "R506" V 4230 3450 50  0000 C CNN
F 1 "R" V 4150 3450 50  0000 C CNN
F 2 "Resistors_SMD:R_2816_HandSoldering" V 4080 3450 50  0001 C CNN
F 3 "" H 4150 3450 50  0001 C CNN
	1    4150 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 2500 4150 3300
Connection ~ 4150 3250
Text HLabel 1800 2200 0    60   Input ~ 0
5V_REF
$Comp
L LM358 U201
U 1 1 59553867
P 2800 2300
AR Path="/595536CF/59553867" Ref="U201"  Part="1" 
AR Path="/59556746/59553867" Ref="U301"  Part="1" 
AR Path="/59556CE1/59553867" Ref="U401"  Part="1" 
AR Path="/59557090/59553867" Ref="U501"  Part="1" 
F 0 "U501" H 2800 2500 50  0000 L CNN
F 1 "LM358" H 2800 2100 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 2800 2300 50  0001 C CNN
F 3 "" H 2800 2300 50  0001 C CNN
	1    2800 2300
	1    0    0    -1  
$EndComp
$Comp
L LM358 U201
U 2 1 595538B8
P 2800 3350
AR Path="/595536CF/595538B8" Ref="U201"  Part="2" 
AR Path="/59556746/595538B8" Ref="U301"  Part="2" 
AR Path="/59556CE1/595538B8" Ref="U401"  Part="2" 
AR Path="/59557090/595538B8" Ref="U501"  Part="2" 
F 0 "U501" H 2800 3550 50  0000 L CNN
F 1 "LM358" H 2800 3150 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 2800 3350 50  0001 C CNN
F 3 "" H 2800 3350 50  0001 C CNN
	2    2800 3350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2500 2400 2000 2400
Wire Wire Line
	2000 2400 2000 3350
Text Notes 4600 2650 0    60   ~ 0
Note: Each mosfet should have\nthe same amount of heatsinking
Wire Wire Line
	2500 2200 1800 2200
Text Notes 950  1950 0    60   ~ 0
Note: unity gain but feedback\ngoes through rest of circuit.
Text Notes 2550 4000 0    60   ~ 0
Note: set for XXX gain
$Comp
L +12V #PWR201
U 1 1 59553CF4
P 2700 1550
AR Path="/595536CF/59553CF4" Ref="#PWR201"  Part="1" 
AR Path="/59556746/59553CF4" Ref="#PWR301"  Part="1" 
AR Path="/59556CE1/59553CF4" Ref="#PWR401"  Part="1" 
AR Path="/59557090/59553CF4" Ref="#PWR501"  Part="1" 
F 0 "#PWR501" H 2700 1400 50  0001 C CNN
F 1 "+12V" H 2700 1690 50  0000 C CNN
F 2 "" H 2700 1550 50  0001 C CNN
F 3 "" H 2700 1550 50  0001 C CNN
	1    2700 1550
	1    0    0    -1  
$EndComp
$Comp
L R R201
U 1 1 59553D78
P 2700 1750
AR Path="/595536CF/59553D78" Ref="R201"  Part="1" 
AR Path="/59556746/59553D78" Ref="R301"  Part="1" 
AR Path="/59556CE1/59553D78" Ref="R401"  Part="1" 
AR Path="/59557090/59553D78" Ref="R501"  Part="1" 
F 0 "R501" V 2780 1750 50  0000 C CNN
F 1 "100R" V 2700 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2630 1750 50  0001 C CNN
F 3 "" H 2700 1750 50  0001 C CNN
	1    2700 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1900 2700 2000
$Comp
L C C201
U 1 1 59553ED0
P 2900 1950
AR Path="/595536CF/59553ED0" Ref="C201"  Part="1" 
AR Path="/59556746/59553ED0" Ref="C301"  Part="1" 
AR Path="/59556CE1/59553ED0" Ref="C401"  Part="1" 
AR Path="/59557090/59553ED0" Ref="C501"  Part="1" 
F 0 "C501" H 2925 2050 50  0000 L CNN
F 1 "0.1" H 2925 1850 50  0000 L CNN
F 2 "Capacitors_SMD_Round:C_0603" H 2938 1800 50  0001 C CNN
F 3 "" H 2900 1950 50  0001 C CNN
	1    2900 1950
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 1950 2750 1950
Connection ~ 2700 1950
Wire Wire Line
	2700 1600 2700 1550
$Comp
L GND #PWR203
U 1 1 59553F9C
P 3100 1950
AR Path="/595536CF/59553F9C" Ref="#PWR203"  Part="1" 
AR Path="/59556746/59553F9C" Ref="#PWR303"  Part="1" 
AR Path="/59556CE1/59553F9C" Ref="#PWR403"  Part="1" 
AR Path="/59557090/59553F9C" Ref="#PWR503"  Part="1" 
F 0 "#PWR503" H 3100 1700 50  0001 C CNN
F 1 "GND" H 3100 1800 50  0000 C CNN
F 2 "" H 3100 1950 50  0001 C CNN
F 3 "" H 3100 1950 50  0001 C CNN
	1    3100 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3100 1950 3050 1950
Text Notes 2900 1700 0    60   ~ 0
Goal: reduce short circuit\ncurrent to 40mA
Wire Wire Line
	2000 3350 2500 3350
$Comp
L R R205
U 1 1 59554405
P 3600 3250
AR Path="/595536CF/59554405" Ref="R205"  Part="1" 
AR Path="/59556746/59554405" Ref="R305"  Part="1" 
AR Path="/59556CE1/59554405" Ref="R405"  Part="1" 
AR Path="/59557090/59554405" Ref="R505"  Part="1" 
F 0 "R505" V 3680 3250 50  0000 C CNN
F 1 "R" V 3600 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3530 3250 50  0001 C CNN
F 3 "" H 3600 3250 50  0001 C CNN
	1    3600 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	3450 3250 3100 3250
Wire Wire Line
	4150 3250 3750 3250
$Comp
L R R204
U 1 1 5955448A
P 3500 2300
AR Path="/595536CF/5955448A" Ref="R204"  Part="1" 
AR Path="/59556746/5955448A" Ref="R304"  Part="1" 
AR Path="/59556CE1/5955448A" Ref="R404"  Part="1" 
AR Path="/59557090/5955448A" Ref="R504"  Part="1" 
F 0 "R504" V 3580 2300 50  0000 C CNN
F 1 "R" V 3500 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3430 2300 50  0001 C CNN
F 3 "" H 3500 2300 50  0001 C CNN
	1    3500 2300
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 2300 3850 2300
$Comp
L C C202
U 1 1 595544D0
P 3250 2550
AR Path="/595536CF/595544D0" Ref="C202"  Part="1" 
AR Path="/59556746/595544D0" Ref="C302"  Part="1" 
AR Path="/59556CE1/595544D0" Ref="C402"  Part="1" 
AR Path="/59557090/595544D0" Ref="C502"  Part="1" 
F 0 "C502" H 3275 2650 50  0000 L CNN
F 1 "C" H 3275 2450 50  0000 L CNN
F 2 "Capacitors_SMD_Round:C_0603" H 3288 2400 50  0001 C CNN
F 3 "" H 3250 2550 50  0001 C CNN
	1    3250 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 2300 3350 2300
Wire Wire Line
	3250 2400 3250 2300
Connection ~ 3250 2300
Wire Wire Line
	3250 2700 3250 2800
Wire Wire Line
	3250 2800 2000 2800
Connection ~ 2000 2800
$Comp
L R R203
U 1 1 5955455A
P 3450 3750
AR Path="/595536CF/5955455A" Ref="R203"  Part="1" 
AR Path="/59556746/5955455A" Ref="R303"  Part="1" 
AR Path="/59556CE1/5955455A" Ref="R403"  Part="1" 
AR Path="/59557090/5955455A" Ref="R503"  Part="1" 
F 0 "R503" V 3530 3750 50  0000 C CNN
F 1 "R" V 3450 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3380 3750 50  0001 C CNN
F 3 "" H 3450 3750 50  0001 C CNN
	1    3450 3750
	0    1    1    0   
$EndComp
$Comp
L R R202
U 1 1 5955458F
P 2950 3750
AR Path="/595536CF/5955458F" Ref="R202"  Part="1" 
AR Path="/59556746/5955458F" Ref="R302"  Part="1" 
AR Path="/59556CE1/5955458F" Ref="R402"  Part="1" 
AR Path="/59557090/5955458F" Ref="R502"  Part="1" 
F 0 "R502" V 3030 3750 50  0000 C CNN
F 1 "R" V 2950 3750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 2880 3750 50  0001 C CNN
F 3 "" H 2950 3750 50  0001 C CNN
	1    2950 3750
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 3750 3300 3750
Wire Wire Line
	3100 3450 3200 3450
Wire Wire Line
	3200 3450 3200 3750
Connection ~ 3200 3750
Wire Wire Line
	2800 3750 2400 3750
Wire Wire Line
	2400 3750 2400 3350
Connection ~ 2400 3350
Wire Wire Line
	3600 3750 3850 3750
$Comp
L Jumper_NC_Small JP201
U 1 1 59554722
P 3950 3750
AR Path="/595536CF/59554722" Ref="JP201"  Part="1" 
AR Path="/59556746/59554722" Ref="JP301"  Part="1" 
AR Path="/59556CE1/59554722" Ref="JP401"  Part="1" 
AR Path="/59557090/59554722" Ref="JP501"  Part="1" 
F 0 "JP501" H 3950 3830 50  0000 C CNN
F 1 "Jumper_NC_Small" H 3960 3690 50  0000 C CNN
F 2 "SolderJumpers:SJ_1_NO" H 3950 3750 50  0001 C CNN
F 3 "" H 3950 3750 50  0001 C CNN
	1    3950 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3600 4150 3750
Wire Wire Line
	4050 3750 4400 3750
Connection ~ 4150 3750
Text HLabel 4400 3750 2    60   Input ~ 0
VIN-
Text HLabel 4400 2000 2    60   Input ~ 0
VIN+
Wire Wire Line
	4400 2000 4150 2000
Wire Wire Line
	4150 2000 4150 2100
$Comp
L TEST_1P J203
U 1 1 5955483A
P 3700 2200
AR Path="/595536CF/5955483A" Ref="J203"  Part="1" 
AR Path="/59556746/5955483A" Ref="J303"  Part="1" 
AR Path="/59556CE1/5955483A" Ref="J403"  Part="1" 
AR Path="/59557090/5955483A" Ref="J503"  Part="1" 
F 0 "J503" H 3700 2470 50  0000 C CNN
F 1 "TEST_1P" H 3700 2400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 3900 2200 50  0001 C CNN
F 3 "" H 3900 2200 50  0001 C CNN
	1    3700 2200
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P J204
U 1 1 59554893
P 3800 3250
AR Path="/595536CF/59554893" Ref="J204"  Part="1" 
AR Path="/59556746/59554893" Ref="J304"  Part="1" 
AR Path="/59556CE1/59554893" Ref="J404"  Part="1" 
AR Path="/59557090/59554893" Ref="J504"  Part="1" 
F 0 "J504" H 3800 3520 50  0000 C CNN
F 1 "TEST_1P" H 3800 3450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 4000 3250 50  0001 C CNN
F 3 "" H 4000 3250 50  0001 C CNN
	1    3800 3250
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P J201
U 1 1 595548D4
P 2400 3350
AR Path="/595536CF/595548D4" Ref="J201"  Part="1" 
AR Path="/59556746/595548D4" Ref="J301"  Part="1" 
AR Path="/59556CE1/595548D4" Ref="J401"  Part="1" 
AR Path="/59557090/595548D4" Ref="J501"  Part="1" 
F 0 "J501" H 2400 3620 50  0000 C CNN
F 1 "TEST_1P" H 2400 3550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 2600 3350 50  0001 C CNN
F 3 "" H 2600 3350 50  0001 C CNN
	1    2400 3350
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P J206
U 1 1 5955497F
P 4250 2000
AR Path="/595536CF/5955497F" Ref="J206"  Part="1" 
AR Path="/59556746/5955497F" Ref="J306"  Part="1" 
AR Path="/59556CE1/5955497F" Ref="J406"  Part="1" 
AR Path="/59557090/5955497F" Ref="J506"  Part="1" 
F 0 "J506" H 4250 2270 50  0000 C CNN
F 1 "TEST_1P" H 4250 2200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 4450 2000 50  0001 C CNN
F 3 "" H 4450 2000 50  0001 C CNN
	1    4250 2000
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P J207
U 1 1 59554A4D
P 4300 3750
AR Path="/595536CF/59554A4D" Ref="J207"  Part="1" 
AR Path="/59556746/59554A4D" Ref="J307"  Part="1" 
AR Path="/59556CE1/59554A4D" Ref="J407"  Part="1" 
AR Path="/59557090/59554A4D" Ref="J507"  Part="1" 
F 0 "J507" H 4300 4020 50  0000 C CNN
F 1 "TEST_1P" H 4300 3950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 4500 3750 50  0001 C CNN
F 3 "" H 4500 3750 50  0001 C CNN
	1    4300 3750
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P J205
U 1 1 59554AD6
P 4150 2600
AR Path="/595536CF/59554AD6" Ref="J205"  Part="1" 
AR Path="/59556746/59554AD6" Ref="J305"  Part="1" 
AR Path="/59556CE1/59554AD6" Ref="J405"  Part="1" 
AR Path="/59557090/59554AD6" Ref="J505"  Part="1" 
F 0 "J505" H 4150 2870 50  0000 C CNN
F 1 "TEST_1P" H 4150 2800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 4350 2600 50  0001 C CNN
F 3 "" H 4350 2600 50  0001 C CNN
	1    4150 2600
	0    1    1    0   
$EndComp
$Comp
L GND #PWR202
U 1 1 59554C5F
P 2700 2600
AR Path="/595536CF/59554C5F" Ref="#PWR202"  Part="1" 
AR Path="/59556746/59554C5F" Ref="#PWR302"  Part="1" 
AR Path="/59556CE1/59554C5F" Ref="#PWR402"  Part="1" 
AR Path="/59557090/59554C5F" Ref="#PWR502"  Part="1" 
F 0 "#PWR502" H 2700 2350 50  0001 C CNN
F 1 "GND" H 2700 2450 50  0000 C CNN
F 2 "" H 2700 2600 50  0001 C CNN
F 3 "" H 2700 2600 50  0001 C CNN
	1    2700 2600
	1    0    0    -1  
$EndComp
$Comp
L TEST_1P J202
U 1 1 59555179
P 2650 1950
AR Path="/595536CF/59555179" Ref="J202"  Part="1" 
AR Path="/59556746/59555179" Ref="J302"  Part="1" 
AR Path="/59556CE1/59555179" Ref="J402"  Part="1" 
AR Path="/59557090/59555179" Ref="J502"  Part="1" 
F 0 "J502" H 2650 2220 50  0000 C CNN
F 1 "TEST_1P" H 2650 2150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 2850 1950 50  0001 C CNN
F 3 "" H 2850 1950 50  0001 C CNN
	1    2650 1950
	0    -1   -1   0   
$EndComp
Text HLabel 3850 1950 1    60   Output ~ 0
Vgs
Wire Wire Line
	3700 2200 3700 2300
Connection ~ 3700 2300
Wire Wire Line
	3850 2300 3850 1950
Connection ~ 3850 2300
$EndSCHEMATC
