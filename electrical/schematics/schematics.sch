EESchema Schematic File Version 4
LIBS:schematics-cache
EELAYER 29 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 40
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1600 1200 950  500 
U 5CCD4ED0
F0 "Bateria Principal" 50
F1 "mainBattery.sch" 50
F2 "Bat_P_Unfused_Out" O R 2550 1400 50 
F3 "Bat_N_Unfused_Out" O R 2550 1500 50 
$EndSheet
$Sheet
S 4600 1200 950  850 
U 5CCE23EC
F0 "Módulo de Carregamento do Sistema" 50
F1 "MCS19.sch" 50
F2 "Bat_P_Unfused_in" I L 4600 1400 50 
F3 "Bat_N_Unfused_in" I L 4600 1500 50 
F4 "Bat_P_Fused_out" O R 5550 1650 50 
F5 "Bat_N_Fused_out" O R 5550 1750 50 
F6 "CAN" I R 5550 2000 50 
$EndSheet
$Sheet
S 8600 1200 900  750 
U 5CCE2823
F0 "Módulo de Acionamento do Motor" 50
F1 "MAM17.sch" 50
F2 "Bat_P_in" I L 8600 1650 50 
F3 "Bat_N_in" I L 8600 1750 50 
F4 "Motor_P" I R 9500 1400 50 
F5 "Motor_N" I R 9500 1500 50 
F6 "CAN" I R 9500 1900 50 
$EndSheet
$Sheet
S 10500 1200 1000 500 
U 5CCE6749
F0 "Motor Principal" 50
F1 "mainMotor.sch" 50
F2 "Motor_P" I L 10500 1400 50 
F3 "Motor_N" I L 10500 1500 50 
$EndSheet
Wire Wire Line
	10500 1400 9500 1400
Wire Wire Line
	9500 1500 9800 1500
$Sheet
S 10500 3950 1000 500 
U 5CCE7E0A
F0 "Painel Fotovoltaico 3" 50
F1 "solarPanel.sch" 50
F2 "Panel_P" I L 10500 4100 50 
F3 "Panel_N" I L 10500 4200 50 
$EndSheet
$Sheet
S 10500 4650 1000 500 
U 5CCE81F4
F0 "Painel Fotovoltaico 4" 50
F1 "solarPanel.sch" 50
F2 "Panel_P" I L 10500 4800 50 
F3 "Panel_N" I L 10500 4900 50 
$EndSheet
Wire Wire Line
	4600 7700 4100 7700
Wire Wire Line
	4600 7100 4200 7100
$Sheet
S 4600 6950 550  350 
U 5CCE35CC
F0 "Módulo Sensor CAN - Amperímetro IN" 50
F1 "MSCA19.sch" 50
F2 "Hall" I L 4600 7100 50 
F3 "CAN" I R 5150 7250 50 
$EndSheet
$Sheet
S 4600 7550 550  350 
U 5CCE3650
F0 "Módulo Sensor CAN - Amperímetro OUT" 50
F1 "MSCA19.sch" 50
F2 "Hall" I L 4600 7700 50 
F3 "CAN" I R 5150 7850 50 
$EndSheet
$Sheet
S 12050 1200 500  500 
U 5CE20002
F0 "Módulo Tacômetro" 50
F1 "MT19.sch" 50
F2 "CAN" I L 12050 1650 50 
$EndSheet
$Sheet
S 10500 2450 1000 500 
U 5CCE7104
F0 "Painel Fotovoltaico 1" 50
F1 "solarPanel.sch" 50
F2 "Panel_P" I L 10500 2600 50 
F3 "Panel_N" I L 10500 2700 50 
$EndSheet
$Sheet
S 10500 3200 1000 500 
U 5CCE7A17
F0 "Painel Fotovoltaico 2" 50
F1 "solarPanel.sch" 50
F2 "Panel_P" I L 10500 3350 50 
F3 "Panel_N" I L 10500 3450 50 
$EndSheet
$Sheet
S 8600 5400 950  450 
U 5CCF68BC
F0 "Módulo de Carregamento de Bateria 1" 50
F1 "MCB19.sch" 50
F2 "Bat_P" I L 8600 5550 50 
F3 "Bat_N" I L 8600 5650 50 
F4 "Charger_P" I R 9550 5550 50 
F5 "Charger_N" I R 9550 5650 50 
F6 "CAN" I R 9550 5800 50 
$EndSheet
Wire Wire Line
	9550 4900 10500 4900
Wire Wire Line
	10500 4800 9550 4800
$Sheet
S 8600 4650 950  500 
U 5CCE81F0
F0 "Módulo Controlador de Carga 4" 50
F1 "MCC18.sch" 50
F2 "Panel_P" I R 9550 4800 50 
F3 "Panel_N" I R 9550 4900 50 
F4 "Bat_P" I L 8600 4800 50 
F5 "Bat_N" I L 8600 4900 50 
F6 "CAN" I R 9550 5100 50 
$EndSheet
Wire Wire Line
	9550 4200 10500 4200
Wire Wire Line
	10500 4100 9550 4100
$Sheet
S 8600 3950 950  500 
U 5CCE7E06
F0 "Módulo Controlador de Carga 3" 50
F1 "MCC18.sch" 50
F2 "Panel_P" I R 9550 4100 50 
F3 "Panel_N" I R 9550 4200 50 
F4 "Bat_P" I L 8600 4100 50 
F5 "Bat_N" I L 8600 4200 50 
F6 "CAN" I R 9550 4400 50 
$EndSheet
Wire Wire Line
	9550 3450 10500 3450
Wire Wire Line
	10500 3350 9550 3350
$Sheet
S 8600 3200 950  500 
U 5CCE7A13
F0 "Módulo Controlador de Carga 2" 50
F1 "MCC18.sch" 50
F2 "Panel_P" I R 9550 3350 50 
F3 "Panel_N" I R 9550 3450 50 
F4 "Bat_P" I L 8600 3350 50 
F5 "Bat_N" I L 8600 3450 50 
F6 "CAN" I R 9550 3650 50 
$EndSheet
Wire Wire Line
	9550 2700 10500 2700
Wire Wire Line
	10500 2600 9550 2600
$Sheet
S 8600 2450 950  500 
U 5CCE60F1
F0 "Módulo Controlador de Carga 1" 50
F1 "MCC18.sch" 50
F2 "Panel_P" I R 9550 2600 50 
F3 "Panel_N" I R 9550 2700 50 
F4 "Bat_P" I L 8600 2600 50 
F5 "Bat_N" I L 8600 2700 50 
F6 "CAN" I R 9550 2900 50 
$EndSheet
$Sheet
S 4600 6250 550  400 
U 5CE2020F
F0 "Módulo CAN para RaspberryPI" 50
F1 "MSCV19.sch" 50
F2 "CAN" I R 5150 6600 50 
$EndSheet
$Sheet
S 4600 2950 550  400 
U 5CE2052D
F0 "Módulo de Interface de Controle" 50
F1 "MIC19.sch" 50
F2 "CAN" I R 5150 3300 50 
$EndSheet
$Sheet
S 4600 3550 550  400 
U 5CE20539
F0 "Módulo de Controle de Temperatura" 50
F1 "MCT19.sch" 50
F2 "CAN" I R 5150 3900 50 
$EndSheet
Wire Bus Line
	5550 2000 6000 2000
Wire Bus Line
	6000 7250 5150 7250
Wire Bus Line
	5150 7850 6000 7850
Wire Bus Line
	6000 7850 6000 7250
Connection ~ 6000 7250
Wire Bus Line
	5150 6600 6000 6600
Wire Bus Line
	6000 6600 6000 7250
Wire Bus Line
	5150 3900 6000 3900
Connection ~ 6000 3300
Wire Bus Line
	6000 3300 6000 3900
Wire Bus Line
	5150 3300 6000 3300
Wire Bus Line
	9500 1900 9950 1900
Wire Bus Line
	9950 1900 9950 2900
Wire Bus Line
	9550 5800 9950 5800
Connection ~ 9950 5800
Wire Bus Line
	9550 5100 9950 5100
Connection ~ 9950 5100
Wire Bus Line
	9950 5100 9950 5800
Wire Bus Line
	9550 4400 9950 4400
Connection ~ 9950 4400
Wire Bus Line
	9950 4400 9950 5100
Wire Bus Line
	9550 3650 9950 3650
Connection ~ 9950 3650
Wire Bus Line
	9950 3650 9950 4400
Wire Bus Line
	9550 2900 9950 2900
Connection ~ 9950 2900
Wire Bus Line
	9950 2900 9950 3650
Wire Bus Line
	12050 1650 11850 1650
Wire Bus Line
	11850 1650 11850 1900
Wire Bus Line
	11850 1900 9950 1900
Connection ~ 9950 1900
Connection ~ 6000 3900
Connection ~ 6000 6600
Wire Bus Line
	6000 3900 6000 4550
Wire Bus Line
	5150 4550 6000 4550
Wire Bus Line
	6000 5950 6000 6600
Connection ~ 6000 5950
Wire Bus Line
	5150 5950 6000 5950
$Sheet
S 4600 4200 550  400 
U 5CE203D7
F0 "Display Multímetro" 50
F1 "MVC19.sch" 50
F2 "CAN" I R 5150 4550 50 
$EndSheet
$Sheet
S 4600 5600 550  400 
U 5CCE3151
F0 "Módulo Sensor CAN - Voltimetro Principal" 50
F1 "MSCV19.sch" 50
F2 "Bat_P" T L 4600 5700 50 
F3 "Bat_N" T L 4600 5800 50 
F4 "CAN" I R 5150 5950 50 
$EndSheet
Wire Bus Line
	10050 9700 10050 10350
Wire Bus Line
	9250 9700 10050 9700
$Sheet
S 8700 10000 550  400 
U 5CE3E9F1
F0 "Módulo de Direção Elétrica - PROA" 50
F1 "MDE19.sch" 50
F2 "CAN" I R 9250 10350 50 
$EndSheet
$Sheet
S 8700 9350 550  400 
U 5CE24955
F0 "Módulo de Direção Elétrica - POPA" 50
F1 "MDE19.sch" 50
F2 "Bat_P" T R 9250 9500 50 
F3 "Bat_N" T R 9250 9600 50 
F4 "CAN" I R 9250 9700 50 
F5 "motor_P" I L 8700 9425 50 
F6 "motor_N" I L 8700 9550 50 
$EndSheet
Wire Bus Line
	9950 5800 9950 6500
Connection ~ 9950 7800
$Sheet
S 8600 6100 950  450 
U 5DC34F07
F0 "Módulo de Carregamento de Bateria 2" 50
F1 "MCB19.sch" 50
F2 "Bat_P" I L 8600 6250 50 
F3 "Bat_N" I L 8600 6350 50 
F4 "Charger_P" I R 9550 6250 50 
F5 "Charger_N" I R 9550 6350 50 
F6 "CAN" I R 9550 6500 50 
$EndSheet
Wire Bus Line
	9550 6500 9950 6500
Connection ~ 9950 6500
$Sheet
S 11900 6750 950  500 
U 5DC3DF9F
F0 "Bateria Auxiliar" 50
F1 "mainBattery.sch" 50
F2 "Bat_P_Unfused_Out" O L 11900 6950 50 
F3 "Bat_N_Unfused_Out" O L 11900 7050 50 
$EndSheet
Wire Wire Line
	11900 6950 11750 6950
Wire Wire Line
	11900 7050 11700 7050
Wire Wire Line
	9550 7050 9550 7700
$Sheet
S 11900 8650 950  500 
U 5DC4E327
F0 "Bateria Direção" 50
F1 "mainBattery.sch" 50
F2 "Bat_P_Unfused_Out" O L 11900 8850 50 
F3 "Bat_N_Unfused_Out" O L 11900 8950 50 
$EndSheet
Wire Wire Line
	9550 5550 11000 5550
Wire Wire Line
	11000 5550 11000 6950
Connection ~ 11000 6950
Wire Wire Line
	11000 6950 9450 6950
Wire Wire Line
	9550 5650 10900 5650
Wire Wire Line
	10900 5650 10900 7050
Connection ~ 10900 7050
Wire Wire Line
	10900 7050 9550 7050
Wire Wire Line
	9550 6250 10800 6250
Wire Wire Line
	10800 6250 10800 8850
Wire Wire Line
	10700 8950 10700 6350
Wire Wire Line
	10700 6350 9550 6350
$Sheet
S 4650 8150 550  400 
U 5DC80323
F0 "Módulo Sensor CAN - Voltimetro Auxiliar" 50
F1 "MSCV19.sch" 50
F2 "Bat_P" T L 4650 8300 50 
F3 "Bat_N" T L 4650 8400 50 
F4 "CAN" I L 4650 8500 50 
$EndSheet
Connection ~ 11200 6950
Wire Wire Line
	11200 6950 11000 6950
Connection ~ 11100 7050
Wire Wire Line
	11100 7050 10900 7050
$Sheet
S 11900 9350 550  400 
U 5DC96438
F0 "Módulo Sensor CAN - Voltimetro Direção" 50
F1 "MSCV19.sch" 50
F2 "Bat_P" T L 11900 9500 50 
F3 "Bat_N" T L 11900 9600 50 
F4 "CAN" I L 11900 9700 50 
$EndSheet
Wire Wire Line
	11900 8950 11700 8950
Wire Wire Line
	11900 9600 11150 9600
Wire Wire Line
	11900 9500 11250 9500
Wire Wire Line
	11150 9600 11150 8950
Wire Wire Line
	11250 9500 11250 8850
Connection ~ 11150 8950
Connection ~ 11250 8850
Wire Wire Line
	11250 8850 11350 8850
$Comp
L Device:Fuse F?
U 1 1 5DCBD654
P 3700 1500
F 0 "F?" V 3500 1550 50  0000 C CNN
F 1 "250A" V 3600 1500 50  0000 C CNN
F 2 "" V 3630 1500 50  0001 C CNN
F 3 "~" H 3700 1500 50  0001 C CNN
	1    3700 1500
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_DPST_x2 SW?
U 1 1 5DCC5EB3
P 3700 1400
F 0 "SW?" H 3700 1650 50  0000 C CNN
F 1 "SW_DPST_x2" H 3700 1550 50  0000 C CNN
F 2 "" H 3700 1400 50  0001 C CNN
F 3 "~" H 3700 1400 50  0001 C CNN
	1    3700 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F?
U 1 1 5DCD9D7E
P 11550 7050
F 0 "F?" V 11350 7100 50  0000 C CNN
F 1 "15A" V 11450 7050 50  0000 C CNN
F 2 "" V 11480 7050 50  0001 C CNN
F 3 "~" H 11550 7050 50  0001 C CNN
	1    11550 7050
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_DPST_x2 SW?
U 1 1 5DCD9D88
P 11550 6950
F 0 "SW?" H 11550 7200 50  0000 C CNN
F 1 "SW_DPST_x2" H 11550 7100 50  0000 C CNN
F 2 "" H 11550 6950 50  0001 C CNN
F 3 "~" H 11550 6950 50  0001 C CNN
	1    11550 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	11400 7050 11100 7050
Wire Wire Line
	11350 6950 11200 6950
$Comp
L Device:Fuse F?
U 1 1 5DCF5D5A
P 11550 8950
F 0 "F?" V 11350 9000 50  0000 C CNN
F 1 "15A" V 11450 8950 50  0000 C CNN
F 2 "" V 11480 8950 50  0001 C CNN
F 3 "~" H 11550 8950 50  0001 C CNN
	1    11550 8950
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_DPST_x2 SW?
U 1 1 5DCF5D64
P 11550 8850
F 0 "SW?" H 11550 9100 50  0000 C CNN
F 1 "SW_DPST_x2" H 11550 9000 50  0000 C CNN
F 2 "" H 11550 8850 50  0001 C CNN
F 3 "~" H 11550 8850 50  0001 C CNN
	1    11550 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	11400 8950 11150 8950
Wire Wire Line
	11750 8850 11900 8850
$Sheet
S 11900 8050 550  400 
U 5DCFE416
F0 "Ventiladores" 50
F1 "Fans.sch" 50
F2 "Bat_P" T L 11900 8200 50 
F3 "Bat_N" T L 11900 8300 50 
$EndSheet
$Comp
L Switch:SW_DPST_x2 SW?
U 1 1 5DD21B88
P 10000 1500
F 0 "SW?" H 10000 1250 50  0000 C CNN
F 1 "SW_DPST_x2" H 10000 1350 50  0000 C CNN
F 2 "" H 10000 1500 50  0001 C CNN
F 3 "~" H 10000 1500 50  0001 C CNN
	1    10000 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10200 1500 10500 1500
Wire Wire Line
	4450 5700 4600 5700
Wire Wire Line
	4600 5800 4350 5800
Wire Wire Line
	3850 1500 4050 1500
Wire Wire Line
	4450 1400 4450 2400
Connection ~ 4450 1400
Wire Wire Line
	4450 1400 4600 1400
Wire Wire Line
	4350 1500 4350 2500
Connection ~ 4350 1500
Wire Wire Line
	4350 1500 4600 1500
Wire Wire Line
	4200 1400 4200 7100
Connection ~ 4200 1400
Wire Wire Line
	4200 1400 4325 1400
Wire Wire Line
	4100 1500 4100 7700
Connection ~ 4100 1500
Wire Wire Line
	4100 1500 4350 1500
Wire Bus Line
	6000 4550 6000 5200
Connection ~ 6000 4550
$Sheet
S 4600 4850 550  400 
U 5DD716FA
F0 "Display Multímetro Secundário" 50
F1 "MVC19.sch" 50
$EndSheet
Text HLabel 5150 5200 0    50   Output ~ 0
CAN
Wire Bus Line
	5150 5200 6000 5200
Connection ~ 6000 5200
Wire Bus Line
	6000 5200 6000 5950
Text HLabel 8350 8700 2    50   Output ~ 0
PUMP_P
$Sheet
S 7200 8550 500  350 
U 5DD76A89
F0 "Bomba de porão 1" 50
F1 "PUMP.sch" 50
$EndSheet
Text HLabel 8350 8800 2    50   Output ~ 0
PUMP_N
$Sheet
S 8350 8550 900  450 
U 5CE20542
F0 "Módulo de Acionamento da Bomba de porão 1" 50
F1 "MAB19.sch" 50
F2 "Bat_P" T R 9250 8700 50 
F3 "Bat_N" T R 9250 8800 50 
F4 "CAN" I R 9250 8900 50 
$EndSheet
Wire Bus Line
	9250 8900 9950 8900
Wire Bus Line
	9250 7800 9950 7800
Wire Wire Line
	9250 7600 9450 7600
Wire Wire Line
	9250 7700 9550 7700
Wire Wire Line
	9250 8700 9450 8700
Wire Wire Line
	9250 8800 9550 8800
Text HLabel 7700 8700 0    50   Output ~ 0
PUMP_P
Text HLabel 7700 8800 0    50   Output ~ 0
PUMP_N
Wire Wire Line
	10800 8850 11250 8850
Wire Wire Line
	11200 8200 11900 8200
Wire Wire Line
	11100 8300 11900 8300
Wire Bus Line
	9250 10350 10050 10350
Wire Bus Line
	11900 9700 10950 9700
Wire Bus Line
	10950 9700 10950 7800
Wire Bus Line
	10950 7800 9950 7800
Text HLabel 8350 8900 2    50   Output ~ 0
LEVEL_SENSOR
Text HLabel 8350 7600 2    50   Output ~ 0
PUMP_P
$Sheet
S 7200 7450 500  350 
U 5DDBBBED
F0 "Bomba de porão 2" 50
F1 "PUMP.sch" 50
$EndSheet
Text HLabel 8350 7700 2    50   Output ~ 0
PUMP_N
$Sheet
S 8350 7450 900  450 
U 5DDBBBF3
F0 "Módulo de Acionamento da Bomba de porão 2" 50
F1 "MAB19.sch" 50
F2 "Bat_P" T R 9250 7600 50 
F3 "Bat_N" T R 9250 7700 50 
F4 "CAN" I R 9250 7800 50 
$EndSheet
Text HLabel 8350 7800 2    50   Output ~ 0
LEVEL_SENSOR
Text HLabel 7700 7600 0    50   Output ~ 0
PUMP_P
Text HLabel 7700 7700 0    50   Output ~ 0
PUMP_N
Text HLabel 8350 6950 2    50   Output ~ 0
PUMP_P
Text HLabel 8350 7050 2    50   Output ~ 0
PUMP_N
$Sheet
S 8350 6800 900  450 
U 5DDC9883
F0 "Módulo de Acionamento da Bomba de porão 3" 50
F1 "MAB19.sch" 50
F2 "Bat_P" T R 9250 6950 50 
F3 "Bat_N" T R 9250 7050 50 
F4 "CAN" I R 9250 7150 50 
$EndSheet
Text HLabel 8350 7150 2    50   Output ~ 0
LEVEL_SENSOR
Wire Bus Line
	9250 7150 9950 7150
Wire Bus Line
	9950 6500 9950 7150
Connection ~ 9950 7150
Wire Bus Line
	9950 7150 9950 7800
Wire Wire Line
	9250 7050 9550 7050
Connection ~ 9550 7050
Wire Wire Line
	9250 6950 9450 6950
Connection ~ 9450 6950
Wire Wire Line
	7700 8800 8350 8800
Wire Wire Line
	7700 8700 7850 8700
Wire Wire Line
	7700 7700 8350 7700
$Sheet
S 6850 9100 850  300 
U 5DDF52D7
F0 "LEVEL_SENSOR_1" 50
F1 "level_sensor.sch" 50
F2 "LEVEL_SENSOR_IN" I R 7700 9200 50 
F3 "LEVEL_SENSOR_OUT" I R 7700 9300 50 
$EndSheet
Wire Wire Line
	7700 9200 7850 9200
Wire Wire Line
	7850 9200 7850 8700
Connection ~ 7850 8700
Wire Wire Line
	7850 8700 8350 8700
Wire Wire Line
	7700 9300 7950 9300
Wire Wire Line
	7950 9300 7950 8900
Wire Wire Line
	7950 8900 8350 8900
$Sheet
S 6850 8000 850  300 
U 5DE04EA5
F0 "LEVEL_SENSOR_2" 50
F1 "level_sensor.sch" 50
F2 "LEVEL_SENSOR_IN" I R 7700 8100 50 
F3 "LEVEL_SENSOR_OUT" I R 7700 8200 50 
$EndSheet
Wire Wire Line
	9450 6950 9450 7600
Connection ~ 9450 7600
Wire Wire Line
	9450 7600 9450 8700
Wire Wire Line
	9550 7700 9550 8800
Connection ~ 9550 7700
Wire Bus Line
	9950 7800 9950 7750
Wire Bus Line
	9950 7800 9950 8900
Wire Wire Line
	7950 7800 8350 7800
Wire Wire Line
	7700 8200 7950 8200
Wire Wire Line
	7950 8200 7950 7800
Wire Wire Line
	7700 7600 7850 7600
Wire Wire Line
	7850 8100 7850 7600
Wire Wire Line
	7700 8100 7850 8100
Connection ~ 7850 7600
Wire Wire Line
	7850 7600 8350 7600
Wire Wire Line
	10700 8950 11150 8950
Wire Wire Line
	9250 9500 10800 9500
Wire Wire Line
	10800 9500 10800 8850
Connection ~ 10800 8850
Wire Wire Line
	9250 9600 10700 9600
Wire Wire Line
	10700 9600 10700 8950
Connection ~ 10700 8950
Wire Bus Line
	6000 2000 6000 2700
Wire Bus Line
	5550 2700 6000 2700
Connection ~ 6000 2700
Wire Bus Line
	6000 2700 6000 3300
$Sheet
S 4600 2350 950  450 
U 5CE20376
F0 "Módulo Fonte Principal 18V" 50
F1 "MFP19.sch" 50
F2 "CAN" I R 5550 2700 50 
F3 "Bat_P" I L 4600 2400 50 
F4 "Bat_N" I L 4600 2500 50 
F5 "Enable_GND" I L 4600 2750 50 
F6 "Enable" I L 4600 2650 50 
$EndSheet
Wire Wire Line
	4600 2500 4350 2500
Connection ~ 4350 2500
Wire Wire Line
	4350 2500 4350 5800
Wire Wire Line
	4600 2400 4450 2400
Connection ~ 4450 2400
Wire Wire Line
	4450 2400 4450 5700
$Comp
L Switch:SW_DPST_x2 SW?
U 1 1 5DE75AAE
P 3600 2700
F 0 "SW?" H 3600 2950 50  0000 C CNN
F 1 "SW_DPST_x2" H 3600 2850 50  0000 C CNN
F 2 "" H 3600 2700 50  0001 C CNN
F 3 "~" H 3600 2700 50  0001 C CNN
	1    3600 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4600 2650 3750 2650
Wire Wire Line
	3750 2650 3750 2450
Wire Wire Line
	3750 2450 3600 2450
Wire Wire Line
	3600 2450 3600 2500
Wire Wire Line
	4600 2750 3750 2750
Wire Wire Line
	3750 2750 3750 2950
Wire Wire Line
	3750 2950 3600 2950
Wire Wire Line
	3600 2950 3600 2900
Wire Wire Line
	5550 1650 8600 1650
Wire Wire Line
	5550 1750 8600 1750
Entry Wire Line
	7950 2500 8050 2600
Wire Wire Line
	8050 2600 8600 2600
Text Label 8050 2600 0    50   ~ 0
Bat_P
Entry Wire Line
	7950 2600 8050 2700
Wire Wire Line
	8050 2700 8600 2700
Text Label 8050 2700 0    50   ~ 0
Bat_N
Entry Wire Line
	7950 3250 8050 3350
Wire Wire Line
	8050 3350 8600 3350
Entry Wire Line
	7950 3350 8050 3450
Wire Wire Line
	8050 3450 8600 3450
Entry Wire Line
	7950 4000 8050 4100
Wire Wire Line
	8050 4100 8600 4100
Entry Wire Line
	7950 4100 8050 4200
Wire Wire Line
	8050 4200 8600 4200
Entry Wire Line
	7950 4700 8050 4800
Entry Wire Line
	7950 4800 8050 4900
Wire Wire Line
	8050 4800 8600 4800
Wire Wire Line
	8050 4900 8600 4900
Entry Wire Line
	7950 5450 8050 5550
Entry Wire Line
	7950 5550 8050 5650
Wire Wire Line
	8050 5550 8600 5550
Wire Wire Line
	8050 5650 8600 5650
Entry Wire Line
	7950 6150 8050 6250
Entry Wire Line
	7950 6250 8050 6350
Wire Wire Line
	8050 6250 8600 6250
Text Label 8050 3350 0    50   ~ 0
Bat_P
Text Label 8050 4100 0    50   ~ 0
Bat_P
Text Label 8050 4800 0    50   ~ 0
Bat_P
Text Label 8050 5550 0    50   ~ 0
Bat_P
Text Label 8025 6250 0    50   ~ 0
Bat_P
Text Label 8050 3450 0    50   ~ 0
Bat_N
Text Label 8050 4200 0    50   ~ 0
Bat_N
Text Label 8050 4900 0    50   ~ 0
Bat_N
Text Label 8050 5650 0    50   ~ 0
Bat_N
Wire Wire Line
	8050 6350 8600 6350
Text Label 8025 6350 0    50   ~ 0
Bat_N
Entry Wire Line
	3950 975  4050 1075
Entry Wire Line
	4225 975  4325 1075
Wire Wire Line
	4325 1075 4325 1400
Connection ~ 4325 1400
Wire Wire Line
	4325 1400 4450 1400
Wire Wire Line
	3900 1400 4200 1400
Wire Wire Line
	4050 1075 4050 1500
Connection ~ 4050 1500
Wire Wire Line
	4050 1500 4100 1500
Text Label 4325 1075 0    50   ~ 0
Bat_P
Text Label 4050 1075 0    50   ~ 0
Bat_N
$Sheet
S 7275 9550 925  275 
U 5E2AED8D
F0 "motor_direção" 50
F1 "motor_direcao.sch" 50
F2 "motor_P" I R 8200 9600 50 
F3 "motor_N" I R 8200 9725 50 
$EndSheet
Wire Wire Line
	8225 9600 8375 9600
Wire Wire Line
	8375 9600 8375 9425
Wire Wire Line
	8375 9425 8700 9425
Wire Wire Line
	8200 9725 8525 9725
Wire Wire Line
	8525 9725 8525 9550
Wire Wire Line
	8525 9550 8700 9550
Wire Wire Line
	11100 7050 11100 8300
Wire Wire Line
	11200 6950 11200 8200
Wire Bus Line
	4650 8500 4450 8500
Wire Bus Line
	4450 8500 4450 8900
Wire Bus Line
	4450 8900 6000 8900
Wire Bus Line
	6000 8900 6000 7850
Connection ~ 6000 7850
Wire Wire Line
	2550 1400 2700 1400
Wire Wire Line
	2550 1500 2950 1500
Wire Wire Line
	2700 1400 2700 8300
Wire Wire Line
	2700 8300 4650 8300
Connection ~ 2700 1400
Wire Wire Line
	2700 1400 3500 1400
Wire Wire Line
	4650 8400 2950 8400
Wire Wire Line
	2950 8400 2950 1500
Connection ~ 2950 1500
Wire Wire Line
	2950 1500 3550 1500
Wire Bus Line
	3950 975  7950 975 
Wire Bus Line
	7950 975  7950 6550
$EndSCHEMATC
