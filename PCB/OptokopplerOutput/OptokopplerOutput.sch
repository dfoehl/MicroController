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
	5650 2650 4025 2650
Wire Wire Line
	1000 2650 1000 3325
Wire Wire Line
	1000 3425 1000 4775
Wire Wire Line
	1000 4775 2000 4775
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
	9250 3050 7650 3050
Wire Wire Line
	7650 2950 9400 2950
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
L power:GND #PWR?
U 1 1 5ED5824C
P 3925 4775
F 0 "#PWR?" H 3925 4525 50  0001 C CNN
F 1 "GND" H 3930 4602 50  0000 C CNN
F 2 "" H 3925 4775 50  0001 C CNN
F 3 "" H 3925 4775 50  0001 C CNN
	1    3925 4775
	1    0    0    -1  
$EndComp
Connection ~ 3925 4775
Wire Wire Line
	3925 4775 5675 4775
$Comp
L power:+5V #PWR?
U 1 1 5ED588EC
P 4025 2650
F 0 "#PWR?" H 4025 2500 50  0001 C CNN
F 1 "+5V" H 4040 2823 50  0000 C CNN
F 2 "" H 4025 2650 50  0001 C CNN
F 3 "" H 4025 2650 50  0001 C CNN
	1    4025 2650
	1    0    0    -1  
$EndComp
Connection ~ 4025 2650
Wire Wire Line
	4025 2650 1000 2650
Wire Wire Line
	2000 4775 3925 4775
$Comp
L Isolator:LTV-844 U?
U 1 1 5F77410B
P 8700 3250
F 0 "U?" H 8700 3575 50  0000 C CNN
F 1 "LTV-844" H 8700 3484 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 8500 3050 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS-70-96-0013/S_110_LTV-814%20824%20844%20(M,%20S,%20S-TA,%20S-TA1,%20S-TP)%20Series.pdf" H 8725 3250 50  0001 L CNN
	1    8700 3250
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-844 U?
U 2 1 5F778B7E
P 8700 3550
F 0 "U?" H 8700 3875 50  0000 C CNN
F 1 "LTV-844" H 8700 3784 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 8500 3350 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS-70-96-0013/S_110_LTV-814%20824%20844%20(M,%20S,%20S-TA,%20S-TA1,%20S-TP)%20Series.pdf" H 8725 3550 50  0001 L CNN
	2    8700 3550
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-844 U?
U 3 1 5F77A5E0
P 8700 3850
F 0 "U?" H 8700 4175 50  0000 C CNN
F 1 "LTV-844" H 8700 4084 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 8500 3650 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS-70-96-0013/S_110_LTV-814%20824%20844%20(M,%20S,%20S-TA,%20S-TA1,%20S-TP)%20Series.pdf" H 8725 3850 50  0001 L CNN
	3    8700 3850
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-844 U?
U 4 1 5F77C1D9
P 8700 4150
F 0 "U?" H 8700 4475 50  0000 C CNN
F 1 "LTV-844" H 8700 4384 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 8500 3950 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS-70-96-0013/S_110_LTV-814%20824%20844%20(M,%20S,%20S-TA,%20S-TA1,%20S-TP)%20Series.pdf" H 8725 4150 50  0001 L CNN
	4    8700 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3350 8275 3350
Wire Wire Line
	8275 4250 8400 4250
Wire Wire Line
	8400 3950 8275 3950
Wire Wire Line
	8275 3350 8275 3650
Connection ~ 8275 3950
Wire Wire Line
	8275 3950 8275 4250
Wire Wire Line
	8400 3650 8275 3650
Connection ~ 8275 3650
Wire Wire Line
	8275 3650 8275 3950
Wire Wire Line
	8275 4250 5675 4250
Wire Wire Line
	5675 3850 5675 4250
Connection ~ 8275 4250
Connection ~ 5675 4250
Wire Wire Line
	5675 4250 5675 4775
Wire Wire Line
	8050 3750 8400 3750
Wire Wire Line
	7950 3450 7950 4050
Wire Wire Line
	7950 4050 8400 4050
$Comp
L Device:R R4
U 1 1 5F78233E
P 7800 3450
F 0 "R4" V 7593 3450 50  0000 C CNN
F 1 "200" V 7684 3450 50  0000 C CNN
F 2 "" V 7730 3450 50  0001 C CNN
F 3 "~" H 7800 3450 50  0001 C CNN
	1    7800 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5F7840EB
P 7800 3350
F 0 "R3" V 7593 3350 50  0000 C CNN
F 1 "200" V 7684 3350 50  0000 C CNN
F 2 "" V 7730 3350 50  0001 C CNN
F 3 "~" H 7800 3350 50  0001 C CNN
	1    7800 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 5F7848AE
P 7800 3250
F 0 "R2" V 7593 3250 50  0000 C CNN
F 1 "200" V 7684 3250 50  0000 C CNN
F 2 "" V 7730 3250 50  0001 C CNN
F 3 "~" H 7800 3250 50  0001 C CNN
	1    7800 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 5F784F41
P 7800 3150
F 0 "R1" V 7593 3150 50  0000 C CNN
F 1 "200" V 7684 3150 50  0000 C CNN
F 2 "" V 7730 3150 50  0001 C CNN
F 3 "~" H 7800 3150 50  0001 C CNN
	1    7800 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 3750 8050 3350
Wire Wire Line
	8050 3350 7950 3350
Wire Wire Line
	7950 3250 8150 3250
Wire Wire Line
	8150 3250 8150 3450
Wire Wire Line
	8150 3450 8400 3450
Wire Wire Line
	8400 3150 7950 3150
$EndSCHEMATC
