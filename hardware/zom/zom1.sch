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
LIBS:mysensors_radios
LIBS:ESP32-footprints-Shem-Lib
LIBS:zom1-cache
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
L RFM95HW U2
U 1 1 5B886D30
P 6950 3900
F 0 "U2" H 6600 4150 40  0000 C CNN
F 1 "RFM95HW" H 7200 3150 40  0000 C CNN
F 2 "zom:RFM95" H 6950 3900 30  0001 C CIN
F 3 "" H 6950 3900 60  0000 C CNN
	1    6950 3900
	1    0    0    -1  
$EndComp
$Comp
L ESP32-WROOM U1
U 1 1 5B886D85
P 4400 2950
F 0 "U1" H 3700 4200 60  0000 C CNN
F 1 "ESP32-WROOM" H 4900 4200 60  0000 C CNN
F 2 "zom:ESP32-WROOM" H 4750 4300 60  0001 C CNN
F 3 "" H 3950 3400 60  0001 C CNN
	1    4400 2950
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x03 J1
U 1 1 5B887399
P 1000 1350
F 0 "J1" H 1000 1550 50  0000 C CNN
F 1 "REG:3V3" H 1000 1150 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x03_Pitch2.54mm" H 1000 1350 50  0001 C CNN
F 3 "" H 1000 1350 50  0001 C CNN
	1    1000 1350
	-1   0    0    1   
$EndComp
Text Notes 950  900  0    60   ~ 0
Regulator: VX7803 (3.3V)
Text GLabel 2050 1050 2    60   Input ~ 0
VIN
$Comp
L +3V3 #PWR01
U 1 1 5B8875DA
P 2050 1650
F 0 "#PWR01" H 2050 1500 50  0001 C CNN
F 1 "+3V3" H 2050 1790 50  0000 C CNN
F 2 "" H 2050 1650 50  0001 C CNN
F 3 "" H 2050 1650 50  0001 C CNN
	1    2050 1650
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR02
U 1 1 5B8876A7
P 3450 2350
F 0 "#PWR02" H 3450 2200 50  0001 C CNN
F 1 "+3V3" H 3450 2490 50  0000 C CNN
F 2 "" H 3450 2350 50  0001 C CNN
F 3 "" H 3450 2350 50  0001 C CNN
	1    3450 2350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 5B8876D2
P 1800 1350
F 0 "#PWR03" H 1800 1100 50  0001 C CNN
F 1 "GND" H 1800 1200 50  0000 C CNN
F 2 "" H 1800 1350 50  0001 C CNN
F 3 "" H 1800 1350 50  0001 C CNN
	1    1800 1350
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 5B8877C4
P 1400 1200
F 0 "C1" H 1425 1300 50  0000 L CNN
F 1 "10 uF" H 1425 1100 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1438 1050 50  0001 C CNN
F 3 "" H 1400 1200 50  0001 C CNN
	1    1400 1200
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 5B88787B
P 1400 1500
F 0 "C2" H 1425 1600 50  0000 L CNN
F 1 "22 uF" H 1425 1400 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1438 1350 50  0001 C CNN
F 3 "" H 1400 1500 50  0001 C CNN
	1    1400 1500
	1    0    0    -1  
$EndComp
Text GLabel 5300 2800 2    60   Input ~ 0
19
Text GLabel 5300 2900 2    60   Input ~ 0
18
Text GLabel 5300 3000 2    60   Input ~ 0
5
Text GLabel 5300 3100 2    60   Input ~ 0
17
Text GLabel 5300 3200 2    60   Input ~ 0
16
Text GLabel 5300 3300 2    60   Input ~ 0
4
Text GLabel 5300 3400 2    60   Input ~ 0
0
Text GLabel 5300 2200 2    60   Input ~ 0
23/SAT_SLEEP
Text GLabel 5300 2500 2    60   Input ~ 0
RX0
$Comp
L GND #PWR04
U 1 1 5B888151
P 5400 3700
F 0 "#PWR04" H 5400 3450 50  0001 C CNN
F 1 "GND" H 5400 3550 50  0000 C CNN
F 2 "" H 5400 3700 50  0001 C CNN
F 3 "" H 5400 3700 50  0001 C CNN
	1    5400 3700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5B888249
P 3950 4000
F 0 "#PWR05" H 3950 3750 50  0001 C CNN
F 1 "GND" H 3950 3850 50  0000 C CNN
F 2 "" H 3950 4000 50  0001 C CNN
F 3 "" H 3950 4000 50  0001 C CNN
	1    3950 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 5B888263
P 3450 3650
F 0 "#PWR06" H 3450 3400 50  0001 C CNN
F 1 "GND" H 3450 3500 50  0000 C CNN
F 2 "" H 3450 3650 50  0001 C CNN
F 3 "" H 3450 3650 50  0001 C CNN
	1    3450 3650
	1    0    0    -1  
$EndComp
Text GLabel 4050 4000 3    60   Input ~ 0
13
Text GLabel 4750 4000 3    60   Input ~ 0
15
Text GLabel 4850 4000 3    60   Input ~ 0
2
Text GLabel 3450 2450 0    60   Input ~ 0
RESET
$Comp
L GND #PWR07
U 1 1 5B88846E
P 6950 4850
F 0 "#PWR07" H 6950 4600 50  0001 C CNN
F 1 "GND" H 6950 4700 50  0000 C CNN
F 2 "" H 6950 4850 50  0001 C CNN
F 3 "" H 6950 4850 50  0001 C CNN
	1    6950 4850
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_CBE Q1
U 1 1 5B8887FC
P 1850 3000
F 0 "Q1" H 2050 3050 50  0000 L CNN
F 1 "Q_NPN_CBE" H 2050 2950 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 2050 3100 50  0001 C CNN
F 3 "" H 1850 3000 50  0001 C CNN
	1    1850 3000
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5B888A13
P 1500 3000
F 0 "R2" V 1580 3000 50  0000 C CNN
F 1 "R" V 1500 3000 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 1430 3000 50  0001 C CNN
F 3 "" H 1500 3000 50  0001 C CNN
	1    1500 3000
	0    1    1    0   
$EndComp
$Comp
L Q_NPN_CBE Q2
U 1 1 5B888A61
P 1850 3600
F 0 "Q2" H 2050 3650 50  0000 L CNN
F 1 "Q_NPN_CBE" H 2050 3550 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Molded_Narrow" H 2050 3700 50  0001 C CNN
F 3 "" H 1850 3600 50  0001 C CNN
	1    1850 3600
	1    0    0    1   
$EndComp
$Comp
L R R3
U 1 1 5B888B07
P 1500 3600
F 0 "R3" V 1580 3600 50  0000 C CNN
F 1 "R" V 1500 3600 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 1430 3600 50  0001 C CNN
F 3 "" H 1500 3600 50  0001 C CNN
	1    1500 3600
	0    1    1    0   
$EndComp
Text GLabel 1350 2750 0    60   Input ~ 0
RTS
Text GLabel 1350 3900 0    60   Input ~ 0
DTR
Text GLabel 1950 2650 2    60   Input ~ 0
0
Text GLabel 1950 4000 2    60   Input ~ 0
RESET
Text Notes 1300 2400 0    60   ~ 0
Auto-reset\n(if using CP2104)
$Comp
L Conn_01x07 J2
U 1 1 5B88969E
P 1550 4950
F 0 "J2" H 1550 5350 50  0000 C CNN
F 1 "prog" H 1550 4550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x07_Pitch2.54mm" H 1550 4950 50  0001 C CNN
F 3 "" H 1550 4950 50  0001 C CNN
	1    1550 4950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 5B8897D5
P 1000 4650
F 0 "#PWR08" H 1000 4400 50  0001 C CNN
F 1 "GND" H 1000 4500 50  0000 C CNN
F 2 "" H 1000 4650 50  0001 C CNN
F 3 "" H 1000 4650 50  0001 C CNN
	1    1000 4650
	1    0    0    -1  
$EndComp
Text GLabel 1350 5150 0    60   Input ~ 0
RTS
Text GLabel 1350 4850 0    60   Input ~ 0
VIN
Text GLabel 1350 5250 0    60   Input ~ 0
DTR
$Comp
L SW_Push SW1
U 1 1 5B88A03B
P 950 6900
F 0 "SW1" H 1000 7000 50  0000 L CNN
F 1 "SW_Push" H 950 6840 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 950 7100 50  0001 C CNN
F 3 "" H 950 7100 50  0001 C CNN
	1    950  6900
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR09
U 1 1 5B88A1C3
P 950 7200
F 0 "#PWR09" H 950 6950 50  0001 C CNN
F 1 "GND" H 950 7050 50  0000 C CNN
F 2 "" H 950 7200 50  0001 C CNN
F 3 "" H 950 7200 50  0001 C CNN
	1    950  7200
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5B88A2DD
P 950 6150
F 0 "R1" V 1030 6150 50  0000 C CNN
F 1 "10K" V 950 6150 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 880 6150 50  0001 C CNN
F 3 "" H 950 6150 50  0001 C CNN
	1    950  6150
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR010
U 1 1 5B88A446
P 950 6000
F 0 "#PWR010" H 950 5850 50  0001 C CNN
F 1 "+3V3" H 950 6140 50  0000 C CNN
F 2 "" H 950 6000 50  0001 C CNN
F 3 "" H 950 6000 50  0001 C CNN
	1    950  6000
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 5B88A9A8
P 1300 6900
F 0 "C3" H 1325 7000 50  0000 L CNN
F 1 "C" H 1325 6800 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 1338 6750 50  0001 C CNN
F 3 "" H 1300 6900 50  0001 C CNN
	1    1300 6900
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW2
U 1 1 5B88B2E6
P 1900 6900
F 0 "SW2" H 1950 7000 50  0000 L CNN
F 1 "SW_Push" H 1900 6840 50  0000 C CNN
F 2 "Buttons_Switches_THT:SW_PUSH_6mm" H 1900 7100 50  0001 C CNN
F 3 "" H 1900 7100 50  0001 C CNN
	1    1900 6900
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR011
U 1 1 5B88B2EC
P 1900 7200
F 0 "#PWR011" H 1900 6950 50  0001 C CNN
F 1 "GND" H 1900 7050 50  0000 C CNN
F 2 "" H 1900 7200 50  0001 C CNN
F 3 "" H 1900 7200 50  0001 C CNN
	1    1900 7200
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5B88B2F3
P 1900 6150
F 0 "R4" V 1980 6150 50  0000 C CNN
F 1 "10K" V 1900 6150 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 1830 6150 50  0001 C CNN
F 3 "" H 1900 6150 50  0001 C CNN
	1    1900 6150
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR012
U 1 1 5B88B2F9
P 1900 6000
F 0 "#PWR012" H 1900 5850 50  0001 C CNN
F 1 "+3V3" H 1900 6140 50  0000 C CNN
F 2 "" H 1900 6000 50  0001 C CNN
F 3 "" H 1900 6000 50  0001 C CNN
	1    1900 6000
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5B88B303
P 2250 6900
F 0 "C4" H 2275 7000 50  0000 L CNN
F 1 "C" H 2275 6800 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 2288 6750 50  0001 C CNN
F 3 "" H 2250 6900 50  0001 C CNN
	1    2250 6900
	1    0    0    -1  
$EndComp
Text GLabel 1900 6500 0    60   Input ~ 0
0
Text GLabel 950  6500 0    60   Input ~ 0
RESET
$Comp
L Conn_01x07 J4
U 1 1 5B88BD82
P 3750 5550
F 0 "J4" H 3750 5950 50  0000 C CNN
F 1 "sdcard" H 3750 5150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x07_Pitch2.54mm" H 3750 5550 50  0001 C CNN
F 3 "" H 3750 5550 50  0001 C CNN
	1    3750 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 5B88C019
P 3200 5750
F 0 "#PWR013" H 3200 5500 50  0001 C CNN
F 1 "GND" H 3200 5600 50  0000 C CNN
F 2 "" H 3200 5750 50  0001 C CNN
F 3 "" H 3200 5750 50  0001 C CNN
	1    3200 5750
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR014
U 1 1 5B88C19A
P 3100 5550
F 0 "#PWR014" H 3100 5400 50  0001 C CNN
F 1 "+3V3" H 3100 5690 50  0000 C CNN
F 2 "" H 3100 5550 50  0001 C CNN
F 3 "" H 3100 5550 50  0001 C CNN
	1    3100 5550
	1    0    0    -1  
$EndComp
Text Notes 3400 4950 0    60   ~ 0
SD Card
$Comp
L Conn_01x04 J5
U 1 1 5B88CA10
P 5100 5550
F 0 "J5" H 5100 5750 50  0000 C CNN
F 1 "i2c-a" H 5100 5250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 5100 5550 50  0001 C CNN
F 3 "" H 5100 5550 50  0001 C CNN
	1    5100 5550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 5B88CAD4
P 4700 5750
F 0 "#PWR015" H 4700 5500 50  0001 C CNN
F 1 "GND" H 4700 5600 50  0000 C CNN
F 2 "" H 4700 5750 50  0001 C CNN
F 3 "" H 4700 5750 50  0001 C CNN
	1    4700 5750
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR016
U 1 1 5B88CCC7
P 4450 5650
F 0 "#PWR016" H 4450 5500 50  0001 C CNN
F 1 "+3V3" H 4450 5790 50  0000 C CNN
F 2 "" H 4450 5650 50  0001 C CNN
F 3 "" H 4450 5650 50  0001 C CNN
	1    4450 5650
	1    0    0    -1  
$EndComp
Text Notes 4700 5250 0    60   ~ 0
i2c-a
$Comp
L +3V3 #PWR017
U 1 1 5B88CFF6
P 3800 6750
F 0 "#PWR017" H 3800 6600 50  0001 C CNN
F 1 "+3V3" H 3800 6890 50  0000 C CNN
F 2 "" H 3800 6750 50  0001 C CNN
F 3 "" H 3800 6750 50  0001 C CNN
	1    3800 6750
	1    0    0    -1  
$EndComp
Text Notes 3700 6450 0    60   ~ 0
i2c pullups
Text Notes 1100 4450 0    60   ~ 0
Programming
$Comp
L Conn_01x01 J7
U 1 1 5B88DC11
P 6400 3550
F 0 "J7" H 6400 3650 50  0000 C CNN
F 1 "ANT" H 6400 3450 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 6400 3550 50  0001 C CNN
F 3 "" H 6400 3550 50  0001 C CNN
	1    6400 3550
	0    -1   -1   0   
$EndComp
$Comp
L Conn_01x04 J8
U 1 1 5B88E011
P 5500 6750
F 0 "J8" H 5500 6950 50  0000 C CNN
F 1 "i2c-c" H 5500 6450 50  0000 C CNN
F 2 "TerminalBlocks_Phoenix:TerminalBlock_Phoenix_PT-3.5mm_4pol" H 5500 6750 50  0001 C CNN
F 3 "" H 5500 6750 50  0001 C CNN
	1    5500 6750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 5B88E017
P 4800 6750
F 0 "#PWR018" H 4800 6500 50  0001 C CNN
F 1 "GND" H 4800 6600 50  0000 C CNN
F 2 "" H 4800 6750 50  0001 C CNN
F 3 "" H 4800 6750 50  0001 C CNN
	1    4800 6750
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR019
U 1 1 5B88E01F
P 5300 6650
F 0 "#PWR019" H 5300 6500 50  0001 C CNN
F 1 "+3V3" H 5300 6790 50  0000 C CNN
F 2 "" H 5300 6650 50  0001 C CNN
F 3 "" H 5300 6650 50  0001 C CNN
	1    5300 6650
	1    0    0    -1  
$EndComp
Text Notes 5100 6450 0    60   ~ 0
i2c-screwterm
$Comp
L GND #PWR020
U 1 1 5B88E374
P 5850 5500
F 0 "#PWR020" H 5850 5250 50  0001 C CNN
F 1 "GND" H 5850 5350 50  0000 C CNN
F 2 "" H 5850 5500 50  0001 C CNN
F 3 "" H 5850 5500 50  0001 C CNN
	1    5850 5500
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR021
U 1 1 5B88E37C
P 6250 5300
F 0 "#PWR021" H 6250 5150 50  0001 C CNN
F 1 "+3V3" H 6250 5440 50  0000 C CNN
F 2 "" H 6250 5300 50  0001 C CNN
F 3 "" H 6250 5300 50  0001 C CNN
	1    6250 5300
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x03 J9
U 1 1 5B88E413
P 5650 5400
F 0 "J9" H 5650 5600 50  0000 C CNN
F 1 "1wire" H 5650 5200 50  0000 C CNN
F 2 "TerminalBlocks_Phoenix:TerminalBlock_Phoenix_PT-3.5mm_3pol" H 5650 5400 50  0001 C CNN
F 3 "" H 5650 5400 50  0001 C CNN
	1    5650 5400
	-1   0    0    1   
$EndComp
Text Notes 5650 5050 0    60   ~ 0
1-wire
$Comp
L Conn_01x04 J12
U 1 1 5B88ED29
P 7700 5850
F 0 "J12" H 7700 6050 50  0000 C CNN
F 1 "dht22" H 7700 5550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 7700 5850 50  0001 C CNN
F 3 "" H 7700 5850 50  0001 C CNN
	1    7700 5850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 5B88EDCA
P 7400 6050
F 0 "#PWR022" H 7400 5800 50  0001 C CNN
F 1 "GND" H 7400 5900 50  0000 C CNN
F 2 "" H 7400 6050 50  0001 C CNN
F 3 "" H 7400 6050 50  0001 C CNN
	1    7400 6050
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR023
U 1 1 5B88EF8F
P 7100 5750
F 0 "#PWR023" H 7100 5600 50  0001 C CNN
F 1 "+3V3" H 7100 5890 50  0000 C CNN
F 2 "" H 7100 5750 50  0001 C CNN
F 3 "" H 7100 5750 50  0001 C CNN
	1    7100 5750
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5B88F0C7
P 7100 5900
F 0 "R7" V 7180 5900 50  0000 C CNN
F 1 "R" V 7100 5900 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 7030 5900 50  0001 C CNN
F 3 "" H 7100 5900 50  0001 C CNN
	1    7100 5900
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR024
U 1 1 5B890347
P 6950 3550
F 0 "#PWR024" H 6950 3400 50  0001 C CNN
F 1 "+3V3" H 6950 3690 50  0000 C CNN
F 2 "" H 6950 3550 50  0001 C CNN
F 3 "" H 6950 3550 50  0001 C CNN
	1    6950 3550
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR025
U 1 1 5B891AE7
P 10500 1450
F 0 "#PWR025" H 10500 1300 50  0001 C CNN
F 1 "+3V3" H 10500 1590 50  0000 C CNN
F 2 "" H 10500 1450 50  0001 C CNN
F 3 "" H 10500 1450 50  0001 C CNN
	1    10500 1450
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x02 J3
U 1 1 5B89258D
P 3200 1100
F 0 "J3" H 3200 1200 50  0000 C CNN
F 1 "VINS" H 3200 900 50  0000 C CNN
F 2 "TerminalBlocks_Phoenix:TerminalBlock_Phoenix_PT-3.5mm_2pol" H 3200 1100 50  0001 C CNN
F 3 "" H 3200 1100 50  0001 C CNN
	1    3200 1100
	1    0    0    -1  
$EndComp
Text GLabel 3000 1100 0    60   Input ~ 0
VIN
$Comp
L GND #PWR026
U 1 1 5B89266B
P 2900 1200
F 0 "#PWR026" H 2900 950 50  0001 C CNN
F 1 "GND" H 2900 1050 50  0000 C CNN
F 2 "" H 2900 1200 50  0001 C CNN
F 3 "" H 2900 1200 50  0001 C CNN
	1    2900 1200
	1    0    0    -1  
$EndComp
Text Notes 2850 900  0    60   ~ 0
Power In
$Comp
L R R5
U 1 1 5B892D85
P 3800 6900
F 0 "R5" V 3880 6900 50  0000 C CNN
F 1 "R" V 3800 6900 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 3730 6900 50  0001 C CNN
F 3 "" H 3800 6900 50  0001 C CNN
	1    3800 6900
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5B892F21
P 4150 6900
F 0 "R6" V 4230 6900 50  0000 C CNN
F 1 "R" V 4150 6900 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 4080 6900 50  0001 C CNN
F 3 "" H 4150 6900 50  0001 C CNN
	1    4150 6900
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR027
U 1 1 5B892FAF
P 4150 6750
F 0 "#PWR027" H 4150 6600 50  0001 C CNN
F 1 "+3V3" H 4150 6890 50  0000 C CNN
F 2 "" H 4150 6750 50  0001 C CNN
F 3 "" H 4150 6750 50  0001 C CNN
	1    4150 6750
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x03 J6
U 1 1 5B895E52
P 6100 1450
F 0 "J6" H 6100 1650 50  0000 C CNN
F 1 "REG:5V" H 6100 1250 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 6100 1450 50  0001 C CNN
F 3 "" H 6100 1450 50  0001 C CNN
	1    6100 1450
	-1   0    0    1   
$EndComp
Text Notes 6050 1000 0    60   ~ 0
Regulator: VX7803 (5V)
Text GLabel 7150 1150 2    60   Input ~ 0
VIN
$Comp
L GND #PWR028
U 1 1 5B895E60
P 6900 1450
F 0 "#PWR028" H 6900 1200 50  0001 C CNN
F 1 "GND" H 6900 1300 50  0000 C CNN
F 2 "" H 6900 1450 50  0001 C CNN
F 3 "" H 6900 1450 50  0001 C CNN
	1    6900 1450
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5B895E66
P 6500 1300
F 0 "C5" H 6525 1400 50  0000 L CNN
F 1 "10 uF" H 6525 1200 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6538 1150 50  0001 C CNN
F 3 "" H 6500 1300 50  0001 C CNN
	1    6500 1300
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5B895E6C
P 6500 1600
F 0 "C6" H 6525 1700 50  0000 L CNN
F 1 "22 uF" H 6525 1500 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 6538 1450 50  0001 C CNN
F 3 "" H 6500 1600 50  0001 C CNN
	1    6500 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 5B8973E2
P 8650 1900
F 0 "#PWR029" H 8650 1650 50  0001 C CNN
F 1 "GND" H 8650 1750 50  0000 C CNN
F 2 "" H 8650 1900 50  0001 C CNN
F 3 "" H 8650 1900 50  0001 C CNN
	1    8650 1900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR030
U 1 1 5B897541
P 7150 1750
F 0 "#PWR030" H 7150 1600 50  0001 C CNN
F 1 "+5V" H 7150 1890 50  0000 C CNN
F 2 "" H 7150 1750 50  0001 C CNN
F 3 "" H 7150 1750 50  0001 C CNN
	1    7150 1750
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR031
U 1 1 5B89761E
P 8400 2200
F 0 "#PWR031" H 8400 2050 50  0001 C CNN
F 1 "+5V" H 8400 2340 50  0000 C CNN
F 2 "" H 8400 2200 50  0001 C CNN
F 3 "" H 8400 2200 50  0001 C CNN
	1    8400 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR032
U 1 1 5B897911
P 9200 2800
F 0 "#PWR032" H 9200 2550 50  0001 C CNN
F 1 "GND" H 9200 2650 50  0000 C CNN
F 2 "" H 9200 2800 50  0001 C CNN
F 3 "" H 9200 2800 50  0001 C CNN
	1    9200 2800
	1    0    0    -1  
$EndComp
Text Notes 8950 1150 0    60   ~ 0
Iridium 9602
Text GLabel 9200 2600 0    60   Input ~ 0
23/SAT_SLEEP
$Comp
L +5V #PWR033
U 1 1 5B899DD3
P 8400 1700
F 0 "#PWR033" H 8400 1550 50  0001 C CNN
F 1 "+5V" H 8400 1840 50  0000 C CNN
F 2 "" H 8400 1700 50  0001 C CNN
F 3 "" H 8400 1700 50  0001 C CNN
	1    8400 1700
	1    0    0    -1  
$EndComp
Text GLabel 9200 1800 0    60   Input ~ 0
SAT_CTS
Text GLabel 9200 2500 0    60   Input ~ 0
SAT_NETWORK_AVAIL
Text GLabel 9200 2700 0    60   Input ~ 0
SAT_LION
$Comp
L +3V3 #PWR034
U 1 1 5B89AA80
P 6550 6800
F 0 "#PWR034" H 6550 6650 50  0001 C CNN
F 1 "+3V3" H 6550 6940 50  0000 C CNN
F 2 "" H 6550 6800 50  0001 C CNN
F 3 "" H 6550 6800 50  0001 C CNN
	1    6550 6800
	1    0    0    -1  
$EndComp
Text GLabel 10900 1650 0    60   Input ~ 0
23/SAT_SLEEP
Text Notes 7200 5450 0    60   ~ 0
DHT22
Text GLabel 9200 2400 0    60   Input ~ 0
SAT_RING_INDICATOR
$Comp
L Conn_01x04 J14
U 1 1 5B8A0535
P 9850 2500
F 0 "J14" H 9850 2700 50  0000 C CNN
F 1 "satx" H 9850 2200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x04_Pitch2.54mm" H 9850 2500 50  0001 C CNN
F 3 "" H 9850 2500 50  0001 C CNN
	1    9850 2500
	1    0    0    -1  
$EndComp
Text Notes 6350 6600 0    60   ~ 0
UART
Text Notes 6850 3200 0    60   ~ 0
RFM95
Text Notes 7200 5450 0    60   ~ 0
DHT22
Text Notes 8650 3550 0    60   ~ 0
RMF95 BREAKOUTS
$Comp
L Conn_01x12 J15
U 1 1 5B90241E
P 11100 1850
F 0 "J15" H 11100 2450 50  0000 C CNN
F 1 "misc" H 11100 1150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x12_Pitch2.54mm" H 11100 1850 50  0001 C CNN
F 3 "" H 11100 1850 50  0001 C CNN
	1    11100 1850
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x05 J11
U 1 1 5B902931
P 6750 7000
F 0 "J11" H 6750 7300 50  0000 C CNN
F 1 "uart" H 6750 6700 50  0000 C CNN
F 2 "TerminalBlocks_Phoenix:TerminalBlock_Phoenix_PT-3.5mm_5pol" H 6750 7000 50  0001 C CNN
F 3 "" H 6750 7000 50  0001 C CNN
	1    6750 7000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 5B902A1C
P 6550 7200
F 0 "#PWR035" H 6550 6950 50  0001 C CNN
F 1 "GND" H 6550 7050 50  0000 C CNN
F 2 "" H 6550 7200 50  0001 C CNN
F 3 "" H 6550 7200 50  0001 C CNN
	1    6550 7200
	1    0    0    -1  
$EndComp
Text GLabel 6550 6900 0    60   Input ~ 0
VIN
$Comp
L Conn_01x08 J19
U 1 1 5B90464D
P 9400 2400
F 0 "J19" H 9400 2800 50  0000 C CNN
F 1 "9602-b" H 9400 1900 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 9400 2400 50  0001 C CNN
F 3 "" H 9400 2400 50  0001 C CNN
	1    9400 2400
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x06 J13
U 1 1 5B9046D0
P 9400 1600
F 0 "J13" H 9400 1900 50  0000 C CNN
F 1 "9602-a" H 9400 1200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 9400 1600 50  0001 C CNN
F 3 "" H 9400 1600 50  0001 C CNN
	1    9400 1600
	1    0    0    -1  
$EndComp
Text GLabel 6400 3950 0    60   Input ~ 0
26
Text GLabel 6400 4050 0    60   Input ~ 0
33
Text GLabel 6400 4150 0    60   Input ~ 0
32
Text GLabel 6400 4250 0    60   Input ~ 0
25
Text GLabel 6400 4450 0    60   Input ~ 0
27
Text GLabel 5300 2400 2    60   Input ~ 0
TX0
Text GLabel 5300 2300 2    60   Input ~ 0
22
Text GLabel 5300 2600 2    60   Input ~ 0
21
Text GLabel 3450 3550 0    60   Input ~ 0
12/SDA
Text GLabel 3450 3450 0    60   Input ~ 0
14/SCL
Text GLabel 3450 3350 0    60   Input ~ 0
27
Text GLabel 3450 3250 0    60   Input ~ 0
26
Text GLabel 3450 3150 0    60   Input ~ 0
25
Text GLabel 3450 3050 0    60   Input ~ 0
33
Text GLabel 3450 2950 0    60   Input ~ 0
32
Text GLabel 3450 2850 0    60   Input ~ 0
35
Text GLabel 3450 2750 0    60   Input ~ 0
34
$Comp
L R R8
U 1 1 5B916E8E
P 6250 5450
F 0 "R8" V 6330 5450 50  0000 C CNN
F 1 "R" V 6250 5450 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P1.90mm_Vertical" V 6180 5450 50  0001 C CNN
F 3 "" H 6250 5450 50  0001 C CNN
	1    6250 5450
	1    0    0    -1  
$EndComp
Text GLabel 7500 4400 2    60   Input ~ 0
DIO5
$Comp
L Conn_01x06 J10
U 1 1 5B91954E
P 8800 4100
F 0 "J10" H 8800 4400 50  0000 C CNN
F 1 "LBD" H 8800 3700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 8800 4100 50  0001 C CNN
F 3 "" H 8800 4100 50  0001 C CNN
	1    8800 4100
	1    0    0    -1  
$EndComp
Text GLabel 7500 4300 2    60   Input ~ 0
DIO4
Text GLabel 7500 4200 2    60   Input ~ 0
DIO3
Text GLabel 7500 4100 2    60   Input ~ 0
DIO2
Text GLabel 7500 4000 2    60   Input ~ 0
DIO1
Text GLabel 7500 3900 2    60   Input ~ 0
DIO0
Text GLabel 8600 3900 0    60   Input ~ 0
DIO2
Text GLabel 8600 4000 0    60   Input ~ 0
DIO1
Text GLabel 8600 4100 0    60   Input ~ 0
DIO0
$Comp
L +3V3 #PWR036
U 1 1 5B91A050
P 8100 4200
F 0 "#PWR036" H 8100 4050 50  0001 C CNN
F 1 "+3V3" H 8100 4340 50  0000 C CNN
F 2 "" H 8100 4200 50  0001 C CNN
F 3 "" H 8100 4200 50  0001 C CNN
	1    8100 4200
	1    0    0    -1  
$EndComp
Text GLabel 8600 4300 0    60   Input ~ 0
DIO4
Text GLabel 8600 4400 0    60   Input ~ 0
DIO3
$Comp
L Conn_02x03_Odd_Even J16
U 1 1 5B91ABB9
P 9500 4250
F 0 "J16" H 9550 4450 50  0000 C CNN
F 1 "LBO" H 9550 4050 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 9500 4250 50  0001 C CNN
F 3 "" H 9500 4250 50  0001 C CNN
	1    9500 4250
	0    -1   -1   0   
$EndComp
Text GLabel 9400 3950 1    60   Input ~ 0
32
Text GLabel 9500 3950 1    60   Input ~ 0
25
Text GLabel 9600 3950 1    60   Input ~ 0
27
Text GLabel 9400 4450 3    60   Input ~ 0
33
Text GLabel 9500 4450 3    60   Input ~ 0
26
Text GLabel 9600 4450 3    60   Input ~ 0
DIO5
Text GLabel 9200 1500 0    60   Input ~ 0
34
Text GLabel 9200 1600 0    60   Input ~ 0
13
Text GLabel 4900 5550 0    60   Input ~ 0
14/SCL
Text GLabel 4900 5450 0    60   Input ~ 0
12/SDA
Text GLabel 5300 6850 0    60   Input ~ 0
12/SDA
Text GLabel 5300 6950 0    60   Input ~ 0
14/SCL
Text GLabel 3800 7250 3    60   Input ~ 0
12/SDA
Text GLabel 4150 7250 3    60   Input ~ 0
14/SCL
Text GLabel 3550 5850 0    60   Input ~ 0
17
Text GLabel 3550 5650 0    60   Input ~ 0
16
Text GLabel 3550 5350 0    60   Input ~ 0
4
Text GLabel 3550 5250 0    60   Input ~ 0
15
Text GLabel 10900 1350 0    60   Input ~ 0
35
Text GLabel 10900 2350 0    60   Input ~ 0
VIN
Text GLabel 6900 6050 0    60   Input ~ 0
18
$Comp
L GND #PWR037
U 1 1 5B891B40
P 10600 1550
F 0 "#PWR037" H 10600 1300 50  0001 C CNN
F 1 "GND" H 10600 1400 50  0000 C CNN
F 2 "" H 10600 1550 50  0001 C CNN
F 3 "" H 10600 1550 50  0001 C CNN
	1    10600 1550
	1    0    0    -1  
$EndComp
Text GLabel 1350 5050 0    60   Input ~ 0
TX0
Text GLabel 1350 4950 0    60   Input ~ 0
RX0
Wire Wire Line
	5850 5400 6000 5400
Wire Wire Line
	5300 6750 4800 6750
Wire Wire Line
	8100 4200 8600 4200
Wire Wire Line
	4150 7050 4150 7250
Wire Wire Line
	3800 7050 3800 7250
Wire Wire Line
	3000 1200 2900 1200
Connection ~ 8650 1900
Wire Wire Line
	9200 2700 9650 2700
Wire Wire Line
	9200 2600 9650 2600
Wire Wire Line
	9200 2500 9650 2500
Wire Wire Line
	9200 2400 9650 2400
Wire Wire Line
	6050 7000 6550 7000
Wire Wire Line
	8400 1700 9200 1700
Wire Wire Line
	9200 2200 8400 2200
Connection ~ 8750 1900
Wire Wire Line
	8750 2100 8750 1900
Wire Wire Line
	9200 2100 8750 2100
Wire Wire Line
	8650 1900 9200 1900
Connection ~ 6500 1750
Connection ~ 6500 1150
Wire Wire Line
	6300 1750 7150 1750
Wire Wire Line
	6300 1550 6300 1750
Wire Wire Line
	6300 1150 7150 1150
Wire Wire Line
	6300 1350 6300 1150
Wire Wire Line
	6300 1450 6900 1450
Wire Wire Line
	10500 1450 10900 1450
Connection ~ 7100 6050
Wire Wire Line
	7250 6050 6900 6050
Wire Wire Line
	7250 5850 7250 6050
Wire Wire Line
	7500 5850 7250 5850
Wire Wire Line
	7100 5750 7500 5750
Wire Wire Line
	7500 6050 7400 6050
Wire Wire Line
	4450 5650 4900 5650
Wire Wire Line
	4700 5750 4900 5750
Wire Wire Line
	3200 5750 3550 5750
Wire Wire Line
	3200 5450 3200 5750
Wire Wire Line
	3550 5450 3200 5450
Wire Wire Line
	3100 5550 3550 5550
Wire Wire Line
	2250 7050 2250 7200
Wire Wire Line
	1900 7200 1900 7100
Wire Wire Line
	2250 7200 1900 7200
Connection ~ 1900 6500
Wire Wire Line
	2250 6500 2250 6750
Wire Wire Line
	1900 6500 2250 6500
Wire Wire Line
	1900 6300 1900 6700
Wire Wire Line
	1300 7050 1300 7200
Wire Wire Line
	950  7200 950  7100
Wire Wire Line
	1300 7200 950  7200
Connection ~ 950  6500
Wire Wire Line
	1300 6500 1300 6750
Wire Wire Line
	950  6500 1300 6500
Wire Wire Line
	950  6300 950  6700
Wire Wire Line
	1350 4650 1000 4650
Connection ~ 1350 3600
Wire Wire Line
	1950 3800 1950 4000
Wire Wire Line
	1950 2800 1950 2650
Wire Wire Line
	1350 3350 1350 3900
Wire Wire Line
	1500 3200 1350 3350
Wire Wire Line
	1950 3200 1500 3200
Wire Wire Line
	1500 3350 1950 3350
Wire Wire Line
	1350 3200 1500 3350
Wire Wire Line
	1350 2750 1350 3200
Connection ~ 1350 3000
Wire Wire Line
	1950 3350 1950 3400
Wire Wire Line
	6950 4750 6950 4850
Connection ~ 6950 4850
Wire Wire Line
	7050 4850 7050 4750
Wire Wire Line
	6850 4850 7050 4850
Wire Wire Line
	6850 4750 6850 4850
Connection ~ 5400 3600
Wire Wire Line
	5300 3600 5400 3600
Wire Wire Line
	5400 3500 5400 3700
Wire Wire Line
	5300 3500 5400 3500
Connection ~ 1400 1650
Connection ~ 1400 1050
Wire Wire Line
	1200 1650 2050 1650
Wire Wire Line
	1200 1450 1200 1650
Wire Wire Line
	1200 1050 2050 1050
Wire Wire Line
	1200 1250 1200 1050
Wire Wire Line
	1200 1350 1800 1350
Wire Wire Line
	6000 5400 6000 5600
Wire Wire Line
	6000 5600 6450 5600
Wire Wire Line
	6250 5300 5850 5300
Connection ~ 6250 5600
Connection ~ 6500 1450
Connection ~ 1400 1350
Connection ~ 2950 -750
Wire Wire Line
	10900 1550 10600 1550
$EndSCHEMATC
