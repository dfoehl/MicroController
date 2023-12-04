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
L MCU_Microchip_PIC18:PIC18F26K83-xSP U2
U 1 1 61A6B805
P 5675 3675
F 0 "U2" H 5675 4956 50  0000 C CNN
F 1 "PIC18F26K83-xSP" H 5675 4865 50  0000 C CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 5675 3775 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/40001943A.pdf" H 5875 3575 50  0001 C CNN
	1    5675 3675
	1    0    0    -1  
$EndComp
$Comp
L Interface_CAN_LIN:MCP2561-E-P U1
U 1 1 61A6D5AC
P 4050 5175
F 0 "U1" H 4050 5756 50  0000 C CNN
F 1 "MCP2561-E-P" H 4050 5665 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 4050 4675 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/25167A.pdf" H 4050 5175 50  0001 C CNN
	1    4050 5175
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x05 J1
U 1 1 61A6F40C
P 1100 3900
F 0 "J1" H 1018 4317 50  0000 C CNN
F 1 "Screw_Terminal_01x05" H 1018 4226 50  0000 C CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00235_1x05_P5.08mm_Horizontal" H 1100 3900 50  0001 C CNN
F 3 "~" H 1100 3900 50  0001 C CNN
	1    1100 3900
	-1   0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 61A723E9
P 3100 5175
F 0 "C1" V 3352 5175 50  0000 C CNN
F 1 "4700pF" V 3261 5175 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D11.0mm_W5.0mm_P5.00mm" H 3138 5025 50  0001 C CNN
F 3 "~" H 3100 5175 50  0001 C CNN
	1    3100 5175
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 61A733F7
P 3250 5325
F 0 "R1" H 3320 5371 50  0000 L CNN
F 1 "60" H 3320 5280 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3180 5325 50  0001 C CNN
F 3 "~" H 3250 5325 50  0001 C CNN
	1    3250 5325
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 61A74645
P 3250 5025
F 0 "R2" H 3320 5071 50  0000 L CNN
F 1 "60" H 3320 4980 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3180 5025 50  0001 C CNN
F 3 "~" H 3250 5025 50  0001 C CNN
	1    3250 5025
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 61A74BD3
P 3400 5175
F 0 "R3" V 3607 5175 50  0000 C CNN
F 1 "300" V 3516 5175 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3330 5175 50  0001 C CNN
F 3 "~" H 3400 5175 50  0001 C CNN
	1    3400 5175
	0    -1   -1   0   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open CANADR7
U 1 1 61A74EC6
P 4925 4375
F 0 "CANADR7" H 4925 4580 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 4925 4489 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4925 4375 50  0001 C CNN
F 3 "~" H 4925 4375 50  0001 C CNN
	1    4925 4375
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open CANADR6
U 1 1 61A762A0
P 4925 4275
F 0 "CANADR6" H 4925 4480 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 4925 4389 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4925 4275 50  0001 C CNN
F 3 "~" H 4925 4275 50  0001 C CNN
	1    4925 4275
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open CANADR5
U 1 1 61A7656A
P 4925 4175
F 0 "CANADR5" H 4925 4380 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 4925 4289 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4925 4175 50  0001 C CNN
F 3 "~" H 4925 4175 50  0001 C CNN
	1    4925 4175
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open CANADR4
U 1 1 61A76710
P 4925 4075
F 0 "CANADR4" H 4925 4280 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 4925 4189 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4925 4075 50  0001 C CNN
F 3 "~" H 4925 4075 50  0001 C CNN
	1    4925 4075
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open CANADR3
U 1 1 61A7684A
P 4925 3975
F 0 "CANADR3" H 4925 4180 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 4925 4089 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4925 3975 50  0001 C CNN
F 3 "~" H 4925 3975 50  0001 C CNN
	1    4925 3975
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open CANADR2
U 1 1 61A76B09
P 4925 3875
F 0 "CANADR2" H 4925 4080 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 4925 3989 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4925 3875 50  0001 C CNN
F 3 "~" H 4925 3875 50  0001 C CNN
	1    4925 3875
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open CANADR0
U 1 1 61A76DDF
P 4925 3675
F 0 "CANADR0" H 4925 3880 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 4925 3789 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4925 3675 50  0001 C CNN
F 3 "~" H 4925 3675 50  0001 C CNN
	1    4925 3675
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open CANADR1
U 1 1 61A76CE8
P 4925 3775
F 0 "CANADR1" H 4925 3980 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 4925 3889 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 4925 3775 50  0001 C CNN
F 3 "~" H 4925 3775 50  0001 C CNN
	1    4925 3775
	1    0    0    -1  
$EndComp
Wire Wire Line
	4775 4375 4775 4275
Wire Wire Line
	4775 4175 4775 4075
Connection ~ 4775 3775
Wire Wire Line
	4775 3775 4775 3675
Connection ~ 4775 3875
Wire Wire Line
	4775 3875 4775 3775
Connection ~ 4775 3975
Wire Wire Line
	4775 3975 4775 3875
Connection ~ 4775 4075
Wire Wire Line
	4775 4075 4775 3975
Wire Wire Line
	4775 4275 4775 4175
Connection ~ 4775 4275
Connection ~ 4775 4175
$Comp
L power:GND #PWR03
U 1 1 61A78486
P 4775 4375
F 0 "#PWR03" H 4775 4125 50  0001 C CNN
F 1 "GND" H 4780 4202 50  0000 C CNN
F 2 "" H 4775 4375 50  0001 C CNN
F 3 "" H 4775 4375 50  0001 C CNN
	1    4775 4375
	1    0    0    -1  
$EndComp
Connection ~ 4775 4375
NoConn ~ 5075 2975
Connection ~ 3250 5175
$Comp
L power:GND #PWR02
U 1 1 61A803F3
P 2950 5175
F 0 "#PWR02" H 2950 4925 50  0001 C CNN
F 1 "GND" H 2955 5002 50  0000 C CNN
F 2 "" H 2950 5175 50  0001 C CNN
F 3 "" H 2950 5175 50  0001 C CNN
	1    2950 5175
	1    0    0    -1  
$EndComp
Wire Wire Line
	5675 4775 5675 4800
Wire Wire Line
	5675 5575 4550 5575
Wire Wire Line
	3550 5275 3550 5475
Wire Wire Line
	3550 5475 3250 5475
Wire Wire Line
	3250 5475 1675 5475
Wire Wire Line
	1675 5475 1675 4100
Wire Wire Line
	1675 4100 1300 4100
Connection ~ 3250 5475
Wire Wire Line
	1300 4000 1750 4000
Wire Wire Line
	1750 4000 1750 4875
Wire Wire Line
	1750 4875 3250 4875
Wire Wire Line
	3550 4875 3250 4875
Wire Wire Line
	3550 4875 3550 5075
Connection ~ 3250 4875
Wire Wire Line
	1300 3800 2800 3800
Wire Wire Line
	4050 3800 4050 4775
Wire Wire Line
	5675 2575 4050 2575
Wire Wire Line
	4050 2575 4050 3800
Connection ~ 4050 3800
$Comp
L power:+5V #PWR01
U 1 1 61A84218
P 2800 3800
F 0 "#PWR01" H 2800 3650 50  0001 C CNN
F 1 "+5V" H 2815 3973 50  0000 C CNN
F 2 "" H 2800 3800 50  0001 C CNN
F 3 "" H 2800 3800 50  0001 C CNN
	1    2800 3800
	1    0    0    -1  
$EndComp
Connection ~ 2800 3800
Wire Wire Line
	2800 3800 4050 3800
Wire Wire Line
	1300 3900 4150 3900
Wire Wire Line
	4150 3900 4150 4800
Wire Wire Line
	4150 4800 5675 4800
Connection ~ 5675 4800
Wire Wire Line
	5675 4800 5675 5575
$Comp
L power:GND #PWR04
U 1 1 61A85CB7
P 5675 5575
F 0 "#PWR04" H 5675 5325 50  0001 C CNN
F 1 "GND" H 5680 5402 50  0000 C CNN
F 2 "" H 5675 5575 50  0001 C CNN
F 3 "" H 5675 5575 50  0001 C CNN
	1    5675 5575
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 Line1
U 1 1 61A87592
P 8625 2775
F 0 "Line1" H 8705 2817 50  0000 L CNN
F 1 "Conn_01x01" H 8705 2726 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 8625 2775 50  0001 C CNN
F 3 "~" H 8625 2775 50  0001 C CNN
	1    8625 2775
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 Line2
U 1 1 61A88D87
P 8625 2925
F 0 "Line2" H 8705 2967 50  0000 L CNN
F 1 "Conn_01x01" H 8705 2876 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 8625 2925 50  0001 C CNN
F 3 "~" H 8625 2925 50  0001 C CNN
	1    8625 2925
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 Line3
U 1 1 61A89310
P 8625 3075
F 0 "Line3" H 8705 3117 50  0000 L CNN
F 1 "Conn_01x01" H 8705 3026 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 8625 3075 50  0001 C CNN
F 3 "~" H 8625 3075 50  0001 C CNN
	1    8625 3075
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 Line4
U 1 1 61A897F2
P 8625 3225
F 0 "Line4" H 8705 3267 50  0000 L CNN
F 1 "Conn_01x01" H 8705 3176 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 8625 3225 50  0001 C CNN
F 3 "~" H 8625 3225 50  0001 C CNN
	1    8625 3225
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 Line5
U 1 1 61A89CDA
P 8625 3375
F 0 "Line5" H 8705 3417 50  0000 L CNN
F 1 "Conn_01x01" H 8705 3326 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 8625 3375 50  0001 C CNN
F 3 "~" H 8625 3375 50  0001 C CNN
	1    8625 3375
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 Col1
U 1 1 61A8A50D
P 8625 3975
F 0 "Col1" H 8705 4017 50  0000 L CNN
F 1 "Conn_01x01" H 8705 3926 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 8625 3975 50  0001 C CNN
F 3 "~" H 8625 3975 50  0001 C CNN
	1    8625 3975
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 Col2
U 1 1 61A8AC02
P 8625 4125
F 0 "Col2" H 8705 4167 50  0000 L CNN
F 1 "Conn_01x01" H 8705 4076 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 8625 4125 50  0001 C CNN
F 3 "~" H 8625 4125 50  0001 C CNN
	1    8625 4125
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 Col3
U 1 1 61A8B0E0
P 8625 4275
F 0 "Col3" H 8705 4317 50  0000 L CNN
F 1 "Conn_01x01" H 8705 4226 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 8625 4275 50  0001 C CNN
F 3 "~" H 8625 4275 50  0001 C CNN
	1    8625 4275
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 Col4
U 1 1 61A8B54B
P 8625 4425
F 0 "Col4" H 8705 4467 50  0000 L CNN
F 1 "Conn_01x01" H 8705 4376 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 8625 4425 50  0001 C CNN
F 3 "~" H 8625 4425 50  0001 C CNN
	1    8625 4425
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 Col5
U 1 1 61A8BA05
P 8625 4575
F 0 "Col5" H 8705 4617 50  0000 L CNN
F 1 "Conn_01x01" H 8705 4526 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_SMD_5x10mm" H 8625 4575 50  0001 C CNN
F 3 "~" H 8625 4575 50  0001 C CNN
	1    8625 4575
	1    0    0    -1  
$EndComp
Wire Wire Line
	8425 2925 8250 2925
Wire Wire Line
	8250 2925 8250 2875
Wire Wire Line
	8250 2875 6650 2875
Wire Wire Line
	8175 2975 8175 3075
Wire Wire Line
	8175 3075 8425 3075
Wire Wire Line
	8425 3225 8075 3225
Wire Wire Line
	8075 3225 8075 3075
Wire Wire Line
	6275 3175 7975 3175
Wire Wire Line
	7975 3175 7975 3375
Wire Wire Line
	7975 3375 8425 3375
Wire Wire Line
	4550 5075 6700 5075
Wire Wire Line
	6700 5075 6700 3475
Wire Wire Line
	6700 3475 6275 3475
Wire Wire Line
	4550 4975 6800 4975
Wire Wire Line
	6800 4975 6800 3375
Wire Wire Line
	6800 3375 6275 3375
Wire Wire Line
	7975 3675 7975 3975
Wire Wire Line
	7975 3975 8425 3975
Wire Wire Line
	8425 4125 7850 4125
Wire Wire Line
	7850 4125 7850 3775
Wire Wire Line
	7850 3775 6275 3775
Wire Wire Line
	6275 3875 7750 3875
Wire Wire Line
	7750 3875 7750 4275
Wire Wire Line
	7750 4275 8425 4275
Wire Wire Line
	8425 4425 7650 4425
Wire Wire Line
	7650 4425 7650 3975
Wire Wire Line
	7650 3975 6275 3975
Wire Wire Line
	6275 4075 7550 4075
Wire Wire Line
	7550 4075 7550 4575
Wire Wire Line
	7550 4575 8425 4575
$Comp
L Switch:SW_Push SW1
U 1 1 61A9AC86
P 6925 850
F 0 "SW1" H 6925 1135 50  0000 C CNN
F 1 "SW_Push" H 6925 1044 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_Plate" H 6925 1050 50  0001 C CNN
F 3 "~" H 6925 1050 50  0001 C CNN
	1    6925 850 
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW4
U 1 1 61A9C76E
P 6925 1200
F 0 "SW4" H 6925 1485 50  0000 C CNN
F 1 "SW_Push" H 6925 1394 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_Plate" H 6925 1400 50  0001 C CNN
F 3 "~" H 6925 1400 50  0001 C CNN
	1    6925 1200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW7
U 1 1 61A9DAD1
P 6925 1575
F 0 "SW7" H 6925 1860 50  0000 C CNN
F 1 "SW_Push" H 6925 1769 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_Plate" H 6925 1775 50  0001 C CNN
F 3 "~" H 6925 1775 50  0001 C CNN
	1    6925 1575
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW8
U 1 1 61A9F3C7
P 7850 1575
F 0 "SW8" H 7850 1860 50  0000 C CNN
F 1 "SW_Push" H 7850 1769 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_Plate" H 7850 1775 50  0001 C CNN
F 3 "~" H 7850 1775 50  0001 C CNN
	1    7850 1575
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW5
U 1 1 61AA050A
P 7850 1200
F 0 "SW5" H 7850 1485 50  0000 C CNN
F 1 "SW_Push" H 7850 1394 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_Plate" H 7850 1400 50  0001 C CNN
F 3 "~" H 7850 1400 50  0001 C CNN
	1    7850 1200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 61AA1896
P 7850 850
F 0 "SW2" H 7850 1135 50  0000 C CNN
F 1 "SW_Push" H 7850 1044 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_Plate" H 7850 1050 50  0001 C CNN
F 3 "~" H 7850 1050 50  0001 C CNN
	1    7850 850 
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW0
U 1 1 61AA2D6D
P 7850 1975
F 0 "SW0" H 7850 2260 50  0000 C CNN
F 1 "SW_Push" H 7850 2169 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_Plate" H 7850 2175 50  0001 C CNN
F 3 "~" H 7850 2175 50  0001 C CNN
	1    7850 1975
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW9
U 1 1 61AA42D7
P 8775 1575
F 0 "SW9" H 8775 1860 50  0000 C CNN
F 1 "SW_Push" H 8775 1769 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_Plate" H 8775 1775 50  0001 C CNN
F 3 "~" H 8775 1775 50  0001 C CNN
	1    8775 1575
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW6
U 1 1 61AA5735
P 8775 1200
F 0 "SW6" H 8775 1485 50  0000 C CNN
F 1 "SW_Push" H 8775 1394 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_Plate" H 8775 1400 50  0001 C CNN
F 3 "~" H 8775 1400 50  0001 C CNN
	1    8775 1200
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 61AA6A14
P 8775 850
F 0 "SW3" H 8775 1135 50  0000 C CNN
F 1 "SW_Push" H 8775 1044 50  0000 C CNN
F 2 "Button_Switch_Keyboard:SW_Cherry_MX_1.00u_Plate" H 8775 1050 50  0001 C CNN
F 3 "~" H 8775 1050 50  0001 C CNN
	1    8775 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8575 1650 8575 1575
Wire Wire Line
	8575 1200 8575 1250
Wire Wire Line
	7650 1250 7650 1200
Wire Wire Line
	6725 1250 6725 1200
Wire Wire Line
	6725 850  6725 900 
Wire Wire Line
	7650 900  7650 850 
Wire Wire Line
	8575 900  8575 850 
Wire Wire Line
	7650 1975 7650 3075
Wire Wire Line
	6725 2975 8175 2975
Wire Wire Line
	6650 2875 6650 1250
Wire Wire Line
	6650 1250 6725 1250
Connection ~ 6650 2875
Wire Wire Line
	6650 2875 6275 2875
Wire Wire Line
	6725 900  6575 900 
Wire Wire Line
	6575 900  6575 2775
Wire Wire Line
	6575 2775 8425 2775
Wire Wire Line
	7850 2475 7850 3775
Connection ~ 7850 3775
Wire Wire Line
	9400 2425 9400 3875
Wire Wire Line
	9400 3875 7750 3875
Connection ~ 7750 3875
$Comp
L Mechanical:MountingHole H2
U 1 1 61AD0C44
P 8150 5150
F 0 "H2" H 8250 5196 50  0000 L CNN
F 1 "MountingHole" H 8250 5105 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad" H 8150 5150 50  0001 C CNN
F 3 "~" H 8150 5150 50  0001 C CNN
	1    8150 5150
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 61AD38EE
P 8150 5350
F 0 "H3" H 8250 5396 50  0000 L CNN
F 1 "MountingHole" H 8250 5305 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad" H 8150 5350 50  0001 C CNN
F 3 "~" H 8150 5350 50  0001 C CNN
	1    8150 5350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 61AD68A1
P 8150 5550
F 0 "H4" H 8250 5596 50  0000 L CNN
F 1 "MountingHole" H 8250 5505 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.5mm_Pad" H 8150 5550 50  0001 C CNN
F 3 "~" H 8150 5550 50  0001 C CNN
	1    8150 5550
	1    0    0    -1  
$EndComp
NoConn ~ 6275 4275
NoConn ~ 6275 4175
NoConn ~ 6275 3275
NoConn ~ 1300 3700
Connection ~ 5675 5575
NoConn ~ 6275 4375
Wire Wire Line
	4550 5375 4550 5575
Connection ~ 4550 5575
Wire Wire Line
	4550 5575 4050 5575
Wire Wire Line
	6575 2775 6575 2975
Wire Wire Line
	6575 2975 6275 2975
Connection ~ 6575 2775
Wire Wire Line
	6725 2975 6725 3025
Wire Wire Line
	6725 3025 6425 3025
Wire Wire Line
	6425 3025 6425 2775
Wire Wire Line
	6425 2775 6275 2775
Connection ~ 6725 2975
$Comp
L Diode:1N5402 D3
U 1 1 61C260ED
P 7275 1575
F 0 "D3" H 7275 1791 50  0000 C CNN
F 1 "1N5402" H 7275 1700 50  0000 C CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 7275 1400 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88516/1n5400.pdf" H 7275 1575 50  0001 C CNN
	1    7275 1575
	1    0    0    -1  
$EndComp
Wire Wire Line
	6275 3675 7425 3675
$Comp
L Diode:1N5402 D1
U 1 1 61C50A2C
P 7275 850
F 0 "D1" H 7275 1066 50  0000 C CNN
F 1 "1N5402" H 7275 975 50  0000 C CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 7275 675 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88516/1n5400.pdf" H 7275 850 50  0001 C CNN
	1    7275 850 
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5402 D7
U 1 1 61C5ACA9
P 8200 1975
F 0 "D7" H 8200 2191 50  0000 C CNN
F 1 "1N5402" H 8200 2100 50  0000 C CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 8200 1800 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88516/1n5400.pdf" H 8200 1975 50  0001 C CNN
	1    8200 1975
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5402 D6
U 1 1 61C5D910
P 8200 1575
F 0 "D6" H 8200 1791 50  0000 C CNN
F 1 "1N5402" H 8200 1700 50  0000 C CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 8200 1400 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88516/1n5400.pdf" H 8200 1575 50  0001 C CNN
	1    8200 1575
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5402 D5
U 1 1 61C607CD
P 8200 1200
F 0 "D5" H 8200 1416 50  0000 C CNN
F 1 "1N5402" H 8200 1325 50  0000 C CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 8200 1025 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88516/1n5400.pdf" H 8200 1200 50  0001 C CNN
	1    8200 1200
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5402 D4
U 1 1 61C6355D
P 8200 850
F 0 "D4" H 8200 1066 50  0000 C CNN
F 1 "1N5402" H 8200 975 50  0000 C CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 8200 675 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88516/1n5400.pdf" H 8200 850 50  0001 C CNN
	1    8200 850 
	1    0    0    -1  
$EndComp
Connection ~ 7650 3075
Wire Wire Line
	7650 3075 8075 3075
Wire Wire Line
	6275 3075 7650 3075
Wire Wire Line
	6725 1575 6725 1650
$Comp
L Diode:1N5402 D2
U 1 1 61C4DF49
P 7275 1200
F 0 "D2" H 7275 1416 50  0000 C CNN
F 1 "1N5402" H 7275 1325 50  0000 C CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 7275 1025 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88516/1n5400.pdf" H 7275 1200 50  0001 C CNN
	1    7275 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1650 6725 1650
Connection ~ 6725 1650
Wire Wire Line
	6725 1650 6725 2975
Wire Wire Line
	7650 1250 6725 1250
Connection ~ 6725 1250
Wire Wire Line
	7650 900  6725 900 
Connection ~ 6725 900 
Wire Wire Line
	8350 850  8350 1200
Connection ~ 8350 1200
Wire Wire Line
	8350 1200 8350 1575
Connection ~ 8350 1575
Wire Wire Line
	8350 1575 8350 1975
Wire Wire Line
	8350 1975 8350 2475
Wire Wire Line
	8350 2475 7850 2475
Connection ~ 8350 1975
Wire Wire Line
	7425 1575 7425 3675
Connection ~ 7425 3675
Wire Wire Line
	7425 3675 7975 3675
Wire Wire Line
	7425 1575 7425 1200
Connection ~ 7425 1575
Connection ~ 7425 1200
Wire Wire Line
	7425 1200 7425 850 
$Comp
L Diode:1N5402 D8
U 1 1 61C8924B
P 9125 850
F 0 "D8" H 9125 1066 50  0000 C CNN
F 1 "1N5402" H 9125 975 50  0000 C CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 9125 675 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88516/1n5400.pdf" H 9125 850 50  0001 C CNN
	1    9125 850 
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5402 D9
U 1 1 61C8C336
P 9125 1200
F 0 "D9" H 9125 1416 50  0000 C CNN
F 1 "1N5402" H 9125 1325 50  0000 C CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 9125 1025 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88516/1n5400.pdf" H 9125 1200 50  0001 C CNN
	1    9125 1200
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N5402 D10
U 1 1 61C8F41F
P 9125 1575
F 0 "D10" H 9125 1791 50  0000 C CNN
F 1 "1N5402" H 9125 1700 50  0000 C CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 9125 1400 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88516/1n5400.pdf" H 9125 1575 50  0001 C CNN
	1    9125 1575
	1    0    0    -1  
$EndComp
Wire Wire Line
	8575 900  7650 900 
Connection ~ 7650 900 
Wire Wire Line
	7650 1250 8575 1250
Connection ~ 7650 1250
Wire Wire Line
	8575 1650 7650 1650
Connection ~ 7650 1650
Connection ~ 7650 1625
Wire Wire Line
	7650 1625 7650 1650
Wire Wire Line
	9275 850  9275 1200
Wire Wire Line
	7650 1575 7650 1650
Wire Wire Line
	9275 2425 9400 2425
Connection ~ 9275 1200
Wire Wire Line
	9275 1200 9275 1575
Connection ~ 9275 1575
Wire Wire Line
	9275 1575 9275 2425
$EndSCHEMATC
