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
LIBS:oturpe-kicad-lib
LIBS:switches
LIBS:drop-machine-cache
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
L +12V #PWR01
U 1 1 5A79FC6E
P 2100 1500
F 0 "#PWR01" H 2100 1350 50  0001 C CNN
F 1 "+12V" H 2100 1640 50  0000 C CNN
F 2 "" H 2100 1500 50  0001 C CNN
F 3 "" H 2100 1500 50  0001 C CNN
	1    2100 1500
	1    0    0    -1  
$EndComp
$Comp
L 7805_oturpe U?
U 1 1 5A79FCB8
P 2500 1550
F 0 "U?" H 2650 1354 50  0000 C CNN
F 1 "7805" H 2500 1750 50  0000 C CNN
F 2 "" H 2500 1550 50  0000 C CNN
F 3 "" H 2500 1550 50  0000 C CNN
	1    2500 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5A79FE30
P 2500 1800
F 0 "#PWR02" H 2500 1550 50  0001 C CNN
F 1 "GND" H 2500 1650 50  0000 C CNN
F 2 "" H 2500 1800 50  0001 C CNN
F 3 "" H 2500 1800 50  0001 C CNN
	1    2500 1800
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 5A7A491C
P 2900 1500
F 0 "#PWR03" H 2900 1350 50  0001 C CNN
F 1 "+5V" H 2900 1640 50  0000 C CNN
F 2 "" H 2900 1500 50  0001 C CNN
F 3 "" H 2900 1500 50  0001 C CNN
	1    2900 1500
	1    0    0    -1  
$EndComp
$Comp
L D D?
U 1 1 5A7A49D6
P 1650 1500
F 0 "D?" H 1650 1600 50  0000 C CNN
F 1 "D" H 1650 1400 50  0000 C CNN
F 2 "" H 1650 1500 50  0001 C CNN
F 3 "" H 1650 1500 50  0001 C CNN
	1    1650 1500
	-1   0    0    1   
$EndComp
$Comp
L LED D?
U 1 1 5A7A559B
P 6100 3050
F 0 "D?" H 6100 3150 50  0000 C CNN
F 1 "LED" H 6100 2950 50  0000 C CNN
F 2 "" H 6100 3050 50  0001 C CNN
F 3 "" H 6100 3050 50  0001 C CNN
	1    6100 3050
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 5A7A55D0
P 5800 3050
F 0 "R?" V 5880 3050 50  0000 C CNN
F 1 "1k" V 5800 3050 50  0000 C CNN
F 2 "" V 5730 3050 50  0001 C CNN
F 3 "" H 5800 3050 50  0001 C CNN
	1    5800 3050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR04
U 1 1 5A7A55FF
P 6250 3050
F 0 "#PWR04" H 6250 2800 50  0001 C CNN
F 1 "GND" H 6250 2900 50  0000 C CNN
F 2 "" H 6250 3050 50  0001 C CNN
F 3 "" H 6250 3050 50  0001 C CNN
	1    6250 3050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5A7A568A
P 1000 1700
F 0 "#PWR05" H 1000 1450 50  0001 C CNN
F 1 "GND" H 1000 1550 50  0000 C CNN
F 2 "" H 1000 1700 50  0001 C CNN
F 3 "" H 1000 1700 50  0001 C CNN
	1    1000 1700
	1    0    0    -1  
$EndComp
$Comp
L CP C?
U 1 1 5A7A5804
P 2100 1650
F 0 "C?" H 2125 1750 50  0000 L CNN
F 1 "1 uF" H 2125 1550 50  0000 L CNN
F 2 "" H 2138 1500 50  0001 C CNN
F 3 "" H 2100 1650 50  0001 C CNN
	1    2100 1650
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_1x02 J?
U 1 1 5A7ACB48
P 800 1600
F 0 "J?" H 800 1850 50  0000 C TNN
F 1 "Power in" V 650 1600 50  0000 C TNN
F 2 "" H 800 1375 50  0001 C CNN
F 3 "" H 775 1600 50  0001 C CNN
	1    800  1600
	1    0    0    -1  
$EndComp
$Comp
L SW_SPST SW?
U 1 1 5A7ACC71
P 1200 1500
F 0 "SW?" H 1200 1625 50  0000 C CNN
F 1 "On_off" H 1200 1400 50  0000 C CNN
F 2 "" H 1200 1500 50  0001 C CNN
F 3 "" H 1200 1500 50  0001 C CNN
	1    1200 1500
	1    0    0    -1  
$EndComp
$Comp
L ATTINY2313-20PU U?
U 1 1 5A7AE249
P 4500 4200
F 0 "U?" H 3550 5200 50  0000 C CNN
F 1 "ATTINY2313-20PU" H 5300 3300 50  0000 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm" H 4500 4200 50  0001 C CIN
F 3 "" H 4500 4200 50  0001 C CNN
	1    4500 4200
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR06
U 1 1 5A7AE2C9
P 4500 2700
F 0 "#PWR06" H 4500 2550 50  0001 C CNN
F 1 "+5V" H 4500 2840 50  0000 C CNN
F 2 "" H 4500 2700 50  0001 C CNN
F 3 "" H 4500 2700 50  0001 C CNN
	1    4500 2700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5A7AE3AC
P 4500 5200
F 0 "#PWR07" H 4500 4950 50  0001 C CNN
F 1 "GND" H 4500 5050 50  0000 C CNN
F 2 "" H 4500 5200 50  0001 C CNN
F 3 "" H 4500 5200 50  0001 C CNN
	1    4500 5200
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 5A7AE4E0
P 4250 2850
F 0 "C?" H 4100 2950 50  0000 L CNN
F 1 "100 nF" H 3950 2750 50  0000 L CNN
F 2 "" H 4288 2700 50  0001 C CNN
F 3 "" H 4250 2850 50  0001 C CNN
	1    4250 2850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5A7AEB5B
P 4250 3000
F 0 "#PWR08" H 4250 2750 50  0001 C CNN
F 1 "GND" H 4250 2850 50  0000 C CNN
F 2 "" H 4250 3000 50  0001 C CNN
F 3 "" H 4250 3000 50  0001 C CNN
	1    4250 3000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR09
U 1 1 5A7C4C1A
P 3350 3400
F 0 "#PWR09" H 3350 3250 50  0001 C CNN
F 1 "+5V" H 3350 3540 50  0000 C CNN
F 2 "" H 3350 3400 50  0001 C CNN
F 3 "" H 3350 3400 50  0001 C CNN
	1    3350 3400
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X03 J?
U 1 1 5A7D942B
P 6600 4100
F 0 "J?" H 6600 4300 50  0000 C CNN
F 1 "Isp_conn" H 6600 3900 50  0000 C CNN
F 2 "" H 6600 2900 50  0001 C CNN
F 3 "" H 6600 2900 50  0001 C CNN
	1    6600 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1500 1500 1500
Wire Wire Line
	5650 3400 5650 3050
Wire Wire Line
	2100 1800 2900 1800
Connection ~ 2500 1800
Wire Wire Line
	4500 3100 4500 2700
Wire Wire Line
	4500 2700 4250 2700
Wire Wire Line
	2100 1500 1800 1500
Wire Wire Line
	5650 4000 6350 4000
Wire Wire Line
	5650 4100 6350 4100
Wire Wire Line
	6350 4200 6200 4200
Wire Wire Line
	6200 5600 3100 5600
Wire Wire Line
	3100 5600 3100 3400
Wire Wire Line
	3100 3400 3350 3400
$Comp
L +5V #PWR010
U 1 1 5A7DA995
P 6850 4000
F 0 "#PWR010" H 6850 3850 50  0001 C CNN
F 1 "+5V" H 6850 4140 50  0000 C CNN
F 2 "" H 6850 4000 50  0001 C CNN
F 3 "" H 6850 4000 50  0001 C CNN
	1    6850 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 5A7DA9BF
P 7000 4200
F 0 "#PWR011" H 7000 3950 50  0001 C CNN
F 1 "GND" H 7000 4050 50  0000 C CNN
F 2 "" H 7000 4200 50  0001 C CNN
F 3 "" H 7000 4200 50  0001 C CNN
	1    7000 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 4200 6850 4200
Wire Wire Line
	6200 4200 6200 5600
Wire Wire Line
	5650 3900 6200 3900
Wire Wire Line
	6200 3900 6200 3700
Wire Wire Line
	6200 3700 7000 3700
Wire Wire Line
	7000 3700 7000 4100
Wire Wire Line
	7000 4100 6850 4100
$Comp
L Q_NMOS_SGD Q?
U 1 1 5A8179BB
P 7600 4700
F 0 "Q?" H 7550 4950 50  0000 L CNN
F 1 "2N7000" H 7350 4850 50  0000 L CNN
F 2 "" H 7800 4800 50  0001 C CNN
F 3 "" H 7600 4700 50  0001 C CNN
	1    7600 4700
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X11 J?
U 1 1 5A817C2E
P 8800 3750
F 0 "J?" H 8800 4350 50  0000 C CNN
F 1 "Valves" V 8800 3750 50  0000 C CNN
F 2 "" H 8800 2550 50  0001 C CNN
F 3 "" H 8800 2550 50  0001 C CNN
	1    8800 3750
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5A817DFC
P 7400 4850
F 0 "R?" V 7480 4850 50  0000 C CNN
F 1 "100" V 7400 4850 50  0000 C CNN
F 2 "" V 7330 4850 50  0001 C CNN
F 3 "" H 7400 4850 50  0001 C CNN
	1    7400 4850
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR012
U 1 1 5A817E4D
P 7700 4900
F 0 "#PWR012" H 7700 4650 50  0001 C CNN
F 1 "GND" H 7700 4750 50  0000 C CNN
F 2 "" H 7700 4900 50  0001 C CNN
F 3 "" H 7700 4900 50  0001 C CNN
	1    7700 4900
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_SGD Q?
U 1 1 5A81823D
P 8150 4700
F 0 "Q?" H 8100 4950 50  0000 L CNN
F 1 "2N7000" H 7900 4850 50  0000 L CNN
F 2 "" H 8350 4800 50  0001 C CNN
F 3 "" H 8150 4700 50  0001 C CNN
	1    8150 4700
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A818243
P 7950 4850
F 0 "R?" V 8030 4850 50  0000 C CNN
F 1 "100" V 7950 4850 50  0000 C CNN
F 2 "" V 7880 4850 50  0001 C CNN
F 3 "" H 7950 4850 50  0001 C CNN
	1    7950 4850
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR013
U 1 1 5A818249
P 8250 4900
F 0 "#PWR013" H 8250 4650 50  0001 C CNN
F 1 "GND" H 8250 4750 50  0000 C CNN
F 2 "" H 8250 4900 50  0001 C CNN
F 3 "" H 8250 4900 50  0001 C CNN
	1    8250 4900
	1    0    0    -1  
$EndComp
$Comp
L Q_NMOS_SGD Q?
U 1 1 5A81838F
P 8700 4700
F 0 "Q?" H 8650 4950 50  0000 L CNN
F 1 "2N7000" H 8450 4850 50  0000 L CNN
F 2 "" H 8900 4800 50  0001 C CNN
F 3 "" H 8700 4700 50  0001 C CNN
	1    8700 4700
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A818395
P 8500 4850
F 0 "R?" V 8580 4850 50  0000 C CNN
F 1 "100" V 8500 4850 50  0000 C CNN
F 2 "" V 8430 4850 50  0001 C CNN
F 3 "" H 8500 4850 50  0001 C CNN
	1    8500 4850
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR014
U 1 1 5A81839B
P 8800 4900
F 0 "#PWR014" H 8800 4650 50  0001 C CNN
F 1 "GND" H 8800 4750 50  0000 C CNN
F 2 "" H 8800 4900 50  0001 C CNN
F 3 "" H 8800 4900 50  0001 C CNN
	1    8800 4900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 5A8183AD
P 9350 4900
F 0 "#PWR015" H 9350 4650 50  0001 C CNN
F 1 "GND" H 9350 4750 50  0000 C CNN
F 2 "" H 9350 4900 50  0001 C CNN
F 3 "" H 9350 4900 50  0001 C CNN
	1    9350 4900
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A8183A7
P 9050 4850
F 0 "R?" V 9130 4850 50  0000 C CNN
F 1 "100" V 9050 4850 50  0000 C CNN
F 2 "" V 8980 4850 50  0001 C CNN
F 3 "" H 9050 4850 50  0001 C CNN
	1    9050 4850
	-1   0    0    1   
$EndComp
$Comp
L Q_NMOS_SGD Q?
U 1 1 5A8183A1
P 9250 4700
F 0 "Q?" H 9200 4950 50  0000 L CNN
F 1 "2N7000" H 9000 4850 50  0000 L CNN
F 2 "" H 9450 4800 50  0001 C CNN
F 3 "" H 9250 4700 50  0001 C CNN
	1    9250 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 5A81857D
P 9900 4900
F 0 "#PWR016" H 9900 4650 50  0001 C CNN
F 1 "GND" H 9900 4750 50  0000 C CNN
F 2 "" H 9900 4900 50  0001 C CNN
F 3 "" H 9900 4900 50  0001 C CNN
	1    9900 4900
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 5A818583
P 9600 4850
F 0 "R?" V 9680 4850 50  0000 C CNN
F 1 "100" V 9600 4850 50  0000 C CNN
F 2 "" V 9530 4850 50  0001 C CNN
F 3 "" H 9600 4850 50  0001 C CNN
	1    9600 4850
	-1   0    0    1   
$EndComp
$Comp
L Q_NMOS_SGD Q?
U 1 1 5A818589
P 9800 4700
F 0 "Q?" H 9750 4950 50  0000 L CNN
F 1 "2N7000" H 9550 4850 50  0000 L CNN
F 2 "" H 10000 4800 50  0001 C CNN
F 3 "" H 9800 4700 50  0001 C CNN
	1    9800 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 4500 7700 4000
Wire Wire Line
	7700 4000 8300 4000
Wire Wire Line
	8400 4000 8400 4100
Wire Wire Line
	8400 4100 8250 4100
Wire Wire Line
	8250 4100 8250 4500
Wire Wire Line
	8800 4500 8800 4300
Wire Wire Line
	8800 4300 8500 4300
Wire Wire Line
	8500 4300 8500 4000
Wire Wire Line
	9350 4500 9350 4250
Wire Wire Line
	9350 4250 8600 4250
Wire Wire Line
	8600 4250 8600 4000
Wire Wire Line
	8700 4000 8700 4200
Wire Wire Line
	8700 4200 9900 4200
Wire Wire Line
	9900 4200 9900 4500
$Comp
L +12V #PWR017
U 1 1 5A818868
P 9500 4000
F 0 "#PWR017" H 9500 3850 50  0001 C CNN
F 1 "+12V" H 9500 4140 50  0000 C CNN
F 2 "" H 9500 4000 50  0001 C CNN
F 3 "" H 9500 4000 50  0001 C CNN
	1    9500 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 4000 9500 4000
Entry Wire Line
	5800 4300 5900 4400
Entry Wire Line
	5800 4400 5900 4500
Entry Wire Line
	5800 4500 5900 4600
Entry Wire Line
	5800 4600 5900 4700
Entry Wire Line
	5800 4700 5900 4800
Entry Wire Line
	7300 5300 7400 5200
Entry Wire Line
	7850 5300 7950 5200
Entry Wire Line
	8400 5300 8500 5200
Entry Wire Line
	8950 5300 9050 5200
Entry Wire Line
	9500 5300 9600 5200
Wire Bus Line
	9500 5300 5900 5300
Wire Bus Line
	5900 5300 5900 4400
Wire Wire Line
	9600 5000 9600 5200
Wire Wire Line
	9050 5000 9050 5200
Wire Wire Line
	8500 5000 8500 5200
Wire Wire Line
	7950 5000 7950 5200
Wire Wire Line
	7400 5000 7400 5200
Wire Wire Line
	5800 4300 5650 4300
Wire Wire Line
	5800 4400 5650 4400
Wire Wire Line
	5800 4500 5650 4500
Wire Wire Line
	5800 4600 5650 4600
Wire Wire Line
	5800 4700 5650 4700
NoConn ~ 5650 3500
NoConn ~ 5650 3600
NoConn ~ 5650 3700
NoConn ~ 5650 3800
NoConn ~ 5650 4800
NoConn ~ 5650 4900
$Comp
L C C?
U 1 1 5A81C7A0
P 2900 1650
F 0 "C?" H 2925 1750 50  0000 L CNN
F 1 "100 nF" H 2925 1550 50  0000 L CNN
F 2 "" H 2938 1500 50  0001 C CNN
F 3 "" H 2900 1650 50  0001 C CNN
	1    2900 1650
	1    0    0    -1  
$EndComp
NoConn ~ 3350 3700
NoConn ~ 3350 3900
$EndSCHEMATC
