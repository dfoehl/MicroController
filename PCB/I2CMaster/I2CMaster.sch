EESchema Schematic File Version 4
EELAYER 30 0
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
L Connector_Generic:Conn_01x02 I2C1
U 1 1 5EA0D921
P 3325 3450
F 0 "I2C1" H 3243 3667 50  0000 C CNN
F 1 "I2C" H 3243 3576 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x01_P2.54mm_Horizontal" H 3325 3450 50  0001 C CNN
F 3 "~" H 3325 3450 50  0001 C CNN
	1    3325 3450
	-1   0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 Power1
U 1 1 5EA0DEC9
P 3325 3850
F 0 "Power1" H 3243 4067 50  0000 C CNN
F 1 "Power" H 3243 3976 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x01_P2.54mm_Horizontal" H 3325 3850 50  0001 C CNN
F 3 "~" H 3325 3850 50  0001 C CNN
	1    3325 3850
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x05 CAN-BUS1
U 1 1 5EA0E466
P 3325 4425
F 0 "CAN-BUS1" H 3243 4842 50  0000 C CNN
F 1 "CANBUS" H 3243 4751 50  0000 C CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00235_1x05_P5.08mm_Horizontal" H 3325 4425 50  0001 C CNN
F 3 "~" H 3325 4425 50  0001 C CNN
	1    3325 4425
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5EA1E3F4
P 4150 5700
F 0 "R1" H 4220 5746 50  0000 L CNN
F 1 "60" H 4220 5655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4080 5700 50  0001 C CNN
F 3 "~" H 4150 5700 50  0001 C CNN
	1    4150 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5EA1FA4A
P 4150 5400
F 0 "R2" H 4220 5446 50  0000 L CNN
F 1 "60" H 4220 5355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4080 5400 50  0001 C CNN
F 3 "~" H 4150 5400 50  0001 C CNN
	1    4150 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4525 5450 4525 5250
Wire Wire Line
	4525 5250 4150 5250
Wire Wire Line
	4525 5650 4525 5850
Wire Wire Line
	4525 5850 4150 5850
Wire Wire Line
	4150 5250 4150 4625
Wire Wire Line
	4150 4625 3525 4625
Connection ~ 4150 5250
Wire Wire Line
	3525 4525 3700 4525
Wire Wire Line
	3700 4525 3700 5850
Wire Wire Line
	3700 5850 4150 5850
Connection ~ 4150 5850
Wire Wire Line
	5025 4425 4700 4425
Wire Wire Line
	3525 4325 4325 4325
Wire Wire Line
	5725 6025 5025 6025
Wire Wire Line
	5025 6025 5025 5950
Wire Wire Line
	5950 5450 5950 5150
Wire Wire Line
	5950 5150 5025 5150
Connection ~ 5725 4325
Wire Wire Line
	3525 3850 4325 3850
Wire Wire Line
	4325 3850 4325 4325
Connection ~ 4325 4325
Wire Wire Line
	4325 4325 4700 4325
Wire Wire Line
	3525 3950 5025 3950
Wire Wire Line
	5025 3950 5025 4425
Connection ~ 5025 4425
Wire Wire Line
	5475 3550 3525 3550
Wire Wire Line
	8775 2450 5300 2450
Wire Wire Line
	5300 2450 5300 3450
Wire Wire Line
	5300 3450 3525 3450
$Comp
L MCU_Microchip_PIC18:PIC18F26K83-xSP U1
U 1 1 5ED5820B
P 7275 4225
F 0 "U1" H 7275 5506 50  0000 C CNN
F 1 "PIC18F26K83-xSP" H 7275 5415 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 7275 4325 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/40001943A.pdf" H 7475 4125 50  0001 C CNN
	1    7275 4225
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open CANADR0
U 1 1 5ED5AFEF
P 6525 4225
F 0 "CANADR0" H 6525 4430 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 6525 4339 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6525 4225 50  0001 C CNN
F 3 "~" H 6525 4225 50  0001 C CNN
	1    6525 4225
	1    0    0    -1  
$EndComp
Wire Wire Line
	7875 4625 8775 4625
Wire Wire Line
	8775 4625 8775 2450
Wire Wire Line
	7875 4525 8675 4525
Wire Wire Line
	8675 4525 8675 2575
Wire Wire Line
	8675 2575 5475 2575
Wire Wire Line
	5475 2575 5475 3550
Wire Wire Line
	7275 3125 7275 2825
Wire Wire Line
	7275 2825 5725 2825
Wire Wire Line
	7275 5325 7275 5450
Wire Wire Line
	7275 5450 5950 5450
Wire Wire Line
	7875 3525 8575 3525
Wire Wire Line
	8575 3525 8575 5750
Wire Wire Line
	8575 5750 5525 5750
Wire Wire Line
	5525 5650 8475 5650
Wire Wire Line
	8475 5650 8475 3625
Wire Wire Line
	8475 3625 7875 3625
$Comp
L Jumper:SolderJumper_2_Open CANADR1
U 1 1 5ED69806
P 6525 4325
F 0 "CANADR1" H 6525 4530 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 6525 4439 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6525 4325 50  0001 C CNN
F 3 "~" H 6525 4325 50  0001 C CNN
	1    6525 4325
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open CANADR2
U 1 1 5ED6A1B3
P 6525 4425
F 0 "CANADR2" H 6525 4630 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 6525 4539 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6525 4425 50  0001 C CNN
F 3 "~" H 6525 4425 50  0001 C CNN
	1    6525 4425
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open CANADR3
U 1 1 5ED6ACE5
P 6525 4525
F 0 "CANADR3" H 6525 4730 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 6525 4639 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6525 4525 50  0001 C CNN
F 3 "~" H 6525 4525 50  0001 C CNN
	1    6525 4525
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open CANADR4
U 1 1 5ED6B89F
P 6525 4625
F 0 "CANADR4" H 6525 4830 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 6525 4739 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6525 4625 50  0001 C CNN
F 3 "~" H 6525 4625 50  0001 C CNN
	1    6525 4625
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open CANADR5
U 1 1 5ED6C41E
P 6525 4725
F 0 "CANADR5" H 6525 4930 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 6525 4839 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6525 4725 50  0001 C CNN
F 3 "~" H 6525 4725 50  0001 C CNN
	1    6525 4725
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open CANADR6
U 1 1 5ED6D0C5
P 6525 4825
F 0 "CANADR6" H 6525 5030 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 6525 4939 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6525 4825 50  0001 C CNN
F 3 "~" H 6525 4825 50  0001 C CNN
	1    6525 4825
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open CANADR7
U 1 1 5ED6DCB7
P 6525 4925
F 0 "CANADR7" H 6525 5130 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 6525 5039 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6525 4925 50  0001 C CNN
F 3 "~" H 6525 4925 50  0001 C CNN
	1    6525 4925
	1    0    0    -1  
$EndComp
NoConn ~ 6675 3525
NoConn ~ 7875 3325
NoConn ~ 7875 4925
NoConn ~ 7875 4725
NoConn ~ 7875 4425
NoConn ~ 7875 4325
NoConn ~ 7875 4225
NoConn ~ 7875 4025
NoConn ~ 7875 3725
NoConn ~ 7875 4825
NoConn ~ 7875 3825
NoConn ~ 7875 3425
NoConn ~ 3525 4225
Wire Wire Line
	5525 5350 5825 5350
Wire Wire Line
	5825 5350 5825 5550
Wire Wire Line
	5825 5550 8375 5550
Wire Wire Line
	8375 5550 8375 3925
Wire Wire Line
	8375 3925 7875 3925
$Comp
L Mechanical:MountingHole H1
U 1 1 5ED97DDA
P 3400 2500
F 0 "H1" H 3500 2546 50  0000 L CNN
F 1 "MountingHole" H 3500 2455 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad" H 3400 2500 50  0001 C CNN
F 3 "~" H 3400 2500 50  0001 C CNN
	1    3400 2500
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 5ED98CAE
P 3400 2775
F 0 "H2" H 3500 2821 50  0000 L CNN
F 1 "MountingHole" H 3500 2730 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad" H 3400 2775 50  0001 C CNN
F 3 "~" H 3400 2775 50  0001 C CNN
	1    3400 2775
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 5ED94C5B
P 3700 2550
F 0 "H3" H 3800 2596 50  0000 L CNN
F 1 "MountingHole" H 3800 2505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad" H 3700 2550 50  0001 C CNN
F 3 "~" H 3700 2550 50  0001 C CNN
	1    3700 2550
	1    0    0    -1  
$EndComp
Connection ~ 5025 5150
Wire Wire Line
	5025 5150 5025 4425
$Comp
L Interface_CAN_LIN:MCP2561-E-P U2
U 1 1 5EA0B856
P 5025 5550
F 0 "U2" H 5025 4969 50  0000 C CNN
F 1 "MCP2561-E-P" H 5025 5060 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 5025 5050 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25167A.pdf" H 5025 5550 50  0001 C CNN
	1    5025 5550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5EDA38F4
P 4375 5550
F 0 "R3" H 4445 5596 50  0000 L CNN
F 1 "300" H 4445 5505 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4305 5550 50  0001 C CNN
F 3 "~" H 4375 5550 50  0001 C CNN
	1    4375 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	4225 5550 4150 5550
Connection ~ 4150 5550
$Comp
L Device:C C1
U 1 1 5EDA8037
P 4000 5550
F 0 "C1" V 3748 5550 50  0000 C CNN
F 1 "4700pF" V 3839 5550 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D11.0mm_W5.0mm_P5.00mm" H 4038 5400 50  0001 C CNN
F 3 "~" H 4000 5550 50  0001 C CNN
	1    4000 5550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5EDA8FBB
P 4700 4425
F 0 "#PWR01" H 4700 4175 50  0001 C CNN
F 1 "GND" H 4705 4252 50  0000 C CNN
F 2 "" H 4700 4425 50  0001 C CNN
F 3 "" H 4700 4425 50  0001 C CNN
	1    4700 4425
	1    0    0    -1  
$EndComp
Connection ~ 4700 4425
Wire Wire Line
	3525 4425 4700 4425
$Comp
L power:GND #PWR0101
U 1 1 5EDB1C07
P 3850 5550
F 0 "#PWR0101" H 3850 5300 50  0001 C CNN
F 1 "GND" H 3855 5377 50  0000 C CNN
F 2 "" H 3850 5550 50  0001 C CNN
F 3 "" H 3850 5550 50  0001 C CNN
	1    3850 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5725 2825 5725 4325
Wire Wire Line
	5725 4325 5725 6025
Wire Wire Line
	6375 4225 6375 4325
Wire Wire Line
	6375 4325 6375 4425
Connection ~ 6375 4325
Wire Wire Line
	6375 4425 6375 4525
Connection ~ 6375 4425
Wire Wire Line
	6375 4525 6375 4625
Connection ~ 6375 4525
Wire Wire Line
	6375 4625 6375 4725
Connection ~ 6375 4625
Wire Wire Line
	6375 4725 6375 4825
Connection ~ 6375 4725
Wire Wire Line
	6375 4825 6375 4925
Connection ~ 6375 4825
$Comp
L power:GND #PWR0102
U 1 1 5EDBDAC0
P 6375 4925
F 0 "#PWR0102" H 6375 4675 50  0001 C CNN
F 1 "GND" H 6380 4752 50  0000 C CNN
F 2 "" H 6375 4925 50  0001 C CNN
F 3 "" H 6375 4925 50  0001 C CNN
	1    6375 4925
	1    0    0    -1  
$EndComp
Connection ~ 6375 4925
$Comp
L power:+5V #PWR?
U 1 1 5EDCC146
P 4700 4325
F 0 "#PWR?" H 4700 4175 50  0001 C CNN
F 1 "+5V" H 4715 4498 50  0000 C CNN
F 2 "" H 4700 4325 50  0001 C CNN
F 3 "" H 4700 4325 50  0001 C CNN
	1    4700 4325
	1    0    0    -1  
$EndComp
Connection ~ 4700 4325
Wire Wire Line
	4700 4325 5725 4325
$EndSCHEMATC
