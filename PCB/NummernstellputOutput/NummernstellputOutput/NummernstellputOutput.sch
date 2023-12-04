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
L power:+5V #PWR0101
U 1 1 61AB3FB9
P 4425 4475
F 0 "#PWR0101" H 4425 4325 50  0001 C CNN
F 1 "+5V" H 4440 4648 50  0000 C CNN
F 2 "" H 4425 4475 50  0001 C CNN
F 3 "" H 4425 4475 50  0001 C CNN
	1    4425 4475
	1    0    0    -1  
$EndComp
NoConn ~ 3825 4875
$Comp
L Connector:Screw_Terminal_01x05 J1
U 1 1 61AB6A4D
P 1650 6300
F 0 "J1" H 1568 6717 50  0000 C CNN
F 1 "Screw_Terminal_01x05" H 1568 6626 50  0000 C CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00235_1x05_P5.08mm_Horizontal" H 1650 6300 50  0001 C CNN
F 3 "~" H 1650 6300 50  0001 C CNN
	1    1650 6300
	-1   0    0    -1  
$EndComp
$Comp
L Interface_CAN_LIN:MCP2561-E-P U7
U 1 1 61ABD912
P 3175 7050
F 0 "U7" H 3175 7631 50  0000 C CNN
F 1 "MCP2561-E-P" H 3175 7540 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 3175 6550 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25167A.pdf" H 3175 7050 50  0001 C CNN
	1    3175 7050
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 61AC9AC3
P 2525 7050
F 0 "R3" V 2318 7050 50  0000 C CNN
F 1 "300" V 2409 7050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2455 7050 50  0001 C CNN
F 3 "~" H 2525 7050 50  0001 C CNN
	1    2525 7050
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 61ACAA86
P 2375 6900
F 0 "R2" H 2445 6946 50  0000 L CNN
F 1 "60" H 2445 6855 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2305 6900 50  0001 C CNN
F 3 "~" H 2375 6900 50  0001 C CNN
	1    2375 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 61ACB225
P 2375 7200
F 0 "R1" H 2445 7246 50  0000 L CNN
F 1 "60" H 2445 7155 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 2305 7200 50  0001 C CNN
F 3 "~" H 2375 7200 50  0001 C CNN
	1    2375 7200
	1    0    0    -1  
$EndComp
Connection ~ 2375 7050
$Comp
L Device:C C1
U 1 1 61ACBC92
P 2225 7050
F 0 "C1" V 1973 7050 50  0000 C CNN
F 1 "4700pF" V 2064 7050 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D11.0mm_W5.0mm_P5.00mm" H 2263 6900 50  0001 C CNN
F 3 "~" H 2225 7050 50  0001 C CNN
	1    2225 7050
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 61ACFF2F
P 5175 6275
F 0 "R11" V 4968 6275 50  0000 C CNN
F 1 "100" V 5059 6275 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5105 6275 50  0001 C CNN
F 3 "~" H 5175 6275 50  0001 C CNN
	1    5175 6275
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 61AD12D3
P 5175 6175
F 0 "R10" V 4968 6175 50  0000 C CNN
F 1 "100" V 5059 6175 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5105 6175 50  0001 C CNN
F 3 "~" H 5175 6175 50  0001 C CNN
	1    5175 6175
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 61AD2F57
P 5175 6075
F 0 "R9" V 4968 6075 50  0000 C CNN
F 1 "100" V 5059 6075 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5105 6075 50  0001 C CNN
F 3 "~" H 5175 6075 50  0001 C CNN
	1    5175 6075
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 61AD2F5D
P 5175 5975
F 0 "R8" V 4968 5975 50  0000 C CNN
F 1 "100" V 5059 5975 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5105 5975 50  0001 C CNN
F 3 "~" H 5175 5975 50  0001 C CNN
	1    5175 5975
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 61AD4D25
P 5175 5875
F 0 "R7" V 4968 5875 50  0000 C CNN
F 1 "100" V 5059 5875 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5105 5875 50  0001 C CNN
F 3 "~" H 5175 5875 50  0001 C CNN
	1    5175 5875
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 61AD4D2B
P 5175 5775
F 0 "R6" V 4968 5775 50  0000 C CNN
F 1 "100" V 5059 5775 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5105 5775 50  0001 C CNN
F 3 "~" H 5175 5775 50  0001 C CNN
	1    5175 5775
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 61AD689B
P 5175 5675
F 0 "R5" V 4968 5675 50  0000 C CNN
F 1 "100" V 5059 5675 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5105 5675 50  0001 C CNN
F 3 "~" H 5175 5675 50  0001 C CNN
	1    5175 5675
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 61AD68A1
P 5175 5575
F 0 "R4" V 4968 5575 50  0000 C CNN
F 1 "100" V 5059 5575 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5105 5575 50  0001 C CNN
F 3 "~" H 5175 5575 50  0001 C CNN
	1    5175 5575
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 61AB306C
P 4425 6675
F 0 "#PWR0102" H 4425 6425 50  0001 C CNN
F 1 "GND" H 4430 6502 50  0000 C CNN
F 2 "" H 4425 6675 50  0001 C CNN
F 3 "" H 4425 6675 50  0001 C CNN
	1    4425 6675
	1    0    0    -1  
$EndComp
$Comp
L MCU_Microchip_PIC18:PIC18F26K83-xSP U8
U 1 1 61AAE431
P 4425 5575
F 0 "U8" H 4425 6856 50  0000 C CNN
F 1 "PIC18F26K83-xSP" H 4425 6765 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 4425 5675 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/40001943A.pdf" H 4625 5475 50  0001 C CNN
	1    4425 5575
	1    0    0    -1  
$EndComp
Wire Wire Line
	2375 6750 2675 6750
Wire Wire Line
	2675 6750 2675 6950
Wire Wire Line
	2675 7150 2675 7350
Wire Wire Line
	2675 7350 2375 7350
$Comp
L power:GND #PWR0103
U 1 1 61AFC702
P 2075 7050
F 0 "#PWR0103" H 2075 6800 50  0001 C CNN
F 1 "GND" H 2080 6877 50  0000 C CNN
F 2 "" H 2075 7050 50  0001 C CNN
F 3 "" H 2075 7050 50  0001 C CNN
	1    2075 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3175 7450 3675 7450
Wire Wire Line
	4075 7450 4075 6675
Wire Wire Line
	4075 6675 4425 6675
Connection ~ 4425 6675
Wire Wire Line
	3175 6650 3175 6200
Wire Wire Line
	3175 4475 4425 4475
Connection ~ 4425 4475
$Comp
L Jumper:SolderJumper_2_Open CANADR6
U 1 1 61B05625
P 3675 6175
F 0 "CANADR6" H 3675 6380 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 3675 6289 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 3675 6175 50  0001 C CNN
F 3 "~" H 3675 6175 50  0001 C CNN
	1    3675 6175
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open CANADR5
U 1 1 61B07F76
P 3675 6075
F 0 "CANADR5" H 3675 6280 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 3675 6189 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 3675 6075 50  0001 C CNN
F 3 "~" H 3675 6075 50  0001 C CNN
	1    3675 6075
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open CANADR4
U 1 1 61B0A96C
P 3675 5975
F 0 "CANADR4" H 3675 6180 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 3675 6089 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 3675 5975 50  0001 C CNN
F 3 "~" H 3675 5975 50  0001 C CNN
	1    3675 5975
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open CANADR3
U 1 1 61B0D17A
P 3675 5875
F 0 "CANADR3" H 3675 6080 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 3675 5989 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 3675 5875 50  0001 C CNN
F 3 "~" H 3675 5875 50  0001 C CNN
	1    3675 5875
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open CANADR2
U 1 1 61B0FAAC
P 3675 5775
F 0 "CANADR2" H 3675 5980 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 3675 5889 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 3675 5775 50  0001 C CNN
F 3 "~" H 3675 5775 50  0001 C CNN
	1    3675 5775
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open CANADR1
U 1 1 61B123BB
P 3675 5675
F 0 "CANADR1" H 3675 5880 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 3675 5789 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 3675 5675 50  0001 C CNN
F 3 "~" H 3675 5675 50  0001 C CNN
	1    3675 5675
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open CANADR0
U 1 1 61B14D27
P 3675 5575
F 0 "CANADR0" H 3675 5780 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 3675 5689 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 3675 5575 50  0001 C CNN
F 3 "~" H 3675 5575 50  0001 C CNN
	1    3675 5575
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open CANADR7
U 1 1 61B044CB
P 3675 6275
F 0 "CANADR7" H 3675 6480 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 3675 6389 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 3675 6275 50  0001 C CNN
F 3 "~" H 3675 6275 50  0001 C CNN
	1    3675 6275
	1    0    0    -1  
$EndComp
Wire Wire Line
	3525 6275 3525 6175
Wire Wire Line
	3525 6175 3525 6075
Connection ~ 3525 6175
Wire Wire Line
	3525 6075 3525 5975
Connection ~ 3525 6075
Wire Wire Line
	3525 5975 3525 5875
Connection ~ 3525 5975
Wire Wire Line
	3525 5875 3525 5775
Connection ~ 3525 5875
Wire Wire Line
	3525 5675 3525 5775
Connection ~ 3525 5775
Wire Wire Line
	3525 5675 3525 5575
Connection ~ 3525 5675
$Comp
L power:GND #PWR0104
U 1 1 61B43822
P 3525 6275
F 0 "#PWR0104" H 3525 6025 50  0001 C CNN
F 1 "GND" H 3530 6102 50  0000 C CNN
F 2 "" H 3525 6275 50  0001 C CNN
F 3 "" H 3525 6275 50  0001 C CNN
	1    3525 6275
	1    0    0    -1  
$EndComp
Connection ~ 3525 6275
Wire Wire Line
	3675 7250 3675 7450
Connection ~ 3675 7450
Wire Wire Line
	3675 7450 4075 7450
Wire Wire Line
	1850 6500 1850 7350
Wire Wire Line
	1850 7350 2375 7350
Connection ~ 2375 7350
Wire Wire Line
	2375 6750 2375 6400
Wire Wire Line
	2375 6400 1850 6400
Connection ~ 2375 6750
Wire Wire Line
	1850 6200 3175 6200
Connection ~ 3175 6200
Wire Wire Line
	3175 6200 3175 4475
$Comp
L power:GND #PWR0105
U 1 1 61B67746
P 2500 6300
F 0 "#PWR0105" H 2500 6050 50  0001 C CNN
F 1 "GND" H 2505 6127 50  0000 C CNN
F 2 "" H 2500 6300 50  0001 C CNN
F 3 "" H 2500 6300 50  0001 C CNN
	1    2500 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 6300 2500 6300
Wire Wire Line
	5025 5275 5775 5275
Wire Wire Line
	5775 5275 5775 6850
Wire Wire Line
	5775 6850 3675 6850
Wire Wire Line
	3675 6950 5675 6950
Wire Wire Line
	5675 6950 5675 5375
Wire Wire Line
	5675 5375 5025 5375
$Comp
L Mechanical:MountingHole H1
U 1 1 61B86A61
P 3000 3325
F 0 "H1" H 3100 3371 50  0000 L CNN
F 1 "MountingHole" H 3100 3280 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad" H 3000 3325 50  0001 C CNN
F 3 "~" H 3000 3325 50  0001 C CNN
	1    3000 3325
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 61B87B82
P 3025 3550
F 0 "H2" H 3125 3596 50  0000 L CNN
F 1 "MountingHole" H 3125 3505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad" H 3025 3550 50  0001 C CNN
F 3 "~" H 3025 3550 50  0001 C CNN
	1    3025 3550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 61B8C09D
P 3775 3325
F 0 "H3" H 3875 3371 50  0000 L CNN
F 1 "MountingHole" H 3875 3280 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad" H 3775 3325 50  0001 C CNN
F 3 "~" H 3775 3325 50  0001 C CNN
	1    3775 3325
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 61B8C0A3
P 3800 3550
F 0 "H4" H 3900 3596 50  0000 L CNN
F 1 "MountingHole" H 3900 3505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad" H 3800 3550 50  0001 C CNN
F 3 "~" H 3800 3550 50  0001 C CNN
	1    3800 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 DP1
U 1 1 61BC8A9A
P 5525 6275
F 0 "DP1" H 5605 6317 50  0000 L CNN
F 1 "Conn_01x01" H 5605 6226 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 5525 6275 50  0001 C CNN
F 3 "~" H 5525 6275 50  0001 C CNN
	1    5525 6275
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 G1
U 1 1 61BCA50F
P 5525 6175
F 0 "G1" H 5605 6217 50  0000 L CNN
F 1 "Conn_01x01" H 5605 6126 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 5525 6175 50  0001 C CNN
F 3 "~" H 5525 6175 50  0001 C CNN
	1    5525 6175
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 F1
U 1 1 61BCB1CA
P 5525 6075
F 0 "F1" H 5605 6117 50  0000 L CNN
F 1 "Conn_01x01" H 5605 6026 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 5525 6075 50  0001 C CNN
F 3 "~" H 5525 6075 50  0001 C CNN
	1    5525 6075
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 E1
U 1 1 61BCB1D0
P 5525 5975
F 0 "E1" H 5605 6017 50  0000 L CNN
F 1 "Conn_01x01" H 5605 5926 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 5525 5975 50  0001 C CNN
F 3 "~" H 5525 5975 50  0001 C CNN
	1    5525 5975
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 D1
U 1 1 61BCBA55
P 5525 5875
F 0 "D1" H 5605 5917 50  0000 L CNN
F 1 "Conn_01x01" H 5605 5826 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 5525 5875 50  0001 C CNN
F 3 "~" H 5525 5875 50  0001 C CNN
	1    5525 5875
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 C2
U 1 1 61BCBA5B
P 5525 5775
F 0 "C2" H 5605 5817 50  0000 L CNN
F 1 "Conn_01x01" H 5605 5726 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 5525 5775 50  0001 C CNN
F 3 "~" H 5525 5775 50  0001 C CNN
	1    5525 5775
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 B1
U 1 1 61BCC39E
P 5525 5675
F 0 "B1" H 5605 5717 50  0000 L CNN
F 1 "Conn_01x01" H 5605 5626 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 5525 5675 50  0001 C CNN
F 3 "~" H 5525 5675 50  0001 C CNN
	1    5525 5675
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 A1
U 1 1 61BCC3A4
P 5525 5575
F 0 "A1" H 5605 5617 50  0000 L CNN
F 1 "Conn_01x01" H 5605 5526 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 5525 5575 50  0001 C CNN
F 3 "~" H 5525 5575 50  0001 C CNN
	1    5525 5575
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 CA6
U 1 1 61BCD197
P 5225 5175
F 0 "CA6" H 5305 5217 50  0000 L CNN
F 1 "Conn_01x01" H 5305 5126 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 5225 5175 50  0001 C CNN
F 3 "~" H 5225 5175 50  0001 C CNN
	1    5225 5175
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 CA5
U 1 1 61BCD19D
P 5225 5075
F 0 "CA5" H 5305 5117 50  0000 L CNN
F 1 "Conn_01x01" H 5305 5026 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 5225 5075 50  0001 C CNN
F 3 "~" H 5225 5075 50  0001 C CNN
	1    5225 5075
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 CA4
U 1 1 61BCDB68
P 5225 4975
F 0 "CA4" H 5305 5017 50  0000 L CNN
F 1 "Conn_01x01" H 5305 4926 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 5225 4975 50  0001 C CNN
F 3 "~" H 5225 4975 50  0001 C CNN
	1    5225 4975
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 CA3
U 1 1 61BCDB6E
P 5225 4875
F 0 "CA3" H 5305 4917 50  0000 L CNN
F 1 "Conn_01x01" H 5305 4826 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 5225 4875 50  0001 C CNN
F 3 "~" H 5225 4875 50  0001 C CNN
	1    5225 4875
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 CA2
U 1 1 61BCE3E5
P 5225 4775
F 0 "CA2" H 5305 4817 50  0000 L CNN
F 1 "Conn_01x01" H 5305 4726 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 5225 4775 50  0001 C CNN
F 3 "~" H 5225 4775 50  0001 C CNN
	1    5225 4775
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 CA1
U 1 1 61BCE3EB
P 5225 4675
F 0 "CA1" H 5305 4717 50  0000 L CNN
F 1 "Conn_01x01" H 5305 4626 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 5225 4675 50  0001 C CNN
F 3 "~" H 5225 4675 50  0001 C CNN
	1    5225 4675
	1    0    0    -1  
$EndComp
$EndSCHEMATC
