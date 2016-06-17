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
LIBS:agg-kicad
LIBS:breakout-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Martlet 3 - Breakout Board"
Date "2016-06-12"
Rev "1"
Comp "Cambridge University Space Flight"
Comment1 "Matt Coates"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_02x10 J2
U 1 1 56C4B296
P 2800 1200
F 0 "J2" H 2700 1300 50  0000 L CNN
F 1 "EAST TOP" H 2750 200 50  0000 C CNN
F 2 "agg:TFML-110-02-L-D" H 2800 1200 50  0001 C CNN
F 3 "" H 2800 1200 50  0001 C CNN
	1    2800 1200
	1    0    0    -1  
$EndComp
Text Label 1100 1300 2    60   ~ 0
3v3_IMU
Text Label 1100 1400 2    60   ~ 0
3v3_RADIO
Text Label 1100 1500 2    60   ~ 0
3v3_FC
Text Label 1100 1600 2    60   ~ 0
3v3_PYRO
Text Label 1100 1700 2    60   ~ 0
3v3_DL
Text Label 1600 1800 0    60   ~ 0
5v_CAN
Text Label 1600 1900 0    60   ~ 0
CAN-
Text Label 1600 2000 0    60   ~ 0
CAN+
Text Label 4050 1300 2    60   ~ 0
3v3_IMU
Text Label 4050 1400 2    60   ~ 0
3v3_RADIO
Text Label 4050 1500 2    60   ~ 0
3v3_FC
Text Label 4050 1600 2    60   ~ 0
3v3_PYRO
Text Label 4050 1700 2    60   ~ 0
3v3_DL
Text Label 4550 1800 0    60   ~ 0
5v_CAN
Text Label 4550 1900 0    60   ~ 0
CAN-
Text Label 4550 2000 0    60   ~ 0
CAN+
Text Label 2500 1300 2    60   ~ 0
PYRO_SO
Text Label 3000 1300 0    60   ~ 0
PYRO_SO
Text Label 2500 1400 2    60   ~ 0
PYRO_SI
Text Label 3000 1400 0    60   ~ 0
PYRO_SI
Text Label 2500 1500 2    60   ~ 0
5v_RADIO
Text Label 2500 1600 2    60   ~ 0
5v_IMU
Text Label 2500 1700 2    60   ~ 0
5v_AUX1
Text Label 2500 1800 2    60   ~ 0
5v_AUX2
Text Label 2500 1900 2    60   ~ 0
5v_CAM
Text Label 2500 2000 2    60   ~ 0
CHARGE
Text Label 3000 2000 0    60   ~ 0
CHARGE
Text Label 3000 1900 0    60   ~ 0
PWR
Text Label 3000 1800 0    60   ~ 0
PYRO4
Text Label 3000 1700 0    60   ~ 0
PYRO3
Text Label 3000 1600 0    60   ~ 0
PYRO2
Text Label 3000 1500 0    60   ~ 0
PYRO1
$Comp
L CONN_02x10 J4
U 1 1 56C4B2BD
P 5750 1200
F 0 "J4" H 5650 1300 50  0000 L CNN
F 1 "EAST BOT" H 5700 200 50  0000 C CNN
F 2 "agg:SFML-110-02-L-D-LC" H 5750 1200 50  0001 C CNN
F 3 "" H 5750 1200 50  0001 C CNN
	1    5750 1200
	1    0    0    -1  
$EndComp
Text Label 5450 1300 2    60   ~ 0
PYRO_SO
Text Label 5950 1300 0    60   ~ 0
PYRO_SO
Text Label 5450 1400 2    60   ~ 0
PYRO_SI
Text Label 5950 1400 0    60   ~ 0
PYRO_SI
Text Label 5450 1500 2    60   ~ 0
5v_RADIO
Text Label 5450 1600 2    60   ~ 0
5v_IMU
Text Label 5450 1700 2    60   ~ 0
5v_AUX1
Text Label 5450 1800 2    60   ~ 0
5v_AUX2
Text Label 5450 1900 2    60   ~ 0
5v_CAM
Text Label 5450 2000 2    60   ~ 0
CHARGE
Text Label 5950 2000 0    60   ~ 0
CHARGE
Text Label 5950 1900 0    60   ~ 0
PWR
Text Label 5950 1800 0    60   ~ 0
PYRO4
Text Label 5950 1700 0    60   ~ 0
PYRO3
Text Label 5950 1600 0    60   ~ 0
PYRO2
Text Label 5950 1500 0    60   ~ 0
PYRO1
$Comp
L CONN_02x10 J1
U 1 1 56C4B2D4
P 1400 1200
F 0 "J1" H 1300 1300 50  0000 L CNN
F 1 "WEST TOP" H 1350 200 50  0000 C CNN
F 2 "agg:TFML-110-02-L-D" H 1400 1200 50  0001 C CNN
F 3 "" H 1400 1200 50  0001 C CNN
	1    1400 1200
	1    0    0    -1  
$EndComp
$Comp
L CONN_02x10 J3
U 1 1 56C4B2DB
P 4350 1200
F 0 "J3" H 4250 1300 50  0000 L CNN
F 1 "WEST BOT" H 4300 200 50  0000 C CNN
F 2 "agg:SFML-110-02-L-D-LC" H 4350 1200 50  0001 C CNN
F 3 "" H 4350 1200 50  0001 C CNN
	1    4350 1200
	1    0    0    -1  
$EndComp
Text Label 1100 1800 2    60   ~ 0
3v3_AUX1
Text Label 1100 1900 2    60   ~ 0
3v3_AUX2
Text Label 4050 1800 2    60   ~ 0
3v3_AUX1
Text Label 4050 1900 2    60   ~ 0
3v3_AUX2
Text Label 1600 1700 0    60   ~ 0
RSVD1
Text Label 4550 1700 0    60   ~ 0
RSVD1
Text Label 4050 2000 2    60   ~ 0
RSVD2
Text Label 1100 2000 2    60   ~ 0
RSVD2
$Comp
L GND #PWR12
U 1 1 56C4B2EA
P 2950 2200
F 0 "#PWR12" H 2950 1950 50  0001 C CNN
F 1 "GND" H 2950 2050 50  0000 C CNN
F 2 "" H 2950 2200 50  0000 C CNN
F 3 "" H 2950 2200 50  0000 C CNN
	1    2950 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR11
U 1 1 56C4B2F0
P 2550 2200
F 0 "#PWR11" H 2550 1950 50  0001 C CNN
F 1 "GND" H 2550 2050 50  0000 C CNN
F 2 "" H 2550 2200 50  0000 C CNN
F 3 "" H 2550 2200 50  0000 C CNN
	1    2550 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR10
U 1 1 56C4B2F6
P 1550 2200
F 0 "#PWR10" H 1550 1950 50  0001 C CNN
F 1 "GND" H 1550 2050 50  0000 C CNN
F 2 "" H 1550 2200 50  0000 C CNN
F 3 "" H 1550 2200 50  0000 C CNN
	1    1550 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR9
U 1 1 56C4B2FC
P 1150 2200
F 0 "#PWR9" H 1150 1950 50  0001 C CNN
F 1 "GND" H 1150 2050 50  0000 C CNN
F 2 "" H 1150 2200 50  0000 C CNN
F 3 "" H 1150 2200 50  0000 C CNN
	1    1150 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR1
U 1 1 56C4B302
P 1150 1100
F 0 "#PWR1" H 1150 850 50  0001 C CNN
F 1 "GND" H 1150 950 50  0000 C CNN
F 2 "" H 1150 1100 50  0000 C CNN
F 3 "" H 1150 1100 50  0000 C CNN
	1    1150 1100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR2
U 1 1 56C4B308
P 1550 1100
F 0 "#PWR2" H 1550 850 50  0001 C CNN
F 1 "GND" H 1550 950 50  0000 C CNN
F 2 "" H 1550 1100 50  0000 C CNN
F 3 "" H 1550 1100 50  0000 C CNN
	1    1550 1100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR3
U 1 1 56C4B30E
P 2550 1100
F 0 "#PWR3" H 2550 850 50  0001 C CNN
F 1 "GND" H 2550 950 50  0000 C CNN
F 2 "" H 2550 1100 50  0000 C CNN
F 3 "" H 2550 1100 50  0000 C CNN
	1    2550 1100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR4
U 1 1 56C4B314
P 2950 1100
F 0 "#PWR4" H 2950 850 50  0001 C CNN
F 1 "GND" H 2950 950 50  0000 C CNN
F 2 "" H 2950 1100 50  0000 C CNN
F 3 "" H 2950 1100 50  0000 C CNN
	1    2950 1100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR13
U 1 1 56C4B31A
P 4100 2200
F 0 "#PWR13" H 4100 1950 50  0001 C CNN
F 1 "GND" H 4100 2050 50  0000 C CNN
F 2 "" H 4100 2200 50  0000 C CNN
F 3 "" H 4100 2200 50  0000 C CNN
	1    4100 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR14
U 1 1 56C4B320
P 4500 2200
F 0 "#PWR14" H 4500 1950 50  0001 C CNN
F 1 "GND" H 4500 2050 50  0000 C CNN
F 2 "" H 4500 2200 50  0000 C CNN
F 3 "" H 4500 2200 50  0000 C CNN
	1    4500 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR15
U 1 1 56C4B326
P 5500 2200
F 0 "#PWR15" H 5500 1950 50  0001 C CNN
F 1 "GND" H 5500 2050 50  0000 C CNN
F 2 "" H 5500 2200 50  0000 C CNN
F 3 "" H 5500 2200 50  0000 C CNN
	1    5500 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR16
U 1 1 56C4B32C
P 5900 2200
F 0 "#PWR16" H 5900 1950 50  0001 C CNN
F 1 "GND" H 5900 2050 50  0000 C CNN
F 2 "" H 5900 2200 50  0000 C CNN
F 3 "" H 5900 2200 50  0000 C CNN
	1    5900 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR5
U 1 1 56C4B332
P 4100 1100
F 0 "#PWR5" H 4100 850 50  0001 C CNN
F 1 "GND" H 4100 950 50  0000 C CNN
F 2 "" H 4100 1100 50  0000 C CNN
F 3 "" H 4100 1100 50  0000 C CNN
	1    4100 1100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR6
U 1 1 56C4B338
P 4500 1100
F 0 "#PWR6" H 4500 850 50  0001 C CNN
F 1 "GND" H 4500 950 50  0000 C CNN
F 2 "" H 4500 1100 50  0000 C CNN
F 3 "" H 4500 1100 50  0000 C CNN
	1    4500 1100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR7
U 1 1 56C4B33E
P 5500 1100
F 0 "#PWR7" H 5500 850 50  0001 C CNN
F 1 "GND" H 5500 950 50  0000 C CNN
F 2 "" H 5500 1100 50  0000 C CNN
F 3 "" H 5500 1100 50  0000 C CNN
	1    5500 1100
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR8
U 1 1 56C4B344
P 5900 1100
F 0 "#PWR8" H 5900 850 50  0001 C CNN
F 1 "GND" H 5900 950 50  0000 C CNN
F 2 "" H 5900 1100 50  0000 C CNN
F 3 "" H 5900 1100 50  0000 C CNN
	1    5900 1100
	-1   0    0    1   
$EndComp
Text Label 4550 1300 0    60   ~ 0
JTMS
Text Label 4550 1400 0    60   ~ 0
JTCK
Text Label 4550 1500 0    60   ~ 0
JTDI
Text Label 4550 1600 0    60   ~ 0
JTDR
Text Label 1600 1300 0    60   ~ 0
JTMS
Text Label 1600 1400 0    60   ~ 0
JTCK
Text Label 1600 1500 0    60   ~ 0
JTDO
Text Label 1600 1600 0    60   ~ 0
JTDR
Text Notes 2150 800  2    118  ~ 24
INTERCONNECTS:
Wire Wire Line
	1150 1100 1150 1200
Wire Wire Line
	1150 1200 1200 1200
Wire Wire Line
	1550 1200 1500 1200
Wire Wire Line
	1550 1100 1550 1200
Wire Wire Line
	1500 2100 1550 2100
Wire Wire Line
	1550 2100 1550 2200
Wire Wire Line
	1200 2100 1150 2100
Wire Wire Line
	1150 2100 1150 2200
Wire Wire Line
	2950 1200 2900 1200
Wire Wire Line
	2950 1100 2950 1200
Wire Wire Line
	2550 1200 2600 1200
Wire Wire Line
	2550 1100 2550 1200
Wire Wire Line
	2600 2100 2550 2100
Wire Wire Line
	2550 2100 2550 2200
Wire Wire Line
	2900 2100 2950 2100
Wire Wire Line
	2950 2100 2950 2200
Wire Wire Line
	1200 1300 1100 1300
Wire Wire Line
	1200 1400 1100 1400
Wire Wire Line
	1200 1500 1100 1500
Wire Wire Line
	1200 1600 1100 1600
Wire Wire Line
	1500 2000 1600 2000
Wire Wire Line
	1500 1900 1600 1900
Wire Wire Line
	1500 1800 1600 1800
Wire Wire Line
	1500 1600 1600 1600
Wire Wire Line
	1500 1500 1600 1500
Wire Wire Line
	1500 1400 1600 1400
Wire Wire Line
	1500 1300 1600 1300
Wire Wire Line
	4100 1100 4100 1200
Wire Wire Line
	4100 1200 4150 1200
Wire Wire Line
	4500 1200 4450 1200
Wire Wire Line
	4500 1100 4500 1200
Wire Wire Line
	4450 2100 4500 2100
Wire Wire Line
	4500 2100 4500 2200
Wire Wire Line
	4150 2100 4100 2100
Wire Wire Line
	4100 2100 4100 2200
Wire Wire Line
	4150 1300 4050 1300
Wire Wire Line
	4150 1400 4050 1400
Wire Wire Line
	4150 1500 4050 1500
Wire Wire Line
	4150 1600 4050 1600
Wire Wire Line
	4450 2000 4550 2000
Wire Wire Line
	4450 1900 4550 1900
Wire Wire Line
	4450 1800 4550 1800
Wire Wire Line
	4450 1600 4550 1600
Wire Wire Line
	4450 1500 4550 1500
Wire Wire Line
	4450 1400 4550 1400
Wire Wire Line
	4450 1300 4550 1300
Wire Wire Line
	2600 1300 2500 1300
Wire Wire Line
	2500 1400 2600 1400
Wire Wire Line
	2600 1500 2500 1500
Wire Wire Line
	2500 1600 2600 1600
Wire Wire Line
	2600 1700 2500 1700
Wire Wire Line
	2500 1800 2600 1800
Wire Wire Line
	2600 1900 2500 1900
Wire Wire Line
	2500 2000 2600 2000
Wire Wire Line
	2900 2000 3000 2000
Wire Wire Line
	3000 1900 2900 1900
Wire Wire Line
	2900 1800 3000 1800
Wire Wire Line
	2900 1700 3000 1700
Wire Wire Line
	3000 1600 2900 1600
Wire Wire Line
	2900 1500 3000 1500
Wire Wire Line
	3000 1400 2900 1400
Wire Wire Line
	2900 1300 3000 1300
Wire Wire Line
	5900 1200 5850 1200
Wire Wire Line
	5900 1100 5900 1200
Wire Wire Line
	5500 1200 5550 1200
Wire Wire Line
	5500 1100 5500 1200
Wire Wire Line
	5550 2100 5500 2100
Wire Wire Line
	5500 2100 5500 2200
Wire Wire Line
	5850 2100 5900 2100
Wire Wire Line
	5900 2100 5900 2200
Wire Wire Line
	5550 1300 5450 1300
Wire Wire Line
	5450 1400 5550 1400
Wire Wire Line
	5550 1500 5450 1500
Wire Wire Line
	5450 1600 5550 1600
Wire Wire Line
	5550 1700 5450 1700
Wire Wire Line
	5450 1800 5550 1800
Wire Wire Line
	5550 1900 5450 1900
Wire Wire Line
	5450 2000 5550 2000
Wire Wire Line
	5850 2000 5950 2000
Wire Wire Line
	5950 1900 5850 1900
Wire Wire Line
	5850 1800 5950 1800
Wire Wire Line
	5850 1700 5950 1700
Wire Wire Line
	5950 1600 5850 1600
Wire Wire Line
	5850 1500 5950 1500
Wire Wire Line
	5950 1400 5850 1400
Wire Wire Line
	5850 1300 5950 1300
Wire Wire Line
	4150 1700 4050 1700
Wire Wire Line
	1200 1700 1100 1700
Wire Wire Line
	1200 1800 1100 1800
Wire Wire Line
	1100 1900 1200 1900
Wire Wire Line
	4150 1800 4050 1800
Wire Wire Line
	4050 1900 4150 1900
Wire Wire Line
	1500 1700 1600 1700
Wire Wire Line
	4450 1700 4550 1700
Wire Wire Line
	4150 2000 4050 2000
Wire Wire Line
	1200 2000 1100 2000
Text Label 3400 2250 2    60   ~ 0
JTDI
Text Label 3550 2250 0    60   ~ 0
JTDO
Wire Wire Line
	3400 2250 3550 2250
Text Notes 2550 2900 2    118  ~ 24
External Connectors:
$Comp
L CONN_01x08 J5
U 1 1 575DDBC7
P 1000 3300
F 0 "J5" H 950 3400 50  0000 L CNN
F 1 "North" H 950 2500 50  0000 L CNN
F 2 "agg:S08B-PASK-2" H 1000 3300 50  0001 C CNN
F 3 "" H 1000 3300 50  0001 C CNN
F 4 "1830753" H 1000 3300 60  0001 C CNN "Farnell"
	1    1000 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR17
U 1 1 575DDF2D
P 1200 4150
F 0 "#PWR17" H 1200 3900 50  0001 C CNN
F 1 "GND" H 1200 4000 50  0000 C CNN
F 2 "" H 1200 4150 50  0000 C CNN
F 3 "" H 1200 4150 50  0000 C CNN
	1    1200 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 3500 2300 3500
Wire Wire Line
	1100 3700 2300 3700
Wire Wire Line
	1100 3900 2300 3900
Text Label 2300 3500 0    60   ~ 0
PYRO1
Text Label 2300 3700 0    60   ~ 0
PYRO2
Text Label 2300 3900 0    60   ~ 0
PYRO3
Text Label 4200 3300 0    60   ~ 0
PYRO4
Text Label 2300 3300 0    60   ~ 0
PYRO_SO
Text Label 2300 3400 0    60   ~ 0
PYRO_SI
Text Label 4200 3900 0    60   ~ 0
CHARGE
Text Label 4200 3500 0    60   ~ 0
PWR
$Comp
L ESD_DIODE D1
U 1 1 575DF94A
P 1400 4050
F 0 "D1" H 1350 4150 50  0000 L CNN
F 1 "ESD_DIODE" H 1350 3950 50  0001 L CNN
F 2 "agg:0402" H 1350 3850 50  0001 L CNN
F 3 "" H 1300 4050 50  0001 C CNN
F 4 "2368169" H 1350 3750 50  0001 L CNN "Farnell"
	1    1400 4050
	0    1    1    0   
$EndComp
$Comp
L ESD_DIODE D2
U 1 1 575DF9BA
P 1600 4050
F 0 "D2" H 1550 4150 50  0000 L CNN
F 1 "ESD_DIODE" H 1550 3950 50  0001 L CNN
F 2 "agg:0402" H 1550 3850 50  0001 L CNN
F 3 "" H 1500 4050 50  0001 C CNN
F 4 "2368169" H 1550 3750 50  0001 L CNN "Farnell"
	1    1600 4050
	0    1    1    0   
$EndComp
$Comp
L ESD_DIODE D3
U 1 1 575DF9E8
P 1800 4050
F 0 "D3" H 1750 4150 50  0000 L CNN
F 1 "ESD_DIODE" H 1750 3950 50  0001 L CNN
F 2 "agg:0402" H 1750 3850 50  0001 L CNN
F 3 "" H 1700 4050 50  0001 C CNN
F 4 "2368169" H 1750 3750 50  0001 L CNN "Farnell"
	1    1800 4050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR18
U 1 1 575DFB00
P 1400 4150
F 0 "#PWR18" H 1400 3900 50  0001 C CNN
F 1 "GND" H 1400 4000 50  0000 C CNN
F 2 "" H 1400 4150 50  0000 C CNN
F 3 "" H 1400 4150 50  0000 C CNN
	1    1400 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR19
U 1 1 575DFB29
P 1600 4150
F 0 "#PWR19" H 1600 3900 50  0001 C CNN
F 1 "GND" H 1600 4000 50  0000 C CNN
F 2 "" H 1600 4150 50  0000 C CNN
F 3 "" H 1600 4150 50  0000 C CNN
	1    1600 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR20
U 1 1 575DFB52
P 1800 4150
F 0 "#PWR20" H 1800 3900 50  0001 C CNN
F 1 "GND" H 1800 4000 50  0000 C CNN
F 2 "" H 1800 4150 50  0000 C CNN
F 3 "" H 1800 4150 50  0000 C CNN
	1    1800 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3950 1400 3900
Connection ~ 1400 3900
Wire Wire Line
	1600 3950 1600 3700
Connection ~ 1600 3700
Wire Wire Line
	1800 3950 1800 3500
Connection ~ 1800 3500
Text Label 4200 3700 0    60   ~ 0
5v_CAM
$Comp
L CONN_01x08 J6
U 1 1 575E1309
P 3000 3300
F 0 "J6" H 2950 3400 50  0000 L CNN
F 1 "South" H 2950 2500 50  0000 L CNN
F 2 "agg:S08B-PASK-2" H 3000 3300 50  0001 C CNN
F 3 "" H 3000 3300 50  0001 C CNN
F 4 "1830753" H 3000 3300 60  0001 C CNN "Farnell"
	1    3000 3300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR23
U 1 1 575E130F
P 3200 4150
F 0 "#PWR23" H 3200 3900 50  0001 C CNN
F 1 "GND" H 3200 4000 50  0000 C CNN
F 2 "" H 3200 4150 50  0000 C CNN
F 3 "" H 3200 4150 50  0000 C CNN
	1    3200 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 3300 2300 3300
Wire Wire Line
	3200 4000 3100 4000
Wire Wire Line
	3200 3800 3100 3800
Connection ~ 3200 4000
Wire Wire Line
	3200 3600 3100 3600
Connection ~ 3200 3800
Wire Wire Line
	1100 3400 2300 3400
Connection ~ 3200 3600
$Comp
L ESD_DIODE D5
U 1 1 575E1326
P 3400 4050
F 0 "D5" H 3350 4150 50  0000 L CNN
F 1 "ESD_DIODE" H 3350 3950 50  0001 L CNN
F 2 "agg:0402" H 3350 3850 50  0001 L CNN
F 3 "" H 3300 4050 50  0001 C CNN
F 4 "2368169" H 3350 3750 50  0001 L CNN "Farnell"
	1    3400 4050
	0    1    1    0   
$EndComp
$Comp
L ESD_DIODE D6
U 1 1 575E132D
P 3600 4050
F 0 "D6" H 3550 4150 50  0000 L CNN
F 1 "ESD_DIODE" H 3550 3950 50  0001 L CNN
F 2 "agg:0402" H 3550 3850 50  0001 L CNN
F 3 "" H 3500 4050 50  0001 C CNN
F 4 "2368169" H 3550 3750 50  0001 L CNN "Farnell"
	1    3600 4050
	0    1    1    0   
$EndComp
$Comp
L ESD_DIODE D7
U 1 1 575E1334
P 3800 4050
F 0 "D7" H 3750 4150 50  0000 L CNN
F 1 "ESD_DIODE" H 3750 3950 50  0001 L CNN
F 2 "agg:0402" H 3750 3850 50  0001 L CNN
F 3 "" H 3700 4050 50  0001 C CNN
F 4 "2368169" H 3750 3750 50  0001 L CNN "Farnell"
	1    3800 4050
	0    1    1    0   
$EndComp
$Comp
L ESD_DIODE D8
U 1 1 575E133B
P 2000 4050
F 0 "D8" H 1950 4150 50  0000 L CNN
F 1 "ESD_DIODE" H 1950 3950 50  0001 L CNN
F 2 "agg:0402" H 1950 3850 50  0001 L CNN
F 3 "" H 1900 4050 50  0001 C CNN
F 4 "2368169" H 1950 3750 50  0001 L CNN "Farnell"
	1    2000 4050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR24
U 1 1 575E1341
P 3400 4150
F 0 "#PWR24" H 3400 3900 50  0001 C CNN
F 1 "GND" H 3400 4000 50  0000 C CNN
F 2 "" H 3400 4150 50  0000 C CNN
F 3 "" H 3400 4150 50  0000 C CNN
	1    3400 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR25
U 1 1 575E1347
P 3600 4150
F 0 "#PWR25" H 3600 3900 50  0001 C CNN
F 1 "GND" H 3600 4000 50  0000 C CNN
F 2 "" H 3600 4150 50  0000 C CNN
F 3 "" H 3600 4150 50  0000 C CNN
	1    3600 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR26
U 1 1 575E134D
P 3800 4150
F 0 "#PWR26" H 3800 3900 50  0001 C CNN
F 1 "GND" H 3800 4000 50  0000 C CNN
F 2 "" H 3800 4150 50  0000 C CNN
F 3 "" H 3800 4150 50  0000 C CNN
	1    3800 4150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR21
U 1 1 575E1353
P 2000 4150
F 0 "#PWR21" H 2000 3900 50  0001 C CNN
F 1 "GND" H 2000 4000 50  0000 C CNN
F 2 "" H 2000 4150 50  0000 C CNN
F 3 "" H 2000 4150 50  0000 C CNN
	1    2000 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3400 3200 4150
$Comp
L ESD_DIODE D9
U 1 1 575E1677
P 2200 4050
F 0 "D9" H 2150 4150 50  0000 L CNN
F 1 "ESD_DIODE" H 2150 3950 50  0001 L CNN
F 2 "agg:0402" H 2150 3850 50  0001 L CNN
F 3 "" H 2100 4050 50  0001 C CNN
F 4 "2368169" H 2150 3750 50  0001 L CNN "Farnell"
	1    2200 4050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR22
U 1 1 575E167D
P 2200 4150
F 0 "#PWR22" H 2200 3900 50  0001 C CNN
F 1 "GND" H 2200 4000 50  0000 C CNN
F 2 "" H 2200 4150 50  0000 C CNN
F 3 "" H 2200 4150 50  0000 C CNN
	1    2200 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3300 2200 3950
Connection ~ 2200 3300
Wire Wire Line
	2000 3950 2000 3400
Connection ~ 2000 3400
Wire Notes Line
	500  2600 6600 2600
Wire Notes Line
	6600 2600 6600 500 
Wire Wire Line
	1200 3600 1200 4150
Wire Wire Line
	1200 4000 1100 4000
Wire Wire Line
	1100 3800 1200 3800
Connection ~ 1200 4000
Wire Wire Line
	1100 3600 1200 3600
Connection ~ 1200 3800
$Comp
L ESD_DIODE D4
U 1 1 575DF8D0
P 4000 4050
F 0 "D4" H 3950 4150 50  0000 L CNN
F 1 "ESD_DIODE" H 3950 3950 50  0001 L CNN
F 2 "agg:0402" H 3950 3850 50  0001 L CNN
F 3 "" H 3900 4050 50  0001 C CNN
F 4 "2368169" H 3950 3750 50  0001 L CNN "Farnell"
	1    4000 4050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR27
U 1 1 575DF8D6
P 4000 4150
F 0 "#PWR27" H 4000 3900 50  0001 C CNN
F 1 "GND" H 4000 4000 50  0000 C CNN
F 2 "" H 4000 4150 50  0000 C CNN
F 3 "" H 4000 4150 50  0000 C CNN
	1    4000 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3300 3100 3300
Wire Wire Line
	4000 3300 4000 3950
Connection ~ 4000 3300
Wire Wire Line
	4200 3900 3100 3900
Wire Wire Line
	3400 3950 3400 3900
Connection ~ 3400 3900
Wire Wire Line
	3100 3700 4200 3700
Wire Wire Line
	3600 3950 3600 3700
Connection ~ 3600 3700
Wire Wire Line
	3100 3500 4200 3500
Wire Wire Line
	3800 3950 3800 3500
Connection ~ 3800 3500
Wire Wire Line
	3100 3400 3200 3400
Wire Notes Line
	500  4600 5100 4600
Wire Notes Line
	5100 4600 5100 2600
$EndSCHEMATC