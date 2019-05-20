EESchema Schematic File Version 4
LIBS:schematics-cache
EELAYER 29 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 27
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
S 1500 2100 950  500 
U 5CCD4ED0
F0 "Bateria Principal" 50
F1 "mainBattery.sch" 50
F2 "Bat_P_Unfused_Out" O R 2450 2300 50 
F3 "Bat_N_Unfused_Out" O R 2450 2400 50 
$EndSheet
$Sheet
S 3400 2100 950  850 
U 5CCE23EC
F0 "Módulo de Carregamento do Sistema" 50
F1 "MCS19.sch" 50
F2 "Bat_P_Unfused_in" I L 3400 2300 50 
F3 "Bat_N_Unfused_in" I L 3400 2400 50 
F4 "Bat_P_Fused_out" O R 4350 2550 50 
F5 "Bat_N_Fused_out" O R 4350 2650 50 
F6 "CAN" I R 4350 2900 50 
$EndSheet
Wire Wire Line
	3000 7250 3000 2300
Wire Wire Line
	3400 2300 3000 2300
Connection ~ 3000 2300
Wire Wire Line
	2450 2400 2900 2400
$Sheet
S 10150 2100 900  750 
U 5CCE2823
F0 "Módulo de Acionamento do Motor" 50
F1 "MAM17.sch" 50
F2 "Bat_P_in" I L 10150 2550 50 
F3 "Bat_N_in" I L 10150 2650 50 
F4 "Motor_P" I R 11050 2300 50 
F5 "Motor_N" I R 11050 2400 50 
F6 "CAN" I R 11050 2800 50 
$EndSheet
$Sheet
S 12050 2100 1000 500 
U 5CCE6749
F0 "Motor Principal" 50
F1 "mainMotor.sch" 50
F2 "Motor_P" I L 12050 2300 50 
F3 "Motor_N" I L 12050 2400 50 
$EndSheet
Wire Wire Line
	12050 2300 11050 2300
Wire Wire Line
	11050 2400 12050 2400
$Sheet
S 12050 4850 1000 500 
U 5CCE7E0A
F0 "Painel Fotovoltaico 3" 50
F1 "solarPanel.sch" 50
F2 "Panel_P" I L 12050 5000 50 
F3 "Panel_N" I L 12050 5100 50 
$EndSheet
$Sheet
S 12050 5550 1000 500 
U 5CCE81F4
F0 "Painel Fotovoltaico 4" 50
F1 "solarPanel.sch" 50
F2 "Panel_P" I L 12050 5700 50 
F3 "Panel_N" I L 12050 5800 50 
$EndSheet
Connection ~ 10050 2550
Connection ~ 9950 2650
Connection ~ 9850 2550
Connection ~ 9750 2650
Connection ~ 9650 2550
Connection ~ 9550 2650
Connection ~ 9450 2550
Connection ~ 9350 2650
Wire Wire Line
	2450 2300 3000 2300
Wire Wire Line
	2900 7850 2900 2400
Connection ~ 2900 2400
Wire Wire Line
	2900 2400 3400 2400
Connection ~ 9250 2550
Connection ~ 9150 2650
Wire Wire Line
	3400 7850 2900 7850
Wire Wire Line
	3400 7250 3000 7250
$Sheet
S 3400 7100 550  350 
U 5CCE35CC
F0 "Módulo Sensor CAN - Amperímetro IN" 50
F1 "MSCA19.sch" 50
F2 "Hall" I L 3400 7250 50 
F3 "CAN" I R 3950 7400 50 
$EndSheet
$Sheet
S 3400 7700 550  350 
U 5CCE3650
F0 "Módulo Sensor CAN - Amperímetro OUT" 50
F1 "MSCA19.sch" 50
F2 "Hall" I L 3400 7850 50 
F3 "CAN" I R 3950 8000 50 
$EndSheet
$Sheet
S 13600 2100 500  500 
U 5CE20002
F0 "Módulo Tacômetro" 50
F1 "MT19.sch" 50
F2 "CAN" I L 13600 2550 50 
$EndSheet
$Sheet
S 3400 5750 550  400 
U 5CCE3151
F0 "Módulo Sensor CAN - Voltimetro Principal" 50
F1 "MSCV19.sch" 50
F2 "Bat_P" T R 3950 5900 50 
F3 "Bat_N" T R 3950 6000 50 
F4 "CAN" I R 3950 6100 50 
$EndSheet
$Sheet
S 12050 3350 1000 500 
U 5CCE7104
F0 "Painel Fotovoltaico 1" 50
F1 "solarPanel.sch" 50
F2 "Panel_P" I L 12050 3500 50 
F3 "Panel_N" I L 12050 3600 50 
$EndSheet
$Sheet
S 12050 4100 1000 500 
U 5CCE7A17
F0 "Painel Fotovoltaico 2" 50
F1 "solarPanel.sch" 50
F2 "Panel_P" I L 12050 4250 50 
F3 "Panel_N" I L 12050 4350 50 
$EndSheet
Wire Wire Line
	9150 2650 9350 2650
Wire Wire Line
	9150 6550 10150 6550
Wire Wire Line
	9150 2650 9150 6550
Wire Wire Line
	9250 2550 9450 2550
Wire Wire Line
	9250 6450 9250 2550
Wire Wire Line
	10150 6450 9250 6450
$Sheet
S 10150 6300 950  450 
U 5CCF68BC
F0 "Módulo de Carregamento das Baterias Auxiliares" 50
F1 "MCA.sch" 50
F2 "Bat_P" I L 10150 6450 50 
F3 "Bat_N" I L 10150 6550 50 
F4 "Charger_P" I R 11100 6450 50 
F5 "Charger_N" I R 11100 6550 50 
F6 "CAN" I R 11100 6700 50 
$EndSheet
Wire Wire Line
	9350 2650 9550 2650
Wire Wire Line
	9350 5800 10150 5800
Wire Wire Line
	9350 2650 9350 5800
Wire Wire Line
	9450 2550 9650 2550
Wire Wire Line
	9450 5700 9450 2550
Wire Wire Line
	10150 5700 9450 5700
Wire Wire Line
	9550 2650 9750 2650
Wire Wire Line
	9550 5100 10150 5100
Wire Wire Line
	9550 2650 9550 5100
Wire Wire Line
	9650 2550 9850 2550
Wire Wire Line
	9650 5000 9650 2550
Wire Wire Line
	9650 5000 10150 5000
Wire Wire Line
	9750 2650 9950 2650
Wire Wire Line
	9750 4350 10150 4350
Wire Wire Line
	9750 2650 9750 4350
Wire Wire Line
	9850 2550 10050 2550
Wire Wire Line
	9850 4250 10150 4250
Wire Wire Line
	9850 2550 9850 4250
Wire Wire Line
	9950 2650 10150 2650
Wire Wire Line
	9950 3600 10150 3600
Wire Wire Line
	9950 2650 9950 3600
Wire Wire Line
	10050 2550 10150 2550
Wire Wire Line
	10050 3500 10050 2550
Wire Wire Line
	10150 3500 10050 3500
Wire Wire Line
	11100 5800 12050 5800
Wire Wire Line
	12050 5700 11100 5700
$Sheet
S 10150 5550 950  500 
U 5CCE81F0
F0 "Módulo Controlador de Carga 4" 50
F1 "MCC18.sch" 50
F2 "Panel_P" I R 11100 5700 50 
F3 "Panel_N" I R 11100 5800 50 
F4 "Bat_P" I L 10150 5700 50 
F5 "Bat_N" I L 10150 5800 50 
F6 "CAN" I R 11100 6000 50 
$EndSheet
Wire Wire Line
	11100 5100 12050 5100
Wire Wire Line
	12050 5000 11100 5000
$Sheet
S 10150 4850 950  500 
U 5CCE7E06
F0 "Módulo Controlador de Carga 3" 50
F1 "MCC18.sch" 50
F2 "Panel_P" I R 11100 5000 50 
F3 "Panel_N" I R 11100 5100 50 
F4 "Bat_P" I L 10150 5000 50 
F5 "Bat_N" I L 10150 5100 50 
F6 "CAN" I R 11100 5300 50 
$EndSheet
Wire Wire Line
	11100 4350 12050 4350
Wire Wire Line
	12050 4250 11100 4250
$Sheet
S 10150 4100 950  500 
U 5CCE7A13
F0 "Módulo Controlador de Carga 2" 50
F1 "MCC18.sch" 50
F2 "Panel_P" I R 11100 4250 50 
F3 "Panel_N" I R 11100 4350 50 
F4 "Bat_P" I L 10150 4250 50 
F5 "Bat_N" I L 10150 4350 50 
F6 "CAN" I R 11100 4550 50 
$EndSheet
Wire Wire Line
	11100 3600 12050 3600
Wire Wire Line
	12050 3500 11100 3500
$Sheet
S 10150 3350 950  500 
U 5CCE60F1
F0 "Módulo Controlador de Carga 1" 50
F1 "MCC18.sch" 50
F2 "Panel_P" I R 11100 3500 50 
F3 "Panel_N" I R 11100 3600 50 
F4 "Bat_P" I L 10150 3500 50 
F5 "Bat_N" I L 10150 3600 50 
F6 "CAN" I R 11100 3800 50 
$EndSheet
$Sheet
S 3400 6400 550  400 
U 5CE2020F
F0 "Módulo CAN para RaspberryPI" 50
F1 "MSCV19.sch" 50
F2 "CAN" I R 3950 6750 50 
$EndSheet
$Sheet
S 3400 3250 550  400 
U 5CE20376
F0 "Módulo Fonte Principal 18V" 50
F1 "MFP19.sch" 50
F2 "CAN" I R 3950 3600 50 
$EndSheet
Wire Wire Line
	4350 2550 9250 2550
Wire Wire Line
	4350 2650 9150 2650
$Sheet
S 3400 5100 550  400 
U 5CE203D7
F0 "Display Multímetro" 50
F1 "MVC19.sch" 50
F2 "Bat_P" T R 3950 5250 50 
F3 "Bat_N" T R 3950 5350 50 
F4 "CAN" I R 3950 5450 50 
$EndSheet
$Sheet
S 3400 3850 550  400 
U 5CE2052D
F0 "Módulo de Interface de Controle" 50
F1 "MIC19.sch" 50
F2 "Bat_P" T R 3950 4000 50 
F3 "Bat_N" T R 3950 4100 50 
F4 "CAN" I R 3950 4200 50 
$EndSheet
$Sheet
S 3400 4450 550  400 
U 5CE20539
F0 "Módulo de Controle de Temperatura" 50
F1 "MCT19.sch" 50
F2 "Bat_P" T R 3950 4600 50 
F3 "Bat_N" T R 3950 4700 50 
F4 "CAN" I R 3950 4800 50 
$EndSheet
$Sheet
S 10150 8250 550  400 
U 5CE20542
F0 "Módulo de Acionamento da Bomba de porão 1" 50
F1 "MAB19.sch" 50
F2 "Bat_P" T L 10150 8400 50 
F3 "Bat_N" T L 10150 8500 50 
F4 "CAN" I R 10700 8600 50 
$EndSheet
$Sheet
S 10150 7650 550  400 
U 5CE2054B
F0 "Módulo de Acionamento da Bomba de porão 2" 50
F1 "MAB19.sch" 50
F2 "Bat_P" T L 10150 7800 50 
F3 "Bat_N" T L 10150 7900 50 
F4 "CAN" I R 10700 8000 50 
$EndSheet
$Sheet
S 10150 7000 550  400 
U 5CE20554
F0 "Módulo de Acionamento da Bomba de porão 3" 50
F1 "MAB19.sch" 50
F2 "Bat_P" T L 10150 7150 50 
F3 "Bat_N" T L 10150 7250 50 
F4 "CAN" I R 10700 7350 50 
$EndSheet
Wire Bus Line
	4350 2900 4800 2900
Wire Bus Line
	4800 7400 3950 7400
Wire Bus Line
	4800 2900 4800 3600
Wire Bus Line
	3950 8000 4800 8000
Wire Bus Line
	4800 8000 4800 7400
Connection ~ 4800 7400
Wire Bus Line
	3950 6750 4800 6750
Connection ~ 4800 6750
Wire Bus Line
	4800 6750 4800 7400
Wire Bus Line
	3950 6100 4800 6100
Connection ~ 4800 6100
Wire Bus Line
	4800 6100 4800 6750
Wire Bus Line
	3950 5450 4800 5450
Connection ~ 4800 5450
Wire Bus Line
	4800 5450 4800 6100
Wire Bus Line
	3950 4800 4800 4800
Connection ~ 4800 4800
Wire Bus Line
	4800 4800 4800 5450
Connection ~ 4800 4200
Wire Bus Line
	4800 4200 4800 4800
Wire Bus Line
	3950 4200 4800 4200
Wire Bus Line
	3950 3600 4800 3600
Connection ~ 4800 3600
Wire Bus Line
	4800 3600 4800 4200
Wire Bus Line
	11050 2800 11500 2800
Wire Bus Line
	10700 8600 11500 8600
Wire Bus Line
	10700 8000 11500 8000
Wire Bus Line
	11500 2800 11500 3800
Connection ~ 11500 8000
Wire Bus Line
	11500 8000 11500 8600
Wire Bus Line
	10700 7350 11500 7350
Connection ~ 11500 7350
Wire Bus Line
	11500 7350 11500 8000
Wire Bus Line
	11100 6700 11500 6700
Connection ~ 11500 6700
Wire Bus Line
	11500 6700 11500 7350
Wire Bus Line
	11100 6000 11500 6000
Connection ~ 11500 6000
Wire Bus Line
	11500 6000 11500 6700
Wire Bus Line
	11100 5300 11500 5300
Connection ~ 11500 5300
Wire Bus Line
	11500 5300 11500 6000
Wire Bus Line
	11100 4550 11500 4550
Connection ~ 11500 4550
Wire Bus Line
	11500 4550 11500 5300
Wire Bus Line
	11100 3800 11500 3800
Connection ~ 11500 3800
Wire Bus Line
	11500 3800 11500 4550
Wire Bus Line
	13600 2550 13400 2550
Wire Bus Line
	13400 2550 13400 2800
Wire Bus Line
	13400 2800 11500 2800
Connection ~ 11500 2800
$Sheet
S 10150 8900 550  400 
U 5CE24955
F0 "Módulo de Direção Elétrica - POPA" 50
F1 "MDE19.sch" 50
F2 "Bat_P" T L 10150 9050 50 
F3 "Bat_N" T L 10150 9150 50 
F4 "CAN" I R 10700 9250 50 
$EndSheet
$Sheet
S 10150 9550 550  400 
U 5CE3E9F1
F0 "Módulo de Direção Elétrica - PROA" 50
F1 "MDE19.sch" 50
F2 "CAN" I R 10700 9900 50 
$EndSheet
Wire Bus Line
	10700 9250 11450 9250
Wire Bus Line
	11450 9250 11450 9900
Wire Bus Line
	11450 9900 10700 9900
$EndSCHEMATC
