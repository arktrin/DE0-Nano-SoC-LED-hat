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
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "DE0-Nano-SoC LED hat"
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Conn_02x08_Odd_Even J1
U 1 1 5A243617
P 2350 2200
F 0 "J1" H 2400 2600 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 2400 1700 50  0000 C CNN
F 2 "Connectors_Multicomp:Multicomp_MC9A12-1634_2x08x2.54mm_Straight" H 2350 2200 50  0001 C CNN
F 3 "" H 2350 2200 50  0001 C CNN
	1    2350 2200
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x08_Odd_Even J2
U 1 1 5A243732
P 3650 2200
F 0 "J2" H 3700 2600 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 3700 1700 50  0000 C CNN
F 2 "Connectors_Multicomp:Multicomp_MC9A12-1634_2x08x2.54mm_Straight" H 3650 2200 50  0001 C CNN
F 3 "" H 3650 2200 50  0001 C CNN
	1    3650 2200
	1    0    0    -1  
$EndComp
$Comp
L 74HC245 U1
U 1 1 5A243C9A
P 3150 4000
F 0 "U1" H 3250 4575 50  0000 L BNN
F 1 "74HC245" H 3200 3425 50  0000 L TNN
F 2 "SMD_Packages:SSOP-20" H 3150 4000 50  0001 C CNN
F 3 "" H 3150 4000 50  0001 C CNN
	1    3150 4000
	1    0    0    -1  
$EndComp
$Comp
L 74HC245 U2
U 1 1 5A243DF7
P 5800 4000
F 0 "U2" H 5900 4575 50  0000 L BNN
F 1 "74HC245" H 5850 3425 50  0000 L TNN
F 2 "SMD_Packages:SSOP-20" H 5800 4000 50  0001 C CNN
F 3 "" H 5800 4000 50  0001 C CNN
	1    5800 4000
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x20_Odd_Even J3
U 1 1 5A244240
P 2950 6850
F 0 "J3" H 3000 7850 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 3000 5750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20_Pitch2.54mm" H 2950 6850 50  0001 C CNN
F 3 "" H 2950 6850 50  0001 C CNN
	1    2950 6850
	1    0    0    -1  
$EndComp
$Comp
L Conn_02x20_Odd_Even J4
U 1 1 5A2442CF
P 5300 6850
F 0 "J4" H 5350 7850 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 5350 5750 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x20_Pitch2.54mm" H 5300 6850 50  0001 C CNN
F 3 "" H 5300 6850 50  0001 C CNN
	1    5300 6850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 5A244436
P 5800 8050
F 0 "#PWR01" H 5800 7800 50  0001 C CNN
F 1 "GND" H 5800 7900 50  0000 C CNN
F 2 "" H 5800 8050 50  0001 C CNN
F 3 "" H 5800 8050 50  0001 C CNN
	1    5800 8050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 6450 5800 6450
Wire Wire Line
	5800 6450 5800 8050
Wire Wire Line
	5600 7350 5800 7350
Connection ~ 5800 7350
Wire Wire Line
	5600 5950 6550 5950
Wire Wire Line
	5600 6050 6550 6050
Wire Wire Line
	5600 6150 6550 6150
Wire Wire Line
	5600 6250 6550 6250
Wire Wire Line
	5600 6350 6550 6350
$Comp
L GND #PWR02
U 1 1 5A2446ED
P 3450 8050
F 0 "#PWR02" H 3450 7800 50  0001 C CNN
F 1 "GND" H 3450 7900 50  0000 C CNN
F 2 "" H 3450 8050 50  0001 C CNN
F 3 "" H 3450 8050 50  0001 C CNN
	1    3450 8050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 6450 3450 6450
Wire Wire Line
	3450 6450 3450 8050
Wire Wire Line
	3250 7350 3450 7350
Connection ~ 3450 7350
$EndSCHEMATC
