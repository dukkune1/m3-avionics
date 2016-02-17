EESchema Schematic File Version 2
LIBS:agg-kicad
LIBS:m3radio-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title ""
Date "8 feb 2016"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 1500 2100 0    59   ~ 0
SI4460 (radio) 
Text Notes 5200 720  0    118  ~ 0
RF amplifier and antenna
Text Notes 5750 1000 0    59   ~ 0
M2PA - radio amplifier\n
Text Notes 1870 710  0    118  ~ 0
Radio
$Comp
L Si4460 IC?
U 1 1 56B20B0C
P 1850 2950
F 0 "IC?" H 1550 3650 50  0000 L CNN
F 1 "Si4460" H 1550 2250 50  0000 L CNN
F 2 "agg:QFN-20-EP-SI" H 1550 2150 50  0001 L CNN
F 3 "" H 1450 3550 50  0001 C CNN
F 4 "2462635" H 1550 2050 50  0001 L CNN "Farnell"
	1    1850 2950
	1    0    0    -1  
$EndComp
NoConn ~ 1450 3150
Text HLabel 1350 3250 0    60   Input ~ 0
Radio_SCLK
Text HLabel 1350 3450 0    60   Input ~ 0
Radio_SDI
Text HLabel 1350 3350 0    60   Input ~ 0
Radio_SDO
Text HLabel 2350 3250 2    60   Input ~ 0
Radio_nIRQ
Text HLabel 1350 3550 0    60   Input ~ 0
Radio_nSEL
$Comp
L GND #PWR?
U 1 1 56B22850
P 1350 2700
F 0 "#PWR?" H 1220 2740 50  0001 L CNN
F 1 "GND" H 1350 2600 50  0000 C CNN
F 2 "" H 1350 2700 60  0000 C CNN
F 3 "" H 1350 2700 60  0000 C CNN
	1    1350 2700
	1    0    0    -1  
$EndComp
$Comp
L 3v3 #PWR?
U 1 1 56B228AE
P 750 2200
F 0 "#PWR?" H 750 2310 50  0001 L CNN
F 1 "3v3" H 750 2290 50  0000 C CNN
F 2 "" H 750 2200 60  0000 C CNN
F 3 "" H 750 2200 60  0000 C CNN
	1    750  2200
	1    0    0    -1  
$EndComp
$Comp
L C 1u
U 1 1 56B2293A
P 1200 2400
F 0 "1u" H 1250 2470 50  0000 C CNN
F 1 "C" H 1250 2330 50  0000 C CNN
F 2 "" H 1200 2400 50  0001 C CNN
F 3 "" H 1200 2400 50  0001 C CNN
	1    1200 2400
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 56B2297D
P 1000 2400
F 0 "C?" H 1050 2470 50  0000 C CNN
F 1 "100n" H 1050 2330 50  0000 C CNN
F 2 "" H 1000 2400 50  0001 C CNN
F 3 "" H 1000 2400 50  0001 C CNN
	1    1000 2400
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 56B229B8
P 750 2400
F 0 "C?" H 800 2470 50  0000 C CNN
F 1 "100p" H 800 2330 50  0000 C CNN
F 2 "" H 750 2400 50  0001 C CNN
F 3 "" H 750 2400 50  0001 C CNN
	1    750  2400
	0    1    1    0   
$EndComp
Text Label 2350 2550 0    60   ~ 0
TX_pin
Text Label 2350 2450 0    60   ~ 0
RXn
Text Label 2350 2350 0    60   ~ 0
RXp
Text Label 5900 5000 2    60   ~ 0
RXp
Text Label 5900 4600 2    60   ~ 0
Rxn
Text Label 5900 4200 2    60   ~ 0
TX_pin
$Comp
L L 120nH
U 1 1 56B2381E
P 6250 3950
F 0 "120nH" H 6300 4000 50  0000 C CNN
F 1 "L" H 6300 3900 50  0000 C CNN
F 2 "" H 6250 3950 50  0001 C CNN
F 3 "" H 6250 3950 50  0001 C CNN
	1    6250 3950
	0    1    1    0   
$EndComp
$Comp
L VDD #PWR?
U 1 1 56B23A5E
P 6250 3600
F 0 "#PWR?" H 6250 3710 50  0001 L CNN
F 1 "VDD" H 6250 3690 50  0000 C CNN
F 2 "" H 6250 3600 60  0000 C CNN
F 3 "" H 6250 3600 60  0000 C CNN
	1    6250 3600
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 56B23AF0
P 6500 4200
F 0 "C?" H 6550 4270 50  0000 C CNN
F 1 "36pF" H 6500 4100 50  0000 C CNN
F 2 "" H 6500 4200 50  0001 C CNN
F 3 "" H 6500 4200 50  0001 C CNN
	1    6500 4200
	1    0    0    -1  
$EndComp
$Comp
L L L?
U 1 1 56B23B31
P 6700 4200
F 0 "L?" H 6750 4250 50  0000 C CNN
F 1 "6.8nH" H 6750 4100 50  0000 C CNN
F 2 "" H 6700 4200 50  0001 C CNN
F 3 "" H 6700 4200 50  0001 C CNN
	1    6700 4200
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 56B23C5B
P 6550 4600
F 0 "C?" H 6600 4670 50  0000 C CNN
F 1 "1.2pF" H 6600 4530 50  0000 C CNN
F 2 "" H 6550 4600 50  0001 C CNN
F 3 "" H 6550 4600 50  0001 C CNN
	1    6550 4600
	1    0    0    -1  
$EndComp
$Comp
L L L?
U 1 1 56B23D7C
P 6250 4750
F 0 "L?" H 6300 4800 50  0000 C CNN
F 1 "LR1" H 6300 4700 50  0000 C CNN
F 2 "" H 6250 4750 50  0001 C CNN
F 3 "" H 6250 4750 50  0001 C CNN
	1    6250 4750
	0    1    1    0   
$EndComp
$Comp
L L L?
U 1 1 56B23E07
P 6500 5000
F 0 "L?" H 6550 5050 50  0000 C CNN
F 1 "22nH" H 6550 4950 50  0000 C CNN
F 2 "" H 6500 5000 50  0001 C CNN
F 3 "" H 6500 5000 50  0001 C CNN
	1    6500 5000
	1    0    0    -1  
$EndComp
$Comp
L C 3pF
U 1 1 56B23FB7
P 6250 5100
F 0 "3pF" H 6300 5170 50  0000 C CNN
F 1 "CR1" H 6300 5030 50  0000 C CNN
F 2 "" H 6250 5100 50  0001 C CNN
F 3 "" H 6250 5100 50  0001 C CNN
	1    6250 5100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 56B2404E
P 6250 5300
F 0 "#PWR?" H 6120 5340 50  0001 L CNN
F 1 "GND" H 6250 5200 50  0000 C CNN
F 2 "" H 6250 5300 60  0000 C CNN
F 3 "" H 6250 5300 60  0000 C CNN
	1    6250 5300
	1    0    0    -1  
$EndComp
$Comp
L C 3.3pF
U 1 1 56B241BD
P 7300 4300
F 0 "3.3pF" H 7350 4370 50  0000 C CNN
F 1 "C" H 7350 4230 50  0000 C CNN
F 2 "" H 7300 4300 50  0001 C CNN
F 3 "" H 7300 4300 50  0001 C CNN
	1    7300 4300
	0    1    1    0   
$EndComp
$Comp
L C 10pF
U 1 1 56B24202
P 7600 4300
F 0 "10pF" H 7650 4370 50  0000 C CNN
F 1 "C" H 7650 4230 50  0000 C CNN
F 2 "" H 7600 4300 50  0001 C CNN
F 3 "" H 7600 4300 50  0001 C CNN
	1    7600 4300
	0    1    1    0   
$EndComp
$Comp
L C 4.7pF
U 1 1 56B24243
P 7900 4300
F 0 "4.7pF" H 7950 4370 50  0000 C CNN
F 1 "C" H 7950 4230 50  0000 C CNN
F 2 "" H 7900 4300 50  0001 C CNN
F 3 "" H 7900 4300 50  0001 C CNN
	1    7900 4300
	0    1    1    0   
$EndComp
$Comp
L L 6.8nH
U 1 1 56B242F1
P 7700 4200
F 0 "6.8nH" H 7750 4250 50  0000 C CNN
F 1 "L" H 7750 4150 50  0000 C CNN
F 2 "" H 7700 4200 50  0001 C CNN
F 3 "" H 7700 4200 50  0001 C CNN
	1    7700 4200
	1    0    0    -1  
$EndComp
$Comp
L L 6.8nH
U 1 1 56B24388
P 7400 4200
F 0 "6.8nH" H 7450 4250 50  0000 C CNN
F 1 "L" H 7450 4150 50  0000 C CNN
F 2 "" H 7400 4200 50  0001 C CNN
F 3 "" H 7400 4200 50  0001 C CNN
	1    7400 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56B24884
P 7600 4650
F 0 "#PWR?" H 7470 4690 50  0001 L CNN
F 1 "GND" H 7600 4550 50  0000 C CNN
F 2 "" H 7600 4650 60  0000 C CNN
F 3 "" H 7600 4650 60  0000 C CNN
	1    7600 4650
	1    0    0    -1  
$EndComp
NoConn ~ 2250 2850
NoConn ~ 2250 2950
NoConn ~ 2250 3050
NoConn ~ 2250 3150
NoConn ~ 2250 2650
$Comp
L COAX P?
U 1 1 56B306EE
P 8500 4200
F 0 "P?" H 8500 4300 50  0000 C CNN
F 1 "COAX" H 8500 4050 50  0000 C CNN
F 2 "agg-unchecked:SMA-142-0701-801" H 8500 3990 50  0001 C CNN
F 3 "" H 8600 4100 50  0001 C CNN
F 4 "1608592" H 8500 3920 50  0001 C CNN "Farnell"
	1    8500 4200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56B30843
P 8350 4400
F 0 "#PWR?" H 8220 4440 50  0001 L CNN
F 1 "GND" H 8350 4300 50  0000 C CNN
F 2 "" H 8350 4400 60  0000 C CNN
F 3 "" H 8350 4400 60  0000 C CNN
	1    8350 4400
	1    0    0    -1  
$EndComp
$Comp
L COAX P?
U 1 1 56B30AB9
P 5550 1900
F 0 "P?" H 5550 2000 50  0000 C CNN
F 1 "COAX" H 5550 1750 50  0000 C CNN
F 2 "agg-unchecked:SMA-142-0701-801" H 5550 1690 50  0001 C CNN
F 3 "" H 5650 1800 50  0001 C CNN
F 4 "1608592" H 5550 1620 50  0001 C CNN "Farnell"
	1    5550 1900
	-1   0    0    1   
$EndComp
Wire Notes Line
	4330 4340 510  4340
Wire Wire Line
	1450 3250 1350 3250
Wire Wire Line
	1450 3350 1350 3350
Wire Wire Line
	1450 3450 1350 3450
Wire Wire Line
	1450 3550 1350 3550
Wire Wire Line
	2250 3250 2350 3250
Wire Wire Line
	750  2350 1450 2350
Wire Wire Line
	1450 2650 1350 2650
Wire Wire Line
	1350 2550 1350 2700
Wire Wire Line
	750  2550 1450 2550
Connection ~ 1350 2650
Wire Wire Line
	1350 2450 1350 2350
Connection ~ 1350 2350
Wire Wire Line
	1450 2450 1350 2450
Wire Wire Line
	1200 2350 1200 2400
Connection ~ 1200 2350
Wire Wire Line
	1000 2350 1000 2400
Wire Wire Line
	750  2200 750  2400
Connection ~ 1000 2350
Wire Wire Line
	1200 2500 1200 2550
Connection ~ 1350 2550
Wire Wire Line
	1000 2500 1000 2550
Connection ~ 1200 2550
Wire Wire Line
	750  2500 750  2550
Connection ~ 1000 2550
Connection ~ 750  2350
Wire Wire Line
	2250 2350 2350 2350
Wire Wire Line
	2250 2450 2350 2450
Wire Wire Line
	2250 2550 2350 2550
Wire Notes Line
	4400 500  4400 7700
Wire Notes Line
	4400 2450 4400 2750
Wire Notes Line
	4400 2850 11150 2850
Wire Wire Line
	5900 4200 6500 4200
Wire Wire Line
	6250 4050 6250 4200
Connection ~ 6250 4200
Wire Wire Line
	6600 4200 6700 4200
Wire Wire Line
	6900 4200 6900 5000
Wire Wire Line
	5900 4600 6550 4600
Wire Wire Line
	6650 4600 6900 4600
Connection ~ 6900 4600
Wire Wire Line
	6250 4600 6250 4750
Connection ~ 6250 4600
Wire Wire Line
	5900 5000 6500 5000
Wire Wire Line
	6250 4850 6250 5100
Connection ~ 6250 5000
Wire Wire Line
	6900 5000 6600 5000
Wire Wire Line
	6250 5200 6250 5300
Connection ~ 6900 4200
Connection ~ 7300 4200
Wire Wire Line
	6800 4200 7400 4200
Wire Wire Line
	7300 4200 7300 4300
Wire Wire Line
	7500 4200 7700 4200
Wire Wire Line
	7600 4200 7600 4300
Connection ~ 7600 4200
Wire Wire Line
	7800 4200 8400 4200
Wire Wire Line
	7900 4200 7900 4300
Wire Wire Line
	7900 4550 7900 4400
Wire Wire Line
	7300 4550 7900 4550
Wire Wire Line
	7600 4400 7600 4650
Wire Wire Line
	7300 4400 7300 4550
Connection ~ 7600 4550
Connection ~ 7900 4200
Wire Wire Line
	6250 3950 6250 3600
Wire Notes Line
	7050 4850 8050 4850
Wire Notes Line
	8050 4850 8050 4000
Wire Notes Line
	8050 4000 7050 4000
Wire Notes Line
	7050 4000 7050 4850
Connection ~ 8150 4200
Wire Wire Line
	8400 4300 8350 4300
Wire Wire Line
	8350 4300 8350 4400
Text Notes 5250 2550 0    60   ~ 0
Note that there is a critical spacing 
$Comp
L GND #PWR?
U 1 1 56B30D9E
P 5650 1650
F 0 "#PWR?" H 5520 1690 50  0001 L CNN
F 1 "GND" H 5650 1550 50  0000 C CNN
F 2 "" H 5650 1650 60  0000 C CNN
F 3 "" H 5650 1650 60  0000 C CNN
	1    5650 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	5650 1800 5650 1650
$Comp
L C C?
U 1 1 56B30EF6
P 5900 1900
F 0 "C?" H 5950 1970 50  0000 C CNN
F 1 "10pF" H 5950 1830 50  0000 C CNN
F 2 "" H 5900 1900 50  0001 C CNN
F 3 "" H 5900 1900 50  0001 C CNN
	1    5900 1900
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 56B30F5D
P 6150 2000
F 0 "C?" H 6200 2070 50  0000 C CNN
F 1 "8pF" H 6200 1930 50  0000 C CNN
F 2 "" H 6150 2000 50  0001 C CNN
F 3 "" H 6150 2000 50  0001 C CNN
	1    6150 2000
	0    1    1    0   
$EndComp
$Comp
L R lamda1
U 1 1 56B31047
P 6300 1900
F 0 "lamda1" H 6350 1950 50  0000 C CNN
F 1 "R" H 6350 1850 50  0000 C CNN
F 2 "" H 6300 1900 50  0001 C CNN
F 3 "" H 6300 1900 50  0001 C CNN
	1    6300 1900
	1    0    0    -1  
$EndComp
Text Notes 6500 1700 0    60   ~ 0
ADL5324
Wire Notes Line
	6400 1500 6400 1800
Wire Notes Line
	6400 1800 7000 1800
Wire Notes Line
	7000 1800 7000 1500
Wire Notes Line
	7000 1500 6400 1500
Wire Wire Line
	6000 1900 6300 1900
Wire Wire Line
	6150 1900 6150 2000
Connection ~ 6150 1900
Wire Wire Line
	6150 2100 6150 2200
$Comp
L GND #PWR?
U 1 1 56B312ED
P 6150 2200
F 0 "#PWR?" H 6020 2240 50  0001 L CNN
F 1 "GND" H 6150 2100 50  0000 C CNN
F 2 "" H 6150 2200 60  0000 C CNN
F 3 "" H 6150 2200 60  0000 C CNN
	1    6150 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1900 6550 1900
Wire Wire Line
	6450 1900 6450 1800
Wire Wire Line
	6550 1900 6550 1800
Connection ~ 6450 1900
Wire Wire Line
	6650 1800 6650 1900
Wire Wire Line
	6650 1900 6750 1900
Wire Wire Line
	6700 1900 6700 1800
Wire Wire Line
	6700 1800 6750 1800
Connection ~ 6700 1900
Wire Wire Line
	6750 1900 6750 2000
$Comp
L GND #PWR?
U 1 1 56B315F3
P 6750 1950
F 0 "#PWR?" H 6620 1990 50  0001 L CNN
F 1 "GND" H 6750 1850 50  0000 C CNN
F 2 "" H 6750 1950 60  0000 C CNN
F 3 "" H 6750 1950 60  0000 C CNN
	1    6750 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 1800 6950 1900
Wire Wire Line
	6950 1900 7300 1900
Wire Wire Line
	7000 1800 7000 1900
Connection ~ 7000 1900
Wire Wire Line
	7200 1750 7200 1900
Connection ~ 7200 1900
$Comp
L R lamda2
U 1 1 56B3182F
P 7300 1900
F 0 "lamda2" H 7350 1950 50  0000 C CNN
F 1 "R" H 7350 1850 50  0000 C CNN
F 2 "" H 7300 1900 50  0001 C CNN
F 3 "" H 7300 1900 50  0001 C CNN
	1    7300 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 1900 7650 1900
Wire Wire Line
	7550 1900 7550 2050
$Comp
L C C?
U 1 1 56B319C8
P 7550 2050
F 0 "C?" H 7600 2120 50  0000 C CNN
F 1 "3.6pF" H 7600 1980 50  0000 C CNN
F 2 "" H 7550 2050 50  0001 C CNN
F 3 "" H 7550 2050 50  0001 C CNN
	1    7550 2050
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 56B31AC7
P 7850 1900
F 0 "C?" H 7900 1970 50  0000 C CNN
F 1 "20pF" H 7900 1830 50  0000 C CNN
F 2 "" H 7850 1900 50  0001 C CNN
F 3 "" H 7850 1900 50  0001 C CNN
	1    7850 1900
	1    0    0    -1  
$EndComp
$Comp
L COAX P?
U 1 1 56B31B12
P 8200 1900
F 0 "P?" H 8200 2000 50  0000 C CNN
F 1 "COAX" H 8200 1750 50  0000 C CNN
F 2 "agg-unchecked:SMA-142-0701-801" H 8200 1690 50  0001 C CNN
F 3 "" H 8300 1800 50  0001 C CNN
F 4 "1608592" H 8200 1620 50  0001 C CNN "Farnell"
	1    8200 1900
	1    0    0    -1  
$EndComp
$Comp
L L L?
U 1 1 56B31B6C
P 7200 1650
F 0 "L?" H 7250 1700 50  0000 C CNN
F 1 "18nH" H 7250 1600 50  0000 C CNN
F 2 "" H 7200 1650 50  0001 C CNN
F 3 "" H 7200 1650 50  0001 C CNN
	1    7200 1650
	0    1    1    0   
$EndComp
Connection ~ 7550 1900
Wire Wire Line
	7750 1900 7850 1900
Wire Wire Line
	7950 1900 8100 1900
Wire Wire Line
	8050 2000 8050 2100
Wire Wire Line
	8050 2000 8100 2000
Wire Wire Line
	7550 2150 7550 2250
$Comp
L GND #PWR?
U 1 1 56B32015
P 7550 2250
F 0 "#PWR?" H 7420 2290 50  0001 L CNN
F 1 "GND" H 7550 2150 50  0000 C CNN
F 2 "" H 7550 2250 60  0000 C CNN
F 3 "" H 7550 2250 60  0000 C CNN
	1    7550 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56B32061
P 8050 2100
F 0 "#PWR?" H 7920 2140 50  0001 L CNN
F 1 "GND" H 8050 2000 50  0000 C CNN
F 2 "" H 8050 2100 60  0000 C CNN
F 3 "" H 8050 2100 60  0000 C CNN
	1    8050 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56B320AD
P 7450 1500
F 0 "#PWR?" H 7320 1540 50  0001 L CNN
F 1 "GND" H 7450 1400 50  0000 C CNN
F 2 "" H 7450 1500 60  0000 C CNN
F 3 "" H 7450 1500 60  0000 C CNN
	1    7450 1500
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 56B320F9
P 7450 1300
F 0 "#PWR?" H 7320 1340 50  0001 L CNN
F 1 "GND" H 7450 1200 50  0000 C CNN
F 2 "" H 7450 1300 60  0000 C CNN
F 3 "" H 7450 1300 60  0000 C CNN
	1    7450 1300
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 56B32145
P 7450 1100
F 0 "#PWR?" H 7320 1140 50  0001 L CNN
F 1 "GND" H 7450 1000 50  0000 C CNN
F 2 "" H 7450 1100 60  0000 C CNN
F 3 "" H 7450 1100 60  0000 C CNN
	1    7450 1100
	0    -1   -1   0   
$EndComp
Connection ~ 7200 1500
$Comp
L C C?
U 1 1 56B32493
P 7300 1500
F 0 "C?" H 7350 1570 50  0000 C CNN
F 1 "100pF" H 7350 1430 50  0000 C CNN
F 2 "" H 7300 1500 50  0001 C CNN
F 3 "" H 7300 1500 50  0001 C CNN
	1    7300 1500
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 56B324E4
P 7300 1300
F 0 "C?" H 7350 1370 50  0000 C CNN
F 1 "10nF" H 7350 1230 50  0000 C CNN
F 2 "" H 7300 1300 50  0001 C CNN
F 3 "" H 7300 1300 50  0001 C CNN
	1    7300 1300
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 56B32535
P 7300 1100
F 0 "C?" H 7350 1170 50  0000 C CNN
F 1 "10uF" H 7350 1030 50  0000 C CNN
F 2 "" H 7300 1100 50  0001 C CNN
F 3 "" H 7300 1100 50  0001 C CNN
	1    7300 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 1300 7300 1300
Connection ~ 7200 1300
Wire Wire Line
	7200 1100 7300 1100
Connection ~ 7200 1100
Wire Wire Line
	7200 950  7200 1650
Wire Wire Line
	7200 1500 7300 1500
Wire Wire Line
	7400 1500 7450 1500
$Comp
L 5v #PWR?
U 1 1 56B32D43
P 7200 950
F 0 "#PWR?" H 7200 1060 50  0001 L CNN
F 1 "5v" H 7200 1040 50  0000 C CNN
F 2 "" H 7200 950 60  0000 C CNN
F 3 "" H 7200 950 60  0000 C CNN
	1    7200 950 
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 56B331C6
P 5700 1900
F 0 "R?" H 5750 1950 50  0000 C CNN
F 1 "2R" H 5750 1850 50  0000 C CNN
F 2 "" H 5700 1900 50  0001 C CNN
F 3 "" H 5700 1900 50  0001 C CNN
	1    5700 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 1900 5700 1900
Wire Wire Line
	5800 1900 5900 1900
$Comp
L L 2.4nH
U 1 1 56B34E9E
P 7650 1900
F 0 "2.4nH" H 7700 1950 50  0000 C CNN
F 1 "L" H 7700 1850 50  0000 C CNN
F 2 "" H 7650 1900 50  0001 C CNN
F 3 "" H 7650 1900 50  0001 C CNN
	1    7650 1900
	1    0    0    -1  
$EndComp
$Comp
L TCXO Y?
U 1 1 56C5879C
P 950 2950
F 0 "Y?" H 750 3050 50  0000 L CNN
F 1 "TCXO" H 750 2750 50  0000 L CNN
F 2 "" H 750 2950 50  0001 C CNN
F 3 "" H 750 2950 50  0001 C CNN
F 4 "2405785" H 750 2650 50  0001 L CNN "Farnell"
	1    950  2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 2950 1450 2950
Wire Wire Line
	650  2950 600  2950
Wire Wire Line
	600  2950 600  2900
Wire Wire Line
	650  3050 600  3050
Wire Wire Line
	600  3050 600  3100
$Comp
L 3v3 #PWR?
U 1 1 56C60CB9
P 600 2900
F 0 "#PWR?" H 600 3010 50  0001 L CNN
F 1 "3v3" H 600 2990 50  0000 C CNN
F 2 "" H 600 2900 60  0000 C CNN
F 3 "" H 600 2900 60  0000 C CNN
	1    600  2900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 56C60D0D
P 600 3100
F 0 "#PWR?" H 470 3140 50  0001 L CNN
F 1 "GND" H 600 3000 50  0000 C CNN
F 2 "" H 600 3100 60  0000 C CNN
F 3 "" H 600 3100 60  0000 C CNN
	1    600  3100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
