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
L Conn_01x03 J1
U 1 1 5B3141AE
P 4350 3600
F 0 "J1" H 4350 3800 50  0000 C CNN
F 1 "Main board" V 4500 3650 50  0000 C CNN
F 2 "" H 4350 3600 50  0001 C CNN
F 3 "" H 4350 3600 50  0001 C CNN
	1    4350 3600
	-1   0    0    1   
$EndComp
$Comp
L LED D1
U 1 1 5B31420A
P 5050 3600
F 0 "D1" H 5050 3700 50  0000 C CNN
F 1 "Indicator" H 5050 3450 50  0000 C CNN
F 2 "" H 5050 3600 50  0001 C CNN
F 3 "" H 5050 3600 50  0001 C CNN
	1    5050 3600
	-1   0    0    1   
$EndComp
$Comp
L SW_Push SW1
U 1 1 5B31425D
P 4900 3900
F 0 "SW1" H 4950 4000 50  0000 L CNN
F 1 "Flowthrough" H 4900 3840 50  0000 C CNN
F 2 "" H 4900 4100 50  0001 C CNN
F 3 "" H 4900 4100 50  0001 C CNN
	1    4900 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5B3142BE
P 5250 3900
F 0 "#PWR01" H 5250 3650 50  0001 C CNN
F 1 "GND" H 5250 3750 50  0000 C CNN
F 2 "" H 5250 3900 50  0001 C CNN
F 3 "" H 5250 3900 50  0001 C CNN
	1    5250 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 5B3142D8
P 5350 3600
F 0 "#PWR02" H 5350 3350 50  0001 C CNN
F 1 "GND" H 5350 3450 50  0000 C CNN
F 2 "" H 5350 3600 50  0001 C CNN
F 3 "" H 5350 3600 50  0001 C CNN
	1    5350 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5B3142F2
P 4700 3250
F 0 "#PWR03" H 4700 3000 50  0001 C CNN
F 1 "GND" H 4700 3100 50  0000 C CNN
F 2 "" H 4700 3250 50  0001 C CNN
F 3 "" H 4700 3250 50  0001 C CNN
	1    4700 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3900 5100 3900
Wire Wire Line
	5350 3600 5200 3600
Wire Wire Line
	4550 3600 4900 3600
Wire Wire Line
	4700 3900 4700 3700
Wire Wire Line
	4700 3700 4550 3700
Wire Wire Line
	4550 3500 4550 3250
Wire Wire Line
	4550 3250 4700 3250
$Comp
L PWR_FLAG #FLG04
U 1 1 5B3146DD
P 4700 3250
F 0 "#FLG04" H 4700 3325 50  0001 C CNN
F 1 "PWR_FLAG" H 4700 3400 50  0000 C CNN
F 2 "" H 4700 3250 50  0001 C CNN
F 3 "" H 4700 3250 50  0001 C CNN
	1    4700 3250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
