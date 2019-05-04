EESchema Schematic File Version 4
EELAYER 29 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 16
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
$EndSheet
$Sheet
S 4700 10100 950  450 
U 5CCE3151
F0 "Módulo Sensor CAN - Voltimetro Principal" 50
F1 "MSCV19.sch" 50
F2 "Bat_P" T L 4700 10250 50 
F3 "Bat_N" T L 4700 10350 50 
$EndSheet
Wire Wire Line
	4700 10250 4550 10250
Wire Wire Line
	4550 10250 4550 2550
Connection ~ 4550 2550
Wire Wire Line
	4450 10350 4700 10350
Wire Wire Line
	4350 2550 4550 2550
Wire Wire Line
	4450 10350 4450 2650
Wire Wire Line
	4350 2650 4450 2650
Connection ~ 4450 2650
$Sheet
S 3150 9550 950  400 
U 5CCE35CC
F0 "Módulo Sensor CAN - Amperímetro IN" 50
F1 "MSCA19.sch" 50
F2 "Hall" I L 3150 9700 50 
$EndSheet
$Sheet
S 3150 10150 950  400 
U 5CCE3650
F0 "Módulo Sensor CAN - Amperímetro OUT" 50
F1 "MSCA19.sch" 50
F2 "Hall" I L 3150 10300 50 
$EndSheet
Wire Wire Line
	3150 9700 3000 9700
Wire Wire Line
	3000 9700 3000 2300
Wire Wire Line
	3150 10300 2900 10300
Wire Wire Line
	3400 2300 3000 2300
Connection ~ 3000 2300
Wire Wire Line
	2450 2400 2900 2400
$Sheet
S 12050 3350 950  500 
U 5CCE60F1
F0 "Módulo Controlador de Carga" 50
F1 "MCC18.sch" 50
F2 "Panel_P" I R 13000 3500 50 
F3 "Panel_N" I R 13000 3600 50 
F4 "Bat_P" I L 12050 3500 50 
F5 "Bat_N" I L 12050 3600 50 
$EndSheet
Wire Wire Line
	4550 2550 11150 2550
$Sheet
S 12050 2100 900  750 
U 5CCE2823
F0 "Módulo de Acionamento do Motor" 50
F1 "MAM17.sch" 50
F2 "Bat_P_in" I L 12050 2550 50 
F3 "Bat_N_in" I L 12050 2650 50 
F4 "Motor_P" I R 12950 2300 50 
F5 "Motor_N" I R 12950 2400 50 
$EndSheet
$Sheet
S 13950 2100 1000 500 
U 5CCE6749
F0 "Motor Principal" 50
F1 "mainMotor.sch" 50
F2 "Motor_P" I L 13950 2300 50 
F3 "Motor_N" I L 13950 2400 50 
$EndSheet
Wire Wire Line
	13950 2300 12950 2300
Wire Wire Line
	12950 2400 13950 2400
$Sheet
S 13950 3350 1000 500 
U 5CCE7104
F0 "Painel Fotovoltaico" 50
F1 "solarPanel.sch" 50
F2 "Panel_P" I L 13950 3500 50 
F3 "Panel_N" I L 13950 3600 50 
$EndSheet
Wire Wire Line
	13950 3500 13000 3500
Wire Wire Line
	13000 3600 13950 3600
$Sheet
S 12050 4100 950  500 
U 5CCE7A13
F0 "sheet5CCE7A13" 50
F1 "MCC18.sch" 50
F2 "Panel_P" I R 13000 4250 50 
F3 "Panel_N" I R 13000 4350 50 
F4 "Bat_P" I L 12050 4250 50 
F5 "Bat_N" I L 12050 4350 50 
$EndSheet
$Sheet
S 13950 4100 1000 500 
U 5CCE7A17
F0 "sheet5CCE7A17" 50
F1 "solarPanel.sch" 50
F2 "Panel_P" I L 13950 4250 50 
F3 "Panel_N" I L 13950 4350 50 
$EndSheet
Wire Wire Line
	13950 4250 13000 4250
Wire Wire Line
	13000 4350 13950 4350
$Sheet
S 12050 4850 950  500 
U 5CCE7E06
F0 "sheet5CCE7E06" 50
F1 "MCC18.sch" 50
F2 "Panel_P" I R 13000 5000 50 
F3 "Panel_N" I R 13000 5100 50 
F4 "Bat_P" I L 12050 5000 50 
F5 "Bat_N" I L 12050 5100 50 
$EndSheet
$Sheet
S 13950 4850 1000 500 
U 5CCE7E0A
F0 "sheet5CCE7E0A" 50
F1 "solarPanel.sch" 50
F2 "Panel_P" I L 13950 5000 50 
F3 "Panel_N" I L 13950 5100 50 
$EndSheet
Wire Wire Line
	13950 5000 13000 5000
Wire Wire Line
	13000 5100 13950 5100
$Sheet
S 12050 5550 950  500 
U 5CCE81F0
F0 "sheet5CCE81F0" 50
F1 "MCC18.sch" 50
F2 "Panel_P" I R 13000 5700 50 
F3 "Panel_N" I R 13000 5800 50 
F4 "Bat_P" I L 12050 5700 50 
F5 "Bat_N" I L 12050 5800 50 
$EndSheet
$Sheet
S 13950 5550 1000 500 
U 5CCE81F4
F0 "sheet5CCE81F4" 50
F1 "solarPanel.sch" 50
F2 "Panel_P" I L 13950 5700 50 
F3 "Panel_N" I L 13950 5800 50 
$EndSheet
Wire Wire Line
	13950 5700 13000 5700
Wire Wire Line
	13000 5800 13950 5800
Wire Wire Line
	12050 3500 11950 3500
Wire Wire Line
	11950 3500 11950 2550
Connection ~ 11950 2550
Wire Wire Line
	11950 2550 12050 2550
Wire Wire Line
	11850 2650 11850 3600
Wire Wire Line
	11850 3600 12050 3600
Connection ~ 11850 2650
Wire Wire Line
	11850 2650 12050 2650
Wire Wire Line
	11750 2550 11750 4250
Wire Wire Line
	11750 4250 12050 4250
Connection ~ 11750 2550
Wire Wire Line
	11750 2550 11950 2550
Wire Wire Line
	11650 2650 11650 4350
Wire Wire Line
	11650 4350 12050 4350
Connection ~ 11650 2650
Wire Wire Line
	11650 2650 11850 2650
Wire Wire Line
	11550 5000 12050 5000
Wire Wire Line
	4450 2650 11050 2650
Wire Wire Line
	11550 5000 11550 2550
Connection ~ 11550 2550
Wire Wire Line
	11550 2550 11750 2550
Wire Wire Line
	11450 2650 11450 5100
Wire Wire Line
	11450 5100 12050 5100
Connection ~ 11450 2650
Wire Wire Line
	11450 2650 11650 2650
Wire Wire Line
	12050 5700 11350 5700
Wire Wire Line
	11350 5700 11350 2550
Connection ~ 11350 2550
Wire Wire Line
	11350 2550 11550 2550
Wire Wire Line
	11250 2650 11250 5800
Wire Wire Line
	11250 5800 12050 5800
Connection ~ 11250 2650
Wire Wire Line
	11250 2650 11450 2650
Wire Wire Line
	2450 2300 3000 2300
Wire Wire Line
	2900 10300 2900 2400
Connection ~ 2900 2400
Wire Wire Line
	2900 2400 3400 2400
$Sheet
S 12050 6300 950  450 
U 5CCF68BC
F0 "Módulo de Carregamento das Baterias Auxiliares" 50
F1 "MCA.sch" 50
F2 "Bat_P" I L 12050 6450 50 
F3 "Bat_N" I L 12050 6550 50 
F4 "Charger_P" I R 13000 6450 50 
F5 "Charger_N" I R 13000 6550 50 
$EndSheet
Wire Wire Line
	12050 6450 11150 6450
Wire Wire Line
	11150 6450 11150 2550
Connection ~ 11150 2550
Wire Wire Line
	11150 2550 11350 2550
Wire Wire Line
	11050 2650 11050 6550
Wire Wire Line
	11050 6550 12050 6550
Connection ~ 11050 2650
Wire Wire Line
	11050 2650 11250 2650
$EndSCHEMATC
