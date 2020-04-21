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
L Connector_Generic:Conn_01x02 J1+1
U 1 1 5E9CF419
P 1200 3325
F 0 "J1+1" H 1288 3239 50  0000 L CNN
F 1 "Power" H 1288 3148 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1200 3325 50  0001 C CNN
F 3 "~" H 1200 3325 50  0001 C CNN
	1    1200 3325
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J2-1
U 1 1 5E9CEA36
P 6900 4600
F 0 "J2-1" H 6988 4514 50  0000 L CNN
F 1 "I2C" H 6988 4423 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 6900 4600 50  0001 C CNN
F 3 "~" H 6900 4600 50  0001 C CNN
	1    6900 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 2950 9400 5000
Wire Wire Line
	9400 5000 6700 5000
Wire Wire Line
	6700 5000 6700 4700
Wire Wire Line
	6700 4600 6700 4500
Wire Wire Line
	6700 4500 9250 4500
Wire Wire Line
	9250 4500 9250 3050
$Comp
L MCU_Microchip_PIC16:PIC16F1503-IP U1
U 1 1 5E9CC6F4
P 5650 3250
F 0 "U1" H 5650 4031 50  0000 C CNN
F 1 "PIC16F1503-IP" H 5650 3940 50  0000 C CNN
F 2 "Package_DIP:DIP-14_W7.62mm" H 5650 3250 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/41607A.pdf" H 5650 3250 50  0001 C CNN
	1    5650 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 2650 1000 2650
Wire Wire Line
	1000 2650 1000 3325
Wire Wire Line
	1000 3425 1000 4775
Wire Wire Line
	1000 4775 2000 4775
Wire Wire Line
	5675 4775 5675 3850
Wire Wire Line
	5675 3850 5650 3850
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 5E9DA132
P 3500 3150
F 0 "JP1" H 3500 3355 50  0000 C CNN
F 1 "I2C Bit 1" H 3500 3264 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 3500 3150 50  0001 C CNN
F 3 "~" H 3500 3150 50  0001 C CNN
	1    3500 3150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x02_Odd_Even J3
U 1 1 5E9D6676
P 8625 3850
F 0 "J3" H 8675 4067 50  0000 C CNN
F 1 "Signal" H 8675 3976 50  0000 C CNN
F 2 "Connector_PinHeader_2.00mm:PinHeader_2x02_P2.00mm_Horizontal" H 8625 3850 50  0001 C CNN
F 3 "~" H 8625 3850 50  0001 C CNN
	1    8625 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8425 3150 8425 3850
Wire Wire Line
	8925 3250 8925 3850
Wire Wire Line
	8350 3350 8350 3950
Wire Wire Line
	8350 3950 8425 3950
Wire Wire Line
	8925 3950 8925 4250
Wire Wire Line
	8925 4250 8275 4250
Wire Wire Line
	8275 4250 8275 3450
$Comp
L Jumper:SolderJumper_2_Open JP3
U 1 1 5E9E4C17
P 3500 2950
F 0 "JP3" H 3500 3155 50  0000 C CNN
F 1 "I2C Bit 3" H 3500 3064 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 3500 2950 50  0001 C CNN
F 3 "~" H 3500 2950 50  0001 C CNN
	1    3500 2950
	1    0    0    -1  
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP2
U 1 1 5E9E5401
P 3500 3050
F 0 "JP2" H 3500 3255 50  0000 C CNN
F 1 "I2C Bit 2" H 3500 3164 50  0000 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 3500 3050 50  0001 C CNN
F 3 "~" H 3500 3050 50  0001 C CNN
	1    3500 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 2950 3350 3050
Wire Wire Line
	3350 3150 3350 3050
Connection ~ 3350 3050
Wire Wire Line
	3350 3050 2000 3050
Wire Wire Line
	2000 3050 2000 4775
Connection ~ 2000 4775
Wire Wire Line
	2000 4775 3650 4775
$Comp
L Relay_SolidState:MOC3041M U2
U 1 1 5E9E0436
P 3350 4350
F 0 "U2" H 3350 4675 50  0000 C CNN
F 1 "MOC3041M" H 3350 4584 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 3150 4150 50  0001 L CIN
F 3 "http://www.fairchildsemi.com/ds/MO/MOC3031M.pdf" H 3350 4350 50  0001 L CNN
	1    3350 4350
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5E9E3F70
P 3650 3825
F 0 "R5" H 3720 3871 50  0000 L CNN
F 1 "150" H 3720 3780 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P7.62mm_Horizontal" V 3580 3825 50  0001 C CNN
F 3 "~" H 3650 3825 50  0001 C CNN
	1    3650 3825
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3450 3650 3675
Wire Wire Line
	3650 3975 3650 4250
Wire Wire Line
	3650 4450 3650 4775
Connection ~ 3650 4775
Wire Wire Line
	3650 4775 5675 4775
Wire Wire Line
	2825 4300 3050 4300
Wire Wire Line
	3050 4300 3050 4250
Wire Wire Line
	3050 4450 3050 4400
Wire Wire Line
	3050 4400 2825 4400
Wire Wire Line
	7800 3450 7650 3450
Wire Wire Line
	7650 3350 7800 3350
Wire Wire Line
	7800 3250 7650 3250
Wire Wire Line
	7800 3150 7650 3150
Wire Wire Line
	9250 3050 7650 3050
Wire Wire Line
	7650 2950 9400 2950
Wire Wire Line
	8275 3450 8100 3450
Wire Wire Line
	8100 3350 8350 3350
Wire Wire Line
	8100 3250 8925 3250
Wire Wire Line
	8100 3150 8425 3150
$Comp
L Device:R R1
U 1 1 5E9DBC01
P 7950 3150
F 0 "R1" V 7743 3150 50  0000 C CNN
F 1 "330" V 7834 3150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7880 3150 50  0001 C CNN
F 3 "~" H 7950 3150 50  0001 C CNN
	1    7950 3150
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5E9DFB37
P 7950 3250
F 0 "R2" V 7743 3250 50  0000 C CNN
F 1 "330" V 7834 3250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7880 3250 50  0001 C CNN
F 3 "~" H 7950 3250 50  0001 C CNN
	1    7950 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5E9E00F2
P 7950 3350
F 0 "R3" V 7743 3350 50  0000 C CNN
F 1 "330" V 7834 3350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7880 3350 50  0001 C CNN
F 3 "~" H 7950 3350 50  0001 C CNN
	1    7950 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5E9E02F8
P 7950 3450
F 0 "R4" V 8065 3450 50  0000 C CNN
F 1 "330" V 8156 3450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7880 3450 50  0001 C CNN
F 3 "~" H 7950 3450 50  0001 C CNN
	1    7950 3450
	0    1    1    0   
$EndComp
NoConn ~ 3650 3350
NoConn ~ 3650 3250
$Comp
L Connector_Generic:Conn_01x02 J1-1
U 1 1 5E9F61D9
P 800 3325
F 0 "J1-1" H 888 3239 50  0000 L CNN
F 1 "Power" H 888 3148 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 800 3325 50  0001 C CNN
F 3 "~" H 800 3325 50  0001 C CNN
	1    800  3325
	-1   0    0    -1  
$EndComp
Connection ~ 1000 3325
Connection ~ 1000 3425
$Comp
L Connector_Generic:Conn_01x02 J2+1
U 1 1 5E9F79F3
P 6500 4600
F 0 "J2+1" H 6588 4514 50  0000 L CNN
F 1 "I2C" H 6588 4423 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6500 4600 50  0001 C CNN
F 3 "~" H 6500 4600 50  0001 C CNN
	1    6500 4600
	-1   0    0    -1  
$EndComp
Connection ~ 6700 4600
Connection ~ 6700 4700
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5E9FA994
P 2625 4400
F 0 "J4" H 2713 4314 50  0000 L CNN
F 1 "Track" H 2713 4223 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Horizontal" H 2625 4400 50  0001 C CNN
F 3 "~" H 2625 4400 50  0001 C CNN
	1    2625 4400
	-1   0    0    1   
$EndComp
$EndSCHEMATC
