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
P 10650 5150
F 0 "J2-1" H 10738 5064 50  0000 L CNN
F 1 "I2C" H 10738 4973 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 10650 5150 50  0001 C CNN
F 3 "~" H 10650 5150 50  0001 C CNN
	1    10650 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 5550 10450 5250
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
P 10250 5150
F 0 "J2+1" H 10338 5064 50  0000 L CNN
F 1 "I2C" H 10338 4973 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10250 5150 50  0001 C CNN
F 3 "~" H 10250 5150 50  0001 C CNN
	1    10250 5150
	-1   0    0    -1  
$EndComp
Connection ~ 10450 5250
$Comp
L power:GND #PWR0101
U 1 1 5ED5824C
P 3925 4775
F 0 "#PWR0101" H 3925 4525 50  0001 C CNN
F 1 "GND" H 3930 4602 50  0000 C CNN
F 2 "" H 3925 4775 50  0001 C CNN
F 3 "" H 3925 4775 50  0001 C CNN
	1    3925 4775
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5ED588EC
P 4025 2650
F 0 "#PWR0102" H 4025 2500 50  0001 C CNN
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
	8400 3350 8275 3350
Wire Wire Line
	8275 4250 8400 4250
Wire Wire Line
	8275 4250 5675 4250
Wire Wire Line
	5675 3850 5675 4250
Connection ~ 8275 4250
Connection ~ 5675 4250
Wire Wire Line
	5675 4250 5675 4775
$Comp
L Device:R R4
U 1 1 5F78233E
P 7800 3450
F 0 "R4" V 7593 3450 50  0000 C CNN
F 1 "200" V 7684 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7730 3450 50  0001 C CNN
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
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7730 3350 50  0001 C CNN
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
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7730 3250 50  0001 C CNN
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
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7730 3150 50  0001 C CNN
F 3 "~" H 7800 3150 50  0001 C CNN
	1    7800 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 3150 7950 3150
$Comp
L Device:BD675 Q1
U 1 1 60B961F9
P 9200 3350
F 0 "Q1" H 9391 3396 50  0000 L CNN
F 1 "BD675" H 9391 3305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-126-3_Vertical" H 9400 3450 50  0001 C CNN
F 3 "https://www.cdil.com/s/BD675_68.PDF" H 9200 3350 50  0001 C CNN
	1    9200 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:BD675 Q3
U 1 1 60B98D3B
P 9200 3800
F 0 "Q3" H 9391 3846 50  0000 L CNN
F 1 "BD675" H 9391 3755 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-126-3_Vertical" H 9400 3900 50  0001 C CNN
F 3 "https://www.cdil.com/s/BD675_68.PDF" H 9200 3800 50  0001 C CNN
	1    9200 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:BD675 Q2
U 1 1 60B9A2A8
P 9200 4250
F 0 "Q2" H 9391 4296 50  0000 L CNN
F 1 "BD675" H 9391 4205 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-126-3_Vertical" H 9400 4350 50  0001 C CNN
F 3 "https://www.cdil.com/s/BD675_68.PDF" H 9200 4250 50  0001 C CNN
	1    9200 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:BD675 Q4
U 1 1 60B9B2A2
P 9200 4700
F 0 "Q4" H 9391 4746 50  0000 L CNN
F 1 "BD675" H 9391 4655 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-126-3_Vertical" H 9400 4800 50  0001 C CNN
F 3 "https://www.cdil.com/s/BD675_68.PDF" H 9200 4700 50  0001 C CNN
	1    9200 4700
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4001 D1
U 1 1 60B9BA1B
P 10000 3500
F 0 "D1" H 10000 3284 50  0000 C CNN
F 1 "1N4001" H 10000 3375 50  0000 C CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 10000 3325 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 10000 3500 50  0001 C CNN
	1    10000 3500
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4001 D4
U 1 1 60B9FCA4
P 10000 4100
F 0 "D4" H 10000 3884 50  0000 C CNN
F 1 "1N4001" H 10000 3975 50  0000 C CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 10000 3925 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 10000 4100 50  0001 C CNN
	1    10000 4100
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4001 D3
U 1 1 60BA06EA
P 10000 3900
F 0 "D3" H 10000 3684 50  0000 C CNN
F 1 "1N4001" H 10000 3775 50  0000 C CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 10000 3725 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 10000 3900 50  0001 C CNN
	1    10000 3900
	-1   0    0    1   
$EndComp
Wire Wire Line
	9000 3150 9300 3150
$Comp
L Connector:Screw_Terminal_01x06 J1
U 1 1 60BC89BB
P 10350 3200
F 0 "J1" H 10430 3192 50  0000 L CNN
F 1 "Screw_Terminal_01x06" H 10430 3101 50  0000 L CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00236_1x06_P5.08mm_Horizontal" H 10350 3200 50  0001 C CNN
F 3 "~" H 10350 3200 50  0001 C CNN
	1    10350 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x06 J2
U 1 1 60BCB6FB
P 10350 3800
F 0 "J2" H 10430 3792 50  0000 L CNN
F 1 "Screw_Terminal_01x06" H 10430 3701 50  0000 L CNN
F 2 "TerminalBlock_RND:TerminalBlock_RND_205-00236_1x06_P5.08mm_Horizontal" H 10350 3800 50  0001 C CNN
F 3 "~" H 10350 3800 50  0001 C CNN
	1    10350 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 5550 10450 5550
$Comp
L Diode:1N4001 D2
U 1 1 60B9F210
P 10000 3700
F 0 "D2" H 10000 3484 50  0000 C CNN
F 1 "1N4001" H 10000 3575 50  0000 C CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 10000 3525 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 10000 3700 50  0001 C CNN
	1    10000 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	8275 3350 8275 3800
Wire Wire Line
	8400 3800 8275 3800
Connection ~ 8275 3800
Wire Wire Line
	8275 3800 8275 4250
Wire Wire Line
	8400 4700 8275 4700
Wire Wire Line
	8275 4700 8275 4250
Wire Wire Line
	7950 3450 7950 4500
Wire Wire Line
	7950 4500 8400 4500
Wire Wire Line
	8400 4050 8000 4050
Wire Wire Line
	8000 4050 8000 3350
Wire Wire Line
	8000 3350 7950 3350
Wire Wire Line
	7950 3250 8050 3250
Wire Wire Line
	8050 3250 8050 3600
Wire Wire Line
	8050 3600 8400 3600
Wire Wire Line
	9300 4000 9450 4000
Wire Wire Line
	9450 4000 9450 3700
Wire Wire Line
	9500 3800 9500 4050
Wire Wire Line
	9500 4050 9300 4050
Wire Wire Line
	9600 4000 9600 4500
Wire Wire Line
	9600 4500 9300 4500
Wire Wire Line
	9300 4900 9650 4900
Wire Wire Line
	9650 4900 9650 4100
Wire Wire Line
	9300 4450 9550 4450
Wire Wire Line
	9550 4450 9550 3900
$Comp
L Isolator:LTV-845 U3
U 1 1 60C23254
P 8700 3250
F 0 "U3" H 8700 3575 50  0000 C CNN
F 1 "LTV-845" H 8700 3484 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 8500 3050 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 8700 3250 50  0001 L CNN
	1    8700 3250
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-845 U3
U 2 1 60C2525A
P 8700 3700
F 0 "U3" H 8700 4025 50  0000 C CNN
F 1 "LTV-845" H 8700 3934 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 8500 3500 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 8700 3700 50  0001 L CNN
	2    8700 3700
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-845 U3
U 3 1 60C26C76
P 8700 4150
F 0 "U3" H 8700 4475 50  0000 C CNN
F 1 "LTV-845" H 8700 4384 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 8500 3950 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 8700 4150 50  0001 L CNN
	3    8700 4150
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-845 U3
U 4 1 60C28BF4
P 8700 4600
F 0 "U3" H 8700 4925 50  0000 C CNN
F 1 "LTV-845" H 8700 4834 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 8500 4400 50  0001 L CIN
F 3 "http://www.soselectronic.cz/a_info/resource/d/pc817.pdf" H 8700 4600 50  0001 L CNN
	4    8700 4600
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-825 U2
U 1 1 60C2AF07
P 8700 2350
F 0 "U2" H 8700 2675 50  0000 C CNN
F 1 "LTV-825" H 8700 2584 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8500 2150 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS-70-96-0016/LTV-8X7%20series.PDF" H 8700 2350 50  0001 L CNN
	1    8700 2350
	1    0    0    -1  
$EndComp
$Comp
L Isolator:LTV-825 U2
U 2 1 60C2D39F
P 8700 2800
F 0 "U2" H 8700 3125 50  0000 C CNN
F 1 "LTV-825" H 8700 3034 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8500 2600 50  0001 L CIN
F 3 "http://optoelectronics.liteon.com/upload/download/DS-70-96-0016/LTV-8X7%20series.PDF" H 8700 2800 50  0001 L CNN
	2    8700 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:BD675 Q5
U 1 1 60C2F8B7
P 9200 2450
F 0 "Q5" H 9391 2496 50  0000 L CNN
F 1 "BD675" H 9391 2405 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-126-3_Vertical" H 9400 2550 50  0001 C CNN
F 3 "https://www.cdil.com/s/BD675_68.PDF" H 9200 2450 50  0001 C CNN
	1    9200 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:BD675 Q6
U 1 1 60C2F8BD
P 9200 2900
F 0 "Q6" H 9391 2946 50  0000 L CNN
F 1 "BD675" H 9391 2855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-126-3_Vertical" H 9400 3000 50  0001 C CNN
F 3 "https://www.cdil.com/s/BD675_68.PDF" H 9200 2900 50  0001 C CNN
	1    9200 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 3600 9000 3600
Connection ~ 9300 3600
Wire Wire Line
	9000 4050 9300 4050
Connection ~ 9300 4050
Wire Wire Line
	9300 4500 9000 4500
Connection ~ 9300 4500
Wire Wire Line
	9000 2250 9300 2250
Wire Wire Line
	9000 2700 9300 2700
$Comp
L Diode:1N4001 D5
U 1 1 60C436C0
P 10000 3100
F 0 "D5" H 10000 2884 50  0000 C CNN
F 1 "1N4001" H 10000 2975 50  0000 C CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 10000 2925 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 10000 3100 50  0001 C CNN
	1    10000 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	9300 3550 9850 3550
Wire Wire Line
	9850 3550 9850 3500
Wire Wire Line
	9450 3700 9850 3700
Wire Wire Line
	9550 3900 9850 3900
Wire Wire Line
	9650 4100 9850 4100
Wire Wire Line
	9600 4000 10150 4000
Wire Wire Line
	9500 3800 10150 3800
Wire Wire Line
	9300 3600 10150 3600
$Comp
L Device:R R6
U 1 1 60C6F869
P 3500 3450
F 0 "R6" V 3293 3450 50  0000 C CNN
F 1 "200" V 3384 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3430 3450 50  0001 C CNN
F 3 "~" H 3500 3450 50  0001 C CNN
	1    3500 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 60C6F86F
P 3500 3350
F 0 "R5" V 3293 3350 50  0000 C CNN
F 1 "200" V 3384 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3430 3350 50  0001 C CNN
F 3 "~" H 3500 3350 50  0001 C CNN
	1    3500 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	10150 3400 9450 3400
Wire Wire Line
	9450 3400 9450 3150
Wire Wire Line
	9450 3150 9300 3150
Connection ~ 9300 3150
$Comp
L Diode:1N4001 D6
U 1 1 60C44E18
P 10000 3300
F 0 "D6" H 10000 3084 50  0000 C CNN
F 1 "1N4001" H 10000 3175 50  0000 C CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 10000 3125 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 10000 3300 50  0001 C CNN
	1    10000 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	8275 3350 8275 2900
Wire Wire Line
	8275 2900 8400 2900
Connection ~ 8275 3350
Wire Wire Line
	8275 2900 8275 2450
Wire Wire Line
	8275 2450 8400 2450
Connection ~ 8275 2900
Wire Wire Line
	7650 2950 7650 1800
Wire Wire Line
	7650 1800 11000 1800
Wire Wire Line
	11000 1800 11000 5550
Wire Wire Line
	10450 5150 10450 5025
Wire Wire Line
	10450 5025 10925 5025
Wire Wire Line
	10925 5025 10925 1875
Wire Wire Line
	10925 1875 7725 1875
Wire Wire Line
	7725 1875 7725 3050
Wire Wire Line
	7725 3050 7650 3050
Connection ~ 10450 5150
Wire Wire Line
	3350 3350 3200 3350
Wire Wire Line
	3200 3350 3200 2250
Wire Wire Line
	3200 2250 8400 2250
Wire Wire Line
	3350 3450 3275 3450
Wire Wire Line
	3275 3450 3275 2325
Wire Wire Line
	3275 2325 8050 2325
Wire Wire Line
	8050 2325 8050 2700
Wire Wire Line
	8050 2700 8400 2700
Wire Wire Line
	9300 2250 10150 2250
Wire Wire Line
	10150 2250 10150 3000
Connection ~ 9300 2250
Wire Wire Line
	9850 3100 9850 2650
Wire Wire Line
	9850 2650 9300 2650
Wire Wire Line
	10150 3200 9800 3200
Wire Wire Line
	9800 3200 9800 2700
Wire Wire Line
	9800 2700 9300 2700
Connection ~ 9300 2700
Wire Wire Line
	9300 3100 9750 3100
Wire Wire Line
	9750 3100 9750 3300
Wire Wire Line
	9750 3300 9850 3300
NoConn ~ 3650 3250
Wire Wire Line
	2000 4775 3925 4775
Connection ~ 3925 4775
Wire Wire Line
	3925 4775 5675 4775
$EndSCHEMATC
