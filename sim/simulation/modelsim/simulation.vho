-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "06/26/2024 00:35:40"

-- 
-- Device: Altera 5M1270ZF256C4 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	PARKING_CU IS
    PORT (
	uni_parked_car : OUT std_logic_vector(31 DOWNTO 0);
	parked_car : OUT std_logic_vector(31 DOWNTO 0);
	uni_vacated_space : OUT std_logic_vector(31 DOWNTO 0);
	vacated_space : OUT std_logic_vector(31 DOWNTO 0);
	uni_is_vacated_space : OUT std_logic;
	is_vacated_space : OUT std_logic;
	is_uni_car_entered : IN std_logic;
	car_entered : IN std_logic;
	car_exited : IN std_logic;
	is_uni_car_exited : IN std_logic;
	clk : IN std_logic
	);
END PARKING_CU;

-- Design Ports Information
-- uni_parked_car[0]	=>  Location: PIN_N10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[1]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[2]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[3]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[4]	=>  Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[5]	=>  Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[6]	=>  Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[7]	=>  Location: PIN_P10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[8]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[9]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[10]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[11]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[12]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[13]	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[14]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[15]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[16]	=>  Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[17]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[18]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[19]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[20]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[21]	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[22]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[23]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[24]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[25]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[26]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[27]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[28]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[29]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[30]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_parked_car[31]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[0]	=>  Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[1]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[2]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[3]	=>  Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[4]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[5]	=>  Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[6]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[7]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[8]	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[9]	=>  Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[10]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[11]	=>  Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[12]	=>  Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[13]	=>  Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[14]	=>  Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[15]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[16]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[17]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[18]	=>  Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[19]	=>  Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[20]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[21]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[22]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[23]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[24]	=>  Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[25]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[26]	=>  Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[27]	=>  Location: PIN_M10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[28]	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[29]	=>  Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[30]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- parked_car[31]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[0]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[1]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[2]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[3]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[4]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[5]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[6]	=>  Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[7]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[8]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[9]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[10]	=>  Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[11]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[12]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[13]	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[14]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[15]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[16]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[17]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[18]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[19]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[20]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[21]	=>  Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[22]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[23]	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[24]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[25]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[26]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[27]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[28]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[29]	=>  Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[30]	=>  Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_vacated_space[31]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[0]	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[1]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[2]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[3]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[4]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[5]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[6]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[7]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[8]	=>  Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[9]	=>  Location: PIN_M11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[10]	=>  Location: PIN_K12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[11]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[12]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[13]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[14]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[15]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[16]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[17]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[18]	=>  Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[19]	=>  Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[20]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[21]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[22]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[23]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[24]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[25]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[26]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[27]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[28]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[29]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[30]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- vacated_space[31]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- uni_is_vacated_space	=>  Location: PIN_K11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- is_vacated_space	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- clk	=>  Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- is_uni_car_exited	=>  Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- car_exited	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- is_uni_car_entered	=>  Location: PIN_K13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- car_entered	=>  Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF PARKING_CU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_uni_parked_car : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_parked_car : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_uni_vacated_space : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_vacated_space : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_uni_is_vacated_space : std_logic;
SIGNAL ww_is_vacated_space : std_logic;
SIGNAL ww_is_uni_car_entered : std_logic;
SIGNAL ww_car_entered : std_logic;
SIGNAL ww_car_exited : std_logic;
SIGNAL ww_is_uni_car_exited : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL \Add6~40\ : std_logic;
SIGNAL \Add7~187\ : std_logic;
SIGNAL \LessThan5~5\ : std_logic;
SIGNAL \LessThan6~5\ : std_logic;
SIGNAL \LessThan5~10\ : std_logic;
SIGNAL \LessThan6~10\ : std_logic;
SIGNAL \LessThan5~15\ : std_logic;
SIGNAL \LessThan6~15\ : std_logic;
SIGNAL \LessThan5~20\ : std_logic;
SIGNAL \LessThan6~20\ : std_logic;
SIGNAL \LessThan5~25\ : std_logic;
SIGNAL \LessThan6~25\ : std_logic;
SIGNAL \LessThan5~30\ : std_logic;
SIGNAL \LessThan6~30\ : std_logic;
SIGNAL \LessThan5~35\ : std_logic;
SIGNAL \LessThan6~35\ : std_logic;
SIGNAL \LessThan5~40\ : std_logic;
SIGNAL \LessThan6~40\ : std_logic;
SIGNAL \LessThan5~45\ : std_logic;
SIGNAL \LessThan6~45\ : std_logic;
SIGNAL \LessThan5~50\ : std_logic;
SIGNAL \LessThan6~50\ : std_logic;
SIGNAL \LessThan5~55\ : std_logic;
SIGNAL \LessThan6~55\ : std_logic;
SIGNAL \LessThan5~60\ : std_logic;
SIGNAL \LessThan6~60\ : std_logic;
SIGNAL \LessThan5~65\ : std_logic;
SIGNAL \LessThan6~65\ : std_logic;
SIGNAL \LessThan5~70\ : std_logic;
SIGNAL \LessThan6~70\ : std_logic;
SIGNAL \LessThan5~75\ : std_logic;
SIGNAL \LessThan6~75\ : std_logic;
SIGNAL \LessThan5~80\ : std_logic;
SIGNAL \LessThan6~80\ : std_logic;
SIGNAL \LessThan5~85\ : std_logic;
SIGNAL \LessThan6~85\ : std_logic;
SIGNAL \LessThan5~90\ : std_logic;
SIGNAL \LessThan6~90\ : std_logic;
SIGNAL \LessThan5~95\ : std_logic;
SIGNAL \LessThan6~95\ : std_logic;
SIGNAL \LessThan5~100\ : std_logic;
SIGNAL \LessThan6~100\ : std_logic;
SIGNAL \LessThan5~105\ : std_logic;
SIGNAL \LessThan6~105\ : std_logic;
SIGNAL \LessThan5~110\ : std_logic;
SIGNAL \LessThan6~110\ : std_logic;
SIGNAL \LessThan5~115\ : std_logic;
SIGNAL \LessThan6~115\ : std_logic;
SIGNAL \LessThan5~120\ : std_logic;
SIGNAL \LessThan6~120\ : std_logic;
SIGNAL \LessThan5~125\ : std_logic;
SIGNAL \LessThan6~125\ : std_logic;
SIGNAL \LessThan5~130\ : std_logic;
SIGNAL \LessThan6~130\ : std_logic;
SIGNAL \LessThan5~135\ : std_logic;
SIGNAL \LessThan6~135\ : std_logic;
SIGNAL \LessThan5~140\ : std_logic;
SIGNAL \LessThan6~140\ : std_logic;
SIGNAL \LessThan5~145\ : std_logic;
SIGNAL \LessThan6~145\ : std_logic;
SIGNAL \LessThan5~150\ : std_logic;
SIGNAL \LessThan6~150\ : std_logic;
SIGNAL \LessThan5~155\ : std_logic;
SIGNAL \LessThan6~155\ : std_logic;
SIGNAL \car_exited~combout\ : std_logic;
SIGNAL \car_entered~combout\ : std_logic;
SIGNAL \is_uni_car_entered~combout\ : std_logic;
SIGNAL \reg_entrances[1]~1\ : std_logic;
SIGNAL \reg_entrances[1]~1COUT1_91\ : std_logic;
SIGNAL \reg_entrances[2]~3\ : std_logic;
SIGNAL \reg_entrances[2]~3COUT1_93\ : std_logic;
SIGNAL \reg_entrances[3]~5\ : std_logic;
SIGNAL \reg_entrances[3]~5COUT1_95\ : std_logic;
SIGNAL \reg_entrances[4]~7\ : std_logic;
SIGNAL \reg_entrances[4]~7COUT1_97\ : std_logic;
SIGNAL \reg_entrances[5]~9\ : std_logic;
SIGNAL \reg_entrances[6]~11\ : std_logic;
SIGNAL \reg_entrances[6]~11COUT1_99\ : std_logic;
SIGNAL \reg_entrances[7]~13\ : std_logic;
SIGNAL \reg_entrances[7]~13COUT1_101\ : std_logic;
SIGNAL \reg_entrances[8]~15\ : std_logic;
SIGNAL \reg_entrances[8]~15COUT1_103\ : std_logic;
SIGNAL \reg_entrances[9]~17\ : std_logic;
SIGNAL \reg_entrances[9]~17COUT1_105\ : std_logic;
SIGNAL \reg_entrances[10]~19\ : std_logic;
SIGNAL \reg_entrances[11]~21\ : std_logic;
SIGNAL \reg_entrances[11]~21COUT1_107\ : std_logic;
SIGNAL \reg_entrances[12]~23\ : std_logic;
SIGNAL \reg_entrances[12]~23COUT1_109\ : std_logic;
SIGNAL \reg_entrances[13]~25\ : std_logic;
SIGNAL \reg_entrances[13]~25COUT1_111\ : std_logic;
SIGNAL \reg_entrances[14]~27\ : std_logic;
SIGNAL \reg_entrances[14]~27COUT1_113\ : std_logic;
SIGNAL \reg_entrances[15]~29\ : std_logic;
SIGNAL \reg_entrances[16]~31\ : std_logic;
SIGNAL \reg_entrances[16]~31COUT1_115\ : std_logic;
SIGNAL \reg_entrances[17]~33\ : std_logic;
SIGNAL \reg_entrances[17]~33COUT1_117\ : std_logic;
SIGNAL \reg_entrances[18]~35\ : std_logic;
SIGNAL \reg_entrances[18]~35COUT1_119\ : std_logic;
SIGNAL \reg_entrances[19]~37\ : std_logic;
SIGNAL \reg_entrances[19]~37COUT1_121\ : std_logic;
SIGNAL \reg_entrances[20]~39\ : std_logic;
SIGNAL \reg_entrances[21]~41\ : std_logic;
SIGNAL \reg_entrances[21]~41COUT1_123\ : std_logic;
SIGNAL \reg_entrances[22]~43\ : std_logic;
SIGNAL \reg_entrances[22]~43COUT1_125\ : std_logic;
SIGNAL \reg_entrances[23]~45\ : std_logic;
SIGNAL \reg_entrances[23]~45COUT1_127\ : std_logic;
SIGNAL \reg_entrances[24]~47\ : std_logic;
SIGNAL \reg_entrances[24]~47COUT1_129\ : std_logic;
SIGNAL \reg_entrances[25]~49\ : std_logic;
SIGNAL \reg_entrances[26]~51\ : std_logic;
SIGNAL \reg_entrances[26]~51COUT1_131\ : std_logic;
SIGNAL \reg_entrances[27]~53\ : std_logic;
SIGNAL \reg_entrances[27]~53COUT1_133\ : std_logic;
SIGNAL \reg_entrances[28]~55\ : std_logic;
SIGNAL \reg_entrances[28]~55COUT1_135\ : std_logic;
SIGNAL \reg_entrances[29]~57\ : std_logic;
SIGNAL \reg_entrances[29]~57COUT1_137\ : std_logic;
SIGNAL \is_uni_car_exited~combout\ : std_logic;
SIGNAL \reg_departures[1]~1\ : std_logic;
SIGNAL \reg_departures[1]~1COUT1_90\ : std_logic;
SIGNAL \reg_departures[2]~3\ : std_logic;
SIGNAL \reg_departures[2]~3COUT1_92\ : std_logic;
SIGNAL \reg_departures[3]~5\ : std_logic;
SIGNAL \reg_departures[3]~5COUT1_94\ : std_logic;
SIGNAL \reg_departures[4]~7\ : std_logic;
SIGNAL \reg_departures[4]~7COUT1_96\ : std_logic;
SIGNAL \reg_departures[5]~9\ : std_logic;
SIGNAL \reg_departures[6]~11\ : std_logic;
SIGNAL \reg_departures[6]~11COUT1_98\ : std_logic;
SIGNAL \reg_departures[7]~13\ : std_logic;
SIGNAL \reg_departures[7]~13COUT1_100\ : std_logic;
SIGNAL \reg_departures[8]~15\ : std_logic;
SIGNAL \reg_departures[8]~15COUT1_102\ : std_logic;
SIGNAL \reg_departures[9]~17\ : std_logic;
SIGNAL \reg_departures[9]~17COUT1_104\ : std_logic;
SIGNAL \reg_departures[10]~19\ : std_logic;
SIGNAL \reg_departures[11]~21\ : std_logic;
SIGNAL \reg_departures[11]~21COUT1_106\ : std_logic;
SIGNAL \reg_departures[12]~23\ : std_logic;
SIGNAL \reg_departures[12]~23COUT1_108\ : std_logic;
SIGNAL \reg_departures[13]~25\ : std_logic;
SIGNAL \reg_departures[13]~25COUT1_110\ : std_logic;
SIGNAL \reg_departures[14]~27\ : std_logic;
SIGNAL \reg_departures[14]~27COUT1_112\ : std_logic;
SIGNAL \reg_departures[15]~29\ : std_logic;
SIGNAL \reg_departures[16]~31\ : std_logic;
SIGNAL \reg_departures[16]~31COUT1_114\ : std_logic;
SIGNAL \reg_departures[17]~33\ : std_logic;
SIGNAL \reg_departures[17]~33COUT1_116\ : std_logic;
SIGNAL \reg_departures[18]~35\ : std_logic;
SIGNAL \reg_departures[18]~35COUT1_118\ : std_logic;
SIGNAL \reg_departures[19]~37\ : std_logic;
SIGNAL \reg_departures[19]~37COUT1_120\ : std_logic;
SIGNAL \reg_departures[20]~39\ : std_logic;
SIGNAL \reg_departures[21]~41\ : std_logic;
SIGNAL \reg_departures[21]~41COUT1_122\ : std_logic;
SIGNAL \reg_departures[22]~43\ : std_logic;
SIGNAL \reg_departures[22]~43COUT1_124\ : std_logic;
SIGNAL \reg_departures[23]~45\ : std_logic;
SIGNAL \reg_departures[23]~45COUT1_126\ : std_logic;
SIGNAL \reg_departures[24]~47\ : std_logic;
SIGNAL \reg_departures[24]~47COUT1_128\ : std_logic;
SIGNAL \reg_departures[25]~49\ : std_logic;
SIGNAL \reg_departures[26]~51\ : std_logic;
SIGNAL \reg_departures[26]~51COUT1_130\ : std_logic;
SIGNAL \reg_departures[27]~53\ : std_logic;
SIGNAL \reg_departures[27]~53COUT1_132\ : std_logic;
SIGNAL \reg_departures[28]~55\ : std_logic;
SIGNAL \reg_departures[28]~55COUT1_134\ : std_logic;
SIGNAL \reg_departures[29]~57\ : std_logic;
SIGNAL \reg_departures[29]~57COUT1_136\ : std_logic;
SIGNAL \reg_departures[30]~59\ : std_logic;
SIGNAL \LessThan6~157_cout\ : std_logic;
SIGNAL \LessThan6~152_cout0\ : std_logic;
SIGNAL \LessThan6~152COUT1_186\ : std_logic;
SIGNAL \LessThan6~147_cout0\ : std_logic;
SIGNAL \LessThan6~147COUT1_188\ : std_logic;
SIGNAL \LessThan6~142_cout0\ : std_logic;
SIGNAL \LessThan6~142COUT1_190\ : std_logic;
SIGNAL \LessThan6~137_cout0\ : std_logic;
SIGNAL \LessThan6~137COUT1_192\ : std_logic;
SIGNAL \LessThan6~132_cout\ : std_logic;
SIGNAL \LessThan6~127_cout0\ : std_logic;
SIGNAL \LessThan6~127COUT1_194\ : std_logic;
SIGNAL \LessThan6~122_cout0\ : std_logic;
SIGNAL \LessThan6~122COUT1_196\ : std_logic;
SIGNAL \LessThan6~117_cout0\ : std_logic;
SIGNAL \LessThan6~117COUT1_198\ : std_logic;
SIGNAL \LessThan6~112_cout0\ : std_logic;
SIGNAL \LessThan6~112COUT1_200\ : std_logic;
SIGNAL \LessThan6~107_cout\ : std_logic;
SIGNAL \LessThan6~102_cout0\ : std_logic;
SIGNAL \LessThan6~102COUT1_202\ : std_logic;
SIGNAL \LessThan6~97_cout0\ : std_logic;
SIGNAL \LessThan6~97COUT1_204\ : std_logic;
SIGNAL \LessThan6~92_cout0\ : std_logic;
SIGNAL \LessThan6~92COUT1_206\ : std_logic;
SIGNAL \LessThan6~87_cout0\ : std_logic;
SIGNAL \LessThan6~87COUT1_208\ : std_logic;
SIGNAL \LessThan6~82_cout\ : std_logic;
SIGNAL \LessThan6~77_cout0\ : std_logic;
SIGNAL \LessThan6~77COUT1_210\ : std_logic;
SIGNAL \LessThan6~72_cout0\ : std_logic;
SIGNAL \LessThan6~72COUT1_212\ : std_logic;
SIGNAL \LessThan6~67_cout0\ : std_logic;
SIGNAL \LessThan6~67COUT1_214\ : std_logic;
SIGNAL \LessThan6~62_cout0\ : std_logic;
SIGNAL \LessThan6~62COUT1_216\ : std_logic;
SIGNAL \LessThan6~57_cout\ : std_logic;
SIGNAL \LessThan6~52_cout0\ : std_logic;
SIGNAL \LessThan6~52COUT1_218\ : std_logic;
SIGNAL \LessThan6~47_cout0\ : std_logic;
SIGNAL \LessThan6~47COUT1_220\ : std_logic;
SIGNAL \LessThan6~42_cout0\ : std_logic;
SIGNAL \LessThan6~42COUT1_222\ : std_logic;
SIGNAL \LessThan6~37_cout0\ : std_logic;
SIGNAL \LessThan6~37COUT1_224\ : std_logic;
SIGNAL \LessThan6~32_cout\ : std_logic;
SIGNAL \LessThan6~27_cout0\ : std_logic;
SIGNAL \LessThan6~27COUT1_226\ : std_logic;
SIGNAL \LessThan6~22_cout0\ : std_logic;
SIGNAL \LessThan6~22COUT1_228\ : std_logic;
SIGNAL \LessThan6~17_cout0\ : std_logic;
SIGNAL \LessThan6~17COUT1_230\ : std_logic;
SIGNAL \LessThan6~12_cout0\ : std_logic;
SIGNAL \LessThan6~12COUT1_232\ : std_logic;
SIGNAL \LessThan6~7_cout\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \reg_departures[8]~63_combout\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~7COUT1_186\ : std_logic;
SIGNAL \Add2~12\ : std_logic;
SIGNAL \Add2~12COUT1_188\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~17COUT1_190\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~22COUT1_192\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~32\ : std_logic;
SIGNAL \Add2~32COUT1_194\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~37COUT1_196\ : std_logic;
SIGNAL \Add2~42\ : std_logic;
SIGNAL \Add2~42COUT1_198\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~47COUT1_200\ : std_logic;
SIGNAL \Add2~52\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~57COUT1_202\ : std_logic;
SIGNAL \Add2~62\ : std_logic;
SIGNAL \Add2~62COUT1_204\ : std_logic;
SIGNAL \Add2~67\ : std_logic;
SIGNAL \Add2~67COUT1_206\ : std_logic;
SIGNAL \Add2~72\ : std_logic;
SIGNAL \Add2~72COUT1_208\ : std_logic;
SIGNAL \Add2~77\ : std_logic;
SIGNAL \Add2~82\ : std_logic;
SIGNAL \Add2~82COUT1_210\ : std_logic;
SIGNAL \Add2~87\ : std_logic;
SIGNAL \Add2~87COUT1_212\ : std_logic;
SIGNAL \Add2~92\ : std_logic;
SIGNAL \Add2~92COUT1_214\ : std_logic;
SIGNAL \Add2~97\ : std_logic;
SIGNAL \Add2~97COUT1_216\ : std_logic;
SIGNAL \Add2~102\ : std_logic;
SIGNAL \Add2~107\ : std_logic;
SIGNAL \Add2~107COUT1_218\ : std_logic;
SIGNAL \Add2~112\ : std_logic;
SIGNAL \Add2~112COUT1_220\ : std_logic;
SIGNAL \Add2~117\ : std_logic;
SIGNAL \Add2~117COUT1_222\ : std_logic;
SIGNAL \Add2~122\ : std_logic;
SIGNAL \Add2~122COUT1_224\ : std_logic;
SIGNAL \Add2~127\ : std_logic;
SIGNAL \Add2~132\ : std_logic;
SIGNAL \Add2~132COUT1_226\ : std_logic;
SIGNAL \Add2~137\ : std_logic;
SIGNAL \Add2~137COUT1_228\ : std_logic;
SIGNAL \Add2~142\ : std_logic;
SIGNAL \Add2~142COUT1_230\ : std_logic;
SIGNAL \Add2~147\ : std_logic;
SIGNAL \Add2~147COUT1_232\ : std_logic;
SIGNAL \Add2~150_combout\ : std_logic;
SIGNAL \Add2~125_combout\ : std_logic;
SIGNAL \Add2~100_combout\ : std_logic;
SIGNAL \Add2~75_combout\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add2~25_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \Add1~95_combout\ : std_logic;
SIGNAL \Add1~97\ : std_logic;
SIGNAL \Add1~97COUT1_218\ : std_logic;
SIGNAL \Add1~100_combout\ : std_logic;
SIGNAL \Add1~102\ : std_logic;
SIGNAL \Add1~102COUT1_220\ : std_logic;
SIGNAL \Add1~105_combout\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~32\ : std_logic;
SIGNAL \Add1~32COUT1_194\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~7COUT1_186\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~12\ : std_logic;
SIGNAL \Add1~12COUT1_188\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~17COUT1_190\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~22COUT1_192\ : std_logic;
SIGNAL \Add1~25_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~37COUT1_196\ : std_logic;
SIGNAL \Add1~55_combout\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~57COUT1_198\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~42\ : std_logic;
SIGNAL \Add1~42COUT1_200\ : std_logic;
SIGNAL \Add1~45_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~52\ : std_logic;
SIGNAL \Add1~52COUT1_202\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~62\ : std_logic;
SIGNAL \Add1~62COUT1_204\ : std_logic;
SIGNAL \Add1~65_combout\ : std_logic;
SIGNAL \Add1~67\ : std_logic;
SIGNAL \Add1~67COUT1_206\ : std_logic;
SIGNAL \Add1~70_combout\ : std_logic;
SIGNAL \Add1~72\ : std_logic;
SIGNAL \Add1~72COUT1_208\ : std_logic;
SIGNAL \Add1~75_combout\ : std_logic;
SIGNAL \Add1~77\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~82COUT1_210\ : std_logic;
SIGNAL \Add1~85_combout\ : std_logic;
SIGNAL \Add1~80_combout\ : std_logic;
SIGNAL \Equal0~5\ : std_logic;
SIGNAL \Add1~87\ : std_logic;
SIGNAL \Add1~87COUT1_212\ : std_logic;
SIGNAL \Add1~110_combout\ : std_logic;
SIGNAL \Equal0~6\ : std_logic;
SIGNAL \Add1~112\ : std_logic;
SIGNAL \Add1~112COUT1_214\ : std_logic;
SIGNAL \Add1~115_combout\ : std_logic;
SIGNAL \Add1~117\ : std_logic;
SIGNAL \Add1~117COUT1_216\ : std_logic;
SIGNAL \Add1~90_combout\ : std_logic;
SIGNAL \Add1~92\ : std_logic;
SIGNAL \Add1~130_combout\ : std_logic;
SIGNAL \Add1~107\ : std_logic;
SIGNAL \Add1~107COUT1_222\ : std_logic;
SIGNAL \Add1~120_combout\ : std_logic;
SIGNAL \Add1~122\ : std_logic;
SIGNAL \Add1~122COUT1_224\ : std_logic;
SIGNAL \Add1~125_combout\ : std_logic;
SIGNAL \Add1~127\ : std_logic;
SIGNAL \Add1~132\ : std_logic;
SIGNAL \Add1~132COUT1_226\ : std_logic;
SIGNAL \Add1~135_combout\ : std_logic;
SIGNAL \Equal0~8\ : std_logic;
SIGNAL \Add1~137\ : std_logic;
SIGNAL \Add1~137COUT1_228\ : std_logic;
SIGNAL \Add1~140_combout\ : std_logic;
SIGNAL \Add1~142COUT1_230\ : std_logic;
SIGNAL \Add1~147COUT1_232\ : std_logic;
SIGNAL \Add1~152\ : std_logic;
SIGNAL \Add1~155_combout\ : std_logic;
SIGNAL \Add1~142\ : std_logic;
SIGNAL \Add1~145_combout\ : std_logic;
SIGNAL \Add1~147\ : std_logic;
SIGNAL \Add1~150_combout\ : std_logic;
SIGNAL \Equal0~9\ : std_logic;
SIGNAL \Equal0~7\ : std_logic;
SIGNAL \Equal0~1\ : std_logic;
SIGNAL \Equal0~0\ : std_logic;
SIGNAL \Equal0~2\ : std_logic;
SIGNAL \Equal0~3\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Add0~157\ : std_logic;
SIGNAL \Add0~157COUT1_186\ : std_logic;
SIGNAL \Add0~145_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~7COUT1_218\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~12COUT1_220\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~70_combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~97COUT1_202\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~102COUT1_204\ : std_logic;
SIGNAL \Add0~107\ : std_logic;
SIGNAL \Add0~107COUT1_206\ : std_logic;
SIGNAL \Add0~110_combout\ : std_logic;
SIGNAL \Add0~102\ : std_logic;
SIGNAL \Add0~105_combout\ : std_logic;
SIGNAL \Equal1~3\ : std_logic;
SIGNAL \Equal1~0\ : std_logic;
SIGNAL \Add0~72\ : std_logic;
SIGNAL \Add0~72COUT1_194\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~77\ : std_logic;
SIGNAL \Add0~77COUT1_196\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~82COUT1_198\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Equal1~2\ : std_logic;
SIGNAL \Equal1~1\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Add0~147\ : std_logic;
SIGNAL \Add0~147COUT1_188\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~62COUT1_190\ : std_logic;
SIGNAL \Add0~150_combout\ : std_logic;
SIGNAL \daytime~1_combout\ : std_logic;
SIGNAL \Add0~152\ : std_logic;
SIGNAL \Add0~152COUT1_192\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~87\ : std_logic;
SIGNAL \Add0~87COUT1_200\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~92\ : std_logic;
SIGNAL \Add0~112\ : std_logic;
SIGNAL \Add0~112COUT1_208\ : std_logic;
SIGNAL \Add0~115_combout\ : std_logic;
SIGNAL \Add0~117\ : std_logic;
SIGNAL \Add0~120_combout\ : std_logic;
SIGNAL \Add0~122\ : std_logic;
SIGNAL \Add0~122COUT1_210\ : std_logic;
SIGNAL \Add0~125_combout\ : std_logic;
SIGNAL \Add0~127\ : std_logic;
SIGNAL \Add0~127COUT1_212\ : std_logic;
SIGNAL \Add0~130_combout\ : std_logic;
SIGNAL \Add0~132\ : std_logic;
SIGNAL \Add0~132COUT1_214\ : std_logic;
SIGNAL \Add0~135_combout\ : std_logic;
SIGNAL \Add0~137\ : std_logic;
SIGNAL \Add0~137COUT1_216\ : std_logic;
SIGNAL \Add0~140_combout\ : std_logic;
SIGNAL \Add0~142\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~17COUT1_222\ : std_logic;
SIGNAL \Add0~22COUT1_224\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~32COUT1_226\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Equal1~7\ : std_logic;
SIGNAL \Equal1~6\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~37COUT1_228\ : std_logic;
SIGNAL \Add0~42COUT1_230\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~47COUT1_232\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Equal1~8\ : std_logic;
SIGNAL \Equal1~5\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~155_combout\ : std_logic;
SIGNAL \always0~9_combout\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \daytime~0\ : std_logic;
SIGNAL \always0~4_combout\ : std_logic;
SIGNAL \always0~3_combout\ : std_logic;
SIGNAL \always0~5_combout\ : std_logic;
SIGNAL \always0~6_combout\ : std_logic;
SIGNAL \always0~7_combout\ : std_logic;
SIGNAL \always0~1_combout\ : std_logic;
SIGNAL \always0~2_combout\ : std_logic;
SIGNAL \always0~8_combout\ : std_logic;
SIGNAL \always0~10_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add7~189_cout\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~15_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~5_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~3COUT1_218\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~9COUT1_220\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~15COUT1_222\ : std_logic;
SIGNAL \Add7~21\ : std_logic;
SIGNAL \Add7~21COUT1_224\ : std_logic;
SIGNAL \Add7~27\ : std_logic;
SIGNAL \Add2~45_combout\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~35_combout\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add7~33\ : std_logic;
SIGNAL \Add7~33COUT1_226\ : std_logic;
SIGNAL \Add7~39\ : std_logic;
SIGNAL \Add7~39COUT1_228\ : std_logic;
SIGNAL \Add7~45\ : std_logic;
SIGNAL \Add7~45COUT1_230\ : std_logic;
SIGNAL \Add7~51\ : std_logic;
SIGNAL \Add7~51COUT1_232\ : std_logic;
SIGNAL \Add7~57\ : std_logic;
SIGNAL \Add2~70_combout\ : std_logic;
SIGNAL \Add2~65_combout\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Add2~55_combout\ : std_logic;
SIGNAL \Add7~63\ : std_logic;
SIGNAL \Add7~63COUT1_234\ : std_logic;
SIGNAL \Add7~69\ : std_logic;
SIGNAL \Add7~69COUT1_236\ : std_logic;
SIGNAL \Add7~75\ : std_logic;
SIGNAL \Add7~75COUT1_238\ : std_logic;
SIGNAL \Add7~81\ : std_logic;
SIGNAL \Add7~81COUT1_240\ : std_logic;
SIGNAL \Add7~87\ : std_logic;
SIGNAL \Add2~95_combout\ : std_logic;
SIGNAL \Add2~90_combout\ : std_logic;
SIGNAL \Add2~85_combout\ : std_logic;
SIGNAL \Add2~80_combout\ : std_logic;
SIGNAL \Add7~93\ : std_logic;
SIGNAL \Add7~93COUT1_242\ : std_logic;
SIGNAL \Add7~99\ : std_logic;
SIGNAL \Add7~99COUT1_244\ : std_logic;
SIGNAL \Add7~105\ : std_logic;
SIGNAL \Add7~105COUT1_246\ : std_logic;
SIGNAL \Add7~111\ : std_logic;
SIGNAL \Add7~111COUT1_248\ : std_logic;
SIGNAL \Add7~117\ : std_logic;
SIGNAL \Add2~120_combout\ : std_logic;
SIGNAL \Add2~115_combout\ : std_logic;
SIGNAL \Add2~110_combout\ : std_logic;
SIGNAL \Add2~105_combout\ : std_logic;
SIGNAL \Add7~123\ : std_logic;
SIGNAL \Add7~123COUT1_250\ : std_logic;
SIGNAL \Add7~129\ : std_logic;
SIGNAL \Add7~129COUT1_252\ : std_logic;
SIGNAL \Add7~135\ : std_logic;
SIGNAL \Add7~135COUT1_254\ : std_logic;
SIGNAL \Add7~141\ : std_logic;
SIGNAL \Add7~141COUT1_256\ : std_logic;
SIGNAL \Add7~147\ : std_logic;
SIGNAL \Add2~145_combout\ : std_logic;
SIGNAL \Add2~140_combout\ : std_logic;
SIGNAL \Add2~135_combout\ : std_logic;
SIGNAL \Add2~130_combout\ : std_logic;
SIGNAL \Add7~153\ : std_logic;
SIGNAL \Add7~153COUT1_258\ : std_logic;
SIGNAL \Add7~159\ : std_logic;
SIGNAL \Add7~159COUT1_260\ : std_logic;
SIGNAL \Add7~165\ : std_logic;
SIGNAL \Add7~165COUT1_262\ : std_logic;
SIGNAL \Add7~171\ : std_logic;
SIGNAL \Add7~171COUT1_264\ : std_logic;
SIGNAL \Add7~177\ : std_logic;
SIGNAL \Add7~181_combout\ : std_logic;
SIGNAL \uni_departures[31]~63_combout\ : std_logic;
SIGNAL \uni_departures[1]~1\ : std_logic;
SIGNAL \uni_departures[1]~1COUT1_90\ : std_logic;
SIGNAL \uni_departures[2]~3\ : std_logic;
SIGNAL \uni_departures[2]~3COUT1_92\ : std_logic;
SIGNAL \uni_departures[3]~5\ : std_logic;
SIGNAL \uni_departures[3]~5COUT1_94\ : std_logic;
SIGNAL \uni_departures[4]~7\ : std_logic;
SIGNAL \uni_departures[4]~7COUT1_96\ : std_logic;
SIGNAL \uni_departures[5]~9\ : std_logic;
SIGNAL \uni_departures[6]~11\ : std_logic;
SIGNAL \uni_departures[6]~11COUT1_98\ : std_logic;
SIGNAL \uni_departures[7]~13\ : std_logic;
SIGNAL \uni_departures[7]~13COUT1_100\ : std_logic;
SIGNAL \uni_departures[8]~15\ : std_logic;
SIGNAL \uni_departures[8]~15COUT1_102\ : std_logic;
SIGNAL \uni_departures[9]~17\ : std_logic;
SIGNAL \uni_departures[9]~17COUT1_104\ : std_logic;
SIGNAL \uni_departures[10]~19\ : std_logic;
SIGNAL \uni_departures[11]~21\ : std_logic;
SIGNAL \uni_departures[11]~21COUT1_106\ : std_logic;
SIGNAL \uni_departures[12]~23\ : std_logic;
SIGNAL \uni_departures[12]~23COUT1_108\ : std_logic;
SIGNAL \uni_departures[13]~25\ : std_logic;
SIGNAL \uni_departures[13]~25COUT1_110\ : std_logic;
SIGNAL \uni_departures[14]~27\ : std_logic;
SIGNAL \uni_departures[14]~27COUT1_112\ : std_logic;
SIGNAL \uni_departures[15]~29\ : std_logic;
SIGNAL \uni_entrances[6]~11\ : std_logic;
SIGNAL \uni_entrances[6]~11COUT1_98\ : std_logic;
SIGNAL \uni_entrances[7]~13\ : std_logic;
SIGNAL \uni_entrances[7]~13COUT1_100\ : std_logic;
SIGNAL \uni_entrances[8]~15\ : std_logic;
SIGNAL \uni_entrances[8]~15COUT1_102\ : std_logic;
SIGNAL \uni_entrances[9]~17\ : std_logic;
SIGNAL \uni_entrances[9]~17COUT1_104\ : std_logic;
SIGNAL \uni_entrances[10]~19\ : std_logic;
SIGNAL \uni_entrances[11]~21\ : std_logic;
SIGNAL \uni_entrances[11]~21COUT1_106\ : std_logic;
SIGNAL \uni_entrances[12]~23\ : std_logic;
SIGNAL \uni_entrances[12]~23COUT1_108\ : std_logic;
SIGNAL \uni_entrances[13]~25\ : std_logic;
SIGNAL \uni_entrances[13]~25COUT1_110\ : std_logic;
SIGNAL \uni_entrances[14]~27\ : std_logic;
SIGNAL \uni_entrances[14]~27COUT1_112\ : std_logic;
SIGNAL \uni_entrances[15]~29\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~7COUT1_186\ : std_logic;
SIGNAL \Add3~12\ : std_logic;
SIGNAL \Add3~12COUT1_188\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~17COUT1_190\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~22COUT1_192\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~32\ : std_logic;
SIGNAL \Add3~32COUT1_194\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~37COUT1_196\ : std_logic;
SIGNAL \Add3~42\ : std_logic;
SIGNAL \Add3~42COUT1_198\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~47COUT1_200\ : std_logic;
SIGNAL \Add3~52\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~57COUT1_202\ : std_logic;
SIGNAL \Add3~62\ : std_logic;
SIGNAL \Add3~62COUT1_204\ : std_logic;
SIGNAL \Add3~67\ : std_logic;
SIGNAL \Add3~67COUT1_206\ : std_logic;
SIGNAL \Add3~72\ : std_logic;
SIGNAL \Add3~72COUT1_208\ : std_logic;
SIGNAL \Add3~77\ : std_logic;
SIGNAL \Add3~80_combout\ : std_logic;
SIGNAL \Add3~75_combout\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Add3~25_combout\ : std_logic;
SIGNAL \Add4~2\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~15_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \Add3~5_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~7COUT1_186\ : std_logic;
SIGNAL \Add4~12\ : std_logic;
SIGNAL \Add4~12COUT1_188\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~17COUT1_190\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~22COUT1_192\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \Add3~35_combout\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \Add4~32\ : std_logic;
SIGNAL \Add4~32COUT1_194\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~37COUT1_196\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~42COUT1_198\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~47COUT1_200\ : std_logic;
SIGNAL \Add4~52\ : std_logic;
SIGNAL \Add3~70_combout\ : std_logic;
SIGNAL \Add3~65_combout\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \Add3~55_combout\ : std_logic;
SIGNAL \Add4~57\ : std_logic;
SIGNAL \Add4~57COUT1_202\ : std_logic;
SIGNAL \Add4~62\ : std_logic;
SIGNAL \Add4~62COUT1_204\ : std_logic;
SIGNAL \Add4~67\ : std_logic;
SIGNAL \Add4~67COUT1_206\ : std_logic;
SIGNAL \Add4~72\ : std_logic;
SIGNAL \Add4~72COUT1_208\ : std_logic;
SIGNAL \Add4~77\ : std_logic;
SIGNAL \Add4~80_combout\ : std_logic;
SIGNAL \Add4~75_combout\ : std_logic;
SIGNAL \Add4~50_combout\ : std_logic;
SIGNAL \Add4~25_combout\ : std_logic;
SIGNAL \Add4~20_combout\ : std_logic;
SIGNAL \Add4~15_combout\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add4~5_combout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~2COUT1_181\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~7COUT1_183\ : std_logic;
SIGNAL \Add5~12\ : std_logic;
SIGNAL \Add5~12COUT1_185\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~17COUT1_187\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add4~45_combout\ : std_logic;
SIGNAL \Add4~40_combout\ : std_logic;
SIGNAL \Add4~35_combout\ : std_logic;
SIGNAL \Add4~30_combout\ : std_logic;
SIGNAL \Add5~27\ : std_logic;
SIGNAL \Add5~27COUT1_189\ : std_logic;
SIGNAL \Add5~32\ : std_logic;
SIGNAL \Add5~32COUT1_191\ : std_logic;
SIGNAL \Add5~37\ : std_logic;
SIGNAL \Add5~37COUT1_193\ : std_logic;
SIGNAL \Add5~42\ : std_logic;
SIGNAL \Add5~42COUT1_195\ : std_logic;
SIGNAL \Add5~47\ : std_logic;
SIGNAL \Add4~70_combout\ : std_logic;
SIGNAL \Add4~65_combout\ : std_logic;
SIGNAL \Add4~60_combout\ : std_logic;
SIGNAL \Add4~55_combout\ : std_logic;
SIGNAL \Add5~52\ : std_logic;
SIGNAL \Add5~52COUT1_197\ : std_logic;
SIGNAL \Add5~57\ : std_logic;
SIGNAL \Add5~57COUT1_199\ : std_logic;
SIGNAL \Add5~62\ : std_logic;
SIGNAL \Add5~62COUT1_201\ : std_logic;
SIGNAL \Add5~67\ : std_logic;
SIGNAL \Add5~67COUT1_203\ : std_logic;
SIGNAL \Add5~72\ : std_logic;
SIGNAL \Add5~75_combout\ : std_logic;
SIGNAL \uni_departures[16]~31\ : std_logic;
SIGNAL \uni_departures[16]~31COUT1_114\ : std_logic;
SIGNAL \uni_departures[17]~33\ : std_logic;
SIGNAL \uni_departures[17]~33COUT1_116\ : std_logic;
SIGNAL \uni_departures[18]~35\ : std_logic;
SIGNAL \uni_departures[18]~35COUT1_118\ : std_logic;
SIGNAL \uni_entrances[16]~31\ : std_logic;
SIGNAL \uni_entrances[16]~31COUT1_114\ : std_logic;
SIGNAL \uni_entrances[17]~33\ : std_logic;
SIGNAL \uni_entrances[17]~33COUT1_116\ : std_logic;
SIGNAL \uni_entrances[18]~35\ : std_logic;
SIGNAL \uni_entrances[18]~35COUT1_118\ : std_logic;
SIGNAL \Add3~82\ : std_logic;
SIGNAL \Add3~82COUT1_210\ : std_logic;
SIGNAL \Add3~87\ : std_logic;
SIGNAL \Add3~87COUT1_212\ : std_logic;
SIGNAL \Add3~92\ : std_logic;
SIGNAL \Add3~92COUT1_214\ : std_logic;
SIGNAL \Add3~95_combout\ : std_logic;
SIGNAL \Add3~90_combout\ : std_logic;
SIGNAL \Add3~85_combout\ : std_logic;
SIGNAL \Add4~82\ : std_logic;
SIGNAL \Add4~82COUT1_210\ : std_logic;
SIGNAL \Add4~87\ : std_logic;
SIGNAL \Add4~87COUT1_212\ : std_logic;
SIGNAL \Add4~92\ : std_logic;
SIGNAL \Add4~92COUT1_214\ : std_logic;
SIGNAL \Add4~95_combout\ : std_logic;
SIGNAL \Add4~90_combout\ : std_logic;
SIGNAL \Add4~85_combout\ : std_logic;
SIGNAL \Add5~77\ : std_logic;
SIGNAL \Add5~77COUT1_205\ : std_logic;
SIGNAL \Add5~82\ : std_logic;
SIGNAL \Add5~82COUT1_207\ : std_logic;
SIGNAL \Add5~87\ : std_logic;
SIGNAL \Add5~87COUT1_209\ : std_logic;
SIGNAL \Add5~90_combout\ : std_logic;
SIGNAL \Add5~80_combout\ : std_logic;
SIGNAL \Add5~85_combout\ : std_logic;
SIGNAL \LessThan3~5_combout\ : std_logic;
SIGNAL \uni_departures[19]~37\ : std_logic;
SIGNAL \uni_departures[19]~37COUT1_120\ : std_logic;
SIGNAL \uni_entrances[19]~37\ : std_logic;
SIGNAL \uni_entrances[19]~37COUT1_120\ : std_logic;
SIGNAL \Add3~97\ : std_logic;
SIGNAL \Add3~97COUT1_216\ : std_logic;
SIGNAL \Add3~100_combout\ : std_logic;
SIGNAL \Add4~97\ : std_logic;
SIGNAL \Add4~97COUT1_216\ : std_logic;
SIGNAL \Add4~100_combout\ : std_logic;
SIGNAL \Add5~92\ : std_logic;
SIGNAL \Add5~92COUT1_211\ : std_logic;
SIGNAL \Add5~95_combout\ : std_logic;
SIGNAL \uni_departures[20]~39\ : std_logic;
SIGNAL \uni_departures[21]~41\ : std_logic;
SIGNAL \uni_departures[21]~41COUT1_122\ : std_logic;
SIGNAL \uni_entrances[20]~39\ : std_logic;
SIGNAL \uni_entrances[21]~41\ : std_logic;
SIGNAL \uni_entrances[21]~41COUT1_122\ : std_logic;
SIGNAL \Add3~102\ : std_logic;
SIGNAL \Add3~107\ : std_logic;
SIGNAL \Add3~107COUT1_218\ : std_logic;
SIGNAL \Add3~110_combout\ : std_logic;
SIGNAL \Add4~102\ : std_logic;
SIGNAL \Add3~105_combout\ : std_logic;
SIGNAL \Add4~107\ : std_logic;
SIGNAL \Add4~107COUT1_218\ : std_logic;
SIGNAL \Add4~110_combout\ : std_logic;
SIGNAL \Add5~97\ : std_logic;
SIGNAL \Add4~105_combout\ : std_logic;
SIGNAL \Add5~102\ : std_logic;
SIGNAL \Add5~102COUT1_213\ : std_logic;
SIGNAL \Add5~105_combout\ : std_logic;
SIGNAL \uni_entrances[22]~43\ : std_logic;
SIGNAL \uni_entrances[22]~43COUT1_124\ : std_logic;
SIGNAL \uni_departures[22]~43\ : std_logic;
SIGNAL \uni_departures[22]~43COUT1_124\ : std_logic;
SIGNAL \Add3~112\ : std_logic;
SIGNAL \Add3~112COUT1_220\ : std_logic;
SIGNAL \Add3~115_combout\ : std_logic;
SIGNAL \Add4~112\ : std_logic;
SIGNAL \Add4~112COUT1_220\ : std_logic;
SIGNAL \Add4~115_combout\ : std_logic;
SIGNAL \Add5~107\ : std_logic;
SIGNAL \Add5~107COUT1_215\ : std_logic;
SIGNAL \Add5~110_combout\ : std_logic;
SIGNAL \Add5~100_combout\ : std_logic;
SIGNAL \LessThan3~6_combout\ : std_logic;
SIGNAL \Add5~5_combout\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \Add5~15_combout\ : std_logic;
SIGNAL \Add5~20_combout\ : std_logic;
SIGNAL \Add5~25_combout\ : std_logic;
SIGNAL \Add5~30_combout\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \Add5~40_combout\ : std_logic;
SIGNAL \Add5~45_combout\ : std_logic;
SIGNAL \Add5~35_combout\ : std_logic;
SIGNAL \Add5~50_combout\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \Add5~60_combout\ : std_logic;
SIGNAL \Add5~70_combout\ : std_logic;
SIGNAL \Add5~55_combout\ : std_logic;
SIGNAL \Add5~65_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \LessThan3~4_combout\ : std_logic;
SIGNAL \uni_departures[23]~45\ : std_logic;
SIGNAL \uni_departures[23]~45COUT1_126\ : std_logic;
SIGNAL \uni_departures[24]~47\ : std_logic;
SIGNAL \uni_departures[24]~47COUT1_128\ : std_logic;
SIGNAL \uni_departures[25]~49\ : std_logic;
SIGNAL \uni_departures[26]~51\ : std_logic;
SIGNAL \uni_departures[26]~51COUT1_130\ : std_logic;
SIGNAL \uni_departures[27]~53\ : std_logic;
SIGNAL \uni_departures[27]~53COUT1_132\ : std_logic;
SIGNAL \uni_departures[28]~55\ : std_logic;
SIGNAL \uni_departures[28]~55COUT1_134\ : std_logic;
SIGNAL \uni_entrances[23]~45\ : std_logic;
SIGNAL \uni_entrances[23]~45COUT1_126\ : std_logic;
SIGNAL \uni_entrances[24]~47\ : std_logic;
SIGNAL \uni_entrances[24]~47COUT1_128\ : std_logic;
SIGNAL \uni_entrances[25]~49\ : std_logic;
SIGNAL \uni_entrances[26]~51\ : std_logic;
SIGNAL \uni_entrances[26]~51COUT1_130\ : std_logic;
SIGNAL \uni_entrances[27]~53\ : std_logic;
SIGNAL \uni_entrances[27]~53COUT1_132\ : std_logic;
SIGNAL \uni_entrances[28]~55\ : std_logic;
SIGNAL \uni_entrances[28]~55COUT1_134\ : std_logic;
SIGNAL \Add3~117\ : std_logic;
SIGNAL \Add3~117COUT1_222\ : std_logic;
SIGNAL \Add3~122\ : std_logic;
SIGNAL \Add3~122COUT1_224\ : std_logic;
SIGNAL \Add3~127\ : std_logic;
SIGNAL \Add3~132\ : std_logic;
SIGNAL \Add3~132COUT1_226\ : std_logic;
SIGNAL \Add3~137\ : std_logic;
SIGNAL \Add3~137COUT1_228\ : std_logic;
SIGNAL \Add3~142\ : std_logic;
SIGNAL \Add3~142COUT1_230\ : std_logic;
SIGNAL \Add3~145_combout\ : std_logic;
SIGNAL \Add3~125_combout\ : std_logic;
SIGNAL \Add3~120_combout\ : std_logic;
SIGNAL \Add4~117\ : std_logic;
SIGNAL \Add4~117COUT1_222\ : std_logic;
SIGNAL \Add4~122\ : std_logic;
SIGNAL \Add4~122COUT1_224\ : std_logic;
SIGNAL \Add4~127\ : std_logic;
SIGNAL \Add3~140_combout\ : std_logic;
SIGNAL \Add3~135_combout\ : std_logic;
SIGNAL \Add3~130_combout\ : std_logic;
SIGNAL \Add4~132\ : std_logic;
SIGNAL \Add4~132COUT1_226\ : std_logic;
SIGNAL \Add4~137\ : std_logic;
SIGNAL \Add4~137COUT1_228\ : std_logic;
SIGNAL \Add4~142\ : std_logic;
SIGNAL \Add4~142COUT1_230\ : std_logic;
SIGNAL \Add4~145_combout\ : std_logic;
SIGNAL \Add4~125_combout\ : std_logic;
SIGNAL \Add4~120_combout\ : std_logic;
SIGNAL \Add5~112\ : std_logic;
SIGNAL \Add5~112COUT1_217\ : std_logic;
SIGNAL \Add5~117\ : std_logic;
SIGNAL \Add5~117COUT1_219\ : std_logic;
SIGNAL \Add5~122\ : std_logic;
SIGNAL \Add4~140_combout\ : std_logic;
SIGNAL \Add4~135_combout\ : std_logic;
SIGNAL \Add4~130_combout\ : std_logic;
SIGNAL \Add5~127\ : std_logic;
SIGNAL \Add5~127COUT1_221\ : std_logic;
SIGNAL \Add5~132\ : std_logic;
SIGNAL \Add5~132COUT1_223\ : std_logic;
SIGNAL \Add5~137\ : std_logic;
SIGNAL \Add5~137COUT1_225\ : std_logic;
SIGNAL \Add5~140_combout\ : std_logic;
SIGNAL \Add5~115_combout\ : std_logic;
SIGNAL \Add5~130_combout\ : std_logic;
SIGNAL \Add5~125_combout\ : std_logic;
SIGNAL \Add5~120_combout\ : std_logic;
SIGNAL \LessThan3~7_combout\ : std_logic;
SIGNAL \uni_departures[29]~57\ : std_logic;
SIGNAL \uni_departures[29]~57COUT1_136\ : std_logic;
SIGNAL \uni_entrances[29]~57\ : std_logic;
SIGNAL \uni_entrances[29]~57COUT1_136\ : std_logic;
SIGNAL \Add3~147\ : std_logic;
SIGNAL \Add3~147COUT1_232\ : std_logic;
SIGNAL \Add3~150_combout\ : std_logic;
SIGNAL \Add4~147\ : std_logic;
SIGNAL \Add4~147COUT1_232\ : std_logic;
SIGNAL \Add4~150_combout\ : std_logic;
SIGNAL \Add5~142\ : std_logic;
SIGNAL \Add5~142COUT1_227\ : std_logic;
SIGNAL \Add5~145_combout\ : std_logic;
SIGNAL \Add5~135_combout\ : std_logic;
SIGNAL \LessThan3~8_combout\ : std_logic;
SIGNAL \LessThan3~9_combout\ : std_logic;
SIGNAL \uni_entrances[1]~1\ : std_logic;
SIGNAL \uni_entrances[1]~1COUT1_90\ : std_logic;
SIGNAL \uni_entrances[2]~3\ : std_logic;
SIGNAL \uni_entrances[2]~3COUT1_92\ : std_logic;
SIGNAL \uni_entrances[3]~5\ : std_logic;
SIGNAL \uni_entrances[3]~5COUT1_94\ : std_logic;
SIGNAL \uni_entrances[4]~7\ : std_logic;
SIGNAL \uni_entrances[4]~7COUT1_96\ : std_logic;
SIGNAL \uni_entrances[5]~9\ : std_logic;
SIGNAL \Add3~45_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \uni_departures[30]~59\ : std_logic;
SIGNAL \Add3~152\ : std_logic;
SIGNAL \Add3~155_combout\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \LessThan2~8_combout\ : std_logic;
SIGNAL \Add6~42_cout0\ : std_logic;
SIGNAL \Add6~42COUT1_54\ : std_logic;
SIGNAL \Add6~37\ : std_logic;
SIGNAL \Add6~37COUT1_56\ : std_logic;
SIGNAL \Add6~32\ : std_logic;
SIGNAL \Add6~32COUT1_58\ : std_logic;
SIGNAL \Add6~27\ : std_logic;
SIGNAL \Add6~27COUT1_60\ : std_logic;
SIGNAL \Add6~22\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~17COUT1_62\ : std_logic;
SIGNAL \Add6~12\ : std_logic;
SIGNAL \Add6~12COUT1_64\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~7COUT1_66\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add6~5_combout\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add6~15_combout\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \Add6~25_combout\ : std_logic;
SIGNAL \LessThan2~9_combout\ : std_logic;
SIGNAL \Add6~35_combout\ : std_logic;
SIGNAL \LessThan2~10_combout\ : std_logic;
SIGNAL \Add6~30_combout\ : std_logic;
SIGNAL \LessThan2~11_combout\ : std_logic;
SIGNAL \LessThan2~17_combout\ : std_logic;
SIGNAL \LessThan2~12_combout\ : std_logic;
SIGNAL \LessThan2~13_combout\ : std_logic;
SIGNAL \LessThan2~14_combout\ : std_logic;
SIGNAL \LessThan2~15_combout\ : std_logic;
SIGNAL \LessThan2~16_combout\ : std_logic;
SIGNAL \reg_entrances[31]~62_combout\ : std_logic;
SIGNAL \Add7~97_combout\ : std_logic;
SIGNAL \Add7~102_combout\ : std_logic;
SIGNAL \Add7~91_combout\ : std_logic;
SIGNAL \Add7~96_combout\ : std_logic;
SIGNAL \Add7~103_combout\ : std_logic;
SIGNAL \Add7~109_combout\ : std_logic;
SIGNAL \Add7~114_combout\ : std_logic;
SIGNAL \LessThan4~5_combout\ : std_logic;
SIGNAL \Add7~133_combout\ : std_logic;
SIGNAL \Add7~138_combout\ : std_logic;
SIGNAL \Add7~121_combout\ : std_logic;
SIGNAL \Add7~126_combout\ : std_logic;
SIGNAL \Add7~127_combout\ : std_logic;
SIGNAL \Add7~132_combout\ : std_logic;
SIGNAL \Add7~115_combout\ : std_logic;
SIGNAL \Add7~120_combout\ : std_logic;
SIGNAL \LessThan4~6_combout\ : std_logic;
SIGNAL \LessThan4~7_combout\ : std_logic;
SIGNAL \Add7~61_combout\ : std_logic;
SIGNAL \Add7~66_combout\ : std_logic;
SIGNAL \Add7~43_combout\ : std_logic;
SIGNAL \Add7~48_combout\ : std_logic;
SIGNAL \Add7~49_combout\ : std_logic;
SIGNAL \Add7~54_combout\ : std_logic;
SIGNAL \Add7~55_combout\ : std_logic;
SIGNAL \Add7~60_combout\ : std_logic;
SIGNAL \LessThan4~2_combout\ : std_logic;
SIGNAL \Add7~13_combout\ : std_logic;
SIGNAL \Add7~18_combout\ : std_logic;
SIGNAL \Add7~1_combout\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add7~7_combout\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \Add7~31_combout\ : std_logic;
SIGNAL \Add7~36_combout\ : std_logic;
SIGNAL \Add7~19_combout\ : std_logic;
SIGNAL \Add7~24_combout\ : std_logic;
SIGNAL \Add7~25_combout\ : std_logic;
SIGNAL \Add7~30_combout\ : std_logic;
SIGNAL \Add7~37_combout\ : std_logic;
SIGNAL \Add7~42_combout\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \Add7~79_combout\ : std_logic;
SIGNAL \Add7~84_combout\ : std_logic;
SIGNAL \Add7~73_combout\ : std_logic;
SIGNAL \Add7~78_combout\ : std_logic;
SIGNAL \Add7~67_combout\ : std_logic;
SIGNAL \Add7~72_combout\ : std_logic;
SIGNAL \Add7~85_combout\ : std_logic;
SIGNAL \Add7~90_combout\ : std_logic;
SIGNAL \LessThan4~3_combout\ : std_logic;
SIGNAL \LessThan4~4_combout\ : std_logic;
SIGNAL \Add7~163_combout\ : std_logic;
SIGNAL \Add7~168_combout\ : std_logic;
SIGNAL \Add7~175_combout\ : std_logic;
SIGNAL \Add7~180_combout\ : std_logic;
SIGNAL \Add7~169_combout\ : std_logic;
SIGNAL \Add7~174_combout\ : std_logic;
SIGNAL \Add7~139_combout\ : std_logic;
SIGNAL \Add7~144_combout\ : std_logic;
SIGNAL \Add7~145_combout\ : std_logic;
SIGNAL \Add7~150_combout\ : std_logic;
SIGNAL \Add7~157_combout\ : std_logic;
SIGNAL \Add7~162_combout\ : std_logic;
SIGNAL \Add7~151_combout\ : std_logic;
SIGNAL \Add7~156_combout\ : std_logic;
SIGNAL \LessThan4~8_combout\ : std_logic;
SIGNAL \LessThan4~9_combout\ : std_logic;
SIGNAL \reg_entrances[31]~63_combout\ : std_logic;
SIGNAL \reg_entrances[30]~59\ : std_logic;
SIGNAL \Add2~152\ : std_logic;
SIGNAL \Add2~155_combout\ : std_logic;
SIGNAL \Add4~152\ : std_logic;
SIGNAL \Add4~155_combout\ : std_logic;
SIGNAL \Add5~147\ : std_logic;
SIGNAL \Add5~150_combout\ : std_logic;
SIGNAL \uni_entrances[31]~63_combout\ : std_logic;
SIGNAL \uni_entrances[30]~59\ : std_logic;
SIGNAL \LessThan5~157_cout\ : std_logic;
SIGNAL \LessThan5~152_cout0\ : std_logic;
SIGNAL \LessThan5~152COUT1_186\ : std_logic;
SIGNAL \LessThan5~147_cout0\ : std_logic;
SIGNAL \LessThan5~147COUT1_188\ : std_logic;
SIGNAL \LessThan5~142_cout0\ : std_logic;
SIGNAL \LessThan5~142COUT1_190\ : std_logic;
SIGNAL \LessThan5~137_cout0\ : std_logic;
SIGNAL \LessThan5~137COUT1_192\ : std_logic;
SIGNAL \LessThan5~132_cout\ : std_logic;
SIGNAL \LessThan5~127_cout0\ : std_logic;
SIGNAL \LessThan5~127COUT1_194\ : std_logic;
SIGNAL \LessThan5~122_cout0\ : std_logic;
SIGNAL \LessThan5~122COUT1_196\ : std_logic;
SIGNAL \LessThan5~117_cout0\ : std_logic;
SIGNAL \LessThan5~117COUT1_198\ : std_logic;
SIGNAL \LessThan5~112_cout0\ : std_logic;
SIGNAL \LessThan5~112COUT1_200\ : std_logic;
SIGNAL \LessThan5~107_cout\ : std_logic;
SIGNAL \LessThan5~102_cout0\ : std_logic;
SIGNAL \LessThan5~102COUT1_202\ : std_logic;
SIGNAL \LessThan5~97_cout0\ : std_logic;
SIGNAL \LessThan5~97COUT1_204\ : std_logic;
SIGNAL \LessThan5~92_cout0\ : std_logic;
SIGNAL \LessThan5~92COUT1_206\ : std_logic;
SIGNAL \LessThan5~87_cout0\ : std_logic;
SIGNAL \LessThan5~87COUT1_208\ : std_logic;
SIGNAL \LessThan5~82_cout\ : std_logic;
SIGNAL \LessThan5~77_cout0\ : std_logic;
SIGNAL \LessThan5~77COUT1_210\ : std_logic;
SIGNAL \LessThan5~72_cout0\ : std_logic;
SIGNAL \LessThan5~72COUT1_212\ : std_logic;
SIGNAL \LessThan5~67_cout0\ : std_logic;
SIGNAL \LessThan5~67COUT1_214\ : std_logic;
SIGNAL \LessThan5~62_cout0\ : std_logic;
SIGNAL \LessThan5~62COUT1_216\ : std_logic;
SIGNAL \LessThan5~57_cout\ : std_logic;
SIGNAL \LessThan5~52_cout0\ : std_logic;
SIGNAL \LessThan5~52COUT1_218\ : std_logic;
SIGNAL \LessThan5~47_cout0\ : std_logic;
SIGNAL \LessThan5~47COUT1_220\ : std_logic;
SIGNAL \LessThan5~42_cout0\ : std_logic;
SIGNAL \LessThan5~42COUT1_222\ : std_logic;
SIGNAL \LessThan5~37_cout0\ : std_logic;
SIGNAL \LessThan5~37COUT1_224\ : std_logic;
SIGNAL \LessThan5~32_cout\ : std_logic;
SIGNAL \LessThan5~27_cout0\ : std_logic;
SIGNAL \LessThan5~27COUT1_226\ : std_logic;
SIGNAL \LessThan5~22_cout0\ : std_logic;
SIGNAL \LessThan5~22COUT1_228\ : std_logic;
SIGNAL \LessThan5~17_cout0\ : std_logic;
SIGNAL \LessThan5~17COUT1_230\ : std_logic;
SIGNAL \LessThan5~12_cout0\ : std_logic;
SIGNAL \LessThan5~12COUT1_232\ : std_logic;
SIGNAL \LessThan5~7_cout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \Add3~0_combout\ : std_logic;
SIGNAL \Add7~108_combout\ : std_logic;
SIGNAL \Add7~186_combout\ : std_logic;
SIGNAL \LessThan3~10_combout\ : std_logic;
SIGNAL \LessThan4~10_combout\ : std_logic;
SIGNAL uni_entrances : std_logic_vector(31 DOWNTO 0);
SIGNAL uni_departures : std_logic_vector(31 DOWNTO 0);
SIGNAL sec : std_logic_vector(31 DOWNTO 0);
SIGNAL reg_entrances : std_logic_vector(31 DOWNTO 0);
SIGNAL reg_departures : std_logic_vector(31 DOWNTO 0);
SIGNAL reg_capacity : std_logic_vector(31 DOWNTO 0);
SIGNAL daytime : std_logic_vector(31 DOWNTO 0);

BEGIN

uni_parked_car <= ww_uni_parked_car;
parked_car <= ww_parked_car;
uni_vacated_space <= ww_uni_vacated_space;
vacated_space <= ww_vacated_space;
uni_is_vacated_space <= ww_uni_is_vacated_space;
is_vacated_space <= ww_is_vacated_space;
ww_is_uni_car_entered <= is_uni_car_entered;
ww_car_entered <= car_entered;
ww_car_exited <= car_exited;
ww_is_uni_car_exited <= is_uni_car_exited;
ww_clk <= clk;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\car_exited~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_car_exited,
	combout => \car_exited~combout\);

-- Location: PIN_J5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\car_entered~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_car_entered,
	combout => \car_entered~combout\);

-- Location: PIN_K13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\is_uni_car_entered~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_is_uni_car_entered,
	combout => \is_uni_car_entered~combout\);

-- Location: LC_X9_Y8_N0
\reg_entrances[0]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(0) = DFFEAS(((reg_entrances(0) $ (\reg_entrances[31]~63_combout\))), GLOBAL(\car_entered~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datac => reg_entrances(0),
	datad => \reg_entrances[31]~63_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(0));

-- Location: LC_X5_Y8_N5
\reg_entrances[1]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(1) = DFFEAS(reg_entrances(1) $ ((reg_entrances(0))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[1]~1\ = CARRY((reg_entrances(1) & (reg_entrances(0))))
-- \reg_entrances[1]~1COUT1_91\ = CARRY((reg_entrances(1) & (reg_entrances(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => reg_entrances(1),
	datab => reg_entrances(0),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(1),
	cout0 => \reg_entrances[1]~1\,
	cout1 => \reg_entrances[1]~1COUT1_91\);

-- Location: LC_X5_Y8_N6
\reg_entrances[2]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(2) = DFFEAS(reg_entrances(2) $ ((((\reg_entrances[1]~1\)))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[2]~3\ = CARRY(((!\reg_entrances[1]~1\)) # (!reg_entrances(2)))
-- \reg_entrances[2]~3COUT1_93\ = CARRY(((!\reg_entrances[1]~1COUT1_91\)) # (!reg_entrances(2)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => reg_entrances(2),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin0 => \reg_entrances[1]~1\,
	cin1 => \reg_entrances[1]~1COUT1_91\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(2),
	cout0 => \reg_entrances[2]~3\,
	cout1 => \reg_entrances[2]~3COUT1_93\);

-- Location: LC_X5_Y8_N7
\reg_entrances[3]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(3) = DFFEAS((reg_entrances(3) $ ((!\reg_entrances[2]~3\))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[3]~5\ = CARRY(((reg_entrances(3) & !\reg_entrances[2]~3\)))
-- \reg_entrances[3]~5COUT1_95\ = CARRY(((reg_entrances(3) & !\reg_entrances[2]~3COUT1_93\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => reg_entrances(3),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin0 => \reg_entrances[2]~3\,
	cin1 => \reg_entrances[2]~3COUT1_93\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(3),
	cout0 => \reg_entrances[3]~5\,
	cout1 => \reg_entrances[3]~5COUT1_95\);

-- Location: LC_X5_Y8_N8
\reg_entrances[4]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(4) = DFFEAS(reg_entrances(4) $ ((((\reg_entrances[3]~5\)))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[4]~7\ = CARRY(((!\reg_entrances[3]~5\)) # (!reg_entrances(4)))
-- \reg_entrances[4]~7COUT1_97\ = CARRY(((!\reg_entrances[3]~5COUT1_95\)) # (!reg_entrances(4)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => reg_entrances(4),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin0 => \reg_entrances[3]~5\,
	cin1 => \reg_entrances[3]~5COUT1_95\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(4),
	cout0 => \reg_entrances[4]~7\,
	cout1 => \reg_entrances[4]~7COUT1_97\);

-- Location: LC_X5_Y8_N9
\reg_entrances[5]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(5) = DFFEAS((reg_entrances(5) $ ((!\reg_entrances[4]~7\))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[5]~9\ = CARRY(((reg_entrances(5) & !\reg_entrances[4]~7COUT1_97\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => reg_entrances(5),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin0 => \reg_entrances[4]~7\,
	cin1 => \reg_entrances[4]~7COUT1_97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(5),
	cout => \reg_entrances[5]~9\);

-- Location: LC_X6_Y8_N0
\reg_entrances[6]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(6) = DFFEAS((reg_entrances(6) $ ((\reg_entrances[5]~9\))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[6]~11\ = CARRY(((!\reg_entrances[5]~9\) # (!reg_entrances(6))))
-- \reg_entrances[6]~11COUT1_99\ = CARRY(((!\reg_entrances[5]~9\) # (!reg_entrances(6))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => reg_entrances(6),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[5]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(6),
	cout0 => \reg_entrances[6]~11\,
	cout1 => \reg_entrances[6]~11COUT1_99\);

-- Location: LC_X6_Y8_N1
\reg_entrances[7]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(7) = DFFEAS((reg_entrances(7) $ ((!(!\reg_entrances[5]~9\ & \reg_entrances[6]~11\) # (\reg_entrances[5]~9\ & \reg_entrances[6]~11COUT1_99\)))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[7]~13\ = CARRY(((reg_entrances(7) & !\reg_entrances[6]~11\)))
-- \reg_entrances[7]~13COUT1_101\ = CARRY(((reg_entrances(7) & !\reg_entrances[6]~11COUT1_99\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => reg_entrances(7),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[5]~9\,
	cin0 => \reg_entrances[6]~11\,
	cin1 => \reg_entrances[6]~11COUT1_99\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(7),
	cout0 => \reg_entrances[7]~13\,
	cout1 => \reg_entrances[7]~13COUT1_101\);

-- Location: LC_X6_Y8_N2
\reg_entrances[8]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(8) = DFFEAS((reg_entrances(8) $ (((!\reg_entrances[5]~9\ & \reg_entrances[7]~13\) # (\reg_entrances[5]~9\ & \reg_entrances[7]~13COUT1_101\)))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[8]~15\ = CARRY(((!\reg_entrances[7]~13\) # (!reg_entrances(8))))
-- \reg_entrances[8]~15COUT1_103\ = CARRY(((!\reg_entrances[7]~13COUT1_101\) # (!reg_entrances(8))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => reg_entrances(8),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[5]~9\,
	cin0 => \reg_entrances[7]~13\,
	cin1 => \reg_entrances[7]~13COUT1_101\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(8),
	cout0 => \reg_entrances[8]~15\,
	cout1 => \reg_entrances[8]~15COUT1_103\);

-- Location: LC_X6_Y8_N3
\reg_entrances[9]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(9) = DFFEAS(reg_entrances(9) $ ((((!(!\reg_entrances[5]~9\ & \reg_entrances[8]~15\) # (\reg_entrances[5]~9\ & \reg_entrances[8]~15COUT1_103\))))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[9]~17\ = CARRY((reg_entrances(9) & ((!\reg_entrances[8]~15\))))
-- \reg_entrances[9]~17COUT1_105\ = CARRY((reg_entrances(9) & ((!\reg_entrances[8]~15COUT1_103\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => reg_entrances(9),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[5]~9\,
	cin0 => \reg_entrances[8]~15\,
	cin1 => \reg_entrances[8]~15COUT1_103\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(9),
	cout0 => \reg_entrances[9]~17\,
	cout1 => \reg_entrances[9]~17COUT1_105\);

-- Location: LC_X6_Y8_N4
\reg_entrances[10]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(10) = DFFEAS(reg_entrances(10) $ (((((!\reg_entrances[5]~9\ & \reg_entrances[9]~17\) # (\reg_entrances[5]~9\ & \reg_entrances[9]~17COUT1_105\))))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[10]~19\ = CARRY(((!\reg_entrances[9]~17COUT1_105\)) # (!reg_entrances(10)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => reg_entrances(10),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[5]~9\,
	cin0 => \reg_entrances[9]~17\,
	cin1 => \reg_entrances[9]~17COUT1_105\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(10),
	cout => \reg_entrances[10]~19\);

-- Location: LC_X6_Y8_N5
\reg_entrances[11]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(11) = DFFEAS(reg_entrances(11) $ ((((!\reg_entrances[10]~19\)))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[11]~21\ = CARRY((reg_entrances(11) & ((!\reg_entrances[10]~19\))))
-- \reg_entrances[11]~21COUT1_107\ = CARRY((reg_entrances(11) & ((!\reg_entrances[10]~19\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => reg_entrances(11),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[10]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(11),
	cout0 => \reg_entrances[11]~21\,
	cout1 => \reg_entrances[11]~21COUT1_107\);

-- Location: LC_X6_Y8_N6
\reg_entrances[12]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(12) = DFFEAS(reg_entrances(12) $ (((((!\reg_entrances[10]~19\ & \reg_entrances[11]~21\) # (\reg_entrances[10]~19\ & \reg_entrances[11]~21COUT1_107\))))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[12]~23\ = CARRY(((!\reg_entrances[11]~21\)) # (!reg_entrances(12)))
-- \reg_entrances[12]~23COUT1_109\ = CARRY(((!\reg_entrances[11]~21COUT1_107\)) # (!reg_entrances(12)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => reg_entrances(12),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[10]~19\,
	cin0 => \reg_entrances[11]~21\,
	cin1 => \reg_entrances[11]~21COUT1_107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(12),
	cout0 => \reg_entrances[12]~23\,
	cout1 => \reg_entrances[12]~23COUT1_109\);

-- Location: LC_X6_Y8_N7
\reg_entrances[13]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(13) = DFFEAS((reg_entrances(13) $ ((!(!\reg_entrances[10]~19\ & \reg_entrances[12]~23\) # (\reg_entrances[10]~19\ & \reg_entrances[12]~23COUT1_109\)))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[13]~25\ = CARRY(((reg_entrances(13) & !\reg_entrances[12]~23\)))
-- \reg_entrances[13]~25COUT1_111\ = CARRY(((reg_entrances(13) & !\reg_entrances[12]~23COUT1_109\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => reg_entrances(13),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[10]~19\,
	cin0 => \reg_entrances[12]~23\,
	cin1 => \reg_entrances[12]~23COUT1_109\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(13),
	cout0 => \reg_entrances[13]~25\,
	cout1 => \reg_entrances[13]~25COUT1_111\);

-- Location: LC_X6_Y8_N8
\reg_entrances[14]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(14) = DFFEAS(reg_entrances(14) $ (((((!\reg_entrances[10]~19\ & \reg_entrances[13]~25\) # (\reg_entrances[10]~19\ & \reg_entrances[13]~25COUT1_111\))))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[14]~27\ = CARRY(((!\reg_entrances[13]~25\)) # (!reg_entrances(14)))
-- \reg_entrances[14]~27COUT1_113\ = CARRY(((!\reg_entrances[13]~25COUT1_111\)) # (!reg_entrances(14)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => reg_entrances(14),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[10]~19\,
	cin0 => \reg_entrances[13]~25\,
	cin1 => \reg_entrances[13]~25COUT1_111\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(14),
	cout0 => \reg_entrances[14]~27\,
	cout1 => \reg_entrances[14]~27COUT1_113\);

-- Location: LC_X6_Y8_N9
\reg_entrances[15]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(15) = DFFEAS((reg_entrances(15) $ ((!(!\reg_entrances[10]~19\ & \reg_entrances[14]~27\) # (\reg_entrances[10]~19\ & \reg_entrances[14]~27COUT1_113\)))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[15]~29\ = CARRY(((reg_entrances(15) & !\reg_entrances[14]~27COUT1_113\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => reg_entrances(15),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[10]~19\,
	cin0 => \reg_entrances[14]~27\,
	cin1 => \reg_entrances[14]~27COUT1_113\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(15),
	cout => \reg_entrances[15]~29\);

-- Location: LC_X7_Y8_N0
\reg_entrances[16]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(16) = DFFEAS((reg_entrances(16) $ ((\reg_entrances[15]~29\))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[16]~31\ = CARRY(((!\reg_entrances[15]~29\) # (!reg_entrances(16))))
-- \reg_entrances[16]~31COUT1_115\ = CARRY(((!\reg_entrances[15]~29\) # (!reg_entrances(16))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => reg_entrances(16),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[15]~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(16),
	cout0 => \reg_entrances[16]~31\,
	cout1 => \reg_entrances[16]~31COUT1_115\);

-- Location: LC_X7_Y8_N1
\reg_entrances[17]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(17) = DFFEAS((reg_entrances(17) $ ((!(!\reg_entrances[15]~29\ & \reg_entrances[16]~31\) # (\reg_entrances[15]~29\ & \reg_entrances[16]~31COUT1_115\)))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[17]~33\ = CARRY(((reg_entrances(17) & !\reg_entrances[16]~31\)))
-- \reg_entrances[17]~33COUT1_117\ = CARRY(((reg_entrances(17) & !\reg_entrances[16]~31COUT1_115\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => reg_entrances(17),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[15]~29\,
	cin0 => \reg_entrances[16]~31\,
	cin1 => \reg_entrances[16]~31COUT1_115\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(17),
	cout0 => \reg_entrances[17]~33\,
	cout1 => \reg_entrances[17]~33COUT1_117\);

-- Location: LC_X7_Y8_N2
\reg_entrances[18]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(18) = DFFEAS((reg_entrances(18) $ (((!\reg_entrances[15]~29\ & \reg_entrances[17]~33\) # (\reg_entrances[15]~29\ & \reg_entrances[17]~33COUT1_117\)))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[18]~35\ = CARRY(((!\reg_entrances[17]~33\) # (!reg_entrances(18))))
-- \reg_entrances[18]~35COUT1_119\ = CARRY(((!\reg_entrances[17]~33COUT1_117\) # (!reg_entrances(18))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => reg_entrances(18),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[15]~29\,
	cin0 => \reg_entrances[17]~33\,
	cin1 => \reg_entrances[17]~33COUT1_117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(18),
	cout0 => \reg_entrances[18]~35\,
	cout1 => \reg_entrances[18]~35COUT1_119\);

-- Location: LC_X7_Y8_N3
\reg_entrances[19]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(19) = DFFEAS(reg_entrances(19) $ ((((!(!\reg_entrances[15]~29\ & \reg_entrances[18]~35\) # (\reg_entrances[15]~29\ & \reg_entrances[18]~35COUT1_119\))))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[19]~37\ = CARRY((reg_entrances(19) & ((!\reg_entrances[18]~35\))))
-- \reg_entrances[19]~37COUT1_121\ = CARRY((reg_entrances(19) & ((!\reg_entrances[18]~35COUT1_119\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => reg_entrances(19),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[15]~29\,
	cin0 => \reg_entrances[18]~35\,
	cin1 => \reg_entrances[18]~35COUT1_119\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(19),
	cout0 => \reg_entrances[19]~37\,
	cout1 => \reg_entrances[19]~37COUT1_121\);

-- Location: LC_X7_Y8_N4
\reg_entrances[20]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(20) = DFFEAS(reg_entrances(20) $ (((((!\reg_entrances[15]~29\ & \reg_entrances[19]~37\) # (\reg_entrances[15]~29\ & \reg_entrances[19]~37COUT1_121\))))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[20]~39\ = CARRY(((!\reg_entrances[19]~37COUT1_121\)) # (!reg_entrances(20)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => reg_entrances(20),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[15]~29\,
	cin0 => \reg_entrances[19]~37\,
	cin1 => \reg_entrances[19]~37COUT1_121\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(20),
	cout => \reg_entrances[20]~39\);

-- Location: LC_X7_Y8_N5
\reg_entrances[21]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(21) = DFFEAS(reg_entrances(21) $ ((((!\reg_entrances[20]~39\)))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[21]~41\ = CARRY((reg_entrances(21) & ((!\reg_entrances[20]~39\))))
-- \reg_entrances[21]~41COUT1_123\ = CARRY((reg_entrances(21) & ((!\reg_entrances[20]~39\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => reg_entrances(21),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[20]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(21),
	cout0 => \reg_entrances[21]~41\,
	cout1 => \reg_entrances[21]~41COUT1_123\);

-- Location: LC_X7_Y8_N6
\reg_entrances[22]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(22) = DFFEAS(reg_entrances(22) $ (((((!\reg_entrances[20]~39\ & \reg_entrances[21]~41\) # (\reg_entrances[20]~39\ & \reg_entrances[21]~41COUT1_123\))))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[22]~43\ = CARRY(((!\reg_entrances[21]~41\)) # (!reg_entrances(22)))
-- \reg_entrances[22]~43COUT1_125\ = CARRY(((!\reg_entrances[21]~41COUT1_123\)) # (!reg_entrances(22)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => reg_entrances(22),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[20]~39\,
	cin0 => \reg_entrances[21]~41\,
	cin1 => \reg_entrances[21]~41COUT1_123\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(22),
	cout0 => \reg_entrances[22]~43\,
	cout1 => \reg_entrances[22]~43COUT1_125\);

-- Location: LC_X7_Y8_N7
\reg_entrances[23]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(23) = DFFEAS((reg_entrances(23) $ ((!(!\reg_entrances[20]~39\ & \reg_entrances[22]~43\) # (\reg_entrances[20]~39\ & \reg_entrances[22]~43COUT1_125\)))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[23]~45\ = CARRY(((reg_entrances(23) & !\reg_entrances[22]~43\)))
-- \reg_entrances[23]~45COUT1_127\ = CARRY(((reg_entrances(23) & !\reg_entrances[22]~43COUT1_125\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => reg_entrances(23),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[20]~39\,
	cin0 => \reg_entrances[22]~43\,
	cin1 => \reg_entrances[22]~43COUT1_125\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(23),
	cout0 => \reg_entrances[23]~45\,
	cout1 => \reg_entrances[23]~45COUT1_127\);

-- Location: LC_X7_Y8_N8
\reg_entrances[24]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(24) = DFFEAS(reg_entrances(24) $ (((((!\reg_entrances[20]~39\ & \reg_entrances[23]~45\) # (\reg_entrances[20]~39\ & \reg_entrances[23]~45COUT1_127\))))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[24]~47\ = CARRY(((!\reg_entrances[23]~45\)) # (!reg_entrances(24)))
-- \reg_entrances[24]~47COUT1_129\ = CARRY(((!\reg_entrances[23]~45COUT1_127\)) # (!reg_entrances(24)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => reg_entrances(24),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[20]~39\,
	cin0 => \reg_entrances[23]~45\,
	cin1 => \reg_entrances[23]~45COUT1_127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(24),
	cout0 => \reg_entrances[24]~47\,
	cout1 => \reg_entrances[24]~47COUT1_129\);

-- Location: LC_X7_Y8_N9
\reg_entrances[25]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(25) = DFFEAS((reg_entrances(25) $ ((!(!\reg_entrances[20]~39\ & \reg_entrances[24]~47\) # (\reg_entrances[20]~39\ & \reg_entrances[24]~47COUT1_129\)))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[25]~49\ = CARRY(((reg_entrances(25) & !\reg_entrances[24]~47COUT1_129\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => reg_entrances(25),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[20]~39\,
	cin0 => \reg_entrances[24]~47\,
	cin1 => \reg_entrances[24]~47COUT1_129\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(25),
	cout => \reg_entrances[25]~49\);

-- Location: LC_X8_Y8_N0
\reg_entrances[26]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(26) = DFFEAS((reg_entrances(26) $ ((\reg_entrances[25]~49\))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[26]~51\ = CARRY(((!\reg_entrances[25]~49\) # (!reg_entrances(26))))
-- \reg_entrances[26]~51COUT1_131\ = CARRY(((!\reg_entrances[25]~49\) # (!reg_entrances(26))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => reg_entrances(26),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[25]~49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(26),
	cout0 => \reg_entrances[26]~51\,
	cout1 => \reg_entrances[26]~51COUT1_131\);

-- Location: LC_X8_Y8_N1
\reg_entrances[27]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(27) = DFFEAS((reg_entrances(27) $ ((!(!\reg_entrances[25]~49\ & \reg_entrances[26]~51\) # (\reg_entrances[25]~49\ & \reg_entrances[26]~51COUT1_131\)))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[27]~53\ = CARRY(((reg_entrances(27) & !\reg_entrances[26]~51\)))
-- \reg_entrances[27]~53COUT1_133\ = CARRY(((reg_entrances(27) & !\reg_entrances[26]~51COUT1_131\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => reg_entrances(27),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[25]~49\,
	cin0 => \reg_entrances[26]~51\,
	cin1 => \reg_entrances[26]~51COUT1_131\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(27),
	cout0 => \reg_entrances[27]~53\,
	cout1 => \reg_entrances[27]~53COUT1_133\);

-- Location: LC_X8_Y8_N2
\reg_entrances[28]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(28) = DFFEAS((reg_entrances(28) $ (((!\reg_entrances[25]~49\ & \reg_entrances[27]~53\) # (\reg_entrances[25]~49\ & \reg_entrances[27]~53COUT1_133\)))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[28]~55\ = CARRY(((!\reg_entrances[27]~53\) # (!reg_entrances(28))))
-- \reg_entrances[28]~55COUT1_135\ = CARRY(((!\reg_entrances[27]~53COUT1_133\) # (!reg_entrances(28))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => reg_entrances(28),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[25]~49\,
	cin0 => \reg_entrances[27]~53\,
	cin1 => \reg_entrances[27]~53COUT1_133\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(28),
	cout0 => \reg_entrances[28]~55\,
	cout1 => \reg_entrances[28]~55COUT1_135\);

-- Location: LC_X8_Y8_N3
\reg_entrances[29]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(29) = DFFEAS(reg_entrances(29) $ ((((!(!\reg_entrances[25]~49\ & \reg_entrances[28]~55\) # (\reg_entrances[25]~49\ & \reg_entrances[28]~55COUT1_135\))))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[29]~57\ = CARRY((reg_entrances(29) & ((!\reg_entrances[28]~55\))))
-- \reg_entrances[29]~57COUT1_137\ = CARRY((reg_entrances(29) & ((!\reg_entrances[28]~55COUT1_135\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => reg_entrances(29),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[25]~49\,
	cin0 => \reg_entrances[28]~55\,
	cin1 => \reg_entrances[28]~55COUT1_135\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(29),
	cout0 => \reg_entrances[29]~57\,
	cout1 => \reg_entrances[29]~57COUT1_137\);

-- Location: LC_X8_Y8_N4
\reg_entrances[30]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(30) = DFFEAS(reg_entrances(30) $ (((((!\reg_entrances[25]~49\ & \reg_entrances[29]~57\) # (\reg_entrances[25]~49\ & \reg_entrances[29]~57COUT1_137\))))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )
-- \reg_entrances[30]~59\ = CARRY(((!\reg_entrances[29]~57COUT1_137\)) # (!reg_entrances(30)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => reg_entrances(30),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[25]~49\,
	cin0 => \reg_entrances[29]~57\,
	cin1 => \reg_entrances[29]~57COUT1_137\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(30),
	cout => \reg_entrances[30]~59\);

-- Location: PIN_A4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\is_uni_car_exited~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_is_uni_car_exited,
	combout => \is_uni_car_exited~combout\);

-- Location: LC_X4_Y7_N0
\reg_departures[0]\ : maxv_lcell
-- Equation(s):
-- reg_departures(0) = DFFEAS((reg_departures(0) $ (((!\is_uni_car_exited~combout\ & \LessThan6~0_combout\)))), GLOBAL(\car_exited~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => reg_departures(0),
	datac => \is_uni_car_exited~combout\,
	datad => \LessThan6~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(0));

-- Location: LC_X5_Y10_N5
\reg_departures[1]\ : maxv_lcell
-- Equation(s):
-- reg_departures(1) = DFFEAS(reg_departures(1) $ ((reg_departures(0))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[1]~1\ = CARRY((reg_departures(1) & (reg_departures(0))))
-- \reg_departures[1]~1COUT1_90\ = CARRY((reg_departures(1) & (reg_departures(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => reg_departures(1),
	datab => reg_departures(0),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(1),
	cout0 => \reg_departures[1]~1\,
	cout1 => \reg_departures[1]~1COUT1_90\);

-- Location: LC_X5_Y10_N6
\reg_departures[2]\ : maxv_lcell
-- Equation(s):
-- reg_departures(2) = DFFEAS(reg_departures(2) $ ((((\reg_departures[1]~1\)))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[2]~3\ = CARRY(((!\reg_departures[1]~1\)) # (!reg_departures(2)))
-- \reg_departures[2]~3COUT1_92\ = CARRY(((!\reg_departures[1]~1COUT1_90\)) # (!reg_departures(2)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => reg_departures(2),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin0 => \reg_departures[1]~1\,
	cin1 => \reg_departures[1]~1COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(2),
	cout0 => \reg_departures[2]~3\,
	cout1 => \reg_departures[2]~3COUT1_92\);

-- Location: LC_X5_Y10_N7
\reg_departures[3]\ : maxv_lcell
-- Equation(s):
-- reg_departures(3) = DFFEAS((reg_departures(3) $ ((!\reg_departures[2]~3\))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[3]~5\ = CARRY(((reg_departures(3) & !\reg_departures[2]~3\)))
-- \reg_departures[3]~5COUT1_94\ = CARRY(((reg_departures(3) & !\reg_departures[2]~3COUT1_92\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => reg_departures(3),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin0 => \reg_departures[2]~3\,
	cin1 => \reg_departures[2]~3COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(3),
	cout0 => \reg_departures[3]~5\,
	cout1 => \reg_departures[3]~5COUT1_94\);

-- Location: LC_X5_Y10_N8
\reg_departures[4]\ : maxv_lcell
-- Equation(s):
-- reg_departures(4) = DFFEAS(reg_departures(4) $ ((((\reg_departures[3]~5\)))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[4]~7\ = CARRY(((!\reg_departures[3]~5\)) # (!reg_departures(4)))
-- \reg_departures[4]~7COUT1_96\ = CARRY(((!\reg_departures[3]~5COUT1_94\)) # (!reg_departures(4)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => reg_departures(4),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin0 => \reg_departures[3]~5\,
	cin1 => \reg_departures[3]~5COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(4),
	cout0 => \reg_departures[4]~7\,
	cout1 => \reg_departures[4]~7COUT1_96\);

-- Location: LC_X5_Y10_N9
\reg_departures[5]\ : maxv_lcell
-- Equation(s):
-- reg_departures(5) = DFFEAS((reg_departures(5) $ ((!\reg_departures[4]~7\))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[5]~9\ = CARRY(((reg_departures(5) & !\reg_departures[4]~7COUT1_96\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => reg_departures(5),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin0 => \reg_departures[4]~7\,
	cin1 => \reg_departures[4]~7COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(5),
	cout => \reg_departures[5]~9\);

-- Location: LC_X6_Y10_N0
\reg_departures[6]\ : maxv_lcell
-- Equation(s):
-- reg_departures(6) = DFFEAS((reg_departures(6) $ ((\reg_departures[5]~9\))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[6]~11\ = CARRY(((!\reg_departures[5]~9\) # (!reg_departures(6))))
-- \reg_departures[6]~11COUT1_98\ = CARRY(((!\reg_departures[5]~9\) # (!reg_departures(6))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => reg_departures(6),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[5]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(6),
	cout0 => \reg_departures[6]~11\,
	cout1 => \reg_departures[6]~11COUT1_98\);

-- Location: LC_X6_Y10_N1
\reg_departures[7]\ : maxv_lcell
-- Equation(s):
-- reg_departures(7) = DFFEAS((reg_departures(7) $ ((!(!\reg_departures[5]~9\ & \reg_departures[6]~11\) # (\reg_departures[5]~9\ & \reg_departures[6]~11COUT1_98\)))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[7]~13\ = CARRY(((reg_departures(7) & !\reg_departures[6]~11\)))
-- \reg_departures[7]~13COUT1_100\ = CARRY(((reg_departures(7) & !\reg_departures[6]~11COUT1_98\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => reg_departures(7),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[5]~9\,
	cin0 => \reg_departures[6]~11\,
	cin1 => \reg_departures[6]~11COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(7),
	cout0 => \reg_departures[7]~13\,
	cout1 => \reg_departures[7]~13COUT1_100\);

-- Location: LC_X6_Y10_N2
\reg_departures[8]\ : maxv_lcell
-- Equation(s):
-- reg_departures(8) = DFFEAS((reg_departures(8) $ (((!\reg_departures[5]~9\ & \reg_departures[7]~13\) # (\reg_departures[5]~9\ & \reg_departures[7]~13COUT1_100\)))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[8]~15\ = CARRY(((!\reg_departures[7]~13\) # (!reg_departures(8))))
-- \reg_departures[8]~15COUT1_102\ = CARRY(((!\reg_departures[7]~13COUT1_100\) # (!reg_departures(8))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => reg_departures(8),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[5]~9\,
	cin0 => \reg_departures[7]~13\,
	cin1 => \reg_departures[7]~13COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(8),
	cout0 => \reg_departures[8]~15\,
	cout1 => \reg_departures[8]~15COUT1_102\);

-- Location: LC_X6_Y10_N3
\reg_departures[9]\ : maxv_lcell
-- Equation(s):
-- reg_departures(9) = DFFEAS(reg_departures(9) $ ((((!(!\reg_departures[5]~9\ & \reg_departures[8]~15\) # (\reg_departures[5]~9\ & \reg_departures[8]~15COUT1_102\))))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[9]~17\ = CARRY((reg_departures(9) & ((!\reg_departures[8]~15\))))
-- \reg_departures[9]~17COUT1_104\ = CARRY((reg_departures(9) & ((!\reg_departures[8]~15COUT1_102\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => reg_departures(9),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[5]~9\,
	cin0 => \reg_departures[8]~15\,
	cin1 => \reg_departures[8]~15COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(9),
	cout0 => \reg_departures[9]~17\,
	cout1 => \reg_departures[9]~17COUT1_104\);

-- Location: LC_X6_Y10_N4
\reg_departures[10]\ : maxv_lcell
-- Equation(s):
-- reg_departures(10) = DFFEAS(reg_departures(10) $ (((((!\reg_departures[5]~9\ & \reg_departures[9]~17\) # (\reg_departures[5]~9\ & \reg_departures[9]~17COUT1_104\))))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[10]~19\ = CARRY(((!\reg_departures[9]~17COUT1_104\)) # (!reg_departures(10)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => reg_departures(10),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[5]~9\,
	cin0 => \reg_departures[9]~17\,
	cin1 => \reg_departures[9]~17COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(10),
	cout => \reg_departures[10]~19\);

-- Location: LC_X6_Y10_N5
\reg_departures[11]\ : maxv_lcell
-- Equation(s):
-- reg_departures(11) = DFFEAS(reg_departures(11) $ ((((!\reg_departures[10]~19\)))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[11]~21\ = CARRY((reg_departures(11) & ((!\reg_departures[10]~19\))))
-- \reg_departures[11]~21COUT1_106\ = CARRY((reg_departures(11) & ((!\reg_departures[10]~19\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => reg_departures(11),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[10]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(11),
	cout0 => \reg_departures[11]~21\,
	cout1 => \reg_departures[11]~21COUT1_106\);

-- Location: LC_X6_Y10_N6
\reg_departures[12]\ : maxv_lcell
-- Equation(s):
-- reg_departures(12) = DFFEAS(reg_departures(12) $ (((((!\reg_departures[10]~19\ & \reg_departures[11]~21\) # (\reg_departures[10]~19\ & \reg_departures[11]~21COUT1_106\))))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[12]~23\ = CARRY(((!\reg_departures[11]~21\)) # (!reg_departures(12)))
-- \reg_departures[12]~23COUT1_108\ = CARRY(((!\reg_departures[11]~21COUT1_106\)) # (!reg_departures(12)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => reg_departures(12),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[10]~19\,
	cin0 => \reg_departures[11]~21\,
	cin1 => \reg_departures[11]~21COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(12),
	cout0 => \reg_departures[12]~23\,
	cout1 => \reg_departures[12]~23COUT1_108\);

-- Location: LC_X6_Y10_N7
\reg_departures[13]\ : maxv_lcell
-- Equation(s):
-- reg_departures(13) = DFFEAS((reg_departures(13) $ ((!(!\reg_departures[10]~19\ & \reg_departures[12]~23\) # (\reg_departures[10]~19\ & \reg_departures[12]~23COUT1_108\)))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[13]~25\ = CARRY(((reg_departures(13) & !\reg_departures[12]~23\)))
-- \reg_departures[13]~25COUT1_110\ = CARRY(((reg_departures(13) & !\reg_departures[12]~23COUT1_108\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => reg_departures(13),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[10]~19\,
	cin0 => \reg_departures[12]~23\,
	cin1 => \reg_departures[12]~23COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(13),
	cout0 => \reg_departures[13]~25\,
	cout1 => \reg_departures[13]~25COUT1_110\);

-- Location: LC_X6_Y10_N8
\reg_departures[14]\ : maxv_lcell
-- Equation(s):
-- reg_departures(14) = DFFEAS(reg_departures(14) $ (((((!\reg_departures[10]~19\ & \reg_departures[13]~25\) # (\reg_departures[10]~19\ & \reg_departures[13]~25COUT1_110\))))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[14]~27\ = CARRY(((!\reg_departures[13]~25\)) # (!reg_departures(14)))
-- \reg_departures[14]~27COUT1_112\ = CARRY(((!\reg_departures[13]~25COUT1_110\)) # (!reg_departures(14)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => reg_departures(14),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[10]~19\,
	cin0 => \reg_departures[13]~25\,
	cin1 => \reg_departures[13]~25COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(14),
	cout0 => \reg_departures[14]~27\,
	cout1 => \reg_departures[14]~27COUT1_112\);

-- Location: LC_X6_Y10_N9
\reg_departures[15]\ : maxv_lcell
-- Equation(s):
-- reg_departures(15) = DFFEAS((reg_departures(15) $ ((!(!\reg_departures[10]~19\ & \reg_departures[14]~27\) # (\reg_departures[10]~19\ & \reg_departures[14]~27COUT1_112\)))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[15]~29\ = CARRY(((reg_departures(15) & !\reg_departures[14]~27COUT1_112\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => reg_departures(15),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[10]~19\,
	cin0 => \reg_departures[14]~27\,
	cin1 => \reg_departures[14]~27COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(15),
	cout => \reg_departures[15]~29\);

-- Location: LC_X7_Y10_N0
\reg_departures[16]\ : maxv_lcell
-- Equation(s):
-- reg_departures(16) = DFFEAS((reg_departures(16) $ ((\reg_departures[15]~29\))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[16]~31\ = CARRY(((!\reg_departures[15]~29\) # (!reg_departures(16))))
-- \reg_departures[16]~31COUT1_114\ = CARRY(((!\reg_departures[15]~29\) # (!reg_departures(16))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => reg_departures(16),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[15]~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(16),
	cout0 => \reg_departures[16]~31\,
	cout1 => \reg_departures[16]~31COUT1_114\);

-- Location: LC_X7_Y10_N1
\reg_departures[17]\ : maxv_lcell
-- Equation(s):
-- reg_departures(17) = DFFEAS((reg_departures(17) $ ((!(!\reg_departures[15]~29\ & \reg_departures[16]~31\) # (\reg_departures[15]~29\ & \reg_departures[16]~31COUT1_114\)))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[17]~33\ = CARRY(((reg_departures(17) & !\reg_departures[16]~31\)))
-- \reg_departures[17]~33COUT1_116\ = CARRY(((reg_departures(17) & !\reg_departures[16]~31COUT1_114\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => reg_departures(17),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[15]~29\,
	cin0 => \reg_departures[16]~31\,
	cin1 => \reg_departures[16]~31COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(17),
	cout0 => \reg_departures[17]~33\,
	cout1 => \reg_departures[17]~33COUT1_116\);

-- Location: LC_X7_Y10_N2
\reg_departures[18]\ : maxv_lcell
-- Equation(s):
-- reg_departures(18) = DFFEAS((reg_departures(18) $ (((!\reg_departures[15]~29\ & \reg_departures[17]~33\) # (\reg_departures[15]~29\ & \reg_departures[17]~33COUT1_116\)))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[18]~35\ = CARRY(((!\reg_departures[17]~33\) # (!reg_departures(18))))
-- \reg_departures[18]~35COUT1_118\ = CARRY(((!\reg_departures[17]~33COUT1_116\) # (!reg_departures(18))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => reg_departures(18),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[15]~29\,
	cin0 => \reg_departures[17]~33\,
	cin1 => \reg_departures[17]~33COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(18),
	cout0 => \reg_departures[18]~35\,
	cout1 => \reg_departures[18]~35COUT1_118\);

-- Location: LC_X7_Y10_N3
\reg_departures[19]\ : maxv_lcell
-- Equation(s):
-- reg_departures(19) = DFFEAS(reg_departures(19) $ ((((!(!\reg_departures[15]~29\ & \reg_departures[18]~35\) # (\reg_departures[15]~29\ & \reg_departures[18]~35COUT1_118\))))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[19]~37\ = CARRY((reg_departures(19) & ((!\reg_departures[18]~35\))))
-- \reg_departures[19]~37COUT1_120\ = CARRY((reg_departures(19) & ((!\reg_departures[18]~35COUT1_118\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => reg_departures(19),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[15]~29\,
	cin0 => \reg_departures[18]~35\,
	cin1 => \reg_departures[18]~35COUT1_118\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(19),
	cout0 => \reg_departures[19]~37\,
	cout1 => \reg_departures[19]~37COUT1_120\);

-- Location: LC_X7_Y10_N4
\reg_departures[20]\ : maxv_lcell
-- Equation(s):
-- reg_departures(20) = DFFEAS(reg_departures(20) $ (((((!\reg_departures[15]~29\ & \reg_departures[19]~37\) # (\reg_departures[15]~29\ & \reg_departures[19]~37COUT1_120\))))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[20]~39\ = CARRY(((!\reg_departures[19]~37COUT1_120\)) # (!reg_departures(20)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => reg_departures(20),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[15]~29\,
	cin0 => \reg_departures[19]~37\,
	cin1 => \reg_departures[19]~37COUT1_120\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(20),
	cout => \reg_departures[20]~39\);

-- Location: LC_X7_Y10_N5
\reg_departures[21]\ : maxv_lcell
-- Equation(s):
-- reg_departures(21) = DFFEAS(reg_departures(21) $ ((((!\reg_departures[20]~39\)))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[21]~41\ = CARRY((reg_departures(21) & ((!\reg_departures[20]~39\))))
-- \reg_departures[21]~41COUT1_122\ = CARRY((reg_departures(21) & ((!\reg_departures[20]~39\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => reg_departures(21),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[20]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(21),
	cout0 => \reg_departures[21]~41\,
	cout1 => \reg_departures[21]~41COUT1_122\);

-- Location: LC_X7_Y10_N6
\reg_departures[22]\ : maxv_lcell
-- Equation(s):
-- reg_departures(22) = DFFEAS(reg_departures(22) $ (((((!\reg_departures[20]~39\ & \reg_departures[21]~41\) # (\reg_departures[20]~39\ & \reg_departures[21]~41COUT1_122\))))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[22]~43\ = CARRY(((!\reg_departures[21]~41\)) # (!reg_departures(22)))
-- \reg_departures[22]~43COUT1_124\ = CARRY(((!\reg_departures[21]~41COUT1_122\)) # (!reg_departures(22)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => reg_departures(22),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[20]~39\,
	cin0 => \reg_departures[21]~41\,
	cin1 => \reg_departures[21]~41COUT1_122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(22),
	cout0 => \reg_departures[22]~43\,
	cout1 => \reg_departures[22]~43COUT1_124\);

-- Location: LC_X7_Y10_N7
\reg_departures[23]\ : maxv_lcell
-- Equation(s):
-- reg_departures(23) = DFFEAS((reg_departures(23) $ ((!(!\reg_departures[20]~39\ & \reg_departures[22]~43\) # (\reg_departures[20]~39\ & \reg_departures[22]~43COUT1_124\)))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[23]~45\ = CARRY(((reg_departures(23) & !\reg_departures[22]~43\)))
-- \reg_departures[23]~45COUT1_126\ = CARRY(((reg_departures(23) & !\reg_departures[22]~43COUT1_124\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => reg_departures(23),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[20]~39\,
	cin0 => \reg_departures[22]~43\,
	cin1 => \reg_departures[22]~43COUT1_124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(23),
	cout0 => \reg_departures[23]~45\,
	cout1 => \reg_departures[23]~45COUT1_126\);

-- Location: LC_X7_Y10_N8
\reg_departures[24]\ : maxv_lcell
-- Equation(s):
-- reg_departures(24) = DFFEAS(reg_departures(24) $ (((((!\reg_departures[20]~39\ & \reg_departures[23]~45\) # (\reg_departures[20]~39\ & \reg_departures[23]~45COUT1_126\))))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[24]~47\ = CARRY(((!\reg_departures[23]~45\)) # (!reg_departures(24)))
-- \reg_departures[24]~47COUT1_128\ = CARRY(((!\reg_departures[23]~45COUT1_126\)) # (!reg_departures(24)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => reg_departures(24),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[20]~39\,
	cin0 => \reg_departures[23]~45\,
	cin1 => \reg_departures[23]~45COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(24),
	cout0 => \reg_departures[24]~47\,
	cout1 => \reg_departures[24]~47COUT1_128\);

-- Location: LC_X7_Y10_N9
\reg_departures[25]\ : maxv_lcell
-- Equation(s):
-- reg_departures(25) = DFFEAS((reg_departures(25) $ ((!(!\reg_departures[20]~39\ & \reg_departures[24]~47\) # (\reg_departures[20]~39\ & \reg_departures[24]~47COUT1_128\)))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[25]~49\ = CARRY(((reg_departures(25) & !\reg_departures[24]~47COUT1_128\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => reg_departures(25),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[20]~39\,
	cin0 => \reg_departures[24]~47\,
	cin1 => \reg_departures[24]~47COUT1_128\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(25),
	cout => \reg_departures[25]~49\);

-- Location: LC_X8_Y10_N0
\reg_departures[26]\ : maxv_lcell
-- Equation(s):
-- reg_departures(26) = DFFEAS((reg_departures(26) $ ((\reg_departures[25]~49\))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[26]~51\ = CARRY(((!\reg_departures[25]~49\) # (!reg_departures(26))))
-- \reg_departures[26]~51COUT1_130\ = CARRY(((!\reg_departures[25]~49\) # (!reg_departures(26))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => reg_departures(26),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[25]~49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(26),
	cout0 => \reg_departures[26]~51\,
	cout1 => \reg_departures[26]~51COUT1_130\);

-- Location: LC_X8_Y10_N1
\reg_departures[27]\ : maxv_lcell
-- Equation(s):
-- reg_departures(27) = DFFEAS((reg_departures(27) $ ((!(!\reg_departures[25]~49\ & \reg_departures[26]~51\) # (\reg_departures[25]~49\ & \reg_departures[26]~51COUT1_130\)))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[27]~53\ = CARRY(((reg_departures(27) & !\reg_departures[26]~51\)))
-- \reg_departures[27]~53COUT1_132\ = CARRY(((reg_departures(27) & !\reg_departures[26]~51COUT1_130\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => reg_departures(27),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[25]~49\,
	cin0 => \reg_departures[26]~51\,
	cin1 => \reg_departures[26]~51COUT1_130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(27),
	cout0 => \reg_departures[27]~53\,
	cout1 => \reg_departures[27]~53COUT1_132\);

-- Location: LC_X8_Y10_N2
\reg_departures[28]\ : maxv_lcell
-- Equation(s):
-- reg_departures(28) = DFFEAS((reg_departures(28) $ (((!\reg_departures[25]~49\ & \reg_departures[27]~53\) # (\reg_departures[25]~49\ & \reg_departures[27]~53COUT1_132\)))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[28]~55\ = CARRY(((!\reg_departures[27]~53\) # (!reg_departures(28))))
-- \reg_departures[28]~55COUT1_134\ = CARRY(((!\reg_departures[27]~53COUT1_132\) # (!reg_departures(28))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => reg_departures(28),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[25]~49\,
	cin0 => \reg_departures[27]~53\,
	cin1 => \reg_departures[27]~53COUT1_132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(28),
	cout0 => \reg_departures[28]~55\,
	cout1 => \reg_departures[28]~55COUT1_134\);

-- Location: LC_X8_Y10_N3
\reg_departures[29]\ : maxv_lcell
-- Equation(s):
-- reg_departures(29) = DFFEAS(reg_departures(29) $ ((((!(!\reg_departures[25]~49\ & \reg_departures[28]~55\) # (\reg_departures[25]~49\ & \reg_departures[28]~55COUT1_134\))))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[29]~57\ = CARRY((reg_departures(29) & ((!\reg_departures[28]~55\))))
-- \reg_departures[29]~57COUT1_136\ = CARRY((reg_departures(29) & ((!\reg_departures[28]~55COUT1_134\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => reg_departures(29),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[25]~49\,
	cin0 => \reg_departures[28]~55\,
	cin1 => \reg_departures[28]~55COUT1_134\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(29),
	cout0 => \reg_departures[29]~57\,
	cout1 => \reg_departures[29]~57COUT1_136\);

-- Location: LC_X8_Y10_N4
\reg_departures[30]\ : maxv_lcell
-- Equation(s):
-- reg_departures(30) = DFFEAS(reg_departures(30) $ (((((!\reg_departures[25]~49\ & \reg_departures[29]~57\) # (\reg_departures[25]~49\ & \reg_departures[29]~57COUT1_136\))))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )
-- \reg_departures[30]~59\ = CARRY(((!\reg_departures[29]~57COUT1_136\)) # (!reg_departures(30)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => reg_departures(30),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[25]~49\,
	cin0 => \reg_departures[29]~57\,
	cin1 => \reg_departures[29]~57COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(30),
	cout => \reg_departures[30]~59\);

-- Location: LC_X8_Y10_N5
\reg_departures[31]\ : maxv_lcell
-- Equation(s):
-- reg_departures(31) = DFFEAS(reg_departures(31) $ ((((!\reg_departures[30]~59\)))), GLOBAL(\car_exited~combout\), VCC, , \reg_departures[8]~63_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => reg_departures(31),
	aclr => GND,
	ena => \reg_departures[8]~63_combout\,
	cin => \reg_departures[30]~59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_departures(31));

-- Location: LC_X4_Y9_N4
\LessThan6~157\ : maxv_lcell
-- Equation(s):
-- \LessThan6~157_cout\ = CARRY((reg_entrances(0) & (!reg_departures(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff22",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(0),
	datab => reg_departures(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~155\,
	cout => \LessThan6~157_cout\);

-- Location: LC_X4_Y9_N5
\LessThan6~152\ : maxv_lcell
-- Equation(s):
-- \LessThan6~152_cout0\ = CARRY((reg_departures(1) & ((!\LessThan6~157_cout\) # (!reg_entrances(1)))) # (!reg_departures(1) & (!reg_entrances(1) & !\LessThan6~157_cout\)))
-- \LessThan6~152COUT1_186\ = CARRY((reg_departures(1) & ((!\LessThan6~157_cout\) # (!reg_entrances(1)))) # (!reg_departures(1) & (!reg_entrances(1) & !\LessThan6~157_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_departures(1),
	datab => reg_entrances(1),
	cin => \LessThan6~157_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~150\,
	cout0 => \LessThan6~152_cout0\,
	cout1 => \LessThan6~152COUT1_186\);

-- Location: LC_X4_Y9_N6
\LessThan6~147\ : maxv_lcell
-- Equation(s):
-- \LessThan6~147_cout0\ = CARRY((reg_entrances(2) & ((!\LessThan6~152_cout0\) # (!reg_departures(2)))) # (!reg_entrances(2) & (!reg_departures(2) & !\LessThan6~152_cout0\)))
-- \LessThan6~147COUT1_188\ = CARRY((reg_entrances(2) & ((!\LessThan6~152COUT1_186\) # (!reg_departures(2)))) # (!reg_entrances(2) & (!reg_departures(2) & !\LessThan6~152COUT1_186\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(2),
	datab => reg_departures(2),
	cin => \LessThan6~157_cout\,
	cin0 => \LessThan6~152_cout0\,
	cin1 => \LessThan6~152COUT1_186\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~145\,
	cout0 => \LessThan6~147_cout0\,
	cout1 => \LessThan6~147COUT1_188\);

-- Location: LC_X4_Y9_N7
\LessThan6~142\ : maxv_lcell
-- Equation(s):
-- \LessThan6~142_cout0\ = CARRY((reg_departures(3) & ((!\LessThan6~147_cout0\) # (!reg_entrances(3)))) # (!reg_departures(3) & (!reg_entrances(3) & !\LessThan6~147_cout0\)))
-- \LessThan6~142COUT1_190\ = CARRY((reg_departures(3) & ((!\LessThan6~147COUT1_188\) # (!reg_entrances(3)))) # (!reg_departures(3) & (!reg_entrances(3) & !\LessThan6~147COUT1_188\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_departures(3),
	datab => reg_entrances(3),
	cin => \LessThan6~157_cout\,
	cin0 => \LessThan6~147_cout0\,
	cin1 => \LessThan6~147COUT1_188\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~140\,
	cout0 => \LessThan6~142_cout0\,
	cout1 => \LessThan6~142COUT1_190\);

-- Location: LC_X4_Y9_N8
\LessThan6~137\ : maxv_lcell
-- Equation(s):
-- \LessThan6~137_cout0\ = CARRY((reg_entrances(4) & ((!\LessThan6~142_cout0\) # (!reg_departures(4)))) # (!reg_entrances(4) & (!reg_departures(4) & !\LessThan6~142_cout0\)))
-- \LessThan6~137COUT1_192\ = CARRY((reg_entrances(4) & ((!\LessThan6~142COUT1_190\) # (!reg_departures(4)))) # (!reg_entrances(4) & (!reg_departures(4) & !\LessThan6~142COUT1_190\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(4),
	datab => reg_departures(4),
	cin => \LessThan6~157_cout\,
	cin0 => \LessThan6~142_cout0\,
	cin1 => \LessThan6~142COUT1_190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~135\,
	cout0 => \LessThan6~137_cout0\,
	cout1 => \LessThan6~137COUT1_192\);

-- Location: LC_X4_Y9_N9
\LessThan6~132\ : maxv_lcell
-- Equation(s):
-- \LessThan6~132_cout\ = CARRY((reg_entrances(5) & (reg_departures(5) & !\LessThan6~137COUT1_192\)) # (!reg_entrances(5) & ((reg_departures(5)) # (!\LessThan6~137COUT1_192\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(5),
	datab => reg_departures(5),
	cin => \LessThan6~157_cout\,
	cin0 => \LessThan6~137_cout0\,
	cin1 => \LessThan6~137COUT1_192\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~130\,
	cout => \LessThan6~132_cout\);

-- Location: LC_X5_Y9_N0
\LessThan6~127\ : maxv_lcell
-- Equation(s):
-- \LessThan6~127_cout0\ = CARRY((reg_departures(6) & (reg_entrances(6) & !\LessThan6~132_cout\)) # (!reg_departures(6) & ((reg_entrances(6)) # (!\LessThan6~132_cout\))))
-- \LessThan6~127COUT1_194\ = CARRY((reg_departures(6) & (reg_entrances(6) & !\LessThan6~132_cout\)) # (!reg_departures(6) & ((reg_entrances(6)) # (!\LessThan6~132_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_departures(6),
	datab => reg_entrances(6),
	cin => \LessThan6~132_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~125\,
	cout0 => \LessThan6~127_cout0\,
	cout1 => \LessThan6~127COUT1_194\);

-- Location: LC_X5_Y9_N1
\LessThan6~122\ : maxv_lcell
-- Equation(s):
-- \LessThan6~122_cout0\ = CARRY((reg_entrances(7) & (reg_departures(7) & !\LessThan6~127_cout0\)) # (!reg_entrances(7) & ((reg_departures(7)) # (!\LessThan6~127_cout0\))))
-- \LessThan6~122COUT1_196\ = CARRY((reg_entrances(7) & (reg_departures(7) & !\LessThan6~127COUT1_194\)) # (!reg_entrances(7) & ((reg_departures(7)) # (!\LessThan6~127COUT1_194\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(7),
	datab => reg_departures(7),
	cin => \LessThan6~132_cout\,
	cin0 => \LessThan6~127_cout0\,
	cin1 => \LessThan6~127COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~120\,
	cout0 => \LessThan6~122_cout0\,
	cout1 => \LessThan6~122COUT1_196\);

-- Location: LC_X5_Y9_N2
\LessThan6~117\ : maxv_lcell
-- Equation(s):
-- \LessThan6~117_cout0\ = CARRY((reg_entrances(8) & ((!\LessThan6~122_cout0\) # (!reg_departures(8)))) # (!reg_entrances(8) & (!reg_departures(8) & !\LessThan6~122_cout0\)))
-- \LessThan6~117COUT1_198\ = CARRY((reg_entrances(8) & ((!\LessThan6~122COUT1_196\) # (!reg_departures(8)))) # (!reg_entrances(8) & (!reg_departures(8) & !\LessThan6~122COUT1_196\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(8),
	datab => reg_departures(8),
	cin => \LessThan6~132_cout\,
	cin0 => \LessThan6~122_cout0\,
	cin1 => \LessThan6~122COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~115\,
	cout0 => \LessThan6~117_cout0\,
	cout1 => \LessThan6~117COUT1_198\);

-- Location: LC_X5_Y9_N3
\LessThan6~112\ : maxv_lcell
-- Equation(s):
-- \LessThan6~112_cout0\ = CARRY((reg_entrances(9) & (reg_departures(9) & !\LessThan6~117_cout0\)) # (!reg_entrances(9) & ((reg_departures(9)) # (!\LessThan6~117_cout0\))))
-- \LessThan6~112COUT1_200\ = CARRY((reg_entrances(9) & (reg_departures(9) & !\LessThan6~117COUT1_198\)) # (!reg_entrances(9) & ((reg_departures(9)) # (!\LessThan6~117COUT1_198\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(9),
	datab => reg_departures(9),
	cin => \LessThan6~132_cout\,
	cin0 => \LessThan6~117_cout0\,
	cin1 => \LessThan6~117COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~110\,
	cout0 => \LessThan6~112_cout0\,
	cout1 => \LessThan6~112COUT1_200\);

-- Location: LC_X5_Y9_N4
\LessThan6~107\ : maxv_lcell
-- Equation(s):
-- \LessThan6~107_cout\ = CARRY((reg_departures(10) & (reg_entrances(10) & !\LessThan6~112COUT1_200\)) # (!reg_departures(10) & ((reg_entrances(10)) # (!\LessThan6~112COUT1_200\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_departures(10),
	datab => reg_entrances(10),
	cin => \LessThan6~132_cout\,
	cin0 => \LessThan6~112_cout0\,
	cin1 => \LessThan6~112COUT1_200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~105\,
	cout => \LessThan6~107_cout\);

-- Location: LC_X5_Y9_N5
\LessThan6~102\ : maxv_lcell
-- Equation(s):
-- \LessThan6~102_cout0\ = CARRY((reg_departures(11) & ((!\LessThan6~107_cout\) # (!reg_entrances(11)))) # (!reg_departures(11) & (!reg_entrances(11) & !\LessThan6~107_cout\)))
-- \LessThan6~102COUT1_202\ = CARRY((reg_departures(11) & ((!\LessThan6~107_cout\) # (!reg_entrances(11)))) # (!reg_departures(11) & (!reg_entrances(11) & !\LessThan6~107_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_departures(11),
	datab => reg_entrances(11),
	cin => \LessThan6~107_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~100\,
	cout0 => \LessThan6~102_cout0\,
	cout1 => \LessThan6~102COUT1_202\);

-- Location: LC_X5_Y9_N6
\LessThan6~97\ : maxv_lcell
-- Equation(s):
-- \LessThan6~97_cout0\ = CARRY((reg_entrances(12) & ((!\LessThan6~102_cout0\) # (!reg_departures(12)))) # (!reg_entrances(12) & (!reg_departures(12) & !\LessThan6~102_cout0\)))
-- \LessThan6~97COUT1_204\ = CARRY((reg_entrances(12) & ((!\LessThan6~102COUT1_202\) # (!reg_departures(12)))) # (!reg_entrances(12) & (!reg_departures(12) & !\LessThan6~102COUT1_202\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(12),
	datab => reg_departures(12),
	cin => \LessThan6~107_cout\,
	cin0 => \LessThan6~102_cout0\,
	cin1 => \LessThan6~102COUT1_202\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~95\,
	cout0 => \LessThan6~97_cout0\,
	cout1 => \LessThan6~97COUT1_204\);

-- Location: LC_X5_Y9_N7
\LessThan6~92\ : maxv_lcell
-- Equation(s):
-- \LessThan6~92_cout0\ = CARRY((reg_entrances(13) & (reg_departures(13) & !\LessThan6~97_cout0\)) # (!reg_entrances(13) & ((reg_departures(13)) # (!\LessThan6~97_cout0\))))
-- \LessThan6~92COUT1_206\ = CARRY((reg_entrances(13) & (reg_departures(13) & !\LessThan6~97COUT1_204\)) # (!reg_entrances(13) & ((reg_departures(13)) # (!\LessThan6~97COUT1_204\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(13),
	datab => reg_departures(13),
	cin => \LessThan6~107_cout\,
	cin0 => \LessThan6~97_cout0\,
	cin1 => \LessThan6~97COUT1_204\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~90\,
	cout0 => \LessThan6~92_cout0\,
	cout1 => \LessThan6~92COUT1_206\);

-- Location: LC_X5_Y9_N8
\LessThan6~87\ : maxv_lcell
-- Equation(s):
-- \LessThan6~87_cout0\ = CARRY((reg_entrances(14) & ((!\LessThan6~92_cout0\) # (!reg_departures(14)))) # (!reg_entrances(14) & (!reg_departures(14) & !\LessThan6~92_cout0\)))
-- \LessThan6~87COUT1_208\ = CARRY((reg_entrances(14) & ((!\LessThan6~92COUT1_206\) # (!reg_departures(14)))) # (!reg_entrances(14) & (!reg_departures(14) & !\LessThan6~92COUT1_206\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(14),
	datab => reg_departures(14),
	cin => \LessThan6~107_cout\,
	cin0 => \LessThan6~92_cout0\,
	cin1 => \LessThan6~92COUT1_206\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~85\,
	cout0 => \LessThan6~87_cout0\,
	cout1 => \LessThan6~87COUT1_208\);

-- Location: LC_X5_Y9_N9
\LessThan6~82\ : maxv_lcell
-- Equation(s):
-- \LessThan6~82_cout\ = CARRY((reg_entrances(15) & (reg_departures(15) & !\LessThan6~87COUT1_208\)) # (!reg_entrances(15) & ((reg_departures(15)) # (!\LessThan6~87COUT1_208\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(15),
	datab => reg_departures(15),
	cin => \LessThan6~107_cout\,
	cin0 => \LessThan6~87_cout0\,
	cin1 => \LessThan6~87COUT1_208\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~80\,
	cout => \LessThan6~82_cout\);

-- Location: LC_X6_Y9_N0
\LessThan6~77\ : maxv_lcell
-- Equation(s):
-- \LessThan6~77_cout0\ = CARRY((reg_departures(16) & (reg_entrances(16) & !\LessThan6~82_cout\)) # (!reg_departures(16) & ((reg_entrances(16)) # (!\LessThan6~82_cout\))))
-- \LessThan6~77COUT1_210\ = CARRY((reg_departures(16) & (reg_entrances(16) & !\LessThan6~82_cout\)) # (!reg_departures(16) & ((reg_entrances(16)) # (!\LessThan6~82_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_departures(16),
	datab => reg_entrances(16),
	cin => \LessThan6~82_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~75\,
	cout0 => \LessThan6~77_cout0\,
	cout1 => \LessThan6~77COUT1_210\);

-- Location: LC_X6_Y9_N1
\LessThan6~72\ : maxv_lcell
-- Equation(s):
-- \LessThan6~72_cout0\ = CARRY((reg_entrances(17) & (reg_departures(17) & !\LessThan6~77_cout0\)) # (!reg_entrances(17) & ((reg_departures(17)) # (!\LessThan6~77_cout0\))))
-- \LessThan6~72COUT1_212\ = CARRY((reg_entrances(17) & (reg_departures(17) & !\LessThan6~77COUT1_210\)) # (!reg_entrances(17) & ((reg_departures(17)) # (!\LessThan6~77COUT1_210\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(17),
	datab => reg_departures(17),
	cin => \LessThan6~82_cout\,
	cin0 => \LessThan6~77_cout0\,
	cin1 => \LessThan6~77COUT1_210\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~70\,
	cout0 => \LessThan6~72_cout0\,
	cout1 => \LessThan6~72COUT1_212\);

-- Location: LC_X6_Y9_N2
\LessThan6~67\ : maxv_lcell
-- Equation(s):
-- \LessThan6~67_cout0\ = CARRY((reg_departures(18) & (reg_entrances(18) & !\LessThan6~72_cout0\)) # (!reg_departures(18) & ((reg_entrances(18)) # (!\LessThan6~72_cout0\))))
-- \LessThan6~67COUT1_214\ = CARRY((reg_departures(18) & (reg_entrances(18) & !\LessThan6~72COUT1_212\)) # (!reg_departures(18) & ((reg_entrances(18)) # (!\LessThan6~72COUT1_212\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_departures(18),
	datab => reg_entrances(18),
	cin => \LessThan6~82_cout\,
	cin0 => \LessThan6~72_cout0\,
	cin1 => \LessThan6~72COUT1_212\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~65\,
	cout0 => \LessThan6~67_cout0\,
	cout1 => \LessThan6~67COUT1_214\);

-- Location: LC_X6_Y9_N3
\LessThan6~62\ : maxv_lcell
-- Equation(s):
-- \LessThan6~62_cout0\ = CARRY((reg_entrances(19) & (reg_departures(19) & !\LessThan6~67_cout0\)) # (!reg_entrances(19) & ((reg_departures(19)) # (!\LessThan6~67_cout0\))))
-- \LessThan6~62COUT1_216\ = CARRY((reg_entrances(19) & (reg_departures(19) & !\LessThan6~67COUT1_214\)) # (!reg_entrances(19) & ((reg_departures(19)) # (!\LessThan6~67COUT1_214\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(19),
	datab => reg_departures(19),
	cin => \LessThan6~82_cout\,
	cin0 => \LessThan6~67_cout0\,
	cin1 => \LessThan6~67COUT1_214\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~60\,
	cout0 => \LessThan6~62_cout0\,
	cout1 => \LessThan6~62COUT1_216\);

-- Location: LC_X6_Y9_N4
\LessThan6~57\ : maxv_lcell
-- Equation(s):
-- \LessThan6~57_cout\ = CARRY((reg_departures(20) & (reg_entrances(20) & !\LessThan6~62COUT1_216\)) # (!reg_departures(20) & ((reg_entrances(20)) # (!\LessThan6~62COUT1_216\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_departures(20),
	datab => reg_entrances(20),
	cin => \LessThan6~82_cout\,
	cin0 => \LessThan6~62_cout0\,
	cin1 => \LessThan6~62COUT1_216\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~55\,
	cout => \LessThan6~57_cout\);

-- Location: LC_X6_Y9_N5
\LessThan6~52\ : maxv_lcell
-- Equation(s):
-- \LessThan6~52_cout0\ = CARRY((reg_entrances(21) & (reg_departures(21) & !\LessThan6~57_cout\)) # (!reg_entrances(21) & ((reg_departures(21)) # (!\LessThan6~57_cout\))))
-- \LessThan6~52COUT1_218\ = CARRY((reg_entrances(21) & (reg_departures(21) & !\LessThan6~57_cout\)) # (!reg_entrances(21) & ((reg_departures(21)) # (!\LessThan6~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(21),
	datab => reg_departures(21),
	cin => \LessThan6~57_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~50\,
	cout0 => \LessThan6~52_cout0\,
	cout1 => \LessThan6~52COUT1_218\);

-- Location: LC_X6_Y9_N6
\LessThan6~47\ : maxv_lcell
-- Equation(s):
-- \LessThan6~47_cout0\ = CARRY((reg_entrances(22) & ((!\LessThan6~52_cout0\) # (!reg_departures(22)))) # (!reg_entrances(22) & (!reg_departures(22) & !\LessThan6~52_cout0\)))
-- \LessThan6~47COUT1_220\ = CARRY((reg_entrances(22) & ((!\LessThan6~52COUT1_218\) # (!reg_departures(22)))) # (!reg_entrances(22) & (!reg_departures(22) & !\LessThan6~52COUT1_218\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(22),
	datab => reg_departures(22),
	cin => \LessThan6~57_cout\,
	cin0 => \LessThan6~52_cout0\,
	cin1 => \LessThan6~52COUT1_218\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~45\,
	cout0 => \LessThan6~47_cout0\,
	cout1 => \LessThan6~47COUT1_220\);

-- Location: LC_X6_Y9_N7
\LessThan6~42\ : maxv_lcell
-- Equation(s):
-- \LessThan6~42_cout0\ = CARRY((reg_entrances(23) & (reg_departures(23) & !\LessThan6~47_cout0\)) # (!reg_entrances(23) & ((reg_departures(23)) # (!\LessThan6~47_cout0\))))
-- \LessThan6~42COUT1_222\ = CARRY((reg_entrances(23) & (reg_departures(23) & !\LessThan6~47COUT1_220\)) # (!reg_entrances(23) & ((reg_departures(23)) # (!\LessThan6~47COUT1_220\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(23),
	datab => reg_departures(23),
	cin => \LessThan6~57_cout\,
	cin0 => \LessThan6~47_cout0\,
	cin1 => \LessThan6~47COUT1_220\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~40\,
	cout0 => \LessThan6~42_cout0\,
	cout1 => \LessThan6~42COUT1_222\);

-- Location: LC_X6_Y9_N8
\LessThan6~37\ : maxv_lcell
-- Equation(s):
-- \LessThan6~37_cout0\ = CARRY((reg_entrances(24) & ((!\LessThan6~42_cout0\) # (!reg_departures(24)))) # (!reg_entrances(24) & (!reg_departures(24) & !\LessThan6~42_cout0\)))
-- \LessThan6~37COUT1_224\ = CARRY((reg_entrances(24) & ((!\LessThan6~42COUT1_222\) # (!reg_departures(24)))) # (!reg_entrances(24) & (!reg_departures(24) & !\LessThan6~42COUT1_222\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(24),
	datab => reg_departures(24),
	cin => \LessThan6~57_cout\,
	cin0 => \LessThan6~42_cout0\,
	cin1 => \LessThan6~42COUT1_222\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~35\,
	cout0 => \LessThan6~37_cout0\,
	cout1 => \LessThan6~37COUT1_224\);

-- Location: LC_X6_Y9_N9
\LessThan6~32\ : maxv_lcell
-- Equation(s):
-- \LessThan6~32_cout\ = CARRY((reg_entrances(25) & (reg_departures(25) & !\LessThan6~37COUT1_224\)) # (!reg_entrances(25) & ((reg_departures(25)) # (!\LessThan6~37COUT1_224\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(25),
	datab => reg_departures(25),
	cin => \LessThan6~57_cout\,
	cin0 => \LessThan6~37_cout0\,
	cin1 => \LessThan6~37COUT1_224\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~30\,
	cout => \LessThan6~32_cout\);

-- Location: LC_X7_Y9_N0
\LessThan6~27\ : maxv_lcell
-- Equation(s):
-- \LessThan6~27_cout0\ = CARRY((reg_departures(26) & (reg_entrances(26) & !\LessThan6~32_cout\)) # (!reg_departures(26) & ((reg_entrances(26)) # (!\LessThan6~32_cout\))))
-- \LessThan6~27COUT1_226\ = CARRY((reg_departures(26) & (reg_entrances(26) & !\LessThan6~32_cout\)) # (!reg_departures(26) & ((reg_entrances(26)) # (!\LessThan6~32_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_departures(26),
	datab => reg_entrances(26),
	cin => \LessThan6~32_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~25\,
	cout0 => \LessThan6~27_cout0\,
	cout1 => \LessThan6~27COUT1_226\);

-- Location: LC_X7_Y9_N1
\LessThan6~22\ : maxv_lcell
-- Equation(s):
-- \LessThan6~22_cout0\ = CARRY((reg_entrances(27) & (reg_departures(27) & !\LessThan6~27_cout0\)) # (!reg_entrances(27) & ((reg_departures(27)) # (!\LessThan6~27_cout0\))))
-- \LessThan6~22COUT1_228\ = CARRY((reg_entrances(27) & (reg_departures(27) & !\LessThan6~27COUT1_226\)) # (!reg_entrances(27) & ((reg_departures(27)) # (!\LessThan6~27COUT1_226\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(27),
	datab => reg_departures(27),
	cin => \LessThan6~32_cout\,
	cin0 => \LessThan6~27_cout0\,
	cin1 => \LessThan6~27COUT1_226\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~20\,
	cout0 => \LessThan6~22_cout0\,
	cout1 => \LessThan6~22COUT1_228\);

-- Location: LC_X7_Y9_N2
\LessThan6~17\ : maxv_lcell
-- Equation(s):
-- \LessThan6~17_cout0\ = CARRY((reg_entrances(28) & ((!\LessThan6~22_cout0\) # (!reg_departures(28)))) # (!reg_entrances(28) & (!reg_departures(28) & !\LessThan6~22_cout0\)))
-- \LessThan6~17COUT1_230\ = CARRY((reg_entrances(28) & ((!\LessThan6~22COUT1_228\) # (!reg_departures(28)))) # (!reg_entrances(28) & (!reg_departures(28) & !\LessThan6~22COUT1_228\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(28),
	datab => reg_departures(28),
	cin => \LessThan6~32_cout\,
	cin0 => \LessThan6~22_cout0\,
	cin1 => \LessThan6~22COUT1_228\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~15\,
	cout0 => \LessThan6~17_cout0\,
	cout1 => \LessThan6~17COUT1_230\);

-- Location: LC_X7_Y9_N3
\LessThan6~12\ : maxv_lcell
-- Equation(s):
-- \LessThan6~12_cout0\ = CARRY((reg_departures(29) & ((!\LessThan6~17_cout0\) # (!reg_entrances(29)))) # (!reg_departures(29) & (!reg_entrances(29) & !\LessThan6~17_cout0\)))
-- \LessThan6~12COUT1_232\ = CARRY((reg_departures(29) & ((!\LessThan6~17COUT1_230\) # (!reg_entrances(29)))) # (!reg_departures(29) & (!reg_entrances(29) & !\LessThan6~17COUT1_230\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_departures(29),
	datab => reg_entrances(29),
	cin => \LessThan6~32_cout\,
	cin0 => \LessThan6~17_cout0\,
	cin1 => \LessThan6~17COUT1_230\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~10\,
	cout0 => \LessThan6~12_cout0\,
	cout1 => \LessThan6~12COUT1_232\);

-- Location: LC_X7_Y9_N4
\LessThan6~7\ : maxv_lcell
-- Equation(s):
-- \LessThan6~7_cout\ = CARRY((reg_entrances(30) & ((!\LessThan6~12COUT1_232\) # (!reg_departures(30)))) # (!reg_entrances(30) & (!reg_departures(30) & !\LessThan6~12COUT1_232\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(30),
	datab => reg_departures(30),
	cin => \LessThan6~32_cout\,
	cin0 => \LessThan6~12_cout0\,
	cin1 => \LessThan6~12COUT1_232\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~5\,
	cout => \LessThan6~7_cout\);

-- Location: LC_X7_Y9_N5
\LessThan6~0\ : maxv_lcell
-- Equation(s):
-- \LessThan6~0_combout\ = ((reg_entrances(31) & (\LessThan6~7_cout\ & reg_departures(31))) # (!reg_entrances(31) & ((\LessThan6~7_cout\) # (reg_departures(31)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => reg_entrances(31),
	datad => reg_departures(31),
	cin => \LessThan6~7_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~0_combout\);

-- Location: LC_X7_Y9_N7
\reg_departures[8]~63\ : maxv_lcell
-- Equation(s):
-- \reg_departures[8]~63_combout\ = (((\LessThan6~0_combout\ & !\is_uni_car_exited~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \LessThan6~0_combout\,
	datad => \is_uni_car_exited~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \reg_departures[8]~63_combout\);

-- Location: LC_X4_Y7_N4
\Add2~0\ : maxv_lcell
-- Equation(s):
-- \Add2~0_combout\ = reg_entrances(0) $ ((reg_departures(0)))
-- \Add2~2\ = CARRY((reg_entrances(0)) # ((!reg_departures(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66bb",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(0),
	datab => reg_departures(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~0_combout\,
	cout => \Add2~2\);

-- Location: LC_X4_Y7_N5
\Add2~5\ : maxv_lcell
-- Equation(s):
-- \Add2~5_combout\ = reg_entrances(1) $ (reg_departures(1) $ ((!\Add2~2\)))
-- \Add2~7\ = CARRY((reg_entrances(1) & (reg_departures(1) & !\Add2~2\)) # (!reg_entrances(1) & ((reg_departures(1)) # (!\Add2~2\))))
-- \Add2~7COUT1_186\ = CARRY((reg_entrances(1) & (reg_departures(1) & !\Add2~2\)) # (!reg_entrances(1) & ((reg_departures(1)) # (!\Add2~2\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(1),
	datab => reg_departures(1),
	cin => \Add2~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~5_combout\,
	cout0 => \Add2~7\,
	cout1 => \Add2~7COUT1_186\);

-- Location: LC_X4_Y7_N6
\Add2~10\ : maxv_lcell
-- Equation(s):
-- \Add2~10_combout\ = reg_departures(2) $ (reg_entrances(2) $ (((!\Add2~2\ & \Add2~7\) # (\Add2~2\ & \Add2~7COUT1_186\))))
-- \Add2~12\ = CARRY((reg_departures(2) & (reg_entrances(2) & !\Add2~7\)) # (!reg_departures(2) & ((reg_entrances(2)) # (!\Add2~7\))))
-- \Add2~12COUT1_188\ = CARRY((reg_departures(2) & (reg_entrances(2) & !\Add2~7COUT1_186\)) # (!reg_departures(2) & ((reg_entrances(2)) # (!\Add2~7COUT1_186\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_departures(2),
	datab => reg_entrances(2),
	cin => \Add2~2\,
	cin0 => \Add2~7\,
	cin1 => \Add2~7COUT1_186\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~10_combout\,
	cout0 => \Add2~12\,
	cout1 => \Add2~12COUT1_188\);

-- Location: LC_X4_Y7_N7
\Add2~15\ : maxv_lcell
-- Equation(s):
-- \Add2~15_combout\ = reg_departures(3) $ (reg_entrances(3) $ ((!(!\Add2~2\ & \Add2~12\) # (\Add2~2\ & \Add2~12COUT1_188\))))
-- \Add2~17\ = CARRY((reg_departures(3) & ((!\Add2~12\) # (!reg_entrances(3)))) # (!reg_departures(3) & (!reg_entrances(3) & !\Add2~12\)))
-- \Add2~17COUT1_190\ = CARRY((reg_departures(3) & ((!\Add2~12COUT1_188\) # (!reg_entrances(3)))) # (!reg_departures(3) & (!reg_entrances(3) & !\Add2~12COUT1_188\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_departures(3),
	datab => reg_entrances(3),
	cin => \Add2~2\,
	cin0 => \Add2~12\,
	cin1 => \Add2~12COUT1_188\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~15_combout\,
	cout0 => \Add2~17\,
	cout1 => \Add2~17COUT1_190\);

-- Location: LC_X4_Y7_N8
\Add2~20\ : maxv_lcell
-- Equation(s):
-- \Add2~20_combout\ = reg_departures(4) $ (reg_entrances(4) $ (((!\Add2~2\ & \Add2~17\) # (\Add2~2\ & \Add2~17COUT1_190\))))
-- \Add2~22\ = CARRY((reg_departures(4) & (reg_entrances(4) & !\Add2~17\)) # (!reg_departures(4) & ((reg_entrances(4)) # (!\Add2~17\))))
-- \Add2~22COUT1_192\ = CARRY((reg_departures(4) & (reg_entrances(4) & !\Add2~17COUT1_190\)) # (!reg_departures(4) & ((reg_entrances(4)) # (!\Add2~17COUT1_190\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_departures(4),
	datab => reg_entrances(4),
	cin => \Add2~2\,
	cin0 => \Add2~17\,
	cin1 => \Add2~17COUT1_190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~20_combout\,
	cout0 => \Add2~22\,
	cout1 => \Add2~22COUT1_192\);

-- Location: LC_X4_Y7_N9
\Add2~25\ : maxv_lcell
-- Equation(s):
-- \Add2~25_combout\ = reg_entrances(5) $ (reg_departures(5) $ ((!(!\Add2~2\ & \Add2~22\) # (\Add2~2\ & \Add2~22COUT1_192\))))
-- \Add2~27\ = CARRY((reg_entrances(5) & (reg_departures(5) & !\Add2~22COUT1_192\)) # (!reg_entrances(5) & ((reg_departures(5)) # (!\Add2~22COUT1_192\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(5),
	datab => reg_departures(5),
	cin => \Add2~2\,
	cin0 => \Add2~22\,
	cin1 => \Add2~22COUT1_192\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~25_combout\,
	cout => \Add2~27\);

-- Location: LC_X5_Y7_N0
\Add2~30\ : maxv_lcell
-- Equation(s):
-- \Add2~30_combout\ = reg_departures(6) $ (reg_entrances(6) $ ((\Add2~27\)))
-- \Add2~32\ = CARRY((reg_departures(6) & (reg_entrances(6) & !\Add2~27\)) # (!reg_departures(6) & ((reg_entrances(6)) # (!\Add2~27\))))
-- \Add2~32COUT1_194\ = CARRY((reg_departures(6) & (reg_entrances(6) & !\Add2~27\)) # (!reg_departures(6) & ((reg_entrances(6)) # (!\Add2~27\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_departures(6),
	datab => reg_entrances(6),
	cin => \Add2~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~30_combout\,
	cout0 => \Add2~32\,
	cout1 => \Add2~32COUT1_194\);

-- Location: LC_X5_Y7_N1
\Add2~35\ : maxv_lcell
-- Equation(s):
-- \Add2~35_combout\ = reg_entrances(7) $ (reg_departures(7) $ ((!(!\Add2~27\ & \Add2~32\) # (\Add2~27\ & \Add2~32COUT1_194\))))
-- \Add2~37\ = CARRY((reg_entrances(7) & (reg_departures(7) & !\Add2~32\)) # (!reg_entrances(7) & ((reg_departures(7)) # (!\Add2~32\))))
-- \Add2~37COUT1_196\ = CARRY((reg_entrances(7) & (reg_departures(7) & !\Add2~32COUT1_194\)) # (!reg_entrances(7) & ((reg_departures(7)) # (!\Add2~32COUT1_194\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(7),
	datab => reg_departures(7),
	cin => \Add2~27\,
	cin0 => \Add2~32\,
	cin1 => \Add2~32COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~35_combout\,
	cout0 => \Add2~37\,
	cout1 => \Add2~37COUT1_196\);

-- Location: LC_X5_Y7_N2
\Add2~40\ : maxv_lcell
-- Equation(s):
-- \Add2~40_combout\ = reg_entrances(8) $ (reg_departures(8) $ (((!\Add2~27\ & \Add2~37\) # (\Add2~27\ & \Add2~37COUT1_196\))))
-- \Add2~42\ = CARRY((reg_entrances(8) & ((!\Add2~37\) # (!reg_departures(8)))) # (!reg_entrances(8) & (!reg_departures(8) & !\Add2~37\)))
-- \Add2~42COUT1_198\ = CARRY((reg_entrances(8) & ((!\Add2~37COUT1_196\) # (!reg_departures(8)))) # (!reg_entrances(8) & (!reg_departures(8) & !\Add2~37COUT1_196\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(8),
	datab => reg_departures(8),
	cin => \Add2~27\,
	cin0 => \Add2~37\,
	cin1 => \Add2~37COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~40_combout\,
	cout0 => \Add2~42\,
	cout1 => \Add2~42COUT1_198\);

-- Location: LC_X5_Y7_N3
\Add2~45\ : maxv_lcell
-- Equation(s):
-- \Add2~45_combout\ = reg_departures(9) $ (reg_entrances(9) $ ((!(!\Add2~27\ & \Add2~42\) # (\Add2~27\ & \Add2~42COUT1_198\))))
-- \Add2~47\ = CARRY((reg_departures(9) & ((!\Add2~42\) # (!reg_entrances(9)))) # (!reg_departures(9) & (!reg_entrances(9) & !\Add2~42\)))
-- \Add2~47COUT1_200\ = CARRY((reg_departures(9) & ((!\Add2~42COUT1_198\) # (!reg_entrances(9)))) # (!reg_departures(9) & (!reg_entrances(9) & !\Add2~42COUT1_198\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_departures(9),
	datab => reg_entrances(9),
	cin => \Add2~27\,
	cin0 => \Add2~42\,
	cin1 => \Add2~42COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~45_combout\,
	cout0 => \Add2~47\,
	cout1 => \Add2~47COUT1_200\);

-- Location: LC_X5_Y7_N4
\Add2~50\ : maxv_lcell
-- Equation(s):
-- \Add2~50_combout\ = reg_departures(10) $ (reg_entrances(10) $ (((!\Add2~27\ & \Add2~47\) # (\Add2~27\ & \Add2~47COUT1_200\))))
-- \Add2~52\ = CARRY((reg_departures(10) & (reg_entrances(10) & !\Add2~47COUT1_200\)) # (!reg_departures(10) & ((reg_entrances(10)) # (!\Add2~47COUT1_200\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_departures(10),
	datab => reg_entrances(10),
	cin => \Add2~27\,
	cin0 => \Add2~47\,
	cin1 => \Add2~47COUT1_200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~50_combout\,
	cout => \Add2~52\);

-- Location: LC_X5_Y7_N5
\Add2~55\ : maxv_lcell
-- Equation(s):
-- \Add2~55_combout\ = reg_entrances(11) $ (reg_departures(11) $ ((!\Add2~52\)))
-- \Add2~57\ = CARRY((reg_entrances(11) & (reg_departures(11) & !\Add2~52\)) # (!reg_entrances(11) & ((reg_departures(11)) # (!\Add2~52\))))
-- \Add2~57COUT1_202\ = CARRY((reg_entrances(11) & (reg_departures(11) & !\Add2~52\)) # (!reg_entrances(11) & ((reg_departures(11)) # (!\Add2~52\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(11),
	datab => reg_departures(11),
	cin => \Add2~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~55_combout\,
	cout0 => \Add2~57\,
	cout1 => \Add2~57COUT1_202\);

-- Location: LC_X5_Y7_N6
\Add2~60\ : maxv_lcell
-- Equation(s):
-- \Add2~60_combout\ = reg_entrances(12) $ (reg_departures(12) $ (((!\Add2~52\ & \Add2~57\) # (\Add2~52\ & \Add2~57COUT1_202\))))
-- \Add2~62\ = CARRY((reg_entrances(12) & ((!\Add2~57\) # (!reg_departures(12)))) # (!reg_entrances(12) & (!reg_departures(12) & !\Add2~57\)))
-- \Add2~62COUT1_204\ = CARRY((reg_entrances(12) & ((!\Add2~57COUT1_202\) # (!reg_departures(12)))) # (!reg_entrances(12) & (!reg_departures(12) & !\Add2~57COUT1_202\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(12),
	datab => reg_departures(12),
	cin => \Add2~52\,
	cin0 => \Add2~57\,
	cin1 => \Add2~57COUT1_202\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~60_combout\,
	cout0 => \Add2~62\,
	cout1 => \Add2~62COUT1_204\);

-- Location: LC_X5_Y7_N7
\Add2~65\ : maxv_lcell
-- Equation(s):
-- \Add2~65_combout\ = reg_entrances(13) $ (reg_departures(13) $ ((!(!\Add2~52\ & \Add2~62\) # (\Add2~52\ & \Add2~62COUT1_204\))))
-- \Add2~67\ = CARRY((reg_entrances(13) & (reg_departures(13) & !\Add2~62\)) # (!reg_entrances(13) & ((reg_departures(13)) # (!\Add2~62\))))
-- \Add2~67COUT1_206\ = CARRY((reg_entrances(13) & (reg_departures(13) & !\Add2~62COUT1_204\)) # (!reg_entrances(13) & ((reg_departures(13)) # (!\Add2~62COUT1_204\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(13),
	datab => reg_departures(13),
	cin => \Add2~52\,
	cin0 => \Add2~62\,
	cin1 => \Add2~62COUT1_204\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~65_combout\,
	cout0 => \Add2~67\,
	cout1 => \Add2~67COUT1_206\);

-- Location: LC_X5_Y7_N8
\Add2~70\ : maxv_lcell
-- Equation(s):
-- \Add2~70_combout\ = reg_entrances(14) $ (reg_departures(14) $ (((!\Add2~52\ & \Add2~67\) # (\Add2~52\ & \Add2~67COUT1_206\))))
-- \Add2~72\ = CARRY((reg_entrances(14) & ((!\Add2~67\) # (!reg_departures(14)))) # (!reg_entrances(14) & (!reg_departures(14) & !\Add2~67\)))
-- \Add2~72COUT1_208\ = CARRY((reg_entrances(14) & ((!\Add2~67COUT1_206\) # (!reg_departures(14)))) # (!reg_entrances(14) & (!reg_departures(14) & !\Add2~67COUT1_206\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(14),
	datab => reg_departures(14),
	cin => \Add2~52\,
	cin0 => \Add2~67\,
	cin1 => \Add2~67COUT1_206\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~70_combout\,
	cout0 => \Add2~72\,
	cout1 => \Add2~72COUT1_208\);

-- Location: LC_X5_Y7_N9
\Add2~75\ : maxv_lcell
-- Equation(s):
-- \Add2~75_combout\ = reg_departures(15) $ (reg_entrances(15) $ ((!(!\Add2~52\ & \Add2~72\) # (\Add2~52\ & \Add2~72COUT1_208\))))
-- \Add2~77\ = CARRY((reg_departures(15) & ((!\Add2~72COUT1_208\) # (!reg_entrances(15)))) # (!reg_departures(15) & (!reg_entrances(15) & !\Add2~72COUT1_208\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_departures(15),
	datab => reg_entrances(15),
	cin => \Add2~52\,
	cin0 => \Add2~72\,
	cin1 => \Add2~72COUT1_208\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~75_combout\,
	cout => \Add2~77\);

-- Location: LC_X6_Y7_N0
\Add2~80\ : maxv_lcell
-- Equation(s):
-- \Add2~80_combout\ = reg_departures(16) $ (reg_entrances(16) $ ((\Add2~77\)))
-- \Add2~82\ = CARRY((reg_departures(16) & (reg_entrances(16) & !\Add2~77\)) # (!reg_departures(16) & ((reg_entrances(16)) # (!\Add2~77\))))
-- \Add2~82COUT1_210\ = CARRY((reg_departures(16) & (reg_entrances(16) & !\Add2~77\)) # (!reg_departures(16) & ((reg_entrances(16)) # (!\Add2~77\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_departures(16),
	datab => reg_entrances(16),
	cin => \Add2~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~80_combout\,
	cout0 => \Add2~82\,
	cout1 => \Add2~82COUT1_210\);

-- Location: LC_X6_Y7_N1
\Add2~85\ : maxv_lcell
-- Equation(s):
-- \Add2~85_combout\ = reg_departures(17) $ (reg_entrances(17) $ ((!(!\Add2~77\ & \Add2~82\) # (\Add2~77\ & \Add2~82COUT1_210\))))
-- \Add2~87\ = CARRY((reg_departures(17) & ((!\Add2~82\) # (!reg_entrances(17)))) # (!reg_departures(17) & (!reg_entrances(17) & !\Add2~82\)))
-- \Add2~87COUT1_212\ = CARRY((reg_departures(17) & ((!\Add2~82COUT1_210\) # (!reg_entrances(17)))) # (!reg_departures(17) & (!reg_entrances(17) & !\Add2~82COUT1_210\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_departures(17),
	datab => reg_entrances(17),
	cin => \Add2~77\,
	cin0 => \Add2~82\,
	cin1 => \Add2~82COUT1_210\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~85_combout\,
	cout0 => \Add2~87\,
	cout1 => \Add2~87COUT1_212\);

-- Location: LC_X6_Y7_N2
\Add2~90\ : maxv_lcell
-- Equation(s):
-- \Add2~90_combout\ = reg_entrances(18) $ (reg_departures(18) $ (((!\Add2~77\ & \Add2~87\) # (\Add2~77\ & \Add2~87COUT1_212\))))
-- \Add2~92\ = CARRY((reg_entrances(18) & ((!\Add2~87\) # (!reg_departures(18)))) # (!reg_entrances(18) & (!reg_departures(18) & !\Add2~87\)))
-- \Add2~92COUT1_214\ = CARRY((reg_entrances(18) & ((!\Add2~87COUT1_212\) # (!reg_departures(18)))) # (!reg_entrances(18) & (!reg_departures(18) & !\Add2~87COUT1_212\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(18),
	datab => reg_departures(18),
	cin => \Add2~77\,
	cin0 => \Add2~87\,
	cin1 => \Add2~87COUT1_212\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~90_combout\,
	cout0 => \Add2~92\,
	cout1 => \Add2~92COUT1_214\);

-- Location: LC_X6_Y7_N3
\Add2~95\ : maxv_lcell
-- Equation(s):
-- \Add2~95_combout\ = reg_entrances(19) $ (reg_departures(19) $ ((!(!\Add2~77\ & \Add2~92\) # (\Add2~77\ & \Add2~92COUT1_214\))))
-- \Add2~97\ = CARRY((reg_entrances(19) & (reg_departures(19) & !\Add2~92\)) # (!reg_entrances(19) & ((reg_departures(19)) # (!\Add2~92\))))
-- \Add2~97COUT1_216\ = CARRY((reg_entrances(19) & (reg_departures(19) & !\Add2~92COUT1_214\)) # (!reg_entrances(19) & ((reg_departures(19)) # (!\Add2~92COUT1_214\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(19),
	datab => reg_departures(19),
	cin => \Add2~77\,
	cin0 => \Add2~92\,
	cin1 => \Add2~92COUT1_214\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~95_combout\,
	cout0 => \Add2~97\,
	cout1 => \Add2~97COUT1_216\);

-- Location: LC_X6_Y7_N4
\Add2~100\ : maxv_lcell
-- Equation(s):
-- \Add2~100_combout\ = reg_departures(20) $ (reg_entrances(20) $ (((!\Add2~77\ & \Add2~97\) # (\Add2~77\ & \Add2~97COUT1_216\))))
-- \Add2~102\ = CARRY((reg_departures(20) & (reg_entrances(20) & !\Add2~97COUT1_216\)) # (!reg_departures(20) & ((reg_entrances(20)) # (!\Add2~97COUT1_216\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_departures(20),
	datab => reg_entrances(20),
	cin => \Add2~77\,
	cin0 => \Add2~97\,
	cin1 => \Add2~97COUT1_216\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~100_combout\,
	cout => \Add2~102\);

-- Location: LC_X6_Y7_N5
\Add2~105\ : maxv_lcell
-- Equation(s):
-- \Add2~105_combout\ = reg_entrances(21) $ (reg_departures(21) $ ((!\Add2~102\)))
-- \Add2~107\ = CARRY((reg_entrances(21) & (reg_departures(21) & !\Add2~102\)) # (!reg_entrances(21) & ((reg_departures(21)) # (!\Add2~102\))))
-- \Add2~107COUT1_218\ = CARRY((reg_entrances(21) & (reg_departures(21) & !\Add2~102\)) # (!reg_entrances(21) & ((reg_departures(21)) # (!\Add2~102\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(21),
	datab => reg_departures(21),
	cin => \Add2~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~105_combout\,
	cout0 => \Add2~107\,
	cout1 => \Add2~107COUT1_218\);

-- Location: LC_X6_Y7_N6
\Add2~110\ : maxv_lcell
-- Equation(s):
-- \Add2~110_combout\ = reg_entrances(22) $ (reg_departures(22) $ (((!\Add2~102\ & \Add2~107\) # (\Add2~102\ & \Add2~107COUT1_218\))))
-- \Add2~112\ = CARRY((reg_entrances(22) & ((!\Add2~107\) # (!reg_departures(22)))) # (!reg_entrances(22) & (!reg_departures(22) & !\Add2~107\)))
-- \Add2~112COUT1_220\ = CARRY((reg_entrances(22) & ((!\Add2~107COUT1_218\) # (!reg_departures(22)))) # (!reg_entrances(22) & (!reg_departures(22) & !\Add2~107COUT1_218\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(22),
	datab => reg_departures(22),
	cin => \Add2~102\,
	cin0 => \Add2~107\,
	cin1 => \Add2~107COUT1_218\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~110_combout\,
	cout0 => \Add2~112\,
	cout1 => \Add2~112COUT1_220\);

-- Location: LC_X6_Y7_N7
\Add2~115\ : maxv_lcell
-- Equation(s):
-- \Add2~115_combout\ = reg_entrances(23) $ (reg_departures(23) $ ((!(!\Add2~102\ & \Add2~112\) # (\Add2~102\ & \Add2~112COUT1_220\))))
-- \Add2~117\ = CARRY((reg_entrances(23) & (reg_departures(23) & !\Add2~112\)) # (!reg_entrances(23) & ((reg_departures(23)) # (!\Add2~112\))))
-- \Add2~117COUT1_222\ = CARRY((reg_entrances(23) & (reg_departures(23) & !\Add2~112COUT1_220\)) # (!reg_entrances(23) & ((reg_departures(23)) # (!\Add2~112COUT1_220\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(23),
	datab => reg_departures(23),
	cin => \Add2~102\,
	cin0 => \Add2~112\,
	cin1 => \Add2~112COUT1_220\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~115_combout\,
	cout0 => \Add2~117\,
	cout1 => \Add2~117COUT1_222\);

-- Location: LC_X6_Y7_N8
\Add2~120\ : maxv_lcell
-- Equation(s):
-- \Add2~120_combout\ = reg_entrances(24) $ (reg_departures(24) $ (((!\Add2~102\ & \Add2~117\) # (\Add2~102\ & \Add2~117COUT1_222\))))
-- \Add2~122\ = CARRY((reg_entrances(24) & ((!\Add2~117\) # (!reg_departures(24)))) # (!reg_entrances(24) & (!reg_departures(24) & !\Add2~117\)))
-- \Add2~122COUT1_224\ = CARRY((reg_entrances(24) & ((!\Add2~117COUT1_222\) # (!reg_departures(24)))) # (!reg_entrances(24) & (!reg_departures(24) & !\Add2~117COUT1_222\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(24),
	datab => reg_departures(24),
	cin => \Add2~102\,
	cin0 => \Add2~117\,
	cin1 => \Add2~117COUT1_222\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~120_combout\,
	cout0 => \Add2~122\,
	cout1 => \Add2~122COUT1_224\);

-- Location: LC_X6_Y7_N9
\Add2~125\ : maxv_lcell
-- Equation(s):
-- \Add2~125_combout\ = reg_entrances(25) $ (reg_departures(25) $ ((!(!\Add2~102\ & \Add2~122\) # (\Add2~102\ & \Add2~122COUT1_224\))))
-- \Add2~127\ = CARRY((reg_entrances(25) & (reg_departures(25) & !\Add2~122COUT1_224\)) # (!reg_entrances(25) & ((reg_departures(25)) # (!\Add2~122COUT1_224\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(25),
	datab => reg_departures(25),
	cin => \Add2~102\,
	cin0 => \Add2~122\,
	cin1 => \Add2~122COUT1_224\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~125_combout\,
	cout => \Add2~127\);

-- Location: LC_X7_Y7_N0
\Add2~130\ : maxv_lcell
-- Equation(s):
-- \Add2~130_combout\ = reg_departures(26) $ (reg_entrances(26) $ ((\Add2~127\)))
-- \Add2~132\ = CARRY((reg_departures(26) & (reg_entrances(26) & !\Add2~127\)) # (!reg_departures(26) & ((reg_entrances(26)) # (!\Add2~127\))))
-- \Add2~132COUT1_226\ = CARRY((reg_departures(26) & (reg_entrances(26) & !\Add2~127\)) # (!reg_departures(26) & ((reg_entrances(26)) # (!\Add2~127\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_departures(26),
	datab => reg_entrances(26),
	cin => \Add2~127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~130_combout\,
	cout0 => \Add2~132\,
	cout1 => \Add2~132COUT1_226\);

-- Location: LC_X7_Y7_N1
\Add2~135\ : maxv_lcell
-- Equation(s):
-- \Add2~135_combout\ = reg_entrances(27) $ (reg_departures(27) $ ((!(!\Add2~127\ & \Add2~132\) # (\Add2~127\ & \Add2~132COUT1_226\))))
-- \Add2~137\ = CARRY((reg_entrances(27) & (reg_departures(27) & !\Add2~132\)) # (!reg_entrances(27) & ((reg_departures(27)) # (!\Add2~132\))))
-- \Add2~137COUT1_228\ = CARRY((reg_entrances(27) & (reg_departures(27) & !\Add2~132COUT1_226\)) # (!reg_entrances(27) & ((reg_departures(27)) # (!\Add2~132COUT1_226\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(27),
	datab => reg_departures(27),
	cin => \Add2~127\,
	cin0 => \Add2~132\,
	cin1 => \Add2~132COUT1_226\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~135_combout\,
	cout0 => \Add2~137\,
	cout1 => \Add2~137COUT1_228\);

-- Location: LC_X7_Y7_N2
\Add2~140\ : maxv_lcell
-- Equation(s):
-- \Add2~140_combout\ = reg_entrances(28) $ (reg_departures(28) $ (((!\Add2~127\ & \Add2~137\) # (\Add2~127\ & \Add2~137COUT1_228\))))
-- \Add2~142\ = CARRY((reg_entrances(28) & ((!\Add2~137\) # (!reg_departures(28)))) # (!reg_entrances(28) & (!reg_departures(28) & !\Add2~137\)))
-- \Add2~142COUT1_230\ = CARRY((reg_entrances(28) & ((!\Add2~137COUT1_228\) # (!reg_departures(28)))) # (!reg_entrances(28) & (!reg_departures(28) & !\Add2~137COUT1_228\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(28),
	datab => reg_departures(28),
	cin => \Add2~127\,
	cin0 => \Add2~137\,
	cin1 => \Add2~137COUT1_228\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~140_combout\,
	cout0 => \Add2~142\,
	cout1 => \Add2~142COUT1_230\);

-- Location: LC_X7_Y7_N3
\Add2~145\ : maxv_lcell
-- Equation(s):
-- \Add2~145_combout\ = reg_departures(29) $ (reg_entrances(29) $ ((!(!\Add2~127\ & \Add2~142\) # (\Add2~127\ & \Add2~142COUT1_230\))))
-- \Add2~147\ = CARRY((reg_departures(29) & ((!\Add2~142\) # (!reg_entrances(29)))) # (!reg_departures(29) & (!reg_entrances(29) & !\Add2~142\)))
-- \Add2~147COUT1_232\ = CARRY((reg_departures(29) & ((!\Add2~142COUT1_230\) # (!reg_entrances(29)))) # (!reg_departures(29) & (!reg_entrances(29) & !\Add2~142COUT1_230\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_departures(29),
	datab => reg_entrances(29),
	cin => \Add2~127\,
	cin0 => \Add2~142\,
	cin1 => \Add2~142COUT1_230\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~145_combout\,
	cout0 => \Add2~147\,
	cout1 => \Add2~147COUT1_232\);

-- Location: LC_X7_Y7_N4
\Add2~150\ : maxv_lcell
-- Equation(s):
-- \Add2~150_combout\ = reg_entrances(30) $ (reg_departures(30) $ (((!\Add2~127\ & \Add2~147\) # (\Add2~127\ & \Add2~147COUT1_232\))))
-- \Add2~152\ = CARRY((reg_entrances(30) & ((!\Add2~147COUT1_232\) # (!reg_departures(30)))) # (!reg_entrances(30) & (!reg_departures(30) & !\Add2~147COUT1_232\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_entrances(30),
	datab => reg_departures(30),
	cin => \Add2~127\,
	cin0 => \Add2~147\,
	cin1 => \Add2~147COUT1_232\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~150_combout\,
	cout => \Add2~152\);

-- Location: PIN_H5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: LC_X14_Y3_N5
\Add1~95\ : maxv_lcell
-- Equation(s):
-- \Add1~95_combout\ = (sec(21) $ ((\Add1~92\)))
-- \Add1~97\ = CARRY(((!\Add1~92\) # (!sec(21))))
-- \Add1~97COUT1_218\ = CARRY(((!\Add1~92\) # (!sec(21))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => sec(21),
	cin => \Add1~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~95_combout\,
	cout0 => \Add1~97\,
	cout1 => \Add1~97COUT1_218\);

-- Location: LC_X14_Y4_N3
\sec[21]\ : maxv_lcell
-- Equation(s):
-- sec(21) = DFFEAS((((\Add1~95_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add1~95_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sec(21));

-- Location: LC_X14_Y3_N6
\Add1~100\ : maxv_lcell
-- Equation(s):
-- \Add1~100_combout\ = (sec(22) $ ((!(!\Add1~92\ & \Add1~97\) # (\Add1~92\ & \Add1~97COUT1_218\))))
-- \Add1~102\ = CARRY(((sec(22) & !\Add1~97\)))
-- \Add1~102COUT1_220\ = CARRY(((sec(22) & !\Add1~97COUT1_218\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => sec(22),
	cin => \Add1~92\,
	cin0 => \Add1~97\,
	cin1 => \Add1~97COUT1_218\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~100_combout\,
	cout0 => \Add1~102\,
	cout1 => \Add1~102COUT1_220\);

-- Location: LC_X14_Y4_N1
\sec[22]\ : maxv_lcell
-- Equation(s):
-- sec(22) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add1~100_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add1~100_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sec(22));

-- Location: LC_X14_Y3_N7
\Add1~105\ : maxv_lcell
-- Equation(s):
-- \Add1~105_combout\ = (sec(23) $ (((!\Add1~92\ & \Add1~102\) # (\Add1~92\ & \Add1~102COUT1_220\))))
-- \Add1~107\ = CARRY(((!\Add1~102\) # (!sec(23))))
-- \Add1~107COUT1_222\ = CARRY(((!\Add1~102COUT1_220\) # (!sec(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => sec(23),
	cin => \Add1~92\,
	cin0 => \Add1~102\,
	cin1 => \Add1~102COUT1_220\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~105_combout\,
	cout0 => \Add1~107\,
	cout1 => \Add1~107COUT1_222\);

-- Location: LC_X14_Y4_N6
\sec[23]\ : maxv_lcell
-- Equation(s):
-- sec(23) = DFFEAS((((\Add1~105_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add1~105_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sec(23));

-- Location: LC_X13_Y3_N0
\Add1~30\ : maxv_lcell
-- Equation(s):
-- \Add1~30_combout\ = (sec(6) $ ((!\Add1~27\)))
-- \Add1~32\ = CARRY(((sec(6) & !\Add1~27\)))
-- \Add1~32COUT1_194\ = CARRY(((sec(6) & !\Add1~27\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => sec(6),
	cin => \Add1~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~30_combout\,
	cout0 => \Add1~32\,
	cout1 => \Add1~32COUT1_194\);

-- Location: LC_X13_Y4_N3
\sec[6]\ : maxv_lcell
-- Equation(s):
-- sec(6) = DFFEAS((((\Add1~30_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add1~30_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sec(6));

-- Location: LC_X13_Y3_N1
\Add1~35\ : maxv_lcell
-- Equation(s):
-- \Add1~35_combout\ = (sec(7) $ (((!\Add1~27\ & \Add1~32\) # (\Add1~27\ & \Add1~32COUT1_194\))))
-- \Add1~37\ = CARRY(((!\Add1~32\) # (!sec(7))))
-- \Add1~37COUT1_196\ = CARRY(((!\Add1~32COUT1_194\) # (!sec(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => sec(7),
	cin => \Add1~27\,
	cin0 => \Add1~32\,
	cin1 => \Add1~32COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~35_combout\,
	cout0 => \Add1~37\,
	cout1 => \Add1~37COUT1_196\);

-- Location: LC_X13_Y4_N5
\sec[7]\ : maxv_lcell
-- Equation(s):
-- sec(7) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add1~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add1~35_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sec(7));

-- Location: LC_X12_Y3_N5
\Add1~5\ : maxv_lcell
-- Equation(s):
-- \Add1~5_combout\ = (sec(1) $ ((\Add1~2\)))
-- \Add1~7\ = CARRY(((!\Add1~2\) # (!sec(1))))
-- \Add1~7COUT1_186\ = CARRY(((!\Add1~2\) # (!sec(1))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => sec(1),
	cin => \Add1~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~5_combout\,
	cout0 => \Add1~7\,
	cout1 => \Add1~7COUT1_186\);

-- Location: LC_X12_Y3_N2
\sec[1]\ : maxv_lcell
-- Equation(s):
-- sec(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add1~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add1~5_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sec(1));

-- Location: LC_X12_Y3_N6
\Add1~10\ : maxv_lcell
-- Equation(s):
-- \Add1~10_combout\ = sec(2) $ ((((!(!\Add1~2\ & \Add1~7\) # (\Add1~2\ & \Add1~7COUT1_186\)))))
-- \Add1~12\ = CARRY((sec(2) & ((!\Add1~7\))))
-- \Add1~12COUT1_188\ = CARRY((sec(2) & ((!\Add1~7COUT1_186\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => sec(2),
	cin => \Add1~2\,
	cin0 => \Add1~7\,
	cin1 => \Add1~7COUT1_186\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~10_combout\,
	cout0 => \Add1~12\,
	cout1 => \Add1~12COUT1_188\);

-- Location: LC_X12_Y3_N3
\sec[2]\ : maxv_lcell
-- Equation(s):
-- sec(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add1~10_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add1~10_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sec(2));

-- Location: LC_X12_Y3_N4
\Add1~0\ : maxv_lcell
-- Equation(s):
-- \Add1~0_combout\ = ((!sec(0)))
-- \Add1~2\ = CARRY(((sec(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => sec(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~0_combout\,
	cout => \Add1~2\);

-- Location: LC_X12_Y3_N7
\Add1~15\ : maxv_lcell
-- Equation(s):
-- \Add1~15_combout\ = (sec(3) $ (((!\Add1~2\ & \Add1~12\) # (\Add1~2\ & \Add1~12COUT1_188\))))
-- \Add1~17\ = CARRY(((!\Add1~12\) # (!sec(3))))
-- \Add1~17COUT1_190\ = CARRY(((!\Add1~12COUT1_188\) # (!sec(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => sec(3),
	cin => \Add1~2\,
	cin0 => \Add1~12\,
	cin1 => \Add1~12COUT1_188\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~15_combout\,
	cout0 => \Add1~17\,
	cout1 => \Add1~17COUT1_190\);

-- Location: LC_X12_Y3_N1
\sec[3]\ : maxv_lcell
-- Equation(s):
-- sec(3) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add1~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add1~15_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sec(3));

-- Location: LC_X12_Y3_N0
\sec[0]\ : maxv_lcell
-- Equation(s):
-- \Equal0~0\ = (sec(2) & (sec(1) & (sec[0] & sec(3))))
-- sec(0) = DFFEAS(\Equal0~0\, GLOBAL(\clk~combout\), VCC, , , \Add1~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => sec(2),
	datab => sec(1),
	datac => \Add1~0_combout\,
	datad => sec(3),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0\,
	regout => sec(0));

-- Location: LC_X12_Y3_N8
\Add1~20\ : maxv_lcell
-- Equation(s):
-- \Add1~20_combout\ = (sec(4) $ ((!(!\Add1~2\ & \Add1~17\) # (\Add1~2\ & \Add1~17COUT1_190\))))
-- \Add1~22\ = CARRY(((sec(4) & !\Add1~17\)))
-- \Add1~22COUT1_192\ = CARRY(((sec(4) & !\Add1~17COUT1_190\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => sec(4),
	cin => \Add1~2\,
	cin0 => \Add1~17\,
	cin1 => \Add1~17COUT1_190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~20_combout\,
	cout0 => \Add1~22\,
	cout1 => \Add1~22COUT1_192\);

-- Location: LC_X13_Y4_N9
\sec[4]\ : maxv_lcell
-- Equation(s):
-- sec(4) = DFFEAS((\Add1~20_combout\ & (((!\Equal0~10_combout\)))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0a0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add1~20_combout\,
	datac => \Equal0~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sec(4));

-- Location: LC_X12_Y3_N9
\Add1~25\ : maxv_lcell
-- Equation(s):
-- \Add1~25_combout\ = (sec(5) $ (((!\Add1~2\ & \Add1~22\) # (\Add1~2\ & \Add1~22COUT1_192\))))
-- \Add1~27\ = CARRY(((!\Add1~22COUT1_192\) # (!sec(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => sec(5),
	cin => \Add1~2\,
	cin0 => \Add1~22\,
	cin1 => \Add1~22COUT1_192\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~25_combout\,
	cout => \Add1~27\);

-- Location: LC_X13_Y4_N4
\sec[5]\ : maxv_lcell
-- Equation(s):
-- \Equal0~1\ = (!sec(7) & (!sec(4) & (!sec[5] & !sec(6))))
-- sec(5) = DFFEAS(\Equal0~1\, GLOBAL(\clk~combout\), VCC, , , \Add1~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => sec(7),
	datab => sec(4),
	datac => \Add1~25_combout\,
	datad => sec(6),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1\,
	regout => sec(5));

-- Location: LC_X13_Y3_N2
\Add1~55\ : maxv_lcell
-- Equation(s):
-- \Add1~55_combout\ = (sec(8) $ ((!(!\Add1~27\ & \Add1~37\) # (\Add1~27\ & \Add1~37COUT1_196\))))
-- \Add1~57\ = CARRY(((sec(8) & !\Add1~37\)))
-- \Add1~57COUT1_198\ = CARRY(((sec(8) & !\Add1~37COUT1_196\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => sec(8),
	cin => \Add1~27\,
	cin0 => \Add1~37\,
	cin1 => \Add1~37COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~55_combout\,
	cout0 => \Add1~57\,
	cout1 => \Add1~57COUT1_198\);

-- Location: LC_X13_Y3_N5
\Add1~50\ : maxv_lcell
-- Equation(s):
-- \Add1~50_combout\ = sec(11) $ ((((\Add1~47\))))
-- \Add1~52\ = CARRY(((!\Add1~47\)) # (!sec(11)))
-- \Add1~52COUT1_202\ = CARRY(((!\Add1~47\)) # (!sec(11)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => sec(11),
	cin => \Add1~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~50_combout\,
	cout0 => \Add1~52\,
	cout1 => \Add1~52COUT1_202\);

-- Location: LC_X13_Y4_N2
\sec[11]\ : maxv_lcell
-- Equation(s):
-- sec(11) = DFFEAS(((\Add1~50_combout\ & (!\Equal0~10_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c0c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Add1~50_combout\,
	datac => \Equal0~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sec(11));

-- Location: LC_X13_Y4_N6
\sec[8]\ : maxv_lcell
-- Equation(s):
-- \Equal0~2\ = (sec(10) & (sec(9) & (!sec[8] & sec(11))))
-- sec(8) = DFFEAS(\Equal0~2\, GLOBAL(\clk~combout\), VCC, , , \Add1~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => sec(10),
	datab => sec(9),
	datac => \Add1~55_combout\,
	datad => sec(11),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~2\,
	regout => sec(8));

-- Location: LC_X13_Y3_N3
\Add1~40\ : maxv_lcell
-- Equation(s):
-- \Add1~40_combout\ = sec(9) $ (((((!\Add1~27\ & \Add1~57\) # (\Add1~27\ & \Add1~57COUT1_198\)))))
-- \Add1~42\ = CARRY(((!\Add1~57\)) # (!sec(9)))
-- \Add1~42COUT1_200\ = CARRY(((!\Add1~57COUT1_198\)) # (!sec(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => sec(9),
	cin => \Add1~27\,
	cin0 => \Add1~57\,
	cin1 => \Add1~57COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~40_combout\,
	cout0 => \Add1~42\,
	cout1 => \Add1~42COUT1_200\);

-- Location: LC_X13_Y4_N7
\sec[9]\ : maxv_lcell
-- Equation(s):
-- sec(9) = DFFEAS(((!\Equal0~10_combout\ & (\Add1~40_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Equal0~10_combout\,
	datac => \Add1~40_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sec(9));

-- Location: LC_X13_Y3_N4
\Add1~45\ : maxv_lcell
-- Equation(s):
-- \Add1~45_combout\ = (sec(10) $ ((!(!\Add1~27\ & \Add1~42\) # (\Add1~27\ & \Add1~42COUT1_200\))))
-- \Add1~47\ = CARRY(((sec(10) & !\Add1~42COUT1_200\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => sec(10),
	cin => \Add1~27\,
	cin0 => \Add1~42\,
	cin1 => \Add1~42COUT1_200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~45_combout\,
	cout => \Add1~47\);

-- Location: LC_X13_Y4_N8
\sec[10]\ : maxv_lcell
-- Equation(s):
-- sec(10) = DFFEAS(((!\Equal0~10_combout\ & (\Add1~45_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Equal0~10_combout\,
	datac => \Add1~45_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sec(10));

-- Location: LC_X13_Y3_N6
\Add1~60\ : maxv_lcell
-- Equation(s):
-- \Add1~60_combout\ = (sec(12) $ ((!(!\Add1~47\ & \Add1~52\) # (\Add1~47\ & \Add1~52COUT1_202\))))
-- \Add1~62\ = CARRY(((sec(12) & !\Add1~52\)))
-- \Add1~62COUT1_204\ = CARRY(((sec(12) & !\Add1~52COUT1_202\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => sec(12),
	cin => \Add1~47\,
	cin0 => \Add1~52\,
	cin1 => \Add1~52COUT1_202\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~60_combout\,
	cout0 => \Add1~62\,
	cout1 => \Add1~62COUT1_204\);

-- Location: LC_X13_Y2_N7
\sec[12]\ : maxv_lcell
-- Equation(s):
-- \Equal0~3\ = (!sec(13) & (!sec(14) & (!sec[12] & !sec(15))))
-- sec(12) = DFFEAS(\Equal0~3\, GLOBAL(\clk~combout\), VCC, , , \Add1~60_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => sec(13),
	datab => sec(14),
	datac => \Add1~60_combout\,
	datad => sec(15),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~3\,
	regout => sec(12));

-- Location: LC_X13_Y3_N7
\Add1~65\ : maxv_lcell
-- Equation(s):
-- \Add1~65_combout\ = sec(13) $ (((((!\Add1~47\ & \Add1~62\) # (\Add1~47\ & \Add1~62COUT1_204\)))))
-- \Add1~67\ = CARRY(((!\Add1~62\)) # (!sec(13)))
-- \Add1~67COUT1_206\ = CARRY(((!\Add1~62COUT1_204\)) # (!sec(13)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => sec(13),
	cin => \Add1~47\,
	cin0 => \Add1~62\,
	cin1 => \Add1~62COUT1_204\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~65_combout\,
	cout0 => \Add1~67\,
	cout1 => \Add1~67COUT1_206\);

-- Location: LC_X13_Y2_N6
\sec[13]\ : maxv_lcell
-- Equation(s):
-- sec(13) = DFFEAS((((\Add1~65_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add1~65_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sec(13));

-- Location: LC_X13_Y3_N8
\Add1~70\ : maxv_lcell
-- Equation(s):
-- \Add1~70_combout\ = (sec(14) $ ((!(!\Add1~47\ & \Add1~67\) # (\Add1~47\ & \Add1~67COUT1_206\))))
-- \Add1~72\ = CARRY(((sec(14) & !\Add1~67\)))
-- \Add1~72COUT1_208\ = CARRY(((sec(14) & !\Add1~67COUT1_206\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => sec(14),
	cin => \Add1~47\,
	cin0 => \Add1~67\,
	cin1 => \Add1~67COUT1_206\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~70_combout\,
	cout0 => \Add1~72\,
	cout1 => \Add1~72COUT1_208\);

-- Location: LC_X13_Y2_N1
\sec[14]\ : maxv_lcell
-- Equation(s):
-- sec(14) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add1~70_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add1~70_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sec(14));

-- Location: LC_X13_Y3_N9
\Add1~75\ : maxv_lcell
-- Equation(s):
-- \Add1~75_combout\ = (sec(15) $ (((!\Add1~47\ & \Add1~72\) # (\Add1~47\ & \Add1~72COUT1_208\))))
-- \Add1~77\ = CARRY(((!\Add1~72COUT1_208\) # (!sec(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => sec(15),
	cin => \Add1~47\,
	cin0 => \Add1~72\,
	cin1 => \Add1~72COUT1_208\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~75_combout\,
	cout => \Add1~77\);

-- Location: LC_X13_Y2_N8
\sec[15]\ : maxv_lcell
-- Equation(s):
-- sec(15) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add1~75_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add1~75_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sec(15));

-- Location: LC_X14_Y3_N0
\Add1~80\ : maxv_lcell
-- Equation(s):
-- \Add1~80_combout\ = sec(16) $ ((((!\Add1~77\))))
-- \Add1~82\ = CARRY((sec(16) & ((!\Add1~77\))))
-- \Add1~82COUT1_210\ = CARRY((sec(16) & ((!\Add1~77\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => sec(16),
	cin => \Add1~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~80_combout\,
	cout0 => \Add1~82\,
	cout1 => \Add1~82COUT1_210\);

-- Location: LC_X14_Y3_N1
\Add1~85\ : maxv_lcell
-- Equation(s):
-- \Add1~85_combout\ = (sec(17) $ (((!\Add1~77\ & \Add1~82\) # (\Add1~77\ & \Add1~82COUT1_210\))))
-- \Add1~87\ = CARRY(((!\Add1~82\) # (!sec(17))))
-- \Add1~87COUT1_212\ = CARRY(((!\Add1~82COUT1_210\) # (!sec(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => sec(17),
	cin => \Add1~77\,
	cin0 => \Add1~82\,
	cin1 => \Add1~82COUT1_210\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~85_combout\,
	cout0 => \Add1~87\,
	cout1 => \Add1~87COUT1_212\);

-- Location: LC_X14_Y4_N8
\sec[17]\ : maxv_lcell
-- Equation(s):
-- sec(17) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add1~85_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add1~85_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sec(17));

-- Location: LC_X14_Y4_N0
\sec[16]\ : maxv_lcell
-- Equation(s):
-- \Equal0~5\ = (((!sec[16] & !sec(17))))
-- sec(16) = DFFEAS(\Equal0~5\, GLOBAL(\clk~combout\), VCC, , , \Add1~80_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add1~80_combout\,
	datad => sec(17),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~5\,
	regout => sec(16));

-- Location: LC_X14_Y3_N2
\Add1~110\ : maxv_lcell
-- Equation(s):
-- \Add1~110_combout\ = (sec(18) $ ((!(!\Add1~77\ & \Add1~87\) # (\Add1~77\ & \Add1~87COUT1_212\))))
-- \Add1~112\ = CARRY(((sec(18) & !\Add1~87\)))
-- \Add1~112COUT1_214\ = CARRY(((sec(18) & !\Add1~87COUT1_212\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => sec(18),
	cin => \Add1~77\,
	cin0 => \Add1~87\,
	cin1 => \Add1~87COUT1_212\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~110_combout\,
	cout0 => \Add1~112\,
	cout1 => \Add1~112COUT1_214\);

-- Location: LC_X14_Y4_N7
\sec[20]\ : maxv_lcell
-- Equation(s):
-- \Equal0~6\ = (!sec(23) & (!sec(22) & (!sec[20] & !sec(21))))
-- sec(20) = DFFEAS(\Equal0~6\, GLOBAL(\clk~combout\), VCC, , , \Add1~90_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => sec(23),
	datab => sec(22),
	datac => \Add1~90_combout\,
	datad => sec(21),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~6\,
	regout => sec(20));

-- Location: LC_X14_Y4_N9
\sec[18]\ : maxv_lcell
-- Equation(s):
-- \Equal0~7\ = (!sec(19) & (\Equal0~5\ & (!sec[18] & \Equal0~6\)))
-- sec(18) = DFFEAS(\Equal0~7\, GLOBAL(\clk~combout\), VCC, , , \Add1~110_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => sec(19),
	datab => \Equal0~5\,
	datac => \Add1~110_combout\,
	datad => \Equal0~6\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~7\,
	regout => sec(18));

-- Location: LC_X14_Y3_N3
\Add1~115\ : maxv_lcell
-- Equation(s):
-- \Add1~115_combout\ = (sec(19) $ (((!\Add1~77\ & \Add1~112\) # (\Add1~77\ & \Add1~112COUT1_214\))))
-- \Add1~117\ = CARRY(((!\Add1~112\) # (!sec(19))))
-- \Add1~117COUT1_216\ = CARRY(((!\Add1~112COUT1_214\) # (!sec(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => sec(19),
	cin => \Add1~77\,
	cin0 => \Add1~112\,
	cin1 => \Add1~112COUT1_214\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~115_combout\,
	cout0 => \Add1~117\,
	cout1 => \Add1~117COUT1_216\);

-- Location: LC_X14_Y4_N5
\sec[19]\ : maxv_lcell
-- Equation(s):
-- sec(19) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add1~115_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add1~115_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sec(19));

-- Location: LC_X14_Y3_N4
\Add1~90\ : maxv_lcell
-- Equation(s):
-- \Add1~90_combout\ = (sec(20) $ ((!(!\Add1~77\ & \Add1~117\) # (\Add1~77\ & \Add1~117COUT1_216\))))
-- \Add1~92\ = CARRY(((sec(20) & !\Add1~117COUT1_216\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => sec(20),
	cin => \Add1~77\,
	cin0 => \Add1~117\,
	cin1 => \Add1~117COUT1_216\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~90_combout\,
	cout => \Add1~92\);

-- Location: LC_X15_Y3_N0
\Add1~130\ : maxv_lcell
-- Equation(s):
-- \Add1~130_combout\ = sec(26) $ ((((!\Add1~127\))))
-- \Add1~132\ = CARRY((sec(26) & ((!\Add1~127\))))
-- \Add1~132COUT1_226\ = CARRY((sec(26) & ((!\Add1~127\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => sec(26),
	cin => \Add1~127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~130_combout\,
	cout0 => \Add1~132\,
	cout1 => \Add1~132COUT1_226\);

-- Location: LC_X15_Y4_N7
\sec[26]\ : maxv_lcell
-- Equation(s):
-- sec(26) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add1~130_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add1~130_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sec(26));

-- Location: LC_X14_Y3_N8
\Add1~120\ : maxv_lcell
-- Equation(s):
-- \Add1~120_combout\ = (sec(24) $ ((!(!\Add1~92\ & \Add1~107\) # (\Add1~92\ & \Add1~107COUT1_222\))))
-- \Add1~122\ = CARRY(((sec(24) & !\Add1~107\)))
-- \Add1~122COUT1_224\ = CARRY(((sec(24) & !\Add1~107COUT1_222\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => sec(24),
	cin => \Add1~92\,
	cin0 => \Add1~107\,
	cin1 => \Add1~107COUT1_222\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~120_combout\,
	cout0 => \Add1~122\,
	cout1 => \Add1~122COUT1_224\);

-- Location: LC_X15_Y4_N9
\sec[24]\ : maxv_lcell
-- Equation(s):
-- \Equal0~8\ = (!sec(27) & (!sec(26) & (!sec[24] & !sec(25))))
-- sec(24) = DFFEAS(\Equal0~8\, GLOBAL(\clk~combout\), VCC, , , \Add1~120_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => sec(27),
	datab => sec(26),
	datac => \Add1~120_combout\,
	datad => sec(25),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~8\,
	regout => sec(24));

-- Location: LC_X14_Y3_N9
\Add1~125\ : maxv_lcell
-- Equation(s):
-- \Add1~125_combout\ = sec(25) $ (((((!\Add1~92\ & \Add1~122\) # (\Add1~92\ & \Add1~122COUT1_224\)))))
-- \Add1~127\ = CARRY(((!\Add1~122COUT1_224\)) # (!sec(25)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => sec(25),
	cin => \Add1~92\,
	cin0 => \Add1~122\,
	cin1 => \Add1~122COUT1_224\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~125_combout\,
	cout => \Add1~127\);

-- Location: LC_X15_Y4_N8
\sec[25]\ : maxv_lcell
-- Equation(s):
-- sec(25) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add1~125_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add1~125_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sec(25));

-- Location: LC_X15_Y3_N1
\Add1~135\ : maxv_lcell
-- Equation(s):
-- \Add1~135_combout\ = (sec(27) $ (((!\Add1~127\ & \Add1~132\) # (\Add1~127\ & \Add1~132COUT1_226\))))
-- \Add1~137\ = CARRY(((!\Add1~132\) # (!sec(27))))
-- \Add1~137COUT1_228\ = CARRY(((!\Add1~132COUT1_226\) # (!sec(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => sec(27),
	cin => \Add1~127\,
	cin0 => \Add1~132\,
	cin1 => \Add1~132COUT1_226\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~135_combout\,
	cout0 => \Add1~137\,
	cout1 => \Add1~137COUT1_228\);

-- Location: LC_X15_Y4_N3
\sec[27]\ : maxv_lcell
-- Equation(s):
-- sec(27) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add1~135_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add1~135_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sec(27));

-- Location: LC_X15_Y3_N2
\Add1~140\ : maxv_lcell
-- Equation(s):
-- \Add1~140_combout\ = (sec(28) $ ((!(!\Add1~127\ & \Add1~137\) # (\Add1~127\ & \Add1~137COUT1_228\))))
-- \Add1~142\ = CARRY(((sec(28) & !\Add1~137\)))
-- \Add1~142COUT1_230\ = CARRY(((sec(28) & !\Add1~137COUT1_228\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => sec(28),
	cin => \Add1~127\,
	cin0 => \Add1~137\,
	cin1 => \Add1~137COUT1_228\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~140_combout\,
	cout0 => \Add1~142\,
	cout1 => \Add1~142COUT1_230\);

-- Location: LC_X15_Y3_N3
\Add1~145\ : maxv_lcell
-- Equation(s):
-- \Add1~145_combout\ = (sec(29) $ (((!\Add1~127\ & \Add1~142\) # (\Add1~127\ & \Add1~142COUT1_230\))))
-- \Add1~147\ = CARRY(((!\Add1~142\) # (!sec(29))))
-- \Add1~147COUT1_232\ = CARRY(((!\Add1~142COUT1_230\) # (!sec(29))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => sec(29),
	cin => \Add1~127\,
	cin0 => \Add1~142\,
	cin1 => \Add1~142COUT1_230\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~145_combout\,
	cout0 => \Add1~147\,
	cout1 => \Add1~147COUT1_232\);

-- Location: LC_X15_Y3_N4
\Add1~150\ : maxv_lcell
-- Equation(s):
-- \Add1~150_combout\ = sec(30) $ ((((!(!\Add1~127\ & \Add1~147\) # (\Add1~127\ & \Add1~147COUT1_232\)))))
-- \Add1~152\ = CARRY((sec(30) & ((!\Add1~147COUT1_232\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => sec(30),
	cin => \Add1~127\,
	cin0 => \Add1~147\,
	cin1 => \Add1~147COUT1_232\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~150_combout\,
	cout => \Add1~152\);

-- Location: LC_X15_Y3_N5
\Add1~155\ : maxv_lcell
-- Equation(s):
-- \Add1~155_combout\ = ((\Add1~152\ $ (sec(31))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => sec(31),
	cin => \Add1~152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add1~155_combout\);

-- Location: LC_X15_Y3_N8
\sec[31]\ : maxv_lcell
-- Equation(s):
-- sec(31) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add1~155_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add1~155_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sec(31));

-- Location: LC_X15_Y3_N7
\sec[28]\ : maxv_lcell
-- Equation(s):
-- \Equal0~9\ = (!sec(30) & (!sec(29) & (!sec[28] & !sec(31))))
-- sec(28) = DFFEAS(\Equal0~9\, GLOBAL(\clk~combout\), VCC, , , \Add1~140_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => sec(30),
	datab => sec(29),
	datac => \Add1~140_combout\,
	datad => sec(31),
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~9\,
	regout => sec(28));

-- Location: LC_X15_Y3_N9
\sec[29]\ : maxv_lcell
-- Equation(s):
-- sec(29) = DFFEAS((((\Add1~145_combout\))), GLOBAL(\clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add1~145_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sec(29));

-- Location: LC_X15_Y3_N6
\sec[30]\ : maxv_lcell
-- Equation(s):
-- sec(30) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , , \Add1~150_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add1~150_combout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sec(30));

-- Location: LC_X13_Y4_N1
\Equal0~4\ : maxv_lcell
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1\ & (\Equal0~0\ & (\Equal0~2\ & \Equal0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1\,
	datab => \Equal0~0\,
	datac => \Equal0~2\,
	datad => \Equal0~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~4_combout\);

-- Location: LC_X13_Y4_N0
\Equal0~10\ : maxv_lcell
-- Equation(s):
-- \Equal0~10_combout\ = (\Equal0~8\ & (\Equal0~9\ & (\Equal0~7\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8\,
	datab => \Equal0~9\,
	datac => \Equal0~7\,
	datad => \Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~10_combout\);

-- Location: LC_X2_Y6_N1
\daytime[1]\ : maxv_lcell
-- Equation(s):
-- daytime(1) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, \Add0~155_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~155_combout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => daytime(1));

-- Location: LC_X2_Y6_N5
\Add0~155\ : maxv_lcell
-- Equation(s):
-- \Add0~155_combout\ = (daytime(1) $ ((\Add0~2\)))
-- \Add0~157\ = CARRY(((!\Add0~2\) # (!daytime(1))))
-- \Add0~157COUT1_186\ = CARRY(((!\Add0~2\) # (!daytime(1))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => daytime(1),
	cin => \Add0~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~155_combout\,
	cout0 => \Add0~157\,
	cout1 => \Add0~157COUT1_186\);

-- Location: LC_X2_Y6_N6
\Add0~145\ : maxv_lcell
-- Equation(s):
-- \Add0~145_combout\ = daytime(2) $ ((((!(!\Add0~2\ & \Add0~157\) # (\Add0~2\ & \Add0~157COUT1_186\)))))
-- \Add0~147\ = CARRY((daytime(2) & ((!\Add0~157\))))
-- \Add0~147COUT1_188\ = CARRY((daytime(2) & ((!\Add0~157COUT1_186\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => daytime(2),
	cin => \Add0~2\,
	cin0 => \Add0~157\,
	cin1 => \Add0~157COUT1_186\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~145_combout\,
	cout0 => \Add0~147\,
	cout1 => \Add0~147COUT1_188\);

-- Location: LC_X1_Y6_N9
\daytime[2]\ : maxv_lcell
-- Equation(s):
-- daytime(2) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, \Add0~145_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~145_combout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => daytime(2));

-- Location: LC_X2_Y6_N4
\Add0~0\ : maxv_lcell
-- Equation(s):
-- \Add0~0_combout\ = (!daytime(0))
-- \Add0~2\ = CARRY((daytime(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => daytime(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~0_combout\,
	cout => \Add0~2\);

-- Location: LC_X4_Y6_N5
\Add0~5\ : maxv_lcell
-- Equation(s):
-- \Add0~5_combout\ = (daytime(21) $ ((\Add0~142\)))
-- \Add0~7\ = CARRY(((!\Add0~142\) # (!daytime(21))))
-- \Add0~7COUT1_218\ = CARRY(((!\Add0~142\) # (!daytime(21))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => daytime(21),
	cin => \Add0~142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~5_combout\,
	cout0 => \Add0~7\,
	cout1 => \Add0~7COUT1_218\);

-- Location: LC_X5_Y5_N3
\daytime[21]\ : maxv_lcell
-- Equation(s):
-- daytime(21) = DFFEAS((((\Add0~5_combout\))), GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~5_combout\,
	aclr => GND,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => daytime(21));

-- Location: LC_X4_Y6_N6
\Add0~10\ : maxv_lcell
-- Equation(s):
-- \Add0~10_combout\ = daytime(22) $ ((((!(!\Add0~142\ & \Add0~7\) # (\Add0~142\ & \Add0~7COUT1_218\)))))
-- \Add0~12\ = CARRY((daytime(22) & ((!\Add0~7\))))
-- \Add0~12COUT1_220\ = CARRY((daytime(22) & ((!\Add0~7COUT1_218\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => daytime(22),
	cin => \Add0~142\,
	cin0 => \Add0~7\,
	cin1 => \Add0~7COUT1_218\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~10_combout\,
	cout0 => \Add0~12\,
	cout1 => \Add0~12COUT1_220\);

-- Location: LC_X5_Y5_N1
\daytime[22]\ : maxv_lcell
-- Equation(s):
-- daytime(22) = DFFEAS((((\Add0~10_combout\))), GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~10_combout\,
	aclr => GND,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => daytime(22));

-- Location: LC_X4_Y6_N7
\Add0~15\ : maxv_lcell
-- Equation(s):
-- \Add0~15_combout\ = (daytime(23) $ (((!\Add0~142\ & \Add0~12\) # (\Add0~142\ & \Add0~12COUT1_220\))))
-- \Add0~17\ = CARRY(((!\Add0~12\) # (!daytime(23))))
-- \Add0~17COUT1_222\ = CARRY(((!\Add0~12COUT1_220\) # (!daytime(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => daytime(23),
	cin => \Add0~142\,
	cin0 => \Add0~12\,
	cin1 => \Add0~12COUT1_220\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~15_combout\,
	cout0 => \Add0~17\,
	cout1 => \Add0~17COUT1_222\);

-- Location: LC_X5_Y5_N7
\daytime[23]\ : maxv_lcell
-- Equation(s):
-- daytime(23) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, \Add0~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~15_combout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => daytime(23));

-- Location: LC_X3_Y6_N0
\Add0~70\ : maxv_lcell
-- Equation(s):
-- \Add0~70_combout\ = (daytime(6) $ ((!\Add0~67\)))
-- \Add0~72\ = CARRY(((daytime(6) & !\Add0~67\)))
-- \Add0~72COUT1_194\ = CARRY(((daytime(6) & !\Add0~67\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => daytime(6),
	cin => \Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~70_combout\,
	cout0 => \Add0~72\,
	cout1 => \Add0~72COUT1_194\);

-- Location: LC_X2_Y5_N7
\daytime[6]\ : maxv_lcell
-- Equation(s):
-- daytime(6) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, \Add0~70_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~70_combout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => daytime(6));

-- Location: LC_X3_Y6_N5
\Add0~95\ : maxv_lcell
-- Equation(s):
-- \Add0~95_combout\ = (daytime(11) $ ((\Add0~92\)))
-- \Add0~97\ = CARRY(((!\Add0~92\) # (!daytime(11))))
-- \Add0~97COUT1_202\ = CARRY(((!\Add0~92\) # (!daytime(11))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => daytime(11),
	cin => \Add0~92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~95_combout\,
	cout0 => \Add0~97\,
	cout1 => \Add0~97COUT1_202\);

-- Location: LC_X3_Y5_N1
\daytime[11]\ : maxv_lcell
-- Equation(s):
-- daytime(11) = DFFEAS((((\Add0~95_combout\))), GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~95_combout\,
	aclr => GND,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => daytime(11));

-- Location: LC_X3_Y6_N6
\Add0~100\ : maxv_lcell
-- Equation(s):
-- \Add0~100_combout\ = (daytime(12) $ ((!(!\Add0~92\ & \Add0~97\) # (\Add0~92\ & \Add0~97COUT1_202\))))
-- \Add0~102\ = CARRY(((daytime(12) & !\Add0~97\)))
-- \Add0~102COUT1_204\ = CARRY(((daytime(12) & !\Add0~97COUT1_202\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => daytime(12),
	cin => \Add0~92\,
	cin0 => \Add0~97\,
	cin1 => \Add0~97COUT1_202\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~100_combout\,
	cout0 => \Add0~102\,
	cout1 => \Add0~102COUT1_204\);

-- Location: LC_X3_Y6_N7
\Add0~105\ : maxv_lcell
-- Equation(s):
-- \Add0~105_combout\ = (daytime(13) $ (((!\Add0~92\ & \Add0~102\) # (\Add0~92\ & \Add0~102COUT1_204\))))
-- \Add0~107\ = CARRY(((!\Add0~102\) # (!daytime(13))))
-- \Add0~107COUT1_206\ = CARRY(((!\Add0~102COUT1_204\) # (!daytime(13))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => daytime(13),
	cin => \Add0~92\,
	cin0 => \Add0~102\,
	cin1 => \Add0~102COUT1_204\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~105_combout\,
	cout0 => \Add0~107\,
	cout1 => \Add0~107COUT1_206\);

-- Location: LC_X3_Y6_N8
\Add0~110\ : maxv_lcell
-- Equation(s):
-- \Add0~110_combout\ = (daytime(14) $ ((!(!\Add0~92\ & \Add0~107\) # (\Add0~92\ & \Add0~107COUT1_206\))))
-- \Add0~112\ = CARRY(((daytime(14) & !\Add0~107\)))
-- \Add0~112COUT1_208\ = CARRY(((daytime(14) & !\Add0~107COUT1_206\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => daytime(14),
	cin => \Add0~92\,
	cin0 => \Add0~107\,
	cin1 => \Add0~107COUT1_206\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~110_combout\,
	cout0 => \Add0~112\,
	cout1 => \Add0~112COUT1_208\);

-- Location: LC_X2_Y6_N3
\daytime[14]\ : maxv_lcell
-- Equation(s):
-- daytime(14) = DFFEAS((((\Add0~110_combout\))), GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~110_combout\,
	aclr => GND,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => daytime(14));

-- Location: LC_X2_Y5_N5
\daytime[12]\ : maxv_lcell
-- Equation(s):
-- \Equal1~3\ = (!daytime(13) & (!daytime(15) & (!daytime[12] & !daytime(14))))
-- daytime(12) = DFFEAS(\Equal1~3\, GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, \Add0~100_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => daytime(13),
	datab => daytime(15),
	datac => \Add0~100_combout\,
	datad => daytime(14),
	aclr => GND,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~3\,
	regout => daytime(12));

-- Location: LC_X2_Y5_N6
\daytime[13]\ : maxv_lcell
-- Equation(s):
-- daytime(13) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, \Add0~105_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~105_combout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => daytime(13));

-- Location: LC_X1_Y6_N5
\daytime[0]\ : maxv_lcell
-- Equation(s):
-- \Equal1~0\ = (daytime(1) & (daytime(2) & (daytime[0] & !daytime(3))))
-- daytime(0) = DFFEAS(\Equal1~0\, GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, \Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0080",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => daytime(1),
	datab => daytime(2),
	datac => \Add0~0_combout\,
	datad => daytime(3),
	aclr => GND,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~0\,
	regout => daytime(0));

-- Location: LC_X3_Y6_N1
\Add0~75\ : maxv_lcell
-- Equation(s):
-- \Add0~75_combout\ = (daytime(7) $ (((!\Add0~67\ & \Add0~72\) # (\Add0~67\ & \Add0~72COUT1_194\))))
-- \Add0~77\ = CARRY(((!\Add0~72\) # (!daytime(7))))
-- \Add0~77COUT1_196\ = CARRY(((!\Add0~72COUT1_194\) # (!daytime(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => daytime(7),
	cin => \Add0~67\,
	cin0 => \Add0~72\,
	cin1 => \Add0~72COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~75_combout\,
	cout0 => \Add0~77\,
	cout1 => \Add0~77COUT1_196\);

-- Location: LC_X2_Y6_N2
\daytime[7]\ : maxv_lcell
-- Equation(s):
-- daytime(7) = DFFEAS((((\Add0~75_combout\))), GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~75_combout\,
	aclr => GND,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => daytime(7));

-- Location: LC_X3_Y6_N2
\Add0~80\ : maxv_lcell
-- Equation(s):
-- \Add0~80_combout\ = (daytime(8) $ ((!(!\Add0~67\ & \Add0~77\) # (\Add0~67\ & \Add0~77COUT1_196\))))
-- \Add0~82\ = CARRY(((daytime(8) & !\Add0~77\)))
-- \Add0~82COUT1_198\ = CARRY(((daytime(8) & !\Add0~77COUT1_196\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => daytime(8),
	cin => \Add0~67\,
	cin0 => \Add0~77\,
	cin1 => \Add0~77COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~80_combout\,
	cout0 => \Add0~82\,
	cout1 => \Add0~82COUT1_198\);

-- Location: LC_X3_Y5_N3
\daytime[8]\ : maxv_lcell
-- Equation(s):
-- \Equal1~2\ = (!daytime(9) & (!daytime(10) & (!daytime[8] & !daytime(11))))
-- daytime(8) = DFFEAS(\Equal1~2\, GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, \Add0~80_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => daytime(9),
	datab => daytime(10),
	datac => \Add0~80_combout\,
	datad => daytime(11),
	aclr => GND,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~2\,
	regout => daytime(8));

-- Location: LC_X3_Y6_N3
\Add0~85\ : maxv_lcell
-- Equation(s):
-- \Add0~85_combout\ = (daytime(9) $ (((!\Add0~67\ & \Add0~82\) # (\Add0~67\ & \Add0~82COUT1_198\))))
-- \Add0~87\ = CARRY(((!\Add0~82\) # (!daytime(9))))
-- \Add0~87COUT1_200\ = CARRY(((!\Add0~82COUT1_198\) # (!daytime(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => daytime(9),
	cin => \Add0~67\,
	cin0 => \Add0~82\,
	cin1 => \Add0~82COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~85_combout\,
	cout0 => \Add0~87\,
	cout1 => \Add0~87COUT1_200\);

-- Location: LC_X3_Y5_N2
\daytime[9]\ : maxv_lcell
-- Equation(s):
-- daytime(9) = DFFEAS((((\Add0~85_combout\))), GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~85_combout\,
	aclr => GND,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => daytime(9));

-- Location: LC_X2_Y6_N0
\daytime[4]\ : maxv_lcell
-- Equation(s):
-- \Equal1~1\ = (!daytime(6) & (!daytime(5) & (daytime[4] & !daytime(7))))
-- daytime(4) = DFFEAS(\Equal1~1\, GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, \daytime~1_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => daytime(6),
	datab => daytime(5),
	datac => \daytime~1_combout\,
	datad => daytime(7),
	aclr => GND,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~1\,
	regout => daytime(4));

-- Location: LC_X2_Y5_N8
\Equal1~4\ : maxv_lcell
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~3\ & (\Equal1~0\ & (\Equal1~2\ & \Equal1~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3\,
	datab => \Equal1~0\,
	datac => \Equal1~2\,
	datad => \Equal1~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~4_combout\);

-- Location: LC_X2_Y6_N7
\Add0~60\ : maxv_lcell
-- Equation(s):
-- \Add0~60_combout\ = (daytime(3) $ (((!\Add0~2\ & \Add0~147\) # (\Add0~2\ & \Add0~147COUT1_188\))))
-- \Add0~62\ = CARRY(((!\Add0~147\) # (!daytime(3))))
-- \Add0~62COUT1_190\ = CARRY(((!\Add0~147COUT1_188\) # (!daytime(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => daytime(3),
	cin => \Add0~2\,
	cin0 => \Add0~147\,
	cin1 => \Add0~147COUT1_188\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~60_combout\,
	cout0 => \Add0~62\,
	cout1 => \Add0~62COUT1_190\);

-- Location: LC_X2_Y6_N8
\Add0~150\ : maxv_lcell
-- Equation(s):
-- \Add0~150_combout\ = (daytime(4) $ ((!(!\Add0~2\ & \Add0~62\) # (\Add0~2\ & \Add0~62COUT1_190\))))
-- \Add0~152\ = CARRY(((daytime(4) & !\Add0~62\)))
-- \Add0~152COUT1_192\ = CARRY(((daytime(4) & !\Add0~62COUT1_190\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => daytime(4),
	cin => \Add0~2\,
	cin0 => \Add0~62\,
	cin1 => \Add0~62COUT1_190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~150_combout\,
	cout0 => \Add0~152\,
	cout1 => \Add0~152COUT1_192\);

-- Location: LC_X2_Y5_N4
\daytime~1\ : maxv_lcell
-- Equation(s):
-- \daytime~1_combout\ = ((\Add0~150_combout\ & ((!\Equal1~9_combout\) # (!\Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datac => \Equal1~9_combout\,
	datad => \Add0~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \daytime~1_combout\);

-- Location: LC_X2_Y6_N9
\Add0~65\ : maxv_lcell
-- Equation(s):
-- \Add0~65_combout\ = (daytime(5) $ (((!\Add0~2\ & \Add0~152\) # (\Add0~2\ & \Add0~152COUT1_192\))))
-- \Add0~67\ = CARRY(((!\Add0~152COUT1_192\) # (!daytime(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => daytime(5),
	cin => \Add0~2\,
	cin0 => \Add0~152\,
	cin1 => \Add0~152COUT1_192\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~65_combout\,
	cout => \Add0~67\);

-- Location: LC_X1_Y6_N2
\daytime[5]\ : maxv_lcell
-- Equation(s):
-- daytime(5) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, \Add0~65_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~65_combout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => daytime(5));

-- Location: LC_X3_Y6_N4
\Add0~90\ : maxv_lcell
-- Equation(s):
-- \Add0~90_combout\ = (daytime(10) $ ((!(!\Add0~67\ & \Add0~87\) # (\Add0~67\ & \Add0~87COUT1_200\))))
-- \Add0~92\ = CARRY(((daytime(10) & !\Add0~87COUT1_200\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => daytime(10),
	cin => \Add0~67\,
	cin0 => \Add0~87\,
	cin1 => \Add0~87COUT1_200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~90_combout\,
	cout => \Add0~92\);

-- Location: LC_X3_Y5_N0
\daytime[10]\ : maxv_lcell
-- Equation(s):
-- daytime(10) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, \Add0~90_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~90_combout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => daytime(10));

-- Location: LC_X3_Y6_N9
\Add0~115\ : maxv_lcell
-- Equation(s):
-- \Add0~115_combout\ = (daytime(15) $ (((!\Add0~92\ & \Add0~112\) # (\Add0~92\ & \Add0~112COUT1_208\))))
-- \Add0~117\ = CARRY(((!\Add0~112COUT1_208\) # (!daytime(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => daytime(15),
	cin => \Add0~92\,
	cin0 => \Add0~112\,
	cin1 => \Add0~112COUT1_208\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~115_combout\,
	cout => \Add0~117\);

-- Location: LC_X2_Y5_N0
\daytime[15]\ : maxv_lcell
-- Equation(s):
-- daytime(15) = DFFEAS((((\Add0~115_combout\))), GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~115_combout\,
	aclr => GND,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => daytime(15));

-- Location: LC_X4_Y6_N0
\Add0~120\ : maxv_lcell
-- Equation(s):
-- \Add0~120_combout\ = (daytime(16) $ ((!\Add0~117\)))
-- \Add0~122\ = CARRY(((daytime(16) & !\Add0~117\)))
-- \Add0~122COUT1_210\ = CARRY(((daytime(16) & !\Add0~117\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => daytime(16),
	cin => \Add0~117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~120_combout\,
	cout0 => \Add0~122\,
	cout1 => \Add0~122COUT1_210\);

-- Location: LC_X5_Y5_N2
\daytime[16]\ : maxv_lcell
-- Equation(s):
-- \Equal1~5\ = (!daytime(19) & (!daytime(17) & (!daytime[16] & !daytime(18))))
-- daytime(16) = DFFEAS(\Equal1~5\, GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, \Add0~120_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => daytime(19),
	datab => daytime(17),
	datac => \Add0~120_combout\,
	datad => daytime(18),
	aclr => GND,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~5\,
	regout => daytime(16));

-- Location: LC_X4_Y6_N1
\Add0~125\ : maxv_lcell
-- Equation(s):
-- \Add0~125_combout\ = (daytime(17) $ (((!\Add0~117\ & \Add0~122\) # (\Add0~117\ & \Add0~122COUT1_210\))))
-- \Add0~127\ = CARRY(((!\Add0~122\) # (!daytime(17))))
-- \Add0~127COUT1_212\ = CARRY(((!\Add0~122COUT1_210\) # (!daytime(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => daytime(17),
	cin => \Add0~117\,
	cin0 => \Add0~122\,
	cin1 => \Add0~122COUT1_210\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~125_combout\,
	cout0 => \Add0~127\,
	cout1 => \Add0~127COUT1_212\);

-- Location: LC_X5_Y6_N6
\daytime[17]\ : maxv_lcell
-- Equation(s):
-- daytime(17) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, \Add0~125_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~125_combout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => daytime(17));

-- Location: LC_X4_Y6_N2
\Add0~130\ : maxv_lcell
-- Equation(s):
-- \Add0~130_combout\ = (daytime(18) $ ((!(!\Add0~117\ & \Add0~127\) # (\Add0~117\ & \Add0~127COUT1_212\))))
-- \Add0~132\ = CARRY(((daytime(18) & !\Add0~127\)))
-- \Add0~132COUT1_214\ = CARRY(((daytime(18) & !\Add0~127COUT1_212\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => daytime(18),
	cin => \Add0~117\,
	cin0 => \Add0~127\,
	cin1 => \Add0~127COUT1_212\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~130_combout\,
	cout0 => \Add0~132\,
	cout1 => \Add0~132COUT1_214\);

-- Location: LC_X5_Y6_N8
\daytime[18]\ : maxv_lcell
-- Equation(s):
-- daytime(18) = DFFEAS((((\Add0~130_combout\))), GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~130_combout\,
	aclr => GND,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => daytime(18));

-- Location: LC_X4_Y6_N3
\Add0~135\ : maxv_lcell
-- Equation(s):
-- \Add0~135_combout\ = (daytime(19) $ (((!\Add0~117\ & \Add0~132\) # (\Add0~117\ & \Add0~132COUT1_214\))))
-- \Add0~137\ = CARRY(((!\Add0~132\) # (!daytime(19))))
-- \Add0~137COUT1_216\ = CARRY(((!\Add0~132COUT1_214\) # (!daytime(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => daytime(19),
	cin => \Add0~117\,
	cin0 => \Add0~132\,
	cin1 => \Add0~132COUT1_214\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~135_combout\,
	cout0 => \Add0~137\,
	cout1 => \Add0~137COUT1_216\);

-- Location: LC_X5_Y5_N5
\daytime[19]\ : maxv_lcell
-- Equation(s):
-- daytime(19) = DFFEAS((((\Add0~135_combout\))), GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~135_combout\,
	aclr => GND,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => daytime(19));

-- Location: LC_X4_Y6_N4
\Add0~140\ : maxv_lcell
-- Equation(s):
-- \Add0~140_combout\ = (daytime(20) $ ((!(!\Add0~117\ & \Add0~137\) # (\Add0~117\ & \Add0~137COUT1_216\))))
-- \Add0~142\ = CARRY(((daytime(20) & !\Add0~137COUT1_216\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => daytime(20),
	cin => \Add0~117\,
	cin0 => \Add0~137\,
	cin1 => \Add0~137COUT1_216\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~140_combout\,
	cout => \Add0~142\);

-- Location: LC_X5_Y5_N0
\daytime[20]\ : maxv_lcell
-- Equation(s):
-- \Equal1~6\ = (!daytime(21) & (!daytime(23) & (!daytime[20] & !daytime(22))))
-- daytime(20) = DFFEAS(\Equal1~6\, GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, \Add0~140_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => daytime(21),
	datab => daytime(23),
	datac => \Add0~140_combout\,
	datad => daytime(22),
	aclr => GND,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~6\,
	regout => daytime(20));

-- Location: LC_X4_Y6_N8
\Add0~20\ : maxv_lcell
-- Equation(s):
-- \Add0~20_combout\ = daytime(24) $ ((((!(!\Add0~142\ & \Add0~17\) # (\Add0~142\ & \Add0~17COUT1_222\)))))
-- \Add0~22\ = CARRY((daytime(24) & ((!\Add0~17\))))
-- \Add0~22COUT1_224\ = CARRY((daytime(24) & ((!\Add0~17COUT1_222\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => daytime(24),
	cin => \Add0~142\,
	cin0 => \Add0~17\,
	cin1 => \Add0~17COUT1_222\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~20_combout\,
	cout0 => \Add0~22\,
	cout1 => \Add0~22COUT1_224\);

-- Location: LC_X4_Y6_N9
\Add0~25\ : maxv_lcell
-- Equation(s):
-- \Add0~25_combout\ = daytime(25) $ (((((!\Add0~142\ & \Add0~22\) # (\Add0~142\ & \Add0~22COUT1_224\)))))
-- \Add0~27\ = CARRY(((!\Add0~22COUT1_224\)) # (!daytime(25)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => daytime(25),
	cin => \Add0~142\,
	cin0 => \Add0~22\,
	cin1 => \Add0~22COUT1_224\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~25_combout\,
	cout => \Add0~27\);

-- Location: LC_X5_Y6_N0
\Add0~30\ : maxv_lcell
-- Equation(s):
-- \Add0~30_combout\ = (daytime(26) $ ((!\Add0~27\)))
-- \Add0~32\ = CARRY(((daytime(26) & !\Add0~27\)))
-- \Add0~32COUT1_226\ = CARRY(((daytime(26) & !\Add0~27\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => daytime(26),
	cin => \Add0~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~30_combout\,
	cout0 => \Add0~32\,
	cout1 => \Add0~32COUT1_226\);

-- Location: LC_X5_Y6_N7
\daytime[26]\ : maxv_lcell
-- Equation(s):
-- daytime(26) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, \Add0~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~30_combout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => daytime(26));

-- Location: LC_X5_Y6_N1
\Add0~35\ : maxv_lcell
-- Equation(s):
-- \Add0~35_combout\ = (daytime(27) $ (((!\Add0~27\ & \Add0~32\) # (\Add0~27\ & \Add0~32COUT1_226\))))
-- \Add0~37\ = CARRY(((!\Add0~32\) # (!daytime(27))))
-- \Add0~37COUT1_228\ = CARRY(((!\Add0~32COUT1_226\) # (!daytime(27))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => daytime(27),
	cin => \Add0~27\,
	cin0 => \Add0~32\,
	cin1 => \Add0~32COUT1_226\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~35_combout\,
	cout0 => \Add0~37\,
	cout1 => \Add0~37COUT1_228\);

-- Location: LC_X6_Y6_N9
\daytime[27]\ : maxv_lcell
-- Equation(s):
-- daytime(27) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, \Add0~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~35_combout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => daytime(27));

-- Location: LC_X5_Y5_N8
\daytime[24]\ : maxv_lcell
-- Equation(s):
-- \Equal1~7\ = (!daytime(25) & (!daytime(27) & (!daytime[24] & !daytime(26))))
-- daytime(24) = DFFEAS(\Equal1~7\, GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, \Add0~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => daytime(25),
	datab => daytime(27),
	datac => \Add0~20_combout\,
	datad => daytime(26),
	aclr => GND,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~7\,
	regout => daytime(24));

-- Location: LC_X5_Y5_N4
\daytime[25]\ : maxv_lcell
-- Equation(s):
-- daytime(25) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, \Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~25_combout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => daytime(25));

-- Location: LC_X5_Y6_N2
\Add0~40\ : maxv_lcell
-- Equation(s):
-- \Add0~40_combout\ = (daytime(28) $ ((!(!\Add0~27\ & \Add0~37\) # (\Add0~27\ & \Add0~37COUT1_228\))))
-- \Add0~42\ = CARRY(((daytime(28) & !\Add0~37\)))
-- \Add0~42COUT1_230\ = CARRY(((daytime(28) & !\Add0~37COUT1_228\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => daytime(28),
	cin => \Add0~27\,
	cin0 => \Add0~37\,
	cin1 => \Add0~37COUT1_228\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~40_combout\,
	cout0 => \Add0~42\,
	cout1 => \Add0~42COUT1_230\);

-- Location: LC_X5_Y6_N3
\Add0~45\ : maxv_lcell
-- Equation(s):
-- \Add0~45_combout\ = daytime(29) $ (((((!\Add0~27\ & \Add0~42\) # (\Add0~27\ & \Add0~42COUT1_230\)))))
-- \Add0~47\ = CARRY(((!\Add0~42\)) # (!daytime(29)))
-- \Add0~47COUT1_232\ = CARRY(((!\Add0~42COUT1_230\)) # (!daytime(29)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => daytime(29),
	cin => \Add0~27\,
	cin0 => \Add0~42\,
	cin1 => \Add0~42COUT1_230\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~45_combout\,
	cout0 => \Add0~47\,
	cout1 => \Add0~47COUT1_232\);

-- Location: LC_X5_Y6_N4
\Add0~50\ : maxv_lcell
-- Equation(s):
-- \Add0~50_combout\ = (daytime(30) $ ((!(!\Add0~27\ & \Add0~47\) # (\Add0~27\ & \Add0~47COUT1_232\))))
-- \Add0~52\ = CARRY(((daytime(30) & !\Add0~47COUT1_232\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => daytime(30),
	cin => \Add0~27\,
	cin0 => \Add0~47\,
	cin1 => \Add0~47COUT1_232\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~50_combout\,
	cout => \Add0~52\);

-- Location: LC_X6_Y6_N8
\daytime[30]\ : maxv_lcell
-- Equation(s):
-- daytime(30) = DFFEAS(GND, GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, \Add0~50_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datac => \Add0~50_combout\,
	aclr => GND,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => daytime(30));

-- Location: LC_X5_Y6_N5
\Add0~55\ : maxv_lcell
-- Equation(s):
-- \Add0~55_combout\ = ((\Add0~52\ $ (daytime(31))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => daytime(31),
	cin => \Add0~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add0~55_combout\);

-- Location: LC_X6_Y6_N7
\daytime[31]\ : maxv_lcell
-- Equation(s):
-- daytime(31) = DFFEAS((((\Add0~55_combout\))), GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~55_combout\,
	aclr => GND,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => daytime(31));

-- Location: LC_X6_Y6_N3
\daytime[28]\ : maxv_lcell
-- Equation(s):
-- \Equal1~8\ = (!daytime(29) & (!daytime(31) & (!daytime[28] & !daytime(30))))
-- daytime(28) = DFFEAS(\Equal1~8\, GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, \Add0~40_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => daytime(29),
	datab => daytime(31),
	datac => \Add0~40_combout\,
	datad => daytime(30),
	aclr => GND,
	sload => VCC,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~8\,
	regout => daytime(28));

-- Location: LC_X6_Y6_N6
\daytime[29]\ : maxv_lcell
-- Equation(s):
-- daytime(29) = DFFEAS((((\Add0~45_combout\))), GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datad => \Add0~45_combout\,
	aclr => GND,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => daytime(29));

-- Location: LC_X5_Y5_N9
\Equal1~9\ : maxv_lcell
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~7\ & (\Equal1~6\ & (\Equal1~8\ & \Equal1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~7\,
	datab => \Equal1~6\,
	datac => \Equal1~8\,
	datad => \Equal1~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal1~9_combout\);

-- Location: LC_X3_Y5_N4
\daytime[3]\ : maxv_lcell
-- Equation(s):
-- \daytime~0\ = (\Add0~60_combout\ & (((!\Equal1~4_combout\)) # (!\Equal1~9_combout\)))
-- daytime(3) = DFFEAS(\daytime~0\, GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4c4c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Equal1~9_combout\,
	datab => \Add0~60_combout\,
	datac => \Equal1~4_combout\,
	aclr => GND,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \daytime~0\,
	regout => daytime(3));

-- Location: LC_X2_Y5_N9
\always0~9\ : maxv_lcell
-- Equation(s):
-- \always0~9_combout\ = (((\Add0~0_combout\) # (\Add0~155_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \Add0~155_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~9_combout\);

-- Location: LC_X5_Y5_N6
\always0~0\ : maxv_lcell
-- Equation(s):
-- \always0~0_combout\ = (!\Add0~5_combout\ & (!\Add0~10_combout\ & (!\Add0~15_combout\ & !\Add0~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \Add0~10_combout\,
	datac => \Add0~15_combout\,
	datad => \Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~0_combout\);

-- Location: LC_X3_Y5_N5
\always0~4\ : maxv_lcell
-- Equation(s):
-- \always0~4_combout\ = (!\Add0~95_combout\ & (!\Add0~100_combout\ & (!\Add0~85_combout\ & !\Add0~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~95_combout\,
	datab => \Add0~100_combout\,
	datac => \Add0~85_combout\,
	datad => \Add0~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~4_combout\);

-- Location: LC_X3_Y5_N7
\always0~3\ : maxv_lcell
-- Equation(s):
-- \always0~3_combout\ = (!\Add0~75_combout\ & (!\Add0~65_combout\ & (!\Add0~80_combout\ & !\Add0~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~75_combout\,
	datab => \Add0~65_combout\,
	datac => \Add0~80_combout\,
	datad => \Add0~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~3_combout\);

-- Location: LC_X3_Y5_N6
\always0~5\ : maxv_lcell
-- Equation(s):
-- \always0~5_combout\ = (!\Add0~105_combout\ & (!\Add0~110_combout\ & (!\Add0~115_combout\ & !\Add0~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~105_combout\,
	datab => \Add0~110_combout\,
	datac => \Add0~115_combout\,
	datad => \Add0~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~5_combout\);

-- Location: LC_X3_Y5_N8
\always0~6\ : maxv_lcell
-- Equation(s):
-- \always0~6_combout\ = (!\Add0~125_combout\ & (!\Add0~130_combout\ & (!\Add0~135_combout\ & !\Add0~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~125_combout\,
	datab => \Add0~130_combout\,
	datac => \Add0~135_combout\,
	datad => \Add0~140_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~6_combout\);

-- Location: LC_X3_Y5_N9
\always0~7\ : maxv_lcell
-- Equation(s):
-- \always0~7_combout\ = (\always0~4_combout\ & (\always0~3_combout\ & (\always0~5_combout\ & \always0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \always0~4_combout\,
	datab => \always0~3_combout\,
	datac => \always0~5_combout\,
	datad => \always0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~7_combout\);

-- Location: LC_X5_Y6_N9
\always0~1\ : maxv_lcell
-- Equation(s):
-- \always0~1_combout\ = (!\Add0~25_combout\ & (!\Add0~35_combout\ & (!\Add0~30_combout\ & !\Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~25_combout\,
	datab => \Add0~35_combout\,
	datac => \Add0~30_combout\,
	datad => \Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~1_combout\);

-- Location: LC_X4_Y5_N2
\always0~2\ : maxv_lcell
-- Equation(s):
-- \always0~2_combout\ = (!\Add0~50_combout\ & (!\Add0~45_combout\ & (!\Add0~55_combout\ & \always0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \Add0~45_combout\,
	datac => \Add0~55_combout\,
	datad => \always0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~2_combout\);

-- Location: LC_X4_Y5_N8
\always0~8\ : maxv_lcell
-- Equation(s):
-- \always0~8_combout\ = (\always0~0_combout\ & (\daytime~0\ & (\always0~7_combout\ & \always0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \always0~0_combout\,
	datab => \daytime~0\,
	datac => \always0~7_combout\,
	datad => \always0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~8_combout\);

-- Location: LC_X4_Y5_N3
\always0~10\ : maxv_lcell
-- Equation(s):
-- \always0~10_combout\ = (\Add0~150_combout\) # (((\always0~9_combout\ & \Add0~145_combout\)) # (!\always0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ecff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \always0~9_combout\,
	datab => \Add0~150_combout\,
	datac => \Add0~145_combout\,
	datad => \always0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always0~10_combout\);

-- Location: LC_X4_Y5_N9
\Equal2~0\ : maxv_lcell
-- Equation(s):
-- \Equal2~0_combout\ = ((\Add0~145_combout\ & (!\daytime~1_combout\ & \always0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add0~145_combout\,
	datac => \daytime~1_combout\,
	datad => \always0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~0_combout\);

-- Location: LC_X4_Y5_N5
\reg_capacity[5]\ : maxv_lcell
-- Equation(s):
-- reg_capacity(5) = DFFEAS(((\Add0~155_combout\ & (\Add0~0_combout\ & \Equal2~0_combout\))) # (!\always0~10_combout\), GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~155_combout\,
	datab => \Add0~0_combout\,
	datac => \always0~10_combout\,
	datad => \Equal2~0_combout\,
	aclr => GND,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_capacity(5));

-- Location: LC_X8_Y4_N4
\Add7~189\ : maxv_lcell
-- Equation(s):
-- \Add7~189_cout\ = CARRY(((!\Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~187\,
	cout => \Add7~189_cout\);

-- Location: LC_X4_Y5_N4
\reg_capacity[4]\ : maxv_lcell
-- Equation(s):
-- reg_capacity(4) = DFFEAS(((\Add0~155_combout\ & (!\Add0~0_combout\ & \Equal2~0_combout\))) # (!\always0~10_combout\), GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~155_combout\,
	datab => \Add0~0_combout\,
	datac => \always0~10_combout\,
	datad => \Equal2~0_combout\,
	aclr => GND,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_capacity(4));

-- Location: LC_X4_Y5_N0
\reg_capacity[3]\ : maxv_lcell
-- Equation(s):
-- reg_capacity(3) = DFFEAS(((\Equal2~0_combout\ & ((\Add0~155_combout\) # (\Add0~0_combout\)))) # (!\always0~10_combout\), GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ef0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~155_combout\,
	datab => \Add0~0_combout\,
	datac => \always0~10_combout\,
	datad => \Equal2~0_combout\,
	aclr => GND,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_capacity(3));

-- Location: LC_X4_Y5_N6
\reg_capacity[2]\ : maxv_lcell
-- Equation(s):
-- reg_capacity(2) = DFFEAS(((!\Add0~155_combout\ & (\Add0~0_combout\ & \Equal2~0_combout\))) # (!\always0~10_combout\), GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~155_combout\,
	datab => \Add0~0_combout\,
	datac => \always0~10_combout\,
	datad => \Equal2~0_combout\,
	aclr => GND,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_capacity(2));

-- Location: LC_X6_Y5_N9
\reg_capacity[1]\ : maxv_lcell
-- Equation(s):
-- reg_capacity(1) = DFFEAS(((\Add0~0_combout\ & (\Equal2~0_combout\ & \always0~10_combout\))), GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	datab => \Add0~0_combout\,
	datac => \Equal2~0_combout\,
	datad => \always0~10_combout\,
	aclr => GND,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_capacity(1));

-- Location: LC_X8_Y4_N5
\Add7~1\ : maxv_lcell
-- Equation(s):
-- \Add7~1_combout\ = \Add2~5_combout\ $ (reg_capacity(1) $ ((!\Add7~189_cout\)))
-- \Add7~3\ = CARRY((\Add2~5_combout\ & ((!\Add7~189_cout\) # (!reg_capacity(1)))) # (!\Add2~5_combout\ & (!reg_capacity(1) & !\Add7~189_cout\)))
-- \Add7~3COUT1_218\ = CARRY((\Add2~5_combout\ & ((!\Add7~189_cout\) # (!reg_capacity(1)))) # (!\Add2~5_combout\ & (!reg_capacity(1) & !\Add7~189_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~5_combout\,
	datab => reg_capacity(1),
	cin => \Add7~189_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~1_combout\,
	cout0 => \Add7~3\,
	cout1 => \Add7~3COUT1_218\);

-- Location: LC_X8_Y4_N6
\Add7~7\ : maxv_lcell
-- Equation(s):
-- \Add7~7_combout\ = \Add2~10_combout\ $ (reg_capacity(2) $ ((!(!\Add7~189_cout\ & \Add7~3\) # (\Add7~189_cout\ & \Add7~3COUT1_218\))))
-- \Add7~9\ = CARRY((\Add2~10_combout\ & (!reg_capacity(2) & !\Add7~3\)) # (!\Add2~10_combout\ & ((!\Add7~3\) # (!reg_capacity(2)))))
-- \Add7~9COUT1_220\ = CARRY((\Add2~10_combout\ & (!reg_capacity(2) & !\Add7~3COUT1_218\)) # (!\Add2~10_combout\ & ((!\Add7~3COUT1_218\) # (!reg_capacity(2)))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "6917",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => reg_capacity(2),
	cin => \Add7~189_cout\,
	cin0 => \Add7~3\,
	cin1 => \Add7~3COUT1_218\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~7_combout\,
	cout0 => \Add7~9\,
	cout1 => \Add7~9COUT1_220\);

-- Location: LC_X8_Y4_N7
\Add7~13\ : maxv_lcell
-- Equation(s):
-- \Add7~13_combout\ = \Add2~15_combout\ $ (reg_capacity(3) $ ((!(!\Add7~189_cout\ & \Add7~9\) # (\Add7~189_cout\ & \Add7~9COUT1_220\))))
-- \Add7~15\ = CARRY((\Add2~15_combout\ & ((!\Add7~9\) # (!reg_capacity(3)))) # (!\Add2~15_combout\ & (!reg_capacity(3) & !\Add7~9\)))
-- \Add7~15COUT1_222\ = CARRY((\Add2~15_combout\ & ((!\Add7~9COUT1_220\) # (!reg_capacity(3)))) # (!\Add2~15_combout\ & (!reg_capacity(3) & !\Add7~9COUT1_220\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~15_combout\,
	datab => reg_capacity(3),
	cin => \Add7~189_cout\,
	cin0 => \Add7~9\,
	cin1 => \Add7~9COUT1_220\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~13_combout\,
	cout0 => \Add7~15\,
	cout1 => \Add7~15COUT1_222\);

-- Location: LC_X8_Y4_N8
\Add7~19\ : maxv_lcell
-- Equation(s):
-- \Add7~19_combout\ = reg_capacity(4) $ (\Add2~20_combout\ $ ((!(!\Add7~189_cout\ & \Add7~15\) # (\Add7~189_cout\ & \Add7~15COUT1_222\))))
-- \Add7~21\ = CARRY((reg_capacity(4) & (!\Add2~20_combout\ & !\Add7~15\)) # (!reg_capacity(4) & ((!\Add7~15\) # (!\Add2~20_combout\))))
-- \Add7~21COUT1_224\ = CARRY((reg_capacity(4) & (!\Add2~20_combout\ & !\Add7~15COUT1_222\)) # (!reg_capacity(4) & ((!\Add7~15COUT1_222\) # (!\Add2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "6917",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_capacity(4),
	datab => \Add2~20_combout\,
	cin => \Add7~189_cout\,
	cin0 => \Add7~15\,
	cin1 => \Add7~15COUT1_222\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~19_combout\,
	cout0 => \Add7~21\,
	cout1 => \Add7~21COUT1_224\);

-- Location: LC_X8_Y4_N9
\Add7~25\ : maxv_lcell
-- Equation(s):
-- \Add7~25_combout\ = \Add2~25_combout\ $ (reg_capacity(5) $ (((!\Add7~189_cout\ & \Add7~21\) # (\Add7~189_cout\ & \Add7~21COUT1_224\))))
-- \Add7~27\ = CARRY((\Add2~25_combout\ & ((reg_capacity(5)) # (!\Add7~21COUT1_224\))) # (!\Add2~25_combout\ & (reg_capacity(5) & !\Add7~21COUT1_224\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "968e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~25_combout\,
	datab => reg_capacity(5),
	cin => \Add7~189_cout\,
	cin0 => \Add7~21\,
	cin1 => \Add7~21COUT1_224\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~25_combout\,
	cout => \Add7~27\);

-- Location: LC_X4_Y5_N1
\reg_capacity[7]\ : maxv_lcell
-- Equation(s):
-- reg_capacity(7) = DFFEAS((\Add0~155_combout\ & (((\always0~10_combout\ & \Equal2~0_combout\)))), GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~155_combout\,
	datac => \always0~10_combout\,
	datad => \Equal2~0_combout\,
	aclr => GND,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_capacity(7));

-- Location: LC_X4_Y5_N7
\reg_capacity[6]\ : maxv_lcell
-- Equation(s):
-- reg_capacity(6) = DFFEAS((\Add0~155_combout\ & (!\Add0~0_combout\ & (\always0~10_combout\ & \Equal2~0_combout\))), GLOBAL(\clk~combout\), VCC, , \Equal0~10_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \clk~combout\,
	dataa => \Add0~155_combout\,
	datab => \Add0~0_combout\,
	datac => \always0~10_combout\,
	datad => \Equal2~0_combout\,
	aclr => GND,
	ena => \Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_capacity(6));

-- Location: LC_X9_Y4_N0
\Add7~31\ : maxv_lcell
-- Equation(s):
-- \Add7~31_combout\ = \Add2~30_combout\ $ (reg_capacity(6) $ ((!\Add7~27\)))
-- \Add7~33\ = CARRY((\Add2~30_combout\ & (!reg_capacity(6) & !\Add7~27\)) # (!\Add2~30_combout\ & ((!\Add7~27\) # (!reg_capacity(6)))))
-- \Add7~33COUT1_226\ = CARRY((\Add2~30_combout\ & (!reg_capacity(6) & !\Add7~27\)) # (!\Add2~30_combout\ & ((!\Add7~27\) # (!reg_capacity(6)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "6917",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~30_combout\,
	datab => reg_capacity(6),
	cin => \Add7~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~31_combout\,
	cout0 => \Add7~33\,
	cout1 => \Add7~33COUT1_226\);

-- Location: LC_X9_Y4_N1
\Add7~37\ : maxv_lcell
-- Equation(s):
-- \Add7~37_combout\ = reg_capacity(7) $ (\Add2~35_combout\ $ (((!\Add7~27\ & \Add7~33\) # (\Add7~27\ & \Add7~33COUT1_226\))))
-- \Add7~39\ = CARRY((reg_capacity(7) & ((\Add2~35_combout\) # (!\Add7~33\))) # (!reg_capacity(7) & (\Add2~35_combout\ & !\Add7~33\)))
-- \Add7~39COUT1_228\ = CARRY((reg_capacity(7) & ((\Add2~35_combout\) # (!\Add7~33COUT1_226\))) # (!reg_capacity(7) & (\Add2~35_combout\ & !\Add7~33COUT1_226\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "968e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_capacity(7),
	datab => \Add2~35_combout\,
	cin => \Add7~27\,
	cin0 => \Add7~33\,
	cin1 => \Add7~33COUT1_226\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~37_combout\,
	cout0 => \Add7~39\,
	cout1 => \Add7~39COUT1_228\);

-- Location: LC_X9_Y4_N2
\Add7~43\ : maxv_lcell
-- Equation(s):
-- \Add7~43_combout\ = reg_capacity(2) $ (\Add2~40_combout\ $ ((!(!\Add7~27\ & \Add7~39\) # (\Add7~27\ & \Add7~39COUT1_228\))))
-- \Add7~45\ = CARRY((reg_capacity(2) & (!\Add2~40_combout\ & !\Add7~39\)) # (!reg_capacity(2) & ((!\Add7~39\) # (!\Add2~40_combout\))))
-- \Add7~45COUT1_230\ = CARRY((reg_capacity(2) & (!\Add2~40_combout\ & !\Add7~39COUT1_228\)) # (!reg_capacity(2) & ((!\Add7~39COUT1_228\) # (!\Add2~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "6917",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_capacity(2),
	datab => \Add2~40_combout\,
	cin => \Add7~27\,
	cin0 => \Add7~39\,
	cin1 => \Add7~39COUT1_228\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~43_combout\,
	cout0 => \Add7~45\,
	cout1 => \Add7~45COUT1_230\);

-- Location: LC_X9_Y4_N3
\Add7~49\ : maxv_lcell
-- Equation(s):
-- \Add7~49_combout\ = \Add2~45_combout\ $ ((((!(!\Add7~27\ & \Add7~45\) # (\Add7~27\ & \Add7~45COUT1_230\)))))
-- \Add7~51\ = CARRY((\Add2~45_combout\) # ((!\Add7~45\)))
-- \Add7~51COUT1_232\ = CARRY((\Add2~45_combout\) # ((!\Add7~45COUT1_230\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a5af",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~45_combout\,
	cin => \Add7~27\,
	cin0 => \Add7~45\,
	cin1 => \Add7~45COUT1_230\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~49_combout\,
	cout0 => \Add7~51\,
	cout1 => \Add7~51COUT1_232\);

-- Location: LC_X9_Y4_N4
\Add7~55\ : maxv_lcell
-- Equation(s):
-- \Add7~55_combout\ = (\Add2~50_combout\ $ (((!\Add7~27\ & \Add7~51\) # (\Add7~27\ & \Add7~51COUT1_232\))))
-- \Add7~57\ = CARRY(((!\Add2~50_combout\ & !\Add7~51COUT1_232\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c03",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add2~50_combout\,
	cin => \Add7~27\,
	cin0 => \Add7~51\,
	cin1 => \Add7~51COUT1_232\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~55_combout\,
	cout => \Add7~57\);

-- Location: LC_X9_Y4_N5
\Add7~61\ : maxv_lcell
-- Equation(s):
-- \Add7~61_combout\ = (\Add2~55_combout\ $ ((!\Add7~57\)))
-- \Add7~63\ = CARRY(((\Add2~55_combout\) # (!\Add7~57\)))
-- \Add7~63COUT1_234\ = CARRY(((\Add2~55_combout\) # (!\Add7~57\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c3cf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add2~55_combout\,
	cin => \Add7~57\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~61_combout\,
	cout0 => \Add7~63\,
	cout1 => \Add7~63COUT1_234\);

-- Location: LC_X9_Y4_N6
\Add7~67\ : maxv_lcell
-- Equation(s):
-- \Add7~67_combout\ = (\Add2~60_combout\ $ (((!\Add7~57\ & \Add7~63\) # (\Add7~57\ & \Add7~63COUT1_234\))))
-- \Add7~69\ = CARRY(((!\Add2~60_combout\ & !\Add7~63\)))
-- \Add7~69COUT1_236\ = CARRY(((!\Add2~60_combout\ & !\Add7~63COUT1_234\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c03",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add2~60_combout\,
	cin => \Add7~57\,
	cin0 => \Add7~63\,
	cin1 => \Add7~63COUT1_234\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~67_combout\,
	cout0 => \Add7~69\,
	cout1 => \Add7~69COUT1_236\);

-- Location: LC_X9_Y4_N7
\Add7~73\ : maxv_lcell
-- Equation(s):
-- \Add7~73_combout\ = (\Add2~65_combout\ $ ((!(!\Add7~57\ & \Add7~69\) # (\Add7~57\ & \Add7~69COUT1_236\))))
-- \Add7~75\ = CARRY(((\Add2~65_combout\) # (!\Add7~69\)))
-- \Add7~75COUT1_238\ = CARRY(((\Add2~65_combout\) # (!\Add7~69COUT1_236\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3cf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add2~65_combout\,
	cin => \Add7~57\,
	cin0 => \Add7~69\,
	cin1 => \Add7~69COUT1_236\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~73_combout\,
	cout0 => \Add7~75\,
	cout1 => \Add7~75COUT1_238\);

-- Location: LC_X9_Y4_N8
\Add7~79\ : maxv_lcell
-- Equation(s):
-- \Add7~79_combout\ = \Add2~70_combout\ $ (((((!\Add7~57\ & \Add7~75\) # (\Add7~57\ & \Add7~75COUT1_238\)))))
-- \Add7~81\ = CARRY((!\Add2~70_combout\ & ((!\Add7~75\))))
-- \Add7~81COUT1_240\ = CARRY((!\Add2~70_combout\ & ((!\Add7~75COUT1_238\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a05",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~70_combout\,
	cin => \Add7~57\,
	cin0 => \Add7~75\,
	cin1 => \Add7~75COUT1_238\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~79_combout\,
	cout0 => \Add7~81\,
	cout1 => \Add7~81COUT1_240\);

-- Location: LC_X9_Y4_N9
\Add7~85\ : maxv_lcell
-- Equation(s):
-- \Add7~85_combout\ = \Add2~75_combout\ $ ((((!(!\Add7~57\ & \Add7~81\) # (\Add7~57\ & \Add7~81COUT1_240\)))))
-- \Add7~87\ = CARRY((\Add2~75_combout\) # ((!\Add7~81COUT1_240\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a5af",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~75_combout\,
	cin => \Add7~57\,
	cin0 => \Add7~81\,
	cin1 => \Add7~81COUT1_240\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~85_combout\,
	cout => \Add7~87\);

-- Location: LC_X10_Y4_N0
\Add7~91\ : maxv_lcell
-- Equation(s):
-- \Add7~91_combout\ = \Add2~80_combout\ $ ((((\Add7~87\))))
-- \Add7~93\ = CARRY((!\Add2~80_combout\ & ((!\Add7~87\))))
-- \Add7~93COUT1_242\ = CARRY((!\Add2~80_combout\ & ((!\Add7~87\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a05",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~80_combout\,
	cin => \Add7~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~91_combout\,
	cout0 => \Add7~93\,
	cout1 => \Add7~93COUT1_242\);

-- Location: LC_X10_Y4_N1
\Add7~97\ : maxv_lcell
-- Equation(s):
-- \Add7~97_combout\ = (\Add2~85_combout\ $ ((!(!\Add7~87\ & \Add7~93\) # (\Add7~87\ & \Add7~93COUT1_242\))))
-- \Add7~99\ = CARRY(((\Add2~85_combout\) # (!\Add7~93\)))
-- \Add7~99COUT1_244\ = CARRY(((\Add2~85_combout\) # (!\Add7~93COUT1_242\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3cf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add2~85_combout\,
	cin => \Add7~87\,
	cin0 => \Add7~93\,
	cin1 => \Add7~93COUT1_242\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~97_combout\,
	cout0 => \Add7~99\,
	cout1 => \Add7~99COUT1_244\);

-- Location: LC_X10_Y4_N2
\Add7~103\ : maxv_lcell
-- Equation(s):
-- \Add7~103_combout\ = (\Add2~90_combout\ $ (((!\Add7~87\ & \Add7~99\) # (\Add7~87\ & \Add7~99COUT1_244\))))
-- \Add7~105\ = CARRY(((!\Add2~90_combout\ & !\Add7~99\)))
-- \Add7~105COUT1_246\ = CARRY(((!\Add2~90_combout\ & !\Add7~99COUT1_244\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c03",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add2~90_combout\,
	cin => \Add7~87\,
	cin0 => \Add7~99\,
	cin1 => \Add7~99COUT1_244\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~103_combout\,
	cout0 => \Add7~105\,
	cout1 => \Add7~105COUT1_246\);

-- Location: LC_X10_Y4_N3
\Add7~109\ : maxv_lcell
-- Equation(s):
-- \Add7~109_combout\ = (\Add2~95_combout\ $ ((!(!\Add7~87\ & \Add7~105\) # (\Add7~87\ & \Add7~105COUT1_246\))))
-- \Add7~111\ = CARRY(((\Add2~95_combout\) # (!\Add7~105\)))
-- \Add7~111COUT1_248\ = CARRY(((\Add2~95_combout\) # (!\Add7~105COUT1_246\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3cf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add2~95_combout\,
	cin => \Add7~87\,
	cin0 => \Add7~105\,
	cin1 => \Add7~105COUT1_246\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~109_combout\,
	cout0 => \Add7~111\,
	cout1 => \Add7~111COUT1_248\);

-- Location: LC_X10_Y4_N4
\Add7~115\ : maxv_lcell
-- Equation(s):
-- \Add7~115_combout\ = \Add2~100_combout\ $ (((((!\Add7~87\ & \Add7~111\) # (\Add7~87\ & \Add7~111COUT1_248\)))))
-- \Add7~117\ = CARRY((!\Add2~100_combout\ & ((!\Add7~111COUT1_248\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a05",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~100_combout\,
	cin => \Add7~87\,
	cin0 => \Add7~111\,
	cin1 => \Add7~111COUT1_248\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~115_combout\,
	cout => \Add7~117\);

-- Location: LC_X10_Y4_N5
\Add7~121\ : maxv_lcell
-- Equation(s):
-- \Add7~121_combout\ = \Add2~105_combout\ $ ((((!\Add7~117\))))
-- \Add7~123\ = CARRY((\Add2~105_combout\) # ((!\Add7~117\)))
-- \Add7~123COUT1_250\ = CARRY((\Add2~105_combout\) # ((!\Add7~117\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a5af",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~105_combout\,
	cin => \Add7~117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~121_combout\,
	cout0 => \Add7~123\,
	cout1 => \Add7~123COUT1_250\);

-- Location: LC_X10_Y4_N6
\Add7~127\ : maxv_lcell
-- Equation(s):
-- \Add7~127_combout\ = (\Add2~110_combout\ $ (((!\Add7~117\ & \Add7~123\) # (\Add7~117\ & \Add7~123COUT1_250\))))
-- \Add7~129\ = CARRY(((!\Add2~110_combout\ & !\Add7~123\)))
-- \Add7~129COUT1_252\ = CARRY(((!\Add2~110_combout\ & !\Add7~123COUT1_250\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c03",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add2~110_combout\,
	cin => \Add7~117\,
	cin0 => \Add7~123\,
	cin1 => \Add7~123COUT1_250\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~127_combout\,
	cout0 => \Add7~129\,
	cout1 => \Add7~129COUT1_252\);

-- Location: LC_X10_Y4_N7
\Add7~133\ : maxv_lcell
-- Equation(s):
-- \Add7~133_combout\ = (\Add2~115_combout\ $ ((!(!\Add7~117\ & \Add7~129\) # (\Add7~117\ & \Add7~129COUT1_252\))))
-- \Add7~135\ = CARRY(((\Add2~115_combout\) # (!\Add7~129\)))
-- \Add7~135COUT1_254\ = CARRY(((\Add2~115_combout\) # (!\Add7~129COUT1_252\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3cf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add2~115_combout\,
	cin => \Add7~117\,
	cin0 => \Add7~129\,
	cin1 => \Add7~129COUT1_252\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~133_combout\,
	cout0 => \Add7~135\,
	cout1 => \Add7~135COUT1_254\);

-- Location: LC_X10_Y4_N8
\Add7~139\ : maxv_lcell
-- Equation(s):
-- \Add7~139_combout\ = (\Add2~120_combout\ $ (((!\Add7~117\ & \Add7~135\) # (\Add7~117\ & \Add7~135COUT1_254\))))
-- \Add7~141\ = CARRY(((!\Add2~120_combout\ & !\Add7~135\)))
-- \Add7~141COUT1_256\ = CARRY(((!\Add2~120_combout\ & !\Add7~135COUT1_254\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c03",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add2~120_combout\,
	cin => \Add7~117\,
	cin0 => \Add7~135\,
	cin1 => \Add7~135COUT1_254\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~139_combout\,
	cout0 => \Add7~141\,
	cout1 => \Add7~141COUT1_256\);

-- Location: LC_X10_Y4_N9
\Add7~145\ : maxv_lcell
-- Equation(s):
-- \Add7~145_combout\ = (\Add2~125_combout\ $ ((!(!\Add7~117\ & \Add7~141\) # (\Add7~117\ & \Add7~141COUT1_256\))))
-- \Add7~147\ = CARRY(((\Add2~125_combout\) # (!\Add7~141COUT1_256\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3cf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add2~125_combout\,
	cin => \Add7~117\,
	cin0 => \Add7~141\,
	cin1 => \Add7~141COUT1_256\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~145_combout\,
	cout => \Add7~147\);

-- Location: LC_X11_Y4_N0
\Add7~151\ : maxv_lcell
-- Equation(s):
-- \Add7~151_combout\ = (\Add2~130_combout\ $ ((\Add7~147\)))
-- \Add7~153\ = CARRY(((!\Add2~130_combout\ & !\Add7~147\)))
-- \Add7~153COUT1_258\ = CARRY(((!\Add2~130_combout\ & !\Add7~147\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c03",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add2~130_combout\,
	cin => \Add7~147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~151_combout\,
	cout0 => \Add7~153\,
	cout1 => \Add7~153COUT1_258\);

-- Location: LC_X11_Y4_N1
\Add7~157\ : maxv_lcell
-- Equation(s):
-- \Add7~157_combout\ = (\Add2~135_combout\ $ ((!(!\Add7~147\ & \Add7~153\) # (\Add7~147\ & \Add7~153COUT1_258\))))
-- \Add7~159\ = CARRY(((\Add2~135_combout\) # (!\Add7~153\)))
-- \Add7~159COUT1_260\ = CARRY(((\Add2~135_combout\) # (!\Add7~153COUT1_258\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3cf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add2~135_combout\,
	cin => \Add7~147\,
	cin0 => \Add7~153\,
	cin1 => \Add7~153COUT1_258\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~157_combout\,
	cout0 => \Add7~159\,
	cout1 => \Add7~159COUT1_260\);

-- Location: LC_X11_Y4_N2
\Add7~163\ : maxv_lcell
-- Equation(s):
-- \Add7~163_combout\ = (\Add2~140_combout\ $ (((!\Add7~147\ & \Add7~159\) # (\Add7~147\ & \Add7~159COUT1_260\))))
-- \Add7~165\ = CARRY(((!\Add2~140_combout\ & !\Add7~159\)))
-- \Add7~165COUT1_262\ = CARRY(((!\Add2~140_combout\ & !\Add7~159COUT1_260\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c03",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add2~140_combout\,
	cin => \Add7~147\,
	cin0 => \Add7~159\,
	cin1 => \Add7~159COUT1_260\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~163_combout\,
	cout0 => \Add7~165\,
	cout1 => \Add7~165COUT1_262\);

-- Location: LC_X11_Y4_N3
\Add7~169\ : maxv_lcell
-- Equation(s):
-- \Add7~169_combout\ = (\Add2~145_combout\ $ ((!(!\Add7~147\ & \Add7~165\) # (\Add7~147\ & \Add7~165COUT1_262\))))
-- \Add7~171\ = CARRY(((\Add2~145_combout\) # (!\Add7~165\)))
-- \Add7~171COUT1_264\ = CARRY(((\Add2~145_combout\) # (!\Add7~165COUT1_262\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c3cf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add2~145_combout\,
	cin => \Add7~147\,
	cin0 => \Add7~165\,
	cin1 => \Add7~165COUT1_262\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~169_combout\,
	cout0 => \Add7~171\,
	cout1 => \Add7~171COUT1_264\);

-- Location: LC_X11_Y4_N4
\Add7~175\ : maxv_lcell
-- Equation(s):
-- \Add7~175_combout\ = \Add2~150_combout\ $ (((((!\Add7~147\ & \Add7~171\) # (\Add7~147\ & \Add7~171COUT1_264\)))))
-- \Add7~177\ = CARRY((!\Add2~150_combout\ & ((!\Add7~171COUT1_264\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a05",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~150_combout\,
	cin => \Add7~147\,
	cin0 => \Add7~171\,
	cin1 => \Add7~171COUT1_264\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~175_combout\,
	cout => \Add7~177\);

-- Location: LC_X11_Y4_N5
\Add7~181\ : maxv_lcell
-- Equation(s):
-- \Add7~181_combout\ = ((\Add7~177\ $ (!\Add2~155_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \Add2~155_combout\,
	cin => \Add7~177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~181_combout\);

-- Location: LC_X15_Y8_N6
\uni_departures[31]~63\ : maxv_lcell
-- Equation(s):
-- \uni_departures[31]~63_combout\ = (\is_uni_car_exited~combout\ & (((\LessThan5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \is_uni_car_exited~combout\,
	datad => \LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uni_departures[31]~63_combout\);

-- Location: LC_X13_Y9_N5
\uni_departures[1]\ : maxv_lcell
-- Equation(s):
-- uni_departures(1) = DFFEAS(uni_departures(1) $ ((uni_departures(0))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[1]~1\ = CARRY((uni_departures(1) & (uni_departures(0))))
-- \uni_departures[1]~1COUT1_90\ = CARRY((uni_departures(1) & (uni_departures(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => uni_departures(1),
	datab => uni_departures(0),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(1),
	cout0 => \uni_departures[1]~1\,
	cout1 => \uni_departures[1]~1COUT1_90\);

-- Location: LC_X13_Y9_N6
\uni_departures[2]\ : maxv_lcell
-- Equation(s):
-- uni_departures(2) = DFFEAS(uni_departures(2) $ ((((\uni_departures[1]~1\)))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[2]~3\ = CARRY(((!\uni_departures[1]~1\)) # (!uni_departures(2)))
-- \uni_departures[2]~3COUT1_92\ = CARRY(((!\uni_departures[1]~1COUT1_90\)) # (!uni_departures(2)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => uni_departures(2),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin0 => \uni_departures[1]~1\,
	cin1 => \uni_departures[1]~1COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(2),
	cout0 => \uni_departures[2]~3\,
	cout1 => \uni_departures[2]~3COUT1_92\);

-- Location: LC_X13_Y9_N7
\uni_departures[3]\ : maxv_lcell
-- Equation(s):
-- uni_departures(3) = DFFEAS((uni_departures(3) $ ((!\uni_departures[2]~3\))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[3]~5\ = CARRY(((uni_departures(3) & !\uni_departures[2]~3\)))
-- \uni_departures[3]~5COUT1_94\ = CARRY(((uni_departures(3) & !\uni_departures[2]~3COUT1_92\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => uni_departures(3),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin0 => \uni_departures[2]~3\,
	cin1 => \uni_departures[2]~3COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(3),
	cout0 => \uni_departures[3]~5\,
	cout1 => \uni_departures[3]~5COUT1_94\);

-- Location: LC_X13_Y9_N8
\uni_departures[4]\ : maxv_lcell
-- Equation(s):
-- uni_departures(4) = DFFEAS(uni_departures(4) $ ((((\uni_departures[3]~5\)))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[4]~7\ = CARRY(((!\uni_departures[3]~5\)) # (!uni_departures(4)))
-- \uni_departures[4]~7COUT1_96\ = CARRY(((!\uni_departures[3]~5COUT1_94\)) # (!uni_departures(4)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => uni_departures(4),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin0 => \uni_departures[3]~5\,
	cin1 => \uni_departures[3]~5COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(4),
	cout0 => \uni_departures[4]~7\,
	cout1 => \uni_departures[4]~7COUT1_96\);

-- Location: LC_X13_Y9_N9
\uni_departures[5]\ : maxv_lcell
-- Equation(s):
-- uni_departures(5) = DFFEAS((uni_departures(5) $ ((!\uni_departures[4]~7\))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[5]~9\ = CARRY(((uni_departures(5) & !\uni_departures[4]~7COUT1_96\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => uni_departures(5),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin0 => \uni_departures[4]~7\,
	cin1 => \uni_departures[4]~7COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(5),
	cout => \uni_departures[5]~9\);

-- Location: LC_X14_Y9_N0
\uni_departures[6]\ : maxv_lcell
-- Equation(s):
-- uni_departures(6) = DFFEAS((uni_departures(6) $ ((\uni_departures[5]~9\))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[6]~11\ = CARRY(((!\uni_departures[5]~9\) # (!uni_departures(6))))
-- \uni_departures[6]~11COUT1_98\ = CARRY(((!\uni_departures[5]~9\) # (!uni_departures(6))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => uni_departures(6),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[5]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(6),
	cout0 => \uni_departures[6]~11\,
	cout1 => \uni_departures[6]~11COUT1_98\);

-- Location: LC_X14_Y9_N1
\uni_departures[7]\ : maxv_lcell
-- Equation(s):
-- uni_departures(7) = DFFEAS((uni_departures(7) $ ((!(!\uni_departures[5]~9\ & \uni_departures[6]~11\) # (\uni_departures[5]~9\ & \uni_departures[6]~11COUT1_98\)))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[7]~13\ = CARRY(((uni_departures(7) & !\uni_departures[6]~11\)))
-- \uni_departures[7]~13COUT1_100\ = CARRY(((uni_departures(7) & !\uni_departures[6]~11COUT1_98\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => uni_departures(7),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[5]~9\,
	cin0 => \uni_departures[6]~11\,
	cin1 => \uni_departures[6]~11COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(7),
	cout0 => \uni_departures[7]~13\,
	cout1 => \uni_departures[7]~13COUT1_100\);

-- Location: LC_X14_Y9_N2
\uni_departures[8]\ : maxv_lcell
-- Equation(s):
-- uni_departures(8) = DFFEAS((uni_departures(8) $ (((!\uni_departures[5]~9\ & \uni_departures[7]~13\) # (\uni_departures[5]~9\ & \uni_departures[7]~13COUT1_100\)))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[8]~15\ = CARRY(((!\uni_departures[7]~13\) # (!uni_departures(8))))
-- \uni_departures[8]~15COUT1_102\ = CARRY(((!\uni_departures[7]~13COUT1_100\) # (!uni_departures(8))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => uni_departures(8),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[5]~9\,
	cin0 => \uni_departures[7]~13\,
	cin1 => \uni_departures[7]~13COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(8),
	cout0 => \uni_departures[8]~15\,
	cout1 => \uni_departures[8]~15COUT1_102\);

-- Location: LC_X14_Y9_N3
\uni_departures[9]\ : maxv_lcell
-- Equation(s):
-- uni_departures(9) = DFFEAS(uni_departures(9) $ ((((!(!\uni_departures[5]~9\ & \uni_departures[8]~15\) # (\uni_departures[5]~9\ & \uni_departures[8]~15COUT1_102\))))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[9]~17\ = CARRY((uni_departures(9) & ((!\uni_departures[8]~15\))))
-- \uni_departures[9]~17COUT1_104\ = CARRY((uni_departures(9) & ((!\uni_departures[8]~15COUT1_102\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => uni_departures(9),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[5]~9\,
	cin0 => \uni_departures[8]~15\,
	cin1 => \uni_departures[8]~15COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(9),
	cout0 => \uni_departures[9]~17\,
	cout1 => \uni_departures[9]~17COUT1_104\);

-- Location: LC_X14_Y9_N4
\uni_departures[10]\ : maxv_lcell
-- Equation(s):
-- uni_departures(10) = DFFEAS(uni_departures(10) $ (((((!\uni_departures[5]~9\ & \uni_departures[9]~17\) # (\uni_departures[5]~9\ & \uni_departures[9]~17COUT1_104\))))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[10]~19\ = CARRY(((!\uni_departures[9]~17COUT1_104\)) # (!uni_departures(10)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => uni_departures(10),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[5]~9\,
	cin0 => \uni_departures[9]~17\,
	cin1 => \uni_departures[9]~17COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(10),
	cout => \uni_departures[10]~19\);

-- Location: LC_X14_Y9_N5
\uni_departures[11]\ : maxv_lcell
-- Equation(s):
-- uni_departures(11) = DFFEAS(uni_departures(11) $ ((((!\uni_departures[10]~19\)))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[11]~21\ = CARRY((uni_departures(11) & ((!\uni_departures[10]~19\))))
-- \uni_departures[11]~21COUT1_106\ = CARRY((uni_departures(11) & ((!\uni_departures[10]~19\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => uni_departures(11),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[10]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(11),
	cout0 => \uni_departures[11]~21\,
	cout1 => \uni_departures[11]~21COUT1_106\);

-- Location: LC_X14_Y9_N6
\uni_departures[12]\ : maxv_lcell
-- Equation(s):
-- uni_departures(12) = DFFEAS(uni_departures(12) $ (((((!\uni_departures[10]~19\ & \uni_departures[11]~21\) # (\uni_departures[10]~19\ & \uni_departures[11]~21COUT1_106\))))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[12]~23\ = CARRY(((!\uni_departures[11]~21\)) # (!uni_departures(12)))
-- \uni_departures[12]~23COUT1_108\ = CARRY(((!\uni_departures[11]~21COUT1_106\)) # (!uni_departures(12)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => uni_departures(12),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[10]~19\,
	cin0 => \uni_departures[11]~21\,
	cin1 => \uni_departures[11]~21COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(12),
	cout0 => \uni_departures[12]~23\,
	cout1 => \uni_departures[12]~23COUT1_108\);

-- Location: LC_X14_Y9_N7
\uni_departures[13]\ : maxv_lcell
-- Equation(s):
-- uni_departures(13) = DFFEAS((uni_departures(13) $ ((!(!\uni_departures[10]~19\ & \uni_departures[12]~23\) # (\uni_departures[10]~19\ & \uni_departures[12]~23COUT1_108\)))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[13]~25\ = CARRY(((uni_departures(13) & !\uni_departures[12]~23\)))
-- \uni_departures[13]~25COUT1_110\ = CARRY(((uni_departures(13) & !\uni_departures[12]~23COUT1_108\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => uni_departures(13),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[10]~19\,
	cin0 => \uni_departures[12]~23\,
	cin1 => \uni_departures[12]~23COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(13),
	cout0 => \uni_departures[13]~25\,
	cout1 => \uni_departures[13]~25COUT1_110\);

-- Location: LC_X14_Y9_N8
\uni_departures[14]\ : maxv_lcell
-- Equation(s):
-- uni_departures(14) = DFFEAS(uni_departures(14) $ (((((!\uni_departures[10]~19\ & \uni_departures[13]~25\) # (\uni_departures[10]~19\ & \uni_departures[13]~25COUT1_110\))))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[14]~27\ = CARRY(((!\uni_departures[13]~25\)) # (!uni_departures(14)))
-- \uni_departures[14]~27COUT1_112\ = CARRY(((!\uni_departures[13]~25COUT1_110\)) # (!uni_departures(14)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => uni_departures(14),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[10]~19\,
	cin0 => \uni_departures[13]~25\,
	cin1 => \uni_departures[13]~25COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(14),
	cout0 => \uni_departures[14]~27\,
	cout1 => \uni_departures[14]~27COUT1_112\);

-- Location: LC_X14_Y9_N9
\uni_departures[15]\ : maxv_lcell
-- Equation(s):
-- uni_departures(15) = DFFEAS((uni_departures(15) $ ((!(!\uni_departures[10]~19\ & \uni_departures[14]~27\) # (\uni_departures[10]~19\ & \uni_departures[14]~27COUT1_112\)))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[15]~29\ = CARRY(((uni_departures(15) & !\uni_departures[14]~27COUT1_112\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => uni_departures(15),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[10]~19\,
	cin0 => \uni_departures[14]~27\,
	cin1 => \uni_departures[14]~27COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(15),
	cout => \uni_departures[15]~29\);

-- Location: LC_X15_Y9_N0
\uni_departures[16]\ : maxv_lcell
-- Equation(s):
-- uni_departures(16) = DFFEAS((uni_departures(16) $ ((\uni_departures[15]~29\))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[16]~31\ = CARRY(((!\uni_departures[15]~29\) # (!uni_departures(16))))
-- \uni_departures[16]~31COUT1_114\ = CARRY(((!\uni_departures[15]~29\) # (!uni_departures(16))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => uni_departures(16),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[15]~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(16),
	cout0 => \uni_departures[16]~31\,
	cout1 => \uni_departures[16]~31COUT1_114\);

-- Location: LC_X14_Y6_N0
\uni_entrances[6]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(6) = DFFEAS((uni_entrances(6) $ ((\uni_entrances[5]~9\))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[6]~11\ = CARRY(((!\uni_entrances[5]~9\) # (!uni_entrances(6))))
-- \uni_entrances[6]~11COUT1_98\ = CARRY(((!\uni_entrances[5]~9\) # (!uni_entrances(6))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => uni_entrances(6),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[5]~9\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(6),
	cout0 => \uni_entrances[6]~11\,
	cout1 => \uni_entrances[6]~11COUT1_98\);

-- Location: LC_X14_Y6_N1
\uni_entrances[7]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(7) = DFFEAS((uni_entrances(7) $ ((!(!\uni_entrances[5]~9\ & \uni_entrances[6]~11\) # (\uni_entrances[5]~9\ & \uni_entrances[6]~11COUT1_98\)))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[7]~13\ = CARRY(((uni_entrances(7) & !\uni_entrances[6]~11\)))
-- \uni_entrances[7]~13COUT1_100\ = CARRY(((uni_entrances(7) & !\uni_entrances[6]~11COUT1_98\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => uni_entrances(7),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[5]~9\,
	cin0 => \uni_entrances[6]~11\,
	cin1 => \uni_entrances[6]~11COUT1_98\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(7),
	cout0 => \uni_entrances[7]~13\,
	cout1 => \uni_entrances[7]~13COUT1_100\);

-- Location: LC_X14_Y6_N2
\uni_entrances[8]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(8) = DFFEAS((uni_entrances(8) $ (((!\uni_entrances[5]~9\ & \uni_entrances[7]~13\) # (\uni_entrances[5]~9\ & \uni_entrances[7]~13COUT1_100\)))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[8]~15\ = CARRY(((!\uni_entrances[7]~13\) # (!uni_entrances(8))))
-- \uni_entrances[8]~15COUT1_102\ = CARRY(((!\uni_entrances[7]~13COUT1_100\) # (!uni_entrances(8))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => uni_entrances(8),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[5]~9\,
	cin0 => \uni_entrances[7]~13\,
	cin1 => \uni_entrances[7]~13COUT1_100\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(8),
	cout0 => \uni_entrances[8]~15\,
	cout1 => \uni_entrances[8]~15COUT1_102\);

-- Location: LC_X14_Y6_N3
\uni_entrances[9]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(9) = DFFEAS(uni_entrances(9) $ ((((!(!\uni_entrances[5]~9\ & \uni_entrances[8]~15\) # (\uni_entrances[5]~9\ & \uni_entrances[8]~15COUT1_102\))))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[9]~17\ = CARRY((uni_entrances(9) & ((!\uni_entrances[8]~15\))))
-- \uni_entrances[9]~17COUT1_104\ = CARRY((uni_entrances(9) & ((!\uni_entrances[8]~15COUT1_102\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => uni_entrances(9),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[5]~9\,
	cin0 => \uni_entrances[8]~15\,
	cin1 => \uni_entrances[8]~15COUT1_102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(9),
	cout0 => \uni_entrances[9]~17\,
	cout1 => \uni_entrances[9]~17COUT1_104\);

-- Location: LC_X14_Y6_N4
\uni_entrances[10]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(10) = DFFEAS(uni_entrances(10) $ (((((!\uni_entrances[5]~9\ & \uni_entrances[9]~17\) # (\uni_entrances[5]~9\ & \uni_entrances[9]~17COUT1_104\))))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[10]~19\ = CARRY(((!\uni_entrances[9]~17COUT1_104\)) # (!uni_entrances(10)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => uni_entrances(10),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[5]~9\,
	cin0 => \uni_entrances[9]~17\,
	cin1 => \uni_entrances[9]~17COUT1_104\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(10),
	cout => \uni_entrances[10]~19\);

-- Location: LC_X14_Y6_N5
\uni_entrances[11]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(11) = DFFEAS(uni_entrances(11) $ ((((!\uni_entrances[10]~19\)))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[11]~21\ = CARRY((uni_entrances(11) & ((!\uni_entrances[10]~19\))))
-- \uni_entrances[11]~21COUT1_106\ = CARRY((uni_entrances(11) & ((!\uni_entrances[10]~19\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => uni_entrances(11),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[10]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(11),
	cout0 => \uni_entrances[11]~21\,
	cout1 => \uni_entrances[11]~21COUT1_106\);

-- Location: LC_X14_Y6_N6
\uni_entrances[12]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(12) = DFFEAS(uni_entrances(12) $ (((((!\uni_entrances[10]~19\ & \uni_entrances[11]~21\) # (\uni_entrances[10]~19\ & \uni_entrances[11]~21COUT1_106\))))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[12]~23\ = CARRY(((!\uni_entrances[11]~21\)) # (!uni_entrances(12)))
-- \uni_entrances[12]~23COUT1_108\ = CARRY(((!\uni_entrances[11]~21COUT1_106\)) # (!uni_entrances(12)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => uni_entrances(12),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[10]~19\,
	cin0 => \uni_entrances[11]~21\,
	cin1 => \uni_entrances[11]~21COUT1_106\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(12),
	cout0 => \uni_entrances[12]~23\,
	cout1 => \uni_entrances[12]~23COUT1_108\);

-- Location: LC_X14_Y6_N7
\uni_entrances[13]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(13) = DFFEAS((uni_entrances(13) $ ((!(!\uni_entrances[10]~19\ & \uni_entrances[12]~23\) # (\uni_entrances[10]~19\ & \uni_entrances[12]~23COUT1_108\)))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[13]~25\ = CARRY(((uni_entrances(13) & !\uni_entrances[12]~23\)))
-- \uni_entrances[13]~25COUT1_110\ = CARRY(((uni_entrances(13) & !\uni_entrances[12]~23COUT1_108\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => uni_entrances(13),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[10]~19\,
	cin0 => \uni_entrances[12]~23\,
	cin1 => \uni_entrances[12]~23COUT1_108\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(13),
	cout0 => \uni_entrances[13]~25\,
	cout1 => \uni_entrances[13]~25COUT1_110\);

-- Location: LC_X14_Y6_N8
\uni_entrances[14]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(14) = DFFEAS(uni_entrances(14) $ (((((!\uni_entrances[10]~19\ & \uni_entrances[13]~25\) # (\uni_entrances[10]~19\ & \uni_entrances[13]~25COUT1_110\))))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[14]~27\ = CARRY(((!\uni_entrances[13]~25\)) # (!uni_entrances(14)))
-- \uni_entrances[14]~27COUT1_112\ = CARRY(((!\uni_entrances[13]~25COUT1_110\)) # (!uni_entrances(14)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => uni_entrances(14),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[10]~19\,
	cin0 => \uni_entrances[13]~25\,
	cin1 => \uni_entrances[13]~25COUT1_110\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(14),
	cout0 => \uni_entrances[14]~27\,
	cout1 => \uni_entrances[14]~27COUT1_112\);

-- Location: LC_X14_Y6_N9
\uni_entrances[15]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(15) = DFFEAS((uni_entrances(15) $ ((!(!\uni_entrances[10]~19\ & \uni_entrances[14]~27\) # (\uni_entrances[10]~19\ & \uni_entrances[14]~27COUT1_112\)))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[15]~29\ = CARRY(((uni_entrances(15) & !\uni_entrances[14]~27COUT1_112\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => uni_entrances(15),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[10]~19\,
	cin0 => \uni_entrances[14]~27\,
	cin1 => \uni_entrances[14]~27COUT1_112\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(15),
	cout => \uni_entrances[15]~29\);

-- Location: LC_X15_Y6_N0
\uni_entrances[16]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(16) = DFFEAS((uni_entrances(16) $ ((\uni_entrances[15]~29\))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[16]~31\ = CARRY(((!\uni_entrances[15]~29\) # (!uni_entrances(16))))
-- \uni_entrances[16]~31COUT1_114\ = CARRY(((!\uni_entrances[15]~29\) # (!uni_entrances(16))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => uni_entrances(16),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[15]~29\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(16),
	cout0 => \uni_entrances[16]~31\,
	cout1 => \uni_entrances[16]~31COUT1_114\);

-- Location: LC_X12_Y7_N4
\Add3~0\ : maxv_lcell
-- Equation(s):
-- \Add3~0_combout\ = uni_departures(0) $ ((uni_entrances(0)))
-- \Add3~2\ = CARRY(((uni_entrances(0))) # (!uni_departures(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "66dd",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(0),
	datab => uni_entrances(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~0_combout\,
	cout => \Add3~2\);

-- Location: LC_X12_Y7_N5
\Add3~5\ : maxv_lcell
-- Equation(s):
-- \Add3~5_combout\ = uni_entrances(1) $ (uni_departures(1) $ ((!\Add3~2\)))
-- \Add3~7\ = CARRY((uni_entrances(1) & (uni_departures(1) & !\Add3~2\)) # (!uni_entrances(1) & ((uni_departures(1)) # (!\Add3~2\))))
-- \Add3~7COUT1_186\ = CARRY((uni_entrances(1) & (uni_departures(1) & !\Add3~2\)) # (!uni_entrances(1) & ((uni_departures(1)) # (!\Add3~2\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(1),
	datab => uni_departures(1),
	cin => \Add3~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~5_combout\,
	cout0 => \Add3~7\,
	cout1 => \Add3~7COUT1_186\);

-- Location: LC_X12_Y7_N6
\Add3~10\ : maxv_lcell
-- Equation(s):
-- \Add3~10_combout\ = uni_entrances(2) $ (uni_departures(2) $ (((!\Add3~2\ & \Add3~7\) # (\Add3~2\ & \Add3~7COUT1_186\))))
-- \Add3~12\ = CARRY((uni_entrances(2) & ((!\Add3~7\) # (!uni_departures(2)))) # (!uni_entrances(2) & (!uni_departures(2) & !\Add3~7\)))
-- \Add3~12COUT1_188\ = CARRY((uni_entrances(2) & ((!\Add3~7COUT1_186\) # (!uni_departures(2)))) # (!uni_entrances(2) & (!uni_departures(2) & !\Add3~7COUT1_186\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(2),
	datab => uni_departures(2),
	cin => \Add3~2\,
	cin0 => \Add3~7\,
	cin1 => \Add3~7COUT1_186\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~10_combout\,
	cout0 => \Add3~12\,
	cout1 => \Add3~12COUT1_188\);

-- Location: LC_X12_Y7_N7
\Add3~15\ : maxv_lcell
-- Equation(s):
-- \Add3~15_combout\ = uni_entrances(3) $ (uni_departures(3) $ ((!(!\Add3~2\ & \Add3~12\) # (\Add3~2\ & \Add3~12COUT1_188\))))
-- \Add3~17\ = CARRY((uni_entrances(3) & (uni_departures(3) & !\Add3~12\)) # (!uni_entrances(3) & ((uni_departures(3)) # (!\Add3~12\))))
-- \Add3~17COUT1_190\ = CARRY((uni_entrances(3) & (uni_departures(3) & !\Add3~12COUT1_188\)) # (!uni_entrances(3) & ((uni_departures(3)) # (!\Add3~12COUT1_188\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(3),
	datab => uni_departures(3),
	cin => \Add3~2\,
	cin0 => \Add3~12\,
	cin1 => \Add3~12COUT1_188\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~15_combout\,
	cout0 => \Add3~17\,
	cout1 => \Add3~17COUT1_190\);

-- Location: LC_X12_Y7_N8
\Add3~20\ : maxv_lcell
-- Equation(s):
-- \Add3~20_combout\ = uni_departures(4) $ (uni_entrances(4) $ (((!\Add3~2\ & \Add3~17\) # (\Add3~2\ & \Add3~17COUT1_190\))))
-- \Add3~22\ = CARRY((uni_departures(4) & (uni_entrances(4) & !\Add3~17\)) # (!uni_departures(4) & ((uni_entrances(4)) # (!\Add3~17\))))
-- \Add3~22COUT1_192\ = CARRY((uni_departures(4) & (uni_entrances(4) & !\Add3~17COUT1_190\)) # (!uni_departures(4) & ((uni_entrances(4)) # (!\Add3~17COUT1_190\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(4),
	datab => uni_entrances(4),
	cin => \Add3~2\,
	cin0 => \Add3~17\,
	cin1 => \Add3~17COUT1_190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~20_combout\,
	cout0 => \Add3~22\,
	cout1 => \Add3~22COUT1_192\);

-- Location: LC_X12_Y7_N9
\Add3~25\ : maxv_lcell
-- Equation(s):
-- \Add3~25_combout\ = uni_entrances(5) $ (uni_departures(5) $ ((!(!\Add3~2\ & \Add3~22\) # (\Add3~2\ & \Add3~22COUT1_192\))))
-- \Add3~27\ = CARRY((uni_entrances(5) & (uni_departures(5) & !\Add3~22COUT1_192\)) # (!uni_entrances(5) & ((uni_departures(5)) # (!\Add3~22COUT1_192\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(5),
	datab => uni_departures(5),
	cin => \Add3~2\,
	cin0 => \Add3~22\,
	cin1 => \Add3~22COUT1_192\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~25_combout\,
	cout => \Add3~27\);

-- Location: LC_X13_Y7_N0
\Add3~30\ : maxv_lcell
-- Equation(s):
-- \Add3~30_combout\ = uni_entrances(6) $ (uni_departures(6) $ ((\Add3~27\)))
-- \Add3~32\ = CARRY((uni_entrances(6) & ((!\Add3~27\) # (!uni_departures(6)))) # (!uni_entrances(6) & (!uni_departures(6) & !\Add3~27\)))
-- \Add3~32COUT1_194\ = CARRY((uni_entrances(6) & ((!\Add3~27\) # (!uni_departures(6)))) # (!uni_entrances(6) & (!uni_departures(6) & !\Add3~27\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(6),
	datab => uni_departures(6),
	cin => \Add3~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~30_combout\,
	cout0 => \Add3~32\,
	cout1 => \Add3~32COUT1_194\);

-- Location: LC_X13_Y7_N1
\Add3~35\ : maxv_lcell
-- Equation(s):
-- \Add3~35_combout\ = uni_entrances(7) $ (uni_departures(7) $ ((!(!\Add3~27\ & \Add3~32\) # (\Add3~27\ & \Add3~32COUT1_194\))))
-- \Add3~37\ = CARRY((uni_entrances(7) & (uni_departures(7) & !\Add3~32\)) # (!uni_entrances(7) & ((uni_departures(7)) # (!\Add3~32\))))
-- \Add3~37COUT1_196\ = CARRY((uni_entrances(7) & (uni_departures(7) & !\Add3~32COUT1_194\)) # (!uni_entrances(7) & ((uni_departures(7)) # (!\Add3~32COUT1_194\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(7),
	datab => uni_departures(7),
	cin => \Add3~27\,
	cin0 => \Add3~32\,
	cin1 => \Add3~32COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~35_combout\,
	cout0 => \Add3~37\,
	cout1 => \Add3~37COUT1_196\);

-- Location: LC_X13_Y7_N2
\Add3~40\ : maxv_lcell
-- Equation(s):
-- \Add3~40_combout\ = uni_entrances(8) $ (uni_departures(8) $ (((!\Add3~27\ & \Add3~37\) # (\Add3~27\ & \Add3~37COUT1_196\))))
-- \Add3~42\ = CARRY((uni_entrances(8) & ((!\Add3~37\) # (!uni_departures(8)))) # (!uni_entrances(8) & (!uni_departures(8) & !\Add3~37\)))
-- \Add3~42COUT1_198\ = CARRY((uni_entrances(8) & ((!\Add3~37COUT1_196\) # (!uni_departures(8)))) # (!uni_entrances(8) & (!uni_departures(8) & !\Add3~37COUT1_196\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(8),
	datab => uni_departures(8),
	cin => \Add3~27\,
	cin0 => \Add3~37\,
	cin1 => \Add3~37COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~40_combout\,
	cout0 => \Add3~42\,
	cout1 => \Add3~42COUT1_198\);

-- Location: LC_X13_Y7_N3
\Add3~45\ : maxv_lcell
-- Equation(s):
-- \Add3~45_combout\ = uni_departures(9) $ (uni_entrances(9) $ ((!(!\Add3~27\ & \Add3~42\) # (\Add3~27\ & \Add3~42COUT1_198\))))
-- \Add3~47\ = CARRY((uni_departures(9) & ((!\Add3~42\) # (!uni_entrances(9)))) # (!uni_departures(9) & (!uni_entrances(9) & !\Add3~42\)))
-- \Add3~47COUT1_200\ = CARRY((uni_departures(9) & ((!\Add3~42COUT1_198\) # (!uni_entrances(9)))) # (!uni_departures(9) & (!uni_entrances(9) & !\Add3~42COUT1_198\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(9),
	datab => uni_entrances(9),
	cin => \Add3~27\,
	cin0 => \Add3~42\,
	cin1 => \Add3~42COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~45_combout\,
	cout0 => \Add3~47\,
	cout1 => \Add3~47COUT1_200\);

-- Location: LC_X13_Y7_N4
\Add3~50\ : maxv_lcell
-- Equation(s):
-- \Add3~50_combout\ = uni_departures(10) $ (uni_entrances(10) $ (((!\Add3~27\ & \Add3~47\) # (\Add3~27\ & \Add3~47COUT1_200\))))
-- \Add3~52\ = CARRY((uni_departures(10) & (uni_entrances(10) & !\Add3~47COUT1_200\)) # (!uni_departures(10) & ((uni_entrances(10)) # (!\Add3~47COUT1_200\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(10),
	datab => uni_entrances(10),
	cin => \Add3~27\,
	cin0 => \Add3~47\,
	cin1 => \Add3~47COUT1_200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~50_combout\,
	cout => \Add3~52\);

-- Location: LC_X13_Y7_N5
\Add3~55\ : maxv_lcell
-- Equation(s):
-- \Add3~55_combout\ = uni_departures(11) $ (uni_entrances(11) $ ((!\Add3~52\)))
-- \Add3~57\ = CARRY((uni_departures(11) & ((!\Add3~52\) # (!uni_entrances(11)))) # (!uni_departures(11) & (!uni_entrances(11) & !\Add3~52\)))
-- \Add3~57COUT1_202\ = CARRY((uni_departures(11) & ((!\Add3~52\) # (!uni_entrances(11)))) # (!uni_departures(11) & (!uni_entrances(11) & !\Add3~52\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(11),
	datab => uni_entrances(11),
	cin => \Add3~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~55_combout\,
	cout0 => \Add3~57\,
	cout1 => \Add3~57COUT1_202\);

-- Location: LC_X13_Y7_N6
\Add3~60\ : maxv_lcell
-- Equation(s):
-- \Add3~60_combout\ = uni_entrances(12) $ (uni_departures(12) $ (((!\Add3~52\ & \Add3~57\) # (\Add3~52\ & \Add3~57COUT1_202\))))
-- \Add3~62\ = CARRY((uni_entrances(12) & ((!\Add3~57\) # (!uni_departures(12)))) # (!uni_entrances(12) & (!uni_departures(12) & !\Add3~57\)))
-- \Add3~62COUT1_204\ = CARRY((uni_entrances(12) & ((!\Add3~57COUT1_202\) # (!uni_departures(12)))) # (!uni_entrances(12) & (!uni_departures(12) & !\Add3~57COUT1_202\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(12),
	datab => uni_departures(12),
	cin => \Add3~52\,
	cin0 => \Add3~57\,
	cin1 => \Add3~57COUT1_202\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~60_combout\,
	cout0 => \Add3~62\,
	cout1 => \Add3~62COUT1_204\);

-- Location: LC_X13_Y7_N7
\Add3~65\ : maxv_lcell
-- Equation(s):
-- \Add3~65_combout\ = uni_entrances(13) $ (uni_departures(13) $ ((!(!\Add3~52\ & \Add3~62\) # (\Add3~52\ & \Add3~62COUT1_204\))))
-- \Add3~67\ = CARRY((uni_entrances(13) & (uni_departures(13) & !\Add3~62\)) # (!uni_entrances(13) & ((uni_departures(13)) # (!\Add3~62\))))
-- \Add3~67COUT1_206\ = CARRY((uni_entrances(13) & (uni_departures(13) & !\Add3~62COUT1_204\)) # (!uni_entrances(13) & ((uni_departures(13)) # (!\Add3~62COUT1_204\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(13),
	datab => uni_departures(13),
	cin => \Add3~52\,
	cin0 => \Add3~62\,
	cin1 => \Add3~62COUT1_204\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~65_combout\,
	cout0 => \Add3~67\,
	cout1 => \Add3~67COUT1_206\);

-- Location: LC_X13_Y7_N8
\Add3~70\ : maxv_lcell
-- Equation(s):
-- \Add3~70_combout\ = uni_entrances(14) $ (uni_departures(14) $ (((!\Add3~52\ & \Add3~67\) # (\Add3~52\ & \Add3~67COUT1_206\))))
-- \Add3~72\ = CARRY((uni_entrances(14) & ((!\Add3~67\) # (!uni_departures(14)))) # (!uni_entrances(14) & (!uni_departures(14) & !\Add3~67\)))
-- \Add3~72COUT1_208\ = CARRY((uni_entrances(14) & ((!\Add3~67COUT1_206\) # (!uni_departures(14)))) # (!uni_entrances(14) & (!uni_departures(14) & !\Add3~67COUT1_206\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(14),
	datab => uni_departures(14),
	cin => \Add3~52\,
	cin0 => \Add3~67\,
	cin1 => \Add3~67COUT1_206\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~70_combout\,
	cout0 => \Add3~72\,
	cout1 => \Add3~72COUT1_208\);

-- Location: LC_X13_Y7_N9
\Add3~75\ : maxv_lcell
-- Equation(s):
-- \Add3~75_combout\ = uni_entrances(15) $ (uni_departures(15) $ ((!(!\Add3~52\ & \Add3~72\) # (\Add3~52\ & \Add3~72COUT1_208\))))
-- \Add3~77\ = CARRY((uni_entrances(15) & (uni_departures(15) & !\Add3~72COUT1_208\)) # (!uni_entrances(15) & ((uni_departures(15)) # (!\Add3~72COUT1_208\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(15),
	datab => uni_departures(15),
	cin => \Add3~52\,
	cin0 => \Add3~72\,
	cin1 => \Add3~72COUT1_208\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~75_combout\,
	cout => \Add3~77\);

-- Location: LC_X14_Y7_N0
\Add3~80\ : maxv_lcell
-- Equation(s):
-- \Add3~80_combout\ = uni_departures(16) $ (uni_entrances(16) $ ((\Add3~77\)))
-- \Add3~82\ = CARRY((uni_departures(16) & (uni_entrances(16) & !\Add3~77\)) # (!uni_departures(16) & ((uni_entrances(16)) # (!\Add3~77\))))
-- \Add3~82COUT1_210\ = CARRY((uni_departures(16) & (uni_entrances(16) & !\Add3~77\)) # (!uni_departures(16) & ((uni_entrances(16)) # (!\Add3~77\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(16),
	datab => uni_entrances(16),
	cin => \Add3~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~80_combout\,
	cout0 => \Add3~82\,
	cout1 => \Add3~82COUT1_210\);

-- Location: LC_X8_Y7_N4
\Add4~0\ : maxv_lcell
-- Equation(s):
-- \Add4~0_combout\ = \Add2~0_combout\ $ ((\Add3~0_combout\))
-- \Add4~2\ = CARRY((!\Add2~0_combout\ & (!\Add3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6611",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~0_combout\,
	datab => \Add3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~0_combout\,
	cout => \Add4~2\);

-- Location: LC_X8_Y7_N5
\Add4~5\ : maxv_lcell
-- Equation(s):
-- \Add4~5_combout\ = \Add2~5_combout\ $ (\Add3~5_combout\ $ ((\Add4~2\)))
-- \Add4~7\ = CARRY((\Add2~5_combout\ & ((\Add3~5_combout\) # (!\Add4~2\))) # (!\Add2~5_combout\ & (\Add3~5_combout\ & !\Add4~2\)))
-- \Add4~7COUT1_186\ = CARRY((\Add2~5_combout\ & ((\Add3~5_combout\) # (!\Add4~2\))) # (!\Add2~5_combout\ & (\Add3~5_combout\ & !\Add4~2\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "968e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~5_combout\,
	datab => \Add3~5_combout\,
	cin => \Add4~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~5_combout\,
	cout0 => \Add4~7\,
	cout1 => \Add4~7COUT1_186\);

-- Location: LC_X8_Y7_N6
\Add4~10\ : maxv_lcell
-- Equation(s):
-- \Add4~10_combout\ = \Add2~10_combout\ $ (\Add3~10_combout\ $ ((!(!\Add4~2\ & \Add4~7\) # (\Add4~2\ & \Add4~7COUT1_186\))))
-- \Add4~12\ = CARRY((\Add2~10_combout\ & (!\Add3~10_combout\ & !\Add4~7\)) # (!\Add2~10_combout\ & ((!\Add4~7\) # (!\Add3~10_combout\))))
-- \Add4~12COUT1_188\ = CARRY((\Add2~10_combout\ & (!\Add3~10_combout\ & !\Add4~7COUT1_186\)) # (!\Add2~10_combout\ & ((!\Add4~7COUT1_186\) # (!\Add3~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "6917",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \Add3~10_combout\,
	cin => \Add4~2\,
	cin0 => \Add4~7\,
	cin1 => \Add4~7COUT1_186\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~10_combout\,
	cout0 => \Add4~12\,
	cout1 => \Add4~12COUT1_188\);

-- Location: LC_X8_Y7_N7
\Add4~15\ : maxv_lcell
-- Equation(s):
-- \Add4~15_combout\ = \Add2~15_combout\ $ (\Add3~15_combout\ $ (((!\Add4~2\ & \Add4~12\) # (\Add4~2\ & \Add4~12COUT1_188\))))
-- \Add4~17\ = CARRY((\Add2~15_combout\ & ((\Add3~15_combout\) # (!\Add4~12\))) # (!\Add2~15_combout\ & (\Add3~15_combout\ & !\Add4~12\)))
-- \Add4~17COUT1_190\ = CARRY((\Add2~15_combout\ & ((\Add3~15_combout\) # (!\Add4~12COUT1_188\))) # (!\Add2~15_combout\ & (\Add3~15_combout\ & !\Add4~12COUT1_188\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "968e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~15_combout\,
	datab => \Add3~15_combout\,
	cin => \Add4~2\,
	cin0 => \Add4~12\,
	cin1 => \Add4~12COUT1_188\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~15_combout\,
	cout0 => \Add4~17\,
	cout1 => \Add4~17COUT1_190\);

-- Location: LC_X8_Y7_N8
\Add4~20\ : maxv_lcell
-- Equation(s):
-- \Add4~20_combout\ = \Add2~20_combout\ $ (\Add3~20_combout\ $ ((!(!\Add4~2\ & \Add4~17\) # (\Add4~2\ & \Add4~17COUT1_190\))))
-- \Add4~22\ = CARRY((\Add2~20_combout\ & (!\Add3~20_combout\ & !\Add4~17\)) # (!\Add2~20_combout\ & ((!\Add4~17\) # (!\Add3~20_combout\))))
-- \Add4~22COUT1_192\ = CARRY((\Add2~20_combout\ & (!\Add3~20_combout\ & !\Add4~17COUT1_190\)) # (!\Add2~20_combout\ & ((!\Add4~17COUT1_190\) # (!\Add3~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "6917",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~20_combout\,
	datab => \Add3~20_combout\,
	cin => \Add4~2\,
	cin0 => \Add4~17\,
	cin1 => \Add4~17COUT1_190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~20_combout\,
	cout0 => \Add4~22\,
	cout1 => \Add4~22COUT1_192\);

-- Location: LC_X8_Y7_N9
\Add4~25\ : maxv_lcell
-- Equation(s):
-- \Add4~25_combout\ = \Add3~25_combout\ $ (\Add2~25_combout\ $ (((!\Add4~2\ & \Add4~22\) # (\Add4~2\ & \Add4~22COUT1_192\))))
-- \Add4~27\ = CARRY((\Add3~25_combout\ & ((\Add2~25_combout\) # (!\Add4~22COUT1_192\))) # (!\Add3~25_combout\ & (\Add2~25_combout\ & !\Add4~22COUT1_192\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "968e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~25_combout\,
	datab => \Add2~25_combout\,
	cin => \Add4~2\,
	cin0 => \Add4~22\,
	cin1 => \Add4~22COUT1_192\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~25_combout\,
	cout => \Add4~27\);

-- Location: LC_X9_Y7_N0
\Add4~30\ : maxv_lcell
-- Equation(s):
-- \Add4~30_combout\ = \Add2~30_combout\ $ (\Add3~30_combout\ $ ((!\Add4~27\)))
-- \Add4~32\ = CARRY((\Add2~30_combout\ & (!\Add3~30_combout\ & !\Add4~27\)) # (!\Add2~30_combout\ & ((!\Add4~27\) # (!\Add3~30_combout\))))
-- \Add4~32COUT1_194\ = CARRY((\Add2~30_combout\ & (!\Add3~30_combout\ & !\Add4~27\)) # (!\Add2~30_combout\ & ((!\Add4~27\) # (!\Add3~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "6917",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~30_combout\,
	datab => \Add3~30_combout\,
	cin => \Add4~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~30_combout\,
	cout0 => \Add4~32\,
	cout1 => \Add4~32COUT1_194\);

-- Location: LC_X9_Y7_N1
\Add4~35\ : maxv_lcell
-- Equation(s):
-- \Add4~35_combout\ = \Add3~35_combout\ $ (\Add2~35_combout\ $ (((!\Add4~27\ & \Add4~32\) # (\Add4~27\ & \Add4~32COUT1_194\))))
-- \Add4~37\ = CARRY((\Add3~35_combout\ & ((\Add2~35_combout\) # (!\Add4~32\))) # (!\Add3~35_combout\ & (\Add2~35_combout\ & !\Add4~32\)))
-- \Add4~37COUT1_196\ = CARRY((\Add3~35_combout\ & ((\Add2~35_combout\) # (!\Add4~32COUT1_194\))) # (!\Add3~35_combout\ & (\Add2~35_combout\ & !\Add4~32COUT1_194\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "968e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~35_combout\,
	datab => \Add2~35_combout\,
	cin => \Add4~27\,
	cin0 => \Add4~32\,
	cin1 => \Add4~32COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~35_combout\,
	cout0 => \Add4~37\,
	cout1 => \Add4~37COUT1_196\);

-- Location: LC_X9_Y7_N2
\Add4~40\ : maxv_lcell
-- Equation(s):
-- \Add4~40_combout\ = \Add3~40_combout\ $ (\Add2~40_combout\ $ ((!(!\Add4~27\ & \Add4~37\) # (\Add4~27\ & \Add4~37COUT1_196\))))
-- \Add4~42\ = CARRY((\Add3~40_combout\ & (!\Add2~40_combout\ & !\Add4~37\)) # (!\Add3~40_combout\ & ((!\Add4~37\) # (!\Add2~40_combout\))))
-- \Add4~42COUT1_198\ = CARRY((\Add3~40_combout\ & (!\Add2~40_combout\ & !\Add4~37COUT1_196\)) # (!\Add3~40_combout\ & ((!\Add4~37COUT1_196\) # (!\Add2~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "6917",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~40_combout\,
	datab => \Add2~40_combout\,
	cin => \Add4~27\,
	cin0 => \Add4~37\,
	cin1 => \Add4~37COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~40_combout\,
	cout0 => \Add4~42\,
	cout1 => \Add4~42COUT1_198\);

-- Location: LC_X9_Y7_N3
\Add4~45\ : maxv_lcell
-- Equation(s):
-- \Add4~45_combout\ = \Add3~45_combout\ $ (\Add2~45_combout\ $ (((!\Add4~27\ & \Add4~42\) # (\Add4~27\ & \Add4~42COUT1_198\))))
-- \Add4~47\ = CARRY((\Add3~45_combout\ & ((\Add2~45_combout\) # (!\Add4~42\))) # (!\Add3~45_combout\ & (\Add2~45_combout\ & !\Add4~42\)))
-- \Add4~47COUT1_200\ = CARRY((\Add3~45_combout\ & ((\Add2~45_combout\) # (!\Add4~42COUT1_198\))) # (!\Add3~45_combout\ & (\Add2~45_combout\ & !\Add4~42COUT1_198\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "968e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~45_combout\,
	datab => \Add2~45_combout\,
	cin => \Add4~27\,
	cin0 => \Add4~42\,
	cin1 => \Add4~42COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~45_combout\,
	cout0 => \Add4~47\,
	cout1 => \Add4~47COUT1_200\);

-- Location: LC_X9_Y7_N4
\Add4~50\ : maxv_lcell
-- Equation(s):
-- \Add4~50_combout\ = \Add3~50_combout\ $ (\Add2~50_combout\ $ ((!(!\Add4~27\ & \Add4~47\) # (\Add4~27\ & \Add4~47COUT1_200\))))
-- \Add4~52\ = CARRY((\Add3~50_combout\ & (!\Add2~50_combout\ & !\Add4~47COUT1_200\)) # (!\Add3~50_combout\ & ((!\Add4~47COUT1_200\) # (!\Add2~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "6917",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~50_combout\,
	datab => \Add2~50_combout\,
	cin => \Add4~27\,
	cin0 => \Add4~47\,
	cin1 => \Add4~47COUT1_200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~50_combout\,
	cout => \Add4~52\);

-- Location: LC_X9_Y7_N5
\Add4~55\ : maxv_lcell
-- Equation(s):
-- \Add4~55_combout\ = \Add3~55_combout\ $ (\Add2~55_combout\ $ ((\Add4~52\)))
-- \Add4~57\ = CARRY((\Add3~55_combout\ & ((\Add2~55_combout\) # (!\Add4~52\))) # (!\Add3~55_combout\ & (\Add2~55_combout\ & !\Add4~52\)))
-- \Add4~57COUT1_202\ = CARRY((\Add3~55_combout\ & ((\Add2~55_combout\) # (!\Add4~52\))) # (!\Add3~55_combout\ & (\Add2~55_combout\ & !\Add4~52\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "968e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~55_combout\,
	datab => \Add2~55_combout\,
	cin => \Add4~52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~55_combout\,
	cout0 => \Add4~57\,
	cout1 => \Add4~57COUT1_202\);

-- Location: LC_X9_Y7_N6
\Add4~60\ : maxv_lcell
-- Equation(s):
-- \Add4~60_combout\ = \Add3~60_combout\ $ (\Add2~60_combout\ $ ((!(!\Add4~52\ & \Add4~57\) # (\Add4~52\ & \Add4~57COUT1_202\))))
-- \Add4~62\ = CARRY((\Add3~60_combout\ & (!\Add2~60_combout\ & !\Add4~57\)) # (!\Add3~60_combout\ & ((!\Add4~57\) # (!\Add2~60_combout\))))
-- \Add4~62COUT1_204\ = CARRY((\Add3~60_combout\ & (!\Add2~60_combout\ & !\Add4~57COUT1_202\)) # (!\Add3~60_combout\ & ((!\Add4~57COUT1_202\) # (!\Add2~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "6917",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~60_combout\,
	datab => \Add2~60_combout\,
	cin => \Add4~52\,
	cin0 => \Add4~57\,
	cin1 => \Add4~57COUT1_202\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~60_combout\,
	cout0 => \Add4~62\,
	cout1 => \Add4~62COUT1_204\);

-- Location: LC_X9_Y7_N7
\Add4~65\ : maxv_lcell
-- Equation(s):
-- \Add4~65_combout\ = \Add2~65_combout\ $ (\Add3~65_combout\ $ (((!\Add4~52\ & \Add4~62\) # (\Add4~52\ & \Add4~62COUT1_204\))))
-- \Add4~67\ = CARRY((\Add2~65_combout\ & ((\Add3~65_combout\) # (!\Add4~62\))) # (!\Add2~65_combout\ & (\Add3~65_combout\ & !\Add4~62\)))
-- \Add4~67COUT1_206\ = CARRY((\Add2~65_combout\ & ((\Add3~65_combout\) # (!\Add4~62COUT1_204\))) # (!\Add2~65_combout\ & (\Add3~65_combout\ & !\Add4~62COUT1_204\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "968e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~65_combout\,
	datab => \Add3~65_combout\,
	cin => \Add4~52\,
	cin0 => \Add4~62\,
	cin1 => \Add4~62COUT1_204\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~65_combout\,
	cout0 => \Add4~67\,
	cout1 => \Add4~67COUT1_206\);

-- Location: LC_X9_Y7_N8
\Add4~70\ : maxv_lcell
-- Equation(s):
-- \Add4~70_combout\ = \Add3~70_combout\ $ (\Add2~70_combout\ $ ((!(!\Add4~52\ & \Add4~67\) # (\Add4~52\ & \Add4~67COUT1_206\))))
-- \Add4~72\ = CARRY((\Add3~70_combout\ & (!\Add2~70_combout\ & !\Add4~67\)) # (!\Add3~70_combout\ & ((!\Add4~67\) # (!\Add2~70_combout\))))
-- \Add4~72COUT1_208\ = CARRY((\Add3~70_combout\ & (!\Add2~70_combout\ & !\Add4~67COUT1_206\)) # (!\Add3~70_combout\ & ((!\Add4~67COUT1_206\) # (!\Add2~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "6917",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~70_combout\,
	datab => \Add2~70_combout\,
	cin => \Add4~52\,
	cin0 => \Add4~67\,
	cin1 => \Add4~67COUT1_206\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~70_combout\,
	cout0 => \Add4~72\,
	cout1 => \Add4~72COUT1_208\);

-- Location: LC_X9_Y7_N9
\Add4~75\ : maxv_lcell
-- Equation(s):
-- \Add4~75_combout\ = \Add2~75_combout\ $ (\Add3~75_combout\ $ (((!\Add4~52\ & \Add4~72\) # (\Add4~52\ & \Add4~72COUT1_208\))))
-- \Add4~77\ = CARRY((\Add2~75_combout\ & ((\Add3~75_combout\) # (!\Add4~72COUT1_208\))) # (!\Add2~75_combout\ & (\Add3~75_combout\ & !\Add4~72COUT1_208\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "968e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~75_combout\,
	datab => \Add3~75_combout\,
	cin => \Add4~52\,
	cin0 => \Add4~72\,
	cin1 => \Add4~72COUT1_208\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~75_combout\,
	cout => \Add4~77\);

-- Location: LC_X10_Y7_N0
\Add4~80\ : maxv_lcell
-- Equation(s):
-- \Add4~80_combout\ = \Add3~80_combout\ $ (\Add2~80_combout\ $ ((!\Add4~77\)))
-- \Add4~82\ = CARRY((\Add3~80_combout\ & (!\Add2~80_combout\ & !\Add4~77\)) # (!\Add3~80_combout\ & ((!\Add4~77\) # (!\Add2~80_combout\))))
-- \Add4~82COUT1_210\ = CARRY((\Add3~80_combout\ & (!\Add2~80_combout\ & !\Add4~77\)) # (!\Add3~80_combout\ & ((!\Add4~77\) # (!\Add2~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "6917",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~80_combout\,
	datab => \Add2~80_combout\,
	cin => \Add4~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~80_combout\,
	cout0 => \Add4~82\,
	cout1 => \Add4~82COUT1_210\);

-- Location: LC_X8_Y6_N5
\Add5~0\ : maxv_lcell
-- Equation(s):
-- \Add5~0_combout\ = ((!\Add4~5_combout\))
-- \Add5~2\ = CARRY(((\Add4~5_combout\)))
-- \Add5~2COUT1_181\ = CARRY(((\Add4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add4~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~0_combout\,
	cout0 => \Add5~2\,
	cout1 => \Add5~2COUT1_181\);

-- Location: LC_X8_Y6_N6
\Add5~5\ : maxv_lcell
-- Equation(s):
-- \Add5~5_combout\ = (\Add4~10_combout\ $ ((!\Add5~2\)))
-- \Add5~7\ = CARRY(((!\Add4~10_combout\ & !\Add5~2\)))
-- \Add5~7COUT1_183\ = CARRY(((!\Add4~10_combout\ & !\Add5~2COUT1_181\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add4~10_combout\,
	cin0 => \Add5~2\,
	cin1 => \Add5~2COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~5_combout\,
	cout0 => \Add5~7\,
	cout1 => \Add5~7COUT1_183\);

-- Location: LC_X8_Y6_N7
\Add5~10\ : maxv_lcell
-- Equation(s):
-- \Add5~10_combout\ = (\Add4~15_combout\ $ ((\Add5~7\)))
-- \Add5~12\ = CARRY(((\Add4~15_combout\) # (!\Add5~7\)))
-- \Add5~12COUT1_185\ = CARRY(((\Add4~15_combout\) # (!\Add5~7COUT1_183\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add4~15_combout\,
	cin0 => \Add5~7\,
	cin1 => \Add5~7COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~10_combout\,
	cout0 => \Add5~12\,
	cout1 => \Add5~12COUT1_185\);

-- Location: LC_X8_Y6_N8
\Add5~15\ : maxv_lcell
-- Equation(s):
-- \Add5~15_combout\ = (\Add4~20_combout\ $ ((!\Add5~12\)))
-- \Add5~17\ = CARRY(((!\Add4~20_combout\ & !\Add5~12\)))
-- \Add5~17COUT1_187\ = CARRY(((!\Add4~20_combout\ & !\Add5~12COUT1_185\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add4~20_combout\,
	cin0 => \Add5~12\,
	cin1 => \Add5~12COUT1_185\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~15_combout\,
	cout0 => \Add5~17\,
	cout1 => \Add5~17COUT1_187\);

-- Location: LC_X8_Y6_N9
\Add5~20\ : maxv_lcell
-- Equation(s):
-- \Add5~20_combout\ = (\Add4~25_combout\ $ ((\Add5~17\)))
-- \Add5~22\ = CARRY(((\Add4~25_combout\) # (!\Add5~17COUT1_187\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add4~25_combout\,
	cin0 => \Add5~17\,
	cin1 => \Add5~17COUT1_187\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~20_combout\,
	cout => \Add5~22\);

-- Location: LC_X9_Y6_N0
\Add5~25\ : maxv_lcell
-- Equation(s):
-- \Add5~25_combout\ = \Add4~30_combout\ $ ((((\Add5~22\))))
-- \Add5~27\ = CARRY(((!\Add5~22\)) # (!\Add4~30_combout\))
-- \Add5~27COUT1_189\ = CARRY(((!\Add5~22\)) # (!\Add4~30_combout\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~30_combout\,
	cin => \Add5~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~25_combout\,
	cout0 => \Add5~27\,
	cout1 => \Add5~27COUT1_189\);

-- Location: LC_X9_Y6_N1
\Add5~30\ : maxv_lcell
-- Equation(s):
-- \Add5~30_combout\ = (\Add4~35_combout\ $ (((!\Add5~22\ & \Add5~27\) # (\Add5~22\ & \Add5~27COUT1_189\))))
-- \Add5~32\ = CARRY(((\Add4~35_combout\) # (!\Add5~27\)))
-- \Add5~32COUT1_191\ = CARRY(((\Add4~35_combout\) # (!\Add5~27COUT1_189\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add4~35_combout\,
	cin => \Add5~22\,
	cin0 => \Add5~27\,
	cin1 => \Add5~27COUT1_189\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~30_combout\,
	cout0 => \Add5~32\,
	cout1 => \Add5~32COUT1_191\);

-- Location: LC_X9_Y6_N2
\Add5~35\ : maxv_lcell
-- Equation(s):
-- \Add5~35_combout\ = (\Add4~40_combout\ $ (((!\Add5~22\ & \Add5~32\) # (\Add5~22\ & \Add5~32COUT1_191\))))
-- \Add5~37\ = CARRY(((!\Add5~32\) # (!\Add4~40_combout\)))
-- \Add5~37COUT1_193\ = CARRY(((!\Add5~32COUT1_191\) # (!\Add4~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add4~40_combout\,
	cin => \Add5~22\,
	cin0 => \Add5~32\,
	cin1 => \Add5~32COUT1_191\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~35_combout\,
	cout0 => \Add5~37\,
	cout1 => \Add5~37COUT1_193\);

-- Location: LC_X9_Y6_N3
\Add5~40\ : maxv_lcell
-- Equation(s):
-- \Add5~40_combout\ = \Add4~45_combout\ $ (((((!\Add5~22\ & \Add5~37\) # (\Add5~22\ & \Add5~37COUT1_193\)))))
-- \Add5~42\ = CARRY((\Add4~45_combout\) # ((!\Add5~37\)))
-- \Add5~42COUT1_195\ = CARRY((\Add4~45_combout\) # ((!\Add5~37COUT1_193\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5aaf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~45_combout\,
	cin => \Add5~22\,
	cin0 => \Add5~37\,
	cin1 => \Add5~37COUT1_193\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~40_combout\,
	cout0 => \Add5~42\,
	cout1 => \Add5~42COUT1_195\);

-- Location: LC_X9_Y6_N4
\Add5~45\ : maxv_lcell
-- Equation(s):
-- \Add5~45_combout\ = (\Add4~50_combout\ $ (((!\Add5~22\ & \Add5~42\) # (\Add5~22\ & \Add5~42COUT1_195\))))
-- \Add5~47\ = CARRY(((!\Add5~42COUT1_195\) # (!\Add4~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add4~50_combout\,
	cin => \Add5~22\,
	cin0 => \Add5~42\,
	cin1 => \Add5~42COUT1_195\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~45_combout\,
	cout => \Add5~47\);

-- Location: LC_X9_Y6_N5
\Add5~50\ : maxv_lcell
-- Equation(s):
-- \Add5~50_combout\ = \Add4~55_combout\ $ ((((!\Add5~47\))))
-- \Add5~52\ = CARRY((\Add4~55_combout\ & ((!\Add5~47\))))
-- \Add5~52COUT1_197\ = CARRY((\Add4~55_combout\ & ((!\Add5~47\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~55_combout\,
	cin => \Add5~47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~50_combout\,
	cout0 => \Add5~52\,
	cout1 => \Add5~52COUT1_197\);

-- Location: LC_X9_Y6_N6
\Add5~55\ : maxv_lcell
-- Equation(s):
-- \Add5~55_combout\ = (\Add4~60_combout\ $ (((!\Add5~47\ & \Add5~52\) # (\Add5~47\ & \Add5~52COUT1_197\))))
-- \Add5~57\ = CARRY(((!\Add5~52\) # (!\Add4~60_combout\)))
-- \Add5~57COUT1_199\ = CARRY(((!\Add5~52COUT1_197\) # (!\Add4~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add4~60_combout\,
	cin => \Add5~47\,
	cin0 => \Add5~52\,
	cin1 => \Add5~52COUT1_197\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~55_combout\,
	cout0 => \Add5~57\,
	cout1 => \Add5~57COUT1_199\);

-- Location: LC_X9_Y6_N7
\Add5~60\ : maxv_lcell
-- Equation(s):
-- \Add5~60_combout\ = \Add4~65_combout\ $ ((((!(!\Add5~47\ & \Add5~57\) # (\Add5~47\ & \Add5~57COUT1_199\)))))
-- \Add5~62\ = CARRY((\Add4~65_combout\ & ((!\Add5~57\))))
-- \Add5~62COUT1_201\ = CARRY((\Add4~65_combout\ & ((!\Add5~57COUT1_199\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~65_combout\,
	cin => \Add5~47\,
	cin0 => \Add5~57\,
	cin1 => \Add5~57COUT1_199\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~60_combout\,
	cout0 => \Add5~62\,
	cout1 => \Add5~62COUT1_201\);

-- Location: LC_X9_Y6_N8
\Add5~65\ : maxv_lcell
-- Equation(s):
-- \Add5~65_combout\ = (\Add4~70_combout\ $ (((!\Add5~47\ & \Add5~62\) # (\Add5~47\ & \Add5~62COUT1_201\))))
-- \Add5~67\ = CARRY(((!\Add5~62\) # (!\Add4~70_combout\)))
-- \Add5~67COUT1_203\ = CARRY(((!\Add5~62COUT1_201\) # (!\Add4~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add4~70_combout\,
	cin => \Add5~47\,
	cin0 => \Add5~62\,
	cin1 => \Add5~62COUT1_201\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~65_combout\,
	cout0 => \Add5~67\,
	cout1 => \Add5~67COUT1_203\);

-- Location: LC_X9_Y6_N9
\Add5~70\ : maxv_lcell
-- Equation(s):
-- \Add5~70_combout\ = (\Add4~75_combout\ $ ((!(!\Add5~47\ & \Add5~67\) # (\Add5~47\ & \Add5~67COUT1_203\))))
-- \Add5~72\ = CARRY(((\Add4~75_combout\ & !\Add5~67COUT1_203\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add4~75_combout\,
	cin => \Add5~47\,
	cin0 => \Add5~67\,
	cin1 => \Add5~67COUT1_203\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~70_combout\,
	cout => \Add5~72\);

-- Location: LC_X10_Y6_N0
\Add5~75\ : maxv_lcell
-- Equation(s):
-- \Add5~75_combout\ = \Add4~80_combout\ $ ((((\Add5~72\))))
-- \Add5~77\ = CARRY(((!\Add5~72\)) # (!\Add4~80_combout\))
-- \Add5~77COUT1_205\ = CARRY(((!\Add5~72\)) # (!\Add4~80_combout\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~80_combout\,
	cin => \Add5~72\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~75_combout\,
	cout0 => \Add5~77\,
	cout1 => \Add5~77COUT1_205\);

-- Location: LC_X15_Y9_N1
\uni_departures[17]\ : maxv_lcell
-- Equation(s):
-- uni_departures(17) = DFFEAS((uni_departures(17) $ ((!(!\uni_departures[15]~29\ & \uni_departures[16]~31\) # (\uni_departures[15]~29\ & \uni_departures[16]~31COUT1_114\)))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[17]~33\ = CARRY(((uni_departures(17) & !\uni_departures[16]~31\)))
-- \uni_departures[17]~33COUT1_116\ = CARRY(((uni_departures(17) & !\uni_departures[16]~31COUT1_114\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => uni_departures(17),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[15]~29\,
	cin0 => \uni_departures[16]~31\,
	cin1 => \uni_departures[16]~31COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(17),
	cout0 => \uni_departures[17]~33\,
	cout1 => \uni_departures[17]~33COUT1_116\);

-- Location: LC_X15_Y9_N2
\uni_departures[18]\ : maxv_lcell
-- Equation(s):
-- uni_departures(18) = DFFEAS((uni_departures(18) $ (((!\uni_departures[15]~29\ & \uni_departures[17]~33\) # (\uni_departures[15]~29\ & \uni_departures[17]~33COUT1_116\)))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[18]~35\ = CARRY(((!\uni_departures[17]~33\) # (!uni_departures(18))))
-- \uni_departures[18]~35COUT1_118\ = CARRY(((!\uni_departures[17]~33COUT1_116\) # (!uni_departures(18))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => uni_departures(18),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[15]~29\,
	cin0 => \uni_departures[17]~33\,
	cin1 => \uni_departures[17]~33COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(18),
	cout0 => \uni_departures[18]~35\,
	cout1 => \uni_departures[18]~35COUT1_118\);

-- Location: LC_X15_Y9_N3
\uni_departures[19]\ : maxv_lcell
-- Equation(s):
-- uni_departures(19) = DFFEAS(uni_departures(19) $ ((((!(!\uni_departures[15]~29\ & \uni_departures[18]~35\) # (\uni_departures[15]~29\ & \uni_departures[18]~35COUT1_118\))))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[19]~37\ = CARRY((uni_departures(19) & ((!\uni_departures[18]~35\))))
-- \uni_departures[19]~37COUT1_120\ = CARRY((uni_departures(19) & ((!\uni_departures[18]~35COUT1_118\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => uni_departures(19),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[15]~29\,
	cin0 => \uni_departures[18]~35\,
	cin1 => \uni_departures[18]~35COUT1_118\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(19),
	cout0 => \uni_departures[19]~37\,
	cout1 => \uni_departures[19]~37COUT1_120\);

-- Location: LC_X15_Y6_N1
\uni_entrances[17]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(17) = DFFEAS((uni_entrances(17) $ ((!(!\uni_entrances[15]~29\ & \uni_entrances[16]~31\) # (\uni_entrances[15]~29\ & \uni_entrances[16]~31COUT1_114\)))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[17]~33\ = CARRY(((uni_entrances(17) & !\uni_entrances[16]~31\)))
-- \uni_entrances[17]~33COUT1_116\ = CARRY(((uni_entrances(17) & !\uni_entrances[16]~31COUT1_114\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => uni_entrances(17),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[15]~29\,
	cin0 => \uni_entrances[16]~31\,
	cin1 => \uni_entrances[16]~31COUT1_114\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(17),
	cout0 => \uni_entrances[17]~33\,
	cout1 => \uni_entrances[17]~33COUT1_116\);

-- Location: LC_X15_Y6_N2
\uni_entrances[18]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(18) = DFFEAS((uni_entrances(18) $ (((!\uni_entrances[15]~29\ & \uni_entrances[17]~33\) # (\uni_entrances[15]~29\ & \uni_entrances[17]~33COUT1_116\)))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[18]~35\ = CARRY(((!\uni_entrances[17]~33\) # (!uni_entrances(18))))
-- \uni_entrances[18]~35COUT1_118\ = CARRY(((!\uni_entrances[17]~33COUT1_116\) # (!uni_entrances(18))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => uni_entrances(18),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[15]~29\,
	cin0 => \uni_entrances[17]~33\,
	cin1 => \uni_entrances[17]~33COUT1_116\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(18),
	cout0 => \uni_entrances[18]~35\,
	cout1 => \uni_entrances[18]~35COUT1_118\);

-- Location: LC_X15_Y6_N3
\uni_entrances[19]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(19) = DFFEAS(uni_entrances(19) $ ((((!(!\uni_entrances[15]~29\ & \uni_entrances[18]~35\) # (\uni_entrances[15]~29\ & \uni_entrances[18]~35COUT1_118\))))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[19]~37\ = CARRY((uni_entrances(19) & ((!\uni_entrances[18]~35\))))
-- \uni_entrances[19]~37COUT1_120\ = CARRY((uni_entrances(19) & ((!\uni_entrances[18]~35COUT1_118\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => uni_entrances(19),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[15]~29\,
	cin0 => \uni_entrances[18]~35\,
	cin1 => \uni_entrances[18]~35COUT1_118\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(19),
	cout0 => \uni_entrances[19]~37\,
	cout1 => \uni_entrances[19]~37COUT1_120\);

-- Location: LC_X14_Y7_N1
\Add3~85\ : maxv_lcell
-- Equation(s):
-- \Add3~85_combout\ = uni_entrances(17) $ (uni_departures(17) $ ((!(!\Add3~77\ & \Add3~82\) # (\Add3~77\ & \Add3~82COUT1_210\))))
-- \Add3~87\ = CARRY((uni_entrances(17) & (uni_departures(17) & !\Add3~82\)) # (!uni_entrances(17) & ((uni_departures(17)) # (!\Add3~82\))))
-- \Add3~87COUT1_212\ = CARRY((uni_entrances(17) & (uni_departures(17) & !\Add3~82COUT1_210\)) # (!uni_entrances(17) & ((uni_departures(17)) # (!\Add3~82COUT1_210\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(17),
	datab => uni_departures(17),
	cin => \Add3~77\,
	cin0 => \Add3~82\,
	cin1 => \Add3~82COUT1_210\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~85_combout\,
	cout0 => \Add3~87\,
	cout1 => \Add3~87COUT1_212\);

-- Location: LC_X14_Y7_N2
\Add3~90\ : maxv_lcell
-- Equation(s):
-- \Add3~90_combout\ = uni_departures(18) $ (uni_entrances(18) $ (((!\Add3~77\ & \Add3~87\) # (\Add3~77\ & \Add3~87COUT1_212\))))
-- \Add3~92\ = CARRY((uni_departures(18) & (uni_entrances(18) & !\Add3~87\)) # (!uni_departures(18) & ((uni_entrances(18)) # (!\Add3~87\))))
-- \Add3~92COUT1_214\ = CARRY((uni_departures(18) & (uni_entrances(18) & !\Add3~87COUT1_212\)) # (!uni_departures(18) & ((uni_entrances(18)) # (!\Add3~87COUT1_212\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(18),
	datab => uni_entrances(18),
	cin => \Add3~77\,
	cin0 => \Add3~87\,
	cin1 => \Add3~87COUT1_212\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~90_combout\,
	cout0 => \Add3~92\,
	cout1 => \Add3~92COUT1_214\);

-- Location: LC_X14_Y7_N3
\Add3~95\ : maxv_lcell
-- Equation(s):
-- \Add3~95_combout\ = uni_departures(19) $ (uni_entrances(19) $ ((!(!\Add3~77\ & \Add3~92\) # (\Add3~77\ & \Add3~92COUT1_214\))))
-- \Add3~97\ = CARRY((uni_departures(19) & ((!\Add3~92\) # (!uni_entrances(19)))) # (!uni_departures(19) & (!uni_entrances(19) & !\Add3~92\)))
-- \Add3~97COUT1_216\ = CARRY((uni_departures(19) & ((!\Add3~92COUT1_214\) # (!uni_entrances(19)))) # (!uni_departures(19) & (!uni_entrances(19) & !\Add3~92COUT1_214\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(19),
	datab => uni_entrances(19),
	cin => \Add3~77\,
	cin0 => \Add3~92\,
	cin1 => \Add3~92COUT1_214\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~95_combout\,
	cout0 => \Add3~97\,
	cout1 => \Add3~97COUT1_216\);

-- Location: LC_X10_Y7_N1
\Add4~85\ : maxv_lcell
-- Equation(s):
-- \Add4~85_combout\ = \Add3~85_combout\ $ (\Add2~85_combout\ $ (((!\Add4~77\ & \Add4~82\) # (\Add4~77\ & \Add4~82COUT1_210\))))
-- \Add4~87\ = CARRY((\Add3~85_combout\ & ((\Add2~85_combout\) # (!\Add4~82\))) # (!\Add3~85_combout\ & (\Add2~85_combout\ & !\Add4~82\)))
-- \Add4~87COUT1_212\ = CARRY((\Add3~85_combout\ & ((\Add2~85_combout\) # (!\Add4~82COUT1_210\))) # (!\Add3~85_combout\ & (\Add2~85_combout\ & !\Add4~82COUT1_210\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "968e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~85_combout\,
	datab => \Add2~85_combout\,
	cin => \Add4~77\,
	cin0 => \Add4~82\,
	cin1 => \Add4~82COUT1_210\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~85_combout\,
	cout0 => \Add4~87\,
	cout1 => \Add4~87COUT1_212\);

-- Location: LC_X10_Y7_N2
\Add4~90\ : maxv_lcell
-- Equation(s):
-- \Add4~90_combout\ = \Add3~90_combout\ $ (\Add2~90_combout\ $ ((!(!\Add4~77\ & \Add4~87\) # (\Add4~77\ & \Add4~87COUT1_212\))))
-- \Add4~92\ = CARRY((\Add3~90_combout\ & (!\Add2~90_combout\ & !\Add4~87\)) # (!\Add3~90_combout\ & ((!\Add4~87\) # (!\Add2~90_combout\))))
-- \Add4~92COUT1_214\ = CARRY((\Add3~90_combout\ & (!\Add2~90_combout\ & !\Add4~87COUT1_212\)) # (!\Add3~90_combout\ & ((!\Add4~87COUT1_212\) # (!\Add2~90_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "6917",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~90_combout\,
	datab => \Add2~90_combout\,
	cin => \Add4~77\,
	cin0 => \Add4~87\,
	cin1 => \Add4~87COUT1_212\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~90_combout\,
	cout0 => \Add4~92\,
	cout1 => \Add4~92COUT1_214\);

-- Location: LC_X10_Y7_N3
\Add4~95\ : maxv_lcell
-- Equation(s):
-- \Add4~95_combout\ = \Add3~95_combout\ $ (\Add2~95_combout\ $ (((!\Add4~77\ & \Add4~92\) # (\Add4~77\ & \Add4~92COUT1_214\))))
-- \Add4~97\ = CARRY((\Add3~95_combout\ & ((\Add2~95_combout\) # (!\Add4~92\))) # (!\Add3~95_combout\ & (\Add2~95_combout\ & !\Add4~92\)))
-- \Add4~97COUT1_216\ = CARRY((\Add3~95_combout\ & ((\Add2~95_combout\) # (!\Add4~92COUT1_214\))) # (!\Add3~95_combout\ & (\Add2~95_combout\ & !\Add4~92COUT1_214\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "968e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~95_combout\,
	datab => \Add2~95_combout\,
	cin => \Add4~77\,
	cin0 => \Add4~92\,
	cin1 => \Add4~92COUT1_214\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~95_combout\,
	cout0 => \Add4~97\,
	cout1 => \Add4~97COUT1_216\);

-- Location: LC_X10_Y6_N1
\Add5~80\ : maxv_lcell
-- Equation(s):
-- \Add5~80_combout\ = (\Add4~85_combout\ $ ((!(!\Add5~72\ & \Add5~77\) # (\Add5~72\ & \Add5~77COUT1_205\))))
-- \Add5~82\ = CARRY(((\Add4~85_combout\ & !\Add5~77\)))
-- \Add5~82COUT1_207\ = CARRY(((\Add4~85_combout\ & !\Add5~77COUT1_205\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add4~85_combout\,
	cin => \Add5~72\,
	cin0 => \Add5~77\,
	cin1 => \Add5~77COUT1_205\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~80_combout\,
	cout0 => \Add5~82\,
	cout1 => \Add5~82COUT1_207\);

-- Location: LC_X10_Y6_N2
\Add5~85\ : maxv_lcell
-- Equation(s):
-- \Add5~85_combout\ = (\Add4~90_combout\ $ (((!\Add5~72\ & \Add5~82\) # (\Add5~72\ & \Add5~82COUT1_207\))))
-- \Add5~87\ = CARRY(((!\Add5~82\) # (!\Add4~90_combout\)))
-- \Add5~87COUT1_209\ = CARRY(((!\Add5~82COUT1_207\) # (!\Add4~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add4~90_combout\,
	cin => \Add5~72\,
	cin0 => \Add5~82\,
	cin1 => \Add5~82COUT1_207\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~85_combout\,
	cout0 => \Add5~87\,
	cout1 => \Add5~87COUT1_209\);

-- Location: LC_X10_Y6_N3
\Add5~90\ : maxv_lcell
-- Equation(s):
-- \Add5~90_combout\ = \Add4~95_combout\ $ ((((!(!\Add5~72\ & \Add5~87\) # (\Add5~72\ & \Add5~87COUT1_209\)))))
-- \Add5~92\ = CARRY((\Add4~95_combout\ & ((!\Add5~87\))))
-- \Add5~92COUT1_211\ = CARRY((\Add4~95_combout\ & ((!\Add5~87COUT1_209\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~95_combout\,
	cin => \Add5~72\,
	cin0 => \Add5~87\,
	cin1 => \Add5~87COUT1_209\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~90_combout\,
	cout0 => \Add5~92\,
	cout1 => \Add5~92COUT1_211\);

-- Location: LC_X11_Y6_N8
\LessThan3~5\ : maxv_lcell
-- Equation(s):
-- \LessThan3~5_combout\ = (\Add5~75_combout\) # ((\Add5~90_combout\) # ((\Add5~80_combout\) # (\Add5~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~75_combout\,
	datab => \Add5~90_combout\,
	datac => \Add5~80_combout\,
	datad => \Add5~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~5_combout\);

-- Location: LC_X15_Y9_N4
\uni_departures[20]\ : maxv_lcell
-- Equation(s):
-- uni_departures(20) = DFFEAS(uni_departures(20) $ (((((!\uni_departures[15]~29\ & \uni_departures[19]~37\) # (\uni_departures[15]~29\ & \uni_departures[19]~37COUT1_120\))))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[20]~39\ = CARRY(((!\uni_departures[19]~37COUT1_120\)) # (!uni_departures(20)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => uni_departures(20),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[15]~29\,
	cin0 => \uni_departures[19]~37\,
	cin1 => \uni_departures[19]~37COUT1_120\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(20),
	cout => \uni_departures[20]~39\);

-- Location: LC_X15_Y6_N4
\uni_entrances[20]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(20) = DFFEAS(uni_entrances(20) $ (((((!\uni_entrances[15]~29\ & \uni_entrances[19]~37\) # (\uni_entrances[15]~29\ & \uni_entrances[19]~37COUT1_120\))))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[20]~39\ = CARRY(((!\uni_entrances[19]~37COUT1_120\)) # (!uni_entrances(20)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => uni_entrances(20),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[15]~29\,
	cin0 => \uni_entrances[19]~37\,
	cin1 => \uni_entrances[19]~37COUT1_120\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(20),
	cout => \uni_entrances[20]~39\);

-- Location: LC_X14_Y7_N4
\Add3~100\ : maxv_lcell
-- Equation(s):
-- \Add3~100_combout\ = uni_departures(20) $ (uni_entrances(20) $ (((!\Add3~77\ & \Add3~97\) # (\Add3~77\ & \Add3~97COUT1_216\))))
-- \Add3~102\ = CARRY((uni_departures(20) & (uni_entrances(20) & !\Add3~97COUT1_216\)) # (!uni_departures(20) & ((uni_entrances(20)) # (!\Add3~97COUT1_216\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(20),
	datab => uni_entrances(20),
	cin => \Add3~77\,
	cin0 => \Add3~97\,
	cin1 => \Add3~97COUT1_216\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~100_combout\,
	cout => \Add3~102\);

-- Location: LC_X10_Y7_N4
\Add4~100\ : maxv_lcell
-- Equation(s):
-- \Add4~100_combout\ = \Add2~100_combout\ $ (\Add3~100_combout\ $ ((!(!\Add4~77\ & \Add4~97\) # (\Add4~77\ & \Add4~97COUT1_216\))))
-- \Add4~102\ = CARRY((\Add2~100_combout\ & (!\Add3~100_combout\ & !\Add4~97COUT1_216\)) # (!\Add2~100_combout\ & ((!\Add4~97COUT1_216\) # (!\Add3~100_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "6917",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~100_combout\,
	datab => \Add3~100_combout\,
	cin => \Add4~77\,
	cin0 => \Add4~97\,
	cin1 => \Add4~97COUT1_216\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~100_combout\,
	cout => \Add4~102\);

-- Location: LC_X10_Y6_N4
\Add5~95\ : maxv_lcell
-- Equation(s):
-- \Add5~95_combout\ = \Add4~100_combout\ $ (((((!\Add5~72\ & \Add5~92\) # (\Add5~72\ & \Add5~92COUT1_211\)))))
-- \Add5~97\ = CARRY(((!\Add5~92COUT1_211\)) # (!\Add4~100_combout\))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~100_combout\,
	cin => \Add5~72\,
	cin0 => \Add5~92\,
	cin1 => \Add5~92COUT1_211\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~95_combout\,
	cout => \Add5~97\);

-- Location: LC_X15_Y9_N5
\uni_departures[21]\ : maxv_lcell
-- Equation(s):
-- uni_departures(21) = DFFEAS(uni_departures(21) $ ((((!\uni_departures[20]~39\)))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[21]~41\ = CARRY((uni_departures(21) & ((!\uni_departures[20]~39\))))
-- \uni_departures[21]~41COUT1_122\ = CARRY((uni_departures(21) & ((!\uni_departures[20]~39\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => uni_departures(21),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[20]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(21),
	cout0 => \uni_departures[21]~41\,
	cout1 => \uni_departures[21]~41COUT1_122\);

-- Location: LC_X15_Y9_N6
\uni_departures[22]\ : maxv_lcell
-- Equation(s):
-- uni_departures(22) = DFFEAS(uni_departures(22) $ (((((!\uni_departures[20]~39\ & \uni_departures[21]~41\) # (\uni_departures[20]~39\ & \uni_departures[21]~41COUT1_122\))))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[22]~43\ = CARRY(((!\uni_departures[21]~41\)) # (!uni_departures(22)))
-- \uni_departures[22]~43COUT1_124\ = CARRY(((!\uni_departures[21]~41COUT1_122\)) # (!uni_departures(22)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => uni_departures(22),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[20]~39\,
	cin0 => \uni_departures[21]~41\,
	cin1 => \uni_departures[21]~41COUT1_122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(22),
	cout0 => \uni_departures[22]~43\,
	cout1 => \uni_departures[22]~43COUT1_124\);

-- Location: LC_X15_Y6_N5
\uni_entrances[21]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(21) = DFFEAS(uni_entrances(21) $ ((((!\uni_entrances[20]~39\)))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[21]~41\ = CARRY((uni_entrances(21) & ((!\uni_entrances[20]~39\))))
-- \uni_entrances[21]~41COUT1_122\ = CARRY((uni_entrances(21) & ((!\uni_entrances[20]~39\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => uni_entrances(21),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[20]~39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(21),
	cout0 => \uni_entrances[21]~41\,
	cout1 => \uni_entrances[21]~41COUT1_122\);

-- Location: LC_X15_Y6_N6
\uni_entrances[22]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(22) = DFFEAS(uni_entrances(22) $ (((((!\uni_entrances[20]~39\ & \uni_entrances[21]~41\) # (\uni_entrances[20]~39\ & \uni_entrances[21]~41COUT1_122\))))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[22]~43\ = CARRY(((!\uni_entrances[21]~41\)) # (!uni_entrances(22)))
-- \uni_entrances[22]~43COUT1_124\ = CARRY(((!\uni_entrances[21]~41COUT1_122\)) # (!uni_entrances(22)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => uni_entrances(22),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[20]~39\,
	cin0 => \uni_entrances[21]~41\,
	cin1 => \uni_entrances[21]~41COUT1_122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(22),
	cout0 => \uni_entrances[22]~43\,
	cout1 => \uni_entrances[22]~43COUT1_124\);

-- Location: LC_X14_Y7_N5
\Add3~105\ : maxv_lcell
-- Equation(s):
-- \Add3~105_combout\ = uni_entrances(21) $ (uni_departures(21) $ ((!\Add3~102\)))
-- \Add3~107\ = CARRY((uni_entrances(21) & (uni_departures(21) & !\Add3~102\)) # (!uni_entrances(21) & ((uni_departures(21)) # (!\Add3~102\))))
-- \Add3~107COUT1_218\ = CARRY((uni_entrances(21) & (uni_departures(21) & !\Add3~102\)) # (!uni_entrances(21) & ((uni_departures(21)) # (!\Add3~102\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(21),
	datab => uni_departures(21),
	cin => \Add3~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~105_combout\,
	cout0 => \Add3~107\,
	cout1 => \Add3~107COUT1_218\);

-- Location: LC_X14_Y7_N6
\Add3~110\ : maxv_lcell
-- Equation(s):
-- \Add3~110_combout\ = uni_departures(22) $ (uni_entrances(22) $ (((!\Add3~102\ & \Add3~107\) # (\Add3~102\ & \Add3~107COUT1_218\))))
-- \Add3~112\ = CARRY((uni_departures(22) & (uni_entrances(22) & !\Add3~107\)) # (!uni_departures(22) & ((uni_entrances(22)) # (!\Add3~107\))))
-- \Add3~112COUT1_220\ = CARRY((uni_departures(22) & (uni_entrances(22) & !\Add3~107COUT1_218\)) # (!uni_departures(22) & ((uni_entrances(22)) # (!\Add3~107COUT1_218\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(22),
	datab => uni_entrances(22),
	cin => \Add3~102\,
	cin0 => \Add3~107\,
	cin1 => \Add3~107COUT1_218\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~110_combout\,
	cout0 => \Add3~112\,
	cout1 => \Add3~112COUT1_220\);

-- Location: LC_X10_Y7_N5
\Add4~105\ : maxv_lcell
-- Equation(s):
-- \Add4~105_combout\ = \Add2~105_combout\ $ (\Add3~105_combout\ $ ((\Add4~102\)))
-- \Add4~107\ = CARRY((\Add2~105_combout\ & ((\Add3~105_combout\) # (!\Add4~102\))) # (!\Add2~105_combout\ & (\Add3~105_combout\ & !\Add4~102\)))
-- \Add4~107COUT1_218\ = CARRY((\Add2~105_combout\ & ((\Add3~105_combout\) # (!\Add4~102\))) # (!\Add2~105_combout\ & (\Add3~105_combout\ & !\Add4~102\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "968e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~105_combout\,
	datab => \Add3~105_combout\,
	cin => \Add4~102\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~105_combout\,
	cout0 => \Add4~107\,
	cout1 => \Add4~107COUT1_218\);

-- Location: LC_X10_Y7_N6
\Add4~110\ : maxv_lcell
-- Equation(s):
-- \Add4~110_combout\ = \Add2~110_combout\ $ (\Add3~110_combout\ $ ((!(!\Add4~102\ & \Add4~107\) # (\Add4~102\ & \Add4~107COUT1_218\))))
-- \Add4~112\ = CARRY((\Add2~110_combout\ & (!\Add3~110_combout\ & !\Add4~107\)) # (!\Add2~110_combout\ & ((!\Add4~107\) # (!\Add3~110_combout\))))
-- \Add4~112COUT1_220\ = CARRY((\Add2~110_combout\ & (!\Add3~110_combout\ & !\Add4~107COUT1_218\)) # (!\Add2~110_combout\ & ((!\Add4~107COUT1_218\) # (!\Add3~110_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "6917",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~110_combout\,
	datab => \Add3~110_combout\,
	cin => \Add4~102\,
	cin0 => \Add4~107\,
	cin1 => \Add4~107COUT1_218\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~110_combout\,
	cout0 => \Add4~112\,
	cout1 => \Add4~112COUT1_220\);

-- Location: LC_X10_Y6_N5
\Add5~100\ : maxv_lcell
-- Equation(s):
-- \Add5~100_combout\ = \Add4~105_combout\ $ ((((!\Add5~97\))))
-- \Add5~102\ = CARRY((\Add4~105_combout\ & ((!\Add5~97\))))
-- \Add5~102COUT1_213\ = CARRY((\Add4~105_combout\ & ((!\Add5~97\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~105_combout\,
	cin => \Add5~97\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~100_combout\,
	cout0 => \Add5~102\,
	cout1 => \Add5~102COUT1_213\);

-- Location: LC_X10_Y6_N6
\Add5~105\ : maxv_lcell
-- Equation(s):
-- \Add5~105_combout\ = (\Add4~110_combout\ $ (((!\Add5~97\ & \Add5~102\) # (\Add5~97\ & \Add5~102COUT1_213\))))
-- \Add5~107\ = CARRY(((!\Add5~102\) # (!\Add4~110_combout\)))
-- \Add5~107COUT1_215\ = CARRY(((!\Add5~102COUT1_213\) # (!\Add4~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add4~110_combout\,
	cin => \Add5~97\,
	cin0 => \Add5~102\,
	cin1 => \Add5~102COUT1_213\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~105_combout\,
	cout0 => \Add5~107\,
	cout1 => \Add5~107COUT1_215\);

-- Location: LC_X15_Y6_N7
\uni_entrances[23]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(23) = DFFEAS((uni_entrances(23) $ ((!(!\uni_entrances[20]~39\ & \uni_entrances[22]~43\) # (\uni_entrances[20]~39\ & \uni_entrances[22]~43COUT1_124\)))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[23]~45\ = CARRY(((uni_entrances(23) & !\uni_entrances[22]~43\)))
-- \uni_entrances[23]~45COUT1_126\ = CARRY(((uni_entrances(23) & !\uni_entrances[22]~43COUT1_124\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => uni_entrances(23),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[20]~39\,
	cin0 => \uni_entrances[22]~43\,
	cin1 => \uni_entrances[22]~43COUT1_124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(23),
	cout0 => \uni_entrances[23]~45\,
	cout1 => \uni_entrances[23]~45COUT1_126\);

-- Location: LC_X15_Y9_N7
\uni_departures[23]\ : maxv_lcell
-- Equation(s):
-- uni_departures(23) = DFFEAS((uni_departures(23) $ ((!(!\uni_departures[20]~39\ & \uni_departures[22]~43\) # (\uni_departures[20]~39\ & \uni_departures[22]~43COUT1_124\)))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[23]~45\ = CARRY(((uni_departures(23) & !\uni_departures[22]~43\)))
-- \uni_departures[23]~45COUT1_126\ = CARRY(((uni_departures(23) & !\uni_departures[22]~43COUT1_124\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => uni_departures(23),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[20]~39\,
	cin0 => \uni_departures[22]~43\,
	cin1 => \uni_departures[22]~43COUT1_124\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(23),
	cout0 => \uni_departures[23]~45\,
	cout1 => \uni_departures[23]~45COUT1_126\);

-- Location: LC_X14_Y7_N7
\Add3~115\ : maxv_lcell
-- Equation(s):
-- \Add3~115_combout\ = uni_entrances(23) $ (uni_departures(23) $ ((!(!\Add3~102\ & \Add3~112\) # (\Add3~102\ & \Add3~112COUT1_220\))))
-- \Add3~117\ = CARRY((uni_entrances(23) & (uni_departures(23) & !\Add3~112\)) # (!uni_entrances(23) & ((uni_departures(23)) # (!\Add3~112\))))
-- \Add3~117COUT1_222\ = CARRY((uni_entrances(23) & (uni_departures(23) & !\Add3~112COUT1_220\)) # (!uni_entrances(23) & ((uni_departures(23)) # (!\Add3~112COUT1_220\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(23),
	datab => uni_departures(23),
	cin => \Add3~102\,
	cin0 => \Add3~112\,
	cin1 => \Add3~112COUT1_220\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~115_combout\,
	cout0 => \Add3~117\,
	cout1 => \Add3~117COUT1_222\);

-- Location: LC_X10_Y7_N7
\Add4~115\ : maxv_lcell
-- Equation(s):
-- \Add4~115_combout\ = \Add3~115_combout\ $ (\Add2~115_combout\ $ (((!\Add4~102\ & \Add4~112\) # (\Add4~102\ & \Add4~112COUT1_220\))))
-- \Add4~117\ = CARRY((\Add3~115_combout\ & ((\Add2~115_combout\) # (!\Add4~112\))) # (!\Add3~115_combout\ & (\Add2~115_combout\ & !\Add4~112\)))
-- \Add4~117COUT1_222\ = CARRY((\Add3~115_combout\ & ((\Add2~115_combout\) # (!\Add4~112COUT1_220\))) # (!\Add3~115_combout\ & (\Add2~115_combout\ & !\Add4~112COUT1_220\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "968e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~115_combout\,
	datab => \Add2~115_combout\,
	cin => \Add4~102\,
	cin0 => \Add4~112\,
	cin1 => \Add4~112COUT1_220\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~115_combout\,
	cout0 => \Add4~117\,
	cout1 => \Add4~117COUT1_222\);

-- Location: LC_X10_Y6_N7
\Add5~110\ : maxv_lcell
-- Equation(s):
-- \Add5~110_combout\ = \Add4~115_combout\ $ ((((!(!\Add5~97\ & \Add5~107\) # (\Add5~97\ & \Add5~107COUT1_215\)))))
-- \Add5~112\ = CARRY((\Add4~115_combout\ & ((!\Add5~107\))))
-- \Add5~112COUT1_217\ = CARRY((\Add4~115_combout\ & ((!\Add5~107COUT1_215\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~115_combout\,
	cin => \Add5~97\,
	cin0 => \Add5~107\,
	cin1 => \Add5~107COUT1_215\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~110_combout\,
	cout0 => \Add5~112\,
	cout1 => \Add5~112COUT1_217\);

-- Location: LC_X12_Y6_N9
\LessThan3~6\ : maxv_lcell
-- Equation(s):
-- \LessThan3~6_combout\ = (\Add5~95_combout\) # ((\Add5~105_combout\) # ((\Add5~110_combout\) # (\Add5~100_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~95_combout\,
	datab => \Add5~105_combout\,
	datac => \Add5~110_combout\,
	datad => \Add5~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~6_combout\);

-- Location: LC_X8_Y6_N3
\LessThan3~0\ : maxv_lcell
-- Equation(s):
-- \LessThan3~0_combout\ = (\Add5~5_combout\) # ((\Add5~10_combout\) # ((\Add4~0_combout\) # (\Add5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~5_combout\,
	datab => \Add5~10_combout\,
	datac => \Add4~0_combout\,
	datad => \Add5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~0_combout\);

-- Location: LC_X8_Y6_N0
\LessThan3~1\ : maxv_lcell
-- Equation(s):
-- \LessThan3~1_combout\ = (\Add5~15_combout\) # ((\Add5~20_combout\) # ((\Add5~25_combout\) # (\Add5~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~15_combout\,
	datab => \Add5~20_combout\,
	datac => \Add5~25_combout\,
	datad => \Add5~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~1_combout\);

-- Location: LC_X8_Y6_N4
\LessThan3~2\ : maxv_lcell
-- Equation(s):
-- \LessThan3~2_combout\ = (\Add5~40_combout\) # ((\Add5~45_combout\) # ((\Add5~35_combout\) # (\Add5~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~40_combout\,
	datab => \Add5~45_combout\,
	datac => \Add5~35_combout\,
	datad => \Add5~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~2_combout\);

-- Location: LC_X8_Y6_N2
\LessThan3~3\ : maxv_lcell
-- Equation(s):
-- \LessThan3~3_combout\ = (\Add5~60_combout\) # ((\Add5~70_combout\) # ((\Add5~55_combout\) # (\Add5~65_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~60_combout\,
	datab => \Add5~70_combout\,
	datac => \Add5~55_combout\,
	datad => \Add5~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~3_combout\);

-- Location: LC_X8_Y6_N1
\LessThan3~4\ : maxv_lcell
-- Equation(s):
-- \LessThan3~4_combout\ = (\LessThan3~0_combout\) # ((\LessThan3~1_combout\) # ((\LessThan3~2_combout\) # (\LessThan3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~0_combout\,
	datab => \LessThan3~1_combout\,
	datac => \LessThan3~2_combout\,
	datad => \LessThan3~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~4_combout\);

-- Location: LC_X15_Y9_N8
\uni_departures[24]\ : maxv_lcell
-- Equation(s):
-- uni_departures(24) = DFFEAS(uni_departures(24) $ (((((!\uni_departures[20]~39\ & \uni_departures[23]~45\) # (\uni_departures[20]~39\ & \uni_departures[23]~45COUT1_126\))))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[24]~47\ = CARRY(((!\uni_departures[23]~45\)) # (!uni_departures(24)))
-- \uni_departures[24]~47COUT1_128\ = CARRY(((!\uni_departures[23]~45COUT1_126\)) # (!uni_departures(24)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => uni_departures(24),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[20]~39\,
	cin0 => \uni_departures[23]~45\,
	cin1 => \uni_departures[23]~45COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(24),
	cout0 => \uni_departures[24]~47\,
	cout1 => \uni_departures[24]~47COUT1_128\);

-- Location: LC_X15_Y9_N9
\uni_departures[25]\ : maxv_lcell
-- Equation(s):
-- uni_departures(25) = DFFEAS((uni_departures(25) $ ((!(!\uni_departures[20]~39\ & \uni_departures[24]~47\) # (\uni_departures[20]~39\ & \uni_departures[24]~47COUT1_128\)))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[25]~49\ = CARRY(((uni_departures(25) & !\uni_departures[24]~47COUT1_128\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => uni_departures(25),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[20]~39\,
	cin0 => \uni_departures[24]~47\,
	cin1 => \uni_departures[24]~47COUT1_128\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(25),
	cout => \uni_departures[25]~49\);

-- Location: LC_X16_Y9_N0
\uni_departures[26]\ : maxv_lcell
-- Equation(s):
-- uni_departures(26) = DFFEAS((uni_departures(26) $ ((\uni_departures[25]~49\))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[26]~51\ = CARRY(((!\uni_departures[25]~49\) # (!uni_departures(26))))
-- \uni_departures[26]~51COUT1_130\ = CARRY(((!\uni_departures[25]~49\) # (!uni_departures(26))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => uni_departures(26),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[25]~49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(26),
	cout0 => \uni_departures[26]~51\,
	cout1 => \uni_departures[26]~51COUT1_130\);

-- Location: LC_X16_Y9_N1
\uni_departures[27]\ : maxv_lcell
-- Equation(s):
-- uni_departures(27) = DFFEAS((uni_departures(27) $ ((!(!\uni_departures[25]~49\ & \uni_departures[26]~51\) # (\uni_departures[25]~49\ & \uni_departures[26]~51COUT1_130\)))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[27]~53\ = CARRY(((uni_departures(27) & !\uni_departures[26]~51\)))
-- \uni_departures[27]~53COUT1_132\ = CARRY(((uni_departures(27) & !\uni_departures[26]~51COUT1_130\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => uni_departures(27),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[25]~49\,
	cin0 => \uni_departures[26]~51\,
	cin1 => \uni_departures[26]~51COUT1_130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(27),
	cout0 => \uni_departures[27]~53\,
	cout1 => \uni_departures[27]~53COUT1_132\);

-- Location: LC_X16_Y9_N2
\uni_departures[28]\ : maxv_lcell
-- Equation(s):
-- uni_departures(28) = DFFEAS((uni_departures(28) $ (((!\uni_departures[25]~49\ & \uni_departures[27]~53\) # (\uni_departures[25]~49\ & \uni_departures[27]~53COUT1_132\)))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[28]~55\ = CARRY(((!\uni_departures[27]~53\) # (!uni_departures(28))))
-- \uni_departures[28]~55COUT1_134\ = CARRY(((!\uni_departures[27]~53COUT1_132\) # (!uni_departures(28))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	datab => uni_departures(28),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[25]~49\,
	cin0 => \uni_departures[27]~53\,
	cin1 => \uni_departures[27]~53COUT1_132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(28),
	cout0 => \uni_departures[28]~55\,
	cout1 => \uni_departures[28]~55COUT1_134\);

-- Location: LC_X16_Y9_N3
\uni_departures[29]\ : maxv_lcell
-- Equation(s):
-- uni_departures(29) = DFFEAS(uni_departures(29) $ ((((!(!\uni_departures[25]~49\ & \uni_departures[28]~55\) # (\uni_departures[25]~49\ & \uni_departures[28]~55COUT1_134\))))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[29]~57\ = CARRY((uni_departures(29) & ((!\uni_departures[28]~55\))))
-- \uni_departures[29]~57COUT1_136\ = CARRY((uni_departures(29) & ((!\uni_departures[28]~55COUT1_134\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => uni_departures(29),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[25]~49\,
	cin0 => \uni_departures[28]~55\,
	cin1 => \uni_departures[28]~55COUT1_134\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(29),
	cout0 => \uni_departures[29]~57\,
	cout1 => \uni_departures[29]~57COUT1_136\);

-- Location: LC_X15_Y6_N8
\uni_entrances[24]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(24) = DFFEAS(uni_entrances(24) $ (((((!\uni_entrances[20]~39\ & \uni_entrances[23]~45\) # (\uni_entrances[20]~39\ & \uni_entrances[23]~45COUT1_126\))))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[24]~47\ = CARRY(((!\uni_entrances[23]~45\)) # (!uni_entrances(24)))
-- \uni_entrances[24]~47COUT1_128\ = CARRY(((!\uni_entrances[23]~45COUT1_126\)) # (!uni_entrances(24)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => uni_entrances(24),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[20]~39\,
	cin0 => \uni_entrances[23]~45\,
	cin1 => \uni_entrances[23]~45COUT1_126\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(24),
	cout0 => \uni_entrances[24]~47\,
	cout1 => \uni_entrances[24]~47COUT1_128\);

-- Location: LC_X15_Y6_N9
\uni_entrances[25]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(25) = DFFEAS((uni_entrances(25) $ ((!(!\uni_entrances[20]~39\ & \uni_entrances[24]~47\) # (\uni_entrances[20]~39\ & \uni_entrances[24]~47COUT1_128\)))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[25]~49\ = CARRY(((uni_entrances(25) & !\uni_entrances[24]~47COUT1_128\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => uni_entrances(25),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[20]~39\,
	cin0 => \uni_entrances[24]~47\,
	cin1 => \uni_entrances[24]~47COUT1_128\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(25),
	cout => \uni_entrances[25]~49\);

-- Location: LC_X16_Y6_N0
\uni_entrances[26]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(26) = DFFEAS((uni_entrances(26) $ ((\uni_entrances[25]~49\))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[26]~51\ = CARRY(((!\uni_entrances[25]~49\) # (!uni_entrances(26))))
-- \uni_entrances[26]~51COUT1_130\ = CARRY(((!\uni_entrances[25]~49\) # (!uni_entrances(26))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => uni_entrances(26),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[25]~49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(26),
	cout0 => \uni_entrances[26]~51\,
	cout1 => \uni_entrances[26]~51COUT1_130\);

-- Location: LC_X16_Y6_N1
\uni_entrances[27]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(27) = DFFEAS((uni_entrances(27) $ ((!(!\uni_entrances[25]~49\ & \uni_entrances[26]~51\) # (\uni_entrances[25]~49\ & \uni_entrances[26]~51COUT1_130\)))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[27]~53\ = CARRY(((uni_entrances(27) & !\uni_entrances[26]~51\)))
-- \uni_entrances[27]~53COUT1_132\ = CARRY(((uni_entrances(27) & !\uni_entrances[26]~51COUT1_130\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => uni_entrances(27),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[25]~49\,
	cin0 => \uni_entrances[26]~51\,
	cin1 => \uni_entrances[26]~51COUT1_130\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(27),
	cout0 => \uni_entrances[27]~53\,
	cout1 => \uni_entrances[27]~53COUT1_132\);

-- Location: LC_X16_Y6_N2
\uni_entrances[28]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(28) = DFFEAS((uni_entrances(28) $ (((!\uni_entrances[25]~49\ & \uni_entrances[27]~53\) # (\uni_entrances[25]~49\ & \uni_entrances[27]~53COUT1_132\)))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[28]~55\ = CARRY(((!\uni_entrances[27]~53\) # (!uni_entrances(28))))
-- \uni_entrances[28]~55COUT1_134\ = CARRY(((!\uni_entrances[27]~53COUT1_132\) # (!uni_entrances(28))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => uni_entrances(28),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[25]~49\,
	cin0 => \uni_entrances[27]~53\,
	cin1 => \uni_entrances[27]~53COUT1_132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(28),
	cout0 => \uni_entrances[28]~55\,
	cout1 => \uni_entrances[28]~55COUT1_134\);

-- Location: LC_X16_Y6_N3
\uni_entrances[29]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(29) = DFFEAS(uni_entrances(29) $ ((((!(!\uni_entrances[25]~49\ & \uni_entrances[28]~55\) # (\uni_entrances[25]~49\ & \uni_entrances[28]~55COUT1_134\))))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[29]~57\ = CARRY((uni_entrances(29) & ((!\uni_entrances[28]~55\))))
-- \uni_entrances[29]~57COUT1_136\ = CARRY((uni_entrances(29) & ((!\uni_entrances[28]~55COUT1_134\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => uni_entrances(29),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[25]~49\,
	cin0 => \uni_entrances[28]~55\,
	cin1 => \uni_entrances[28]~55COUT1_134\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(29),
	cout0 => \uni_entrances[29]~57\,
	cout1 => \uni_entrances[29]~57COUT1_136\);

-- Location: LC_X14_Y7_N8
\Add3~120\ : maxv_lcell
-- Equation(s):
-- \Add3~120_combout\ = uni_entrances(24) $ (uni_departures(24) $ (((!\Add3~102\ & \Add3~117\) # (\Add3~102\ & \Add3~117COUT1_222\))))
-- \Add3~122\ = CARRY((uni_entrances(24) & ((!\Add3~117\) # (!uni_departures(24)))) # (!uni_entrances(24) & (!uni_departures(24) & !\Add3~117\)))
-- \Add3~122COUT1_224\ = CARRY((uni_entrances(24) & ((!\Add3~117COUT1_222\) # (!uni_departures(24)))) # (!uni_entrances(24) & (!uni_departures(24) & !\Add3~117COUT1_222\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(24),
	datab => uni_departures(24),
	cin => \Add3~102\,
	cin0 => \Add3~117\,
	cin1 => \Add3~117COUT1_222\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~120_combout\,
	cout0 => \Add3~122\,
	cout1 => \Add3~122COUT1_224\);

-- Location: LC_X14_Y7_N9
\Add3~125\ : maxv_lcell
-- Equation(s):
-- \Add3~125_combout\ = uni_entrances(25) $ (uni_departures(25) $ ((!(!\Add3~102\ & \Add3~122\) # (\Add3~102\ & \Add3~122COUT1_224\))))
-- \Add3~127\ = CARRY((uni_entrances(25) & (uni_departures(25) & !\Add3~122COUT1_224\)) # (!uni_entrances(25) & ((uni_departures(25)) # (!\Add3~122COUT1_224\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(25),
	datab => uni_departures(25),
	cin => \Add3~102\,
	cin0 => \Add3~122\,
	cin1 => \Add3~122COUT1_224\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~125_combout\,
	cout => \Add3~127\);

-- Location: LC_X15_Y7_N0
\Add3~130\ : maxv_lcell
-- Equation(s):
-- \Add3~130_combout\ = uni_departures(26) $ (uni_entrances(26) $ ((\Add3~127\)))
-- \Add3~132\ = CARRY((uni_departures(26) & (uni_entrances(26) & !\Add3~127\)) # (!uni_departures(26) & ((uni_entrances(26)) # (!\Add3~127\))))
-- \Add3~132COUT1_226\ = CARRY((uni_departures(26) & (uni_entrances(26) & !\Add3~127\)) # (!uni_departures(26) & ((uni_entrances(26)) # (!\Add3~127\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(26),
	datab => uni_entrances(26),
	cin => \Add3~127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~130_combout\,
	cout0 => \Add3~132\,
	cout1 => \Add3~132COUT1_226\);

-- Location: LC_X15_Y7_N1
\Add3~135\ : maxv_lcell
-- Equation(s):
-- \Add3~135_combout\ = uni_entrances(27) $ (uni_departures(27) $ ((!(!\Add3~127\ & \Add3~132\) # (\Add3~127\ & \Add3~132COUT1_226\))))
-- \Add3~137\ = CARRY((uni_entrances(27) & (uni_departures(27) & !\Add3~132\)) # (!uni_entrances(27) & ((uni_departures(27)) # (!\Add3~132\))))
-- \Add3~137COUT1_228\ = CARRY((uni_entrances(27) & (uni_departures(27) & !\Add3~132COUT1_226\)) # (!uni_entrances(27) & ((uni_departures(27)) # (!\Add3~132COUT1_226\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "694d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(27),
	datab => uni_departures(27),
	cin => \Add3~127\,
	cin0 => \Add3~132\,
	cin1 => \Add3~132COUT1_226\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~135_combout\,
	cout0 => \Add3~137\,
	cout1 => \Add3~137COUT1_228\);

-- Location: LC_X15_Y7_N2
\Add3~140\ : maxv_lcell
-- Equation(s):
-- \Add3~140_combout\ = uni_entrances(28) $ (uni_departures(28) $ (((!\Add3~127\ & \Add3~137\) # (\Add3~127\ & \Add3~137COUT1_228\))))
-- \Add3~142\ = CARRY((uni_entrances(28) & ((!\Add3~137\) # (!uni_departures(28)))) # (!uni_entrances(28) & (!uni_departures(28) & !\Add3~137\)))
-- \Add3~142COUT1_230\ = CARRY((uni_entrances(28) & ((!\Add3~137COUT1_228\) # (!uni_departures(28)))) # (!uni_entrances(28) & (!uni_departures(28) & !\Add3~137COUT1_228\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "962b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(28),
	datab => uni_departures(28),
	cin => \Add3~127\,
	cin0 => \Add3~137\,
	cin1 => \Add3~137COUT1_228\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~140_combout\,
	cout0 => \Add3~142\,
	cout1 => \Add3~142COUT1_230\);

-- Location: LC_X15_Y7_N3
\Add3~145\ : maxv_lcell
-- Equation(s):
-- \Add3~145_combout\ = uni_departures(29) $ (uni_entrances(29) $ ((!(!\Add3~127\ & \Add3~142\) # (\Add3~127\ & \Add3~142COUT1_230\))))
-- \Add3~147\ = CARRY((uni_departures(29) & ((!\Add3~142\) # (!uni_entrances(29)))) # (!uni_departures(29) & (!uni_entrances(29) & !\Add3~142\)))
-- \Add3~147COUT1_232\ = CARRY((uni_departures(29) & ((!\Add3~142COUT1_230\) # (!uni_entrances(29)))) # (!uni_departures(29) & (!uni_entrances(29) & !\Add3~142COUT1_230\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "692b",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(29),
	datab => uni_entrances(29),
	cin => \Add3~127\,
	cin0 => \Add3~142\,
	cin1 => \Add3~142COUT1_230\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~145_combout\,
	cout0 => \Add3~147\,
	cout1 => \Add3~147COUT1_232\);

-- Location: LC_X10_Y7_N8
\Add4~120\ : maxv_lcell
-- Equation(s):
-- \Add4~120_combout\ = \Add3~120_combout\ $ (\Add2~120_combout\ $ ((!(!\Add4~102\ & \Add4~117\) # (\Add4~102\ & \Add4~117COUT1_222\))))
-- \Add4~122\ = CARRY((\Add3~120_combout\ & (!\Add2~120_combout\ & !\Add4~117\)) # (!\Add3~120_combout\ & ((!\Add4~117\) # (!\Add2~120_combout\))))
-- \Add4~122COUT1_224\ = CARRY((\Add3~120_combout\ & (!\Add2~120_combout\ & !\Add4~117COUT1_222\)) # (!\Add3~120_combout\ & ((!\Add4~117COUT1_222\) # (!\Add2~120_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "6917",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~120_combout\,
	datab => \Add2~120_combout\,
	cin => \Add4~102\,
	cin0 => \Add4~117\,
	cin1 => \Add4~117COUT1_222\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~120_combout\,
	cout0 => \Add4~122\,
	cout1 => \Add4~122COUT1_224\);

-- Location: LC_X10_Y7_N9
\Add4~125\ : maxv_lcell
-- Equation(s):
-- \Add4~125_combout\ = \Add2~125_combout\ $ (\Add3~125_combout\ $ (((!\Add4~102\ & \Add4~122\) # (\Add4~102\ & \Add4~122COUT1_224\))))
-- \Add4~127\ = CARRY((\Add2~125_combout\ & ((\Add3~125_combout\) # (!\Add4~122COUT1_224\))) # (!\Add2~125_combout\ & (\Add3~125_combout\ & !\Add4~122COUT1_224\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "968e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~125_combout\,
	datab => \Add3~125_combout\,
	cin => \Add4~102\,
	cin0 => \Add4~122\,
	cin1 => \Add4~122COUT1_224\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~125_combout\,
	cout => \Add4~127\);

-- Location: LC_X11_Y7_N0
\Add4~130\ : maxv_lcell
-- Equation(s):
-- \Add4~130_combout\ = \Add2~130_combout\ $ (\Add3~130_combout\ $ ((!\Add4~127\)))
-- \Add4~132\ = CARRY((\Add2~130_combout\ & (!\Add3~130_combout\ & !\Add4~127\)) # (!\Add2~130_combout\ & ((!\Add4~127\) # (!\Add3~130_combout\))))
-- \Add4~132COUT1_226\ = CARRY((\Add2~130_combout\ & (!\Add3~130_combout\ & !\Add4~127\)) # (!\Add2~130_combout\ & ((!\Add4~127\) # (!\Add3~130_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "6917",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~130_combout\,
	datab => \Add3~130_combout\,
	cin => \Add4~127\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~130_combout\,
	cout0 => \Add4~132\,
	cout1 => \Add4~132COUT1_226\);

-- Location: LC_X11_Y7_N1
\Add4~135\ : maxv_lcell
-- Equation(s):
-- \Add4~135_combout\ = \Add3~135_combout\ $ (\Add2~135_combout\ $ (((!\Add4~127\ & \Add4~132\) # (\Add4~127\ & \Add4~132COUT1_226\))))
-- \Add4~137\ = CARRY((\Add3~135_combout\ & ((\Add2~135_combout\) # (!\Add4~132\))) # (!\Add3~135_combout\ & (\Add2~135_combout\ & !\Add4~132\)))
-- \Add4~137COUT1_228\ = CARRY((\Add3~135_combout\ & ((\Add2~135_combout\) # (!\Add4~132COUT1_226\))) # (!\Add3~135_combout\ & (\Add2~135_combout\ & !\Add4~132COUT1_226\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "968e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~135_combout\,
	datab => \Add2~135_combout\,
	cin => \Add4~127\,
	cin0 => \Add4~132\,
	cin1 => \Add4~132COUT1_226\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~135_combout\,
	cout0 => \Add4~137\,
	cout1 => \Add4~137COUT1_228\);

-- Location: LC_X11_Y7_N2
\Add4~140\ : maxv_lcell
-- Equation(s):
-- \Add4~140_combout\ = \Add3~140_combout\ $ (\Add2~140_combout\ $ ((!(!\Add4~127\ & \Add4~137\) # (\Add4~127\ & \Add4~137COUT1_228\))))
-- \Add4~142\ = CARRY((\Add3~140_combout\ & (!\Add2~140_combout\ & !\Add4~137\)) # (!\Add3~140_combout\ & ((!\Add4~137\) # (!\Add2~140_combout\))))
-- \Add4~142COUT1_230\ = CARRY((\Add3~140_combout\ & (!\Add2~140_combout\ & !\Add4~137COUT1_228\)) # (!\Add3~140_combout\ & ((!\Add4~137COUT1_228\) # (!\Add2~140_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "6917",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~140_combout\,
	datab => \Add2~140_combout\,
	cin => \Add4~127\,
	cin0 => \Add4~137\,
	cin1 => \Add4~137COUT1_228\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~140_combout\,
	cout0 => \Add4~142\,
	cout1 => \Add4~142COUT1_230\);

-- Location: LC_X11_Y7_N3
\Add4~145\ : maxv_lcell
-- Equation(s):
-- \Add4~145_combout\ = \Add3~145_combout\ $ (\Add2~145_combout\ $ (((!\Add4~127\ & \Add4~142\) # (\Add4~127\ & \Add4~142COUT1_230\))))
-- \Add4~147\ = CARRY((\Add3~145_combout\ & ((\Add2~145_combout\) # (!\Add4~142\))) # (!\Add3~145_combout\ & (\Add2~145_combout\ & !\Add4~142\)))
-- \Add4~147COUT1_232\ = CARRY((\Add3~145_combout\ & ((\Add2~145_combout\) # (!\Add4~142COUT1_230\))) # (!\Add3~145_combout\ & (\Add2~145_combout\ & !\Add4~142COUT1_230\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "968e",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~145_combout\,
	datab => \Add2~145_combout\,
	cin => \Add4~127\,
	cin0 => \Add4~142\,
	cin1 => \Add4~142COUT1_230\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~145_combout\,
	cout0 => \Add4~147\,
	cout1 => \Add4~147COUT1_232\);

-- Location: LC_X10_Y6_N8
\Add5~115\ : maxv_lcell
-- Equation(s):
-- \Add5~115_combout\ = (\Add4~120_combout\ $ (((!\Add5~97\ & \Add5~112\) # (\Add5~97\ & \Add5~112COUT1_217\))))
-- \Add5~117\ = CARRY(((!\Add5~112\) # (!\Add4~120_combout\)))
-- \Add5~117COUT1_219\ = CARRY(((!\Add5~112COUT1_217\) # (!\Add4~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add4~120_combout\,
	cin => \Add5~97\,
	cin0 => \Add5~112\,
	cin1 => \Add5~112COUT1_217\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~115_combout\,
	cout0 => \Add5~117\,
	cout1 => \Add5~117COUT1_219\);

-- Location: LC_X10_Y6_N9
\Add5~120\ : maxv_lcell
-- Equation(s):
-- \Add5~120_combout\ = \Add4~125_combout\ $ ((((!(!\Add5~97\ & \Add5~117\) # (\Add5~97\ & \Add5~117COUT1_219\)))))
-- \Add5~122\ = CARRY((\Add4~125_combout\ & ((!\Add5~117COUT1_219\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~125_combout\,
	cin => \Add5~97\,
	cin0 => \Add5~117\,
	cin1 => \Add5~117COUT1_219\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~120_combout\,
	cout => \Add5~122\);

-- Location: LC_X11_Y6_N0
\Add5~125\ : maxv_lcell
-- Equation(s):
-- \Add5~125_combout\ = \Add4~130_combout\ $ ((((\Add5~122\))))
-- \Add5~127\ = CARRY(((!\Add5~122\)) # (!\Add4~130_combout\))
-- \Add5~127COUT1_221\ = CARRY(((!\Add5~122\)) # (!\Add4~130_combout\))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~130_combout\,
	cin => \Add5~122\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~125_combout\,
	cout0 => \Add5~127\,
	cout1 => \Add5~127COUT1_221\);

-- Location: LC_X11_Y6_N1
\Add5~130\ : maxv_lcell
-- Equation(s):
-- \Add5~130_combout\ = \Add4~135_combout\ $ ((((!(!\Add5~122\ & \Add5~127\) # (\Add5~122\ & \Add5~127COUT1_221\)))))
-- \Add5~132\ = CARRY((\Add4~135_combout\ & ((!\Add5~127\))))
-- \Add5~132COUT1_223\ = CARRY((\Add4~135_combout\ & ((!\Add5~127COUT1_221\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~135_combout\,
	cin => \Add5~122\,
	cin0 => \Add5~127\,
	cin1 => \Add5~127COUT1_221\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~130_combout\,
	cout0 => \Add5~132\,
	cout1 => \Add5~132COUT1_223\);

-- Location: LC_X11_Y6_N2
\Add5~135\ : maxv_lcell
-- Equation(s):
-- \Add5~135_combout\ = (\Add4~140_combout\ $ (((!\Add5~122\ & \Add5~132\) # (\Add5~122\ & \Add5~132COUT1_223\))))
-- \Add5~137\ = CARRY(((!\Add5~132\) # (!\Add4~140_combout\)))
-- \Add5~137COUT1_225\ = CARRY(((!\Add5~132COUT1_223\) # (!\Add4~140_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add4~140_combout\,
	cin => \Add5~122\,
	cin0 => \Add5~132\,
	cin1 => \Add5~132COUT1_223\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~135_combout\,
	cout0 => \Add5~137\,
	cout1 => \Add5~137COUT1_225\);

-- Location: LC_X11_Y6_N3
\Add5~140\ : maxv_lcell
-- Equation(s):
-- \Add5~140_combout\ = \Add4~145_combout\ $ ((((!(!\Add5~122\ & \Add5~137\) # (\Add5~122\ & \Add5~137COUT1_225\)))))
-- \Add5~142\ = CARRY((\Add4~145_combout\ & ((!\Add5~137\))))
-- \Add5~142COUT1_227\ = CARRY((\Add4~145_combout\ & ((!\Add5~137COUT1_225\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~145_combout\,
	cin => \Add5~122\,
	cin0 => \Add5~137\,
	cin1 => \Add5~137COUT1_225\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~140_combout\,
	cout0 => \Add5~142\,
	cout1 => \Add5~142COUT1_227\);

-- Location: LC_X11_Y6_N7
\LessThan3~7\ : maxv_lcell
-- Equation(s):
-- \LessThan3~7_combout\ = (\Add5~115_combout\) # ((\Add5~130_combout\) # ((\Add5~125_combout\) # (\Add5~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~115_combout\,
	datab => \Add5~130_combout\,
	datac => \Add5~125_combout\,
	datad => \Add5~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~7_combout\);

-- Location: LC_X16_Y9_N4
\uni_departures[30]\ : maxv_lcell
-- Equation(s):
-- uni_departures(30) = DFFEAS(uni_departures(30) $ (((((!\uni_departures[25]~49\ & \uni_departures[29]~57\) # (\uni_departures[25]~49\ & \uni_departures[29]~57COUT1_136\))))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )
-- \uni_departures[30]~59\ = CARRY(((!\uni_departures[29]~57COUT1_136\)) # (!uni_departures(30)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => uni_departures(30),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[25]~49\,
	cin0 => \uni_departures[29]~57\,
	cin1 => \uni_departures[29]~57COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(30),
	cout => \uni_departures[30]~59\);

-- Location: LC_X16_Y6_N4
\uni_entrances[30]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(30) = DFFEAS(uni_entrances(30) $ (((((!\uni_entrances[25]~49\ & \uni_entrances[29]~57\) # (\uni_entrances[25]~49\ & \uni_entrances[29]~57COUT1_136\))))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[30]~59\ = CARRY(((!\uni_entrances[29]~57COUT1_136\)) # (!uni_entrances(30)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => uni_entrances(30),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[25]~49\,
	cin0 => \uni_entrances[29]~57\,
	cin1 => \uni_entrances[29]~57COUT1_136\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(30),
	cout => \uni_entrances[30]~59\);

-- Location: LC_X15_Y7_N4
\Add3~150\ : maxv_lcell
-- Equation(s):
-- \Add3~150_combout\ = uni_departures(30) $ (uni_entrances(30) $ (((!\Add3~127\ & \Add3~147\) # (\Add3~127\ & \Add3~147COUT1_232\))))
-- \Add3~152\ = CARRY((uni_departures(30) & (uni_entrances(30) & !\Add3~147COUT1_232\)) # (!uni_departures(30) & ((uni_entrances(30)) # (!\Add3~147COUT1_232\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "964d",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(30),
	datab => uni_entrances(30),
	cin => \Add3~127\,
	cin0 => \Add3~147\,
	cin1 => \Add3~147COUT1_232\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~150_combout\,
	cout => \Add3~152\);

-- Location: LC_X11_Y7_N4
\Add4~150\ : maxv_lcell
-- Equation(s):
-- \Add4~150_combout\ = \Add3~150_combout\ $ (\Add2~150_combout\ $ ((!(!\Add4~127\ & \Add4~147\) # (\Add4~127\ & \Add4~147COUT1_232\))))
-- \Add4~152\ = CARRY((\Add3~150_combout\ & (!\Add2~150_combout\ & !\Add4~147COUT1_232\)) # (!\Add3~150_combout\ & ((!\Add4~147COUT1_232\) # (!\Add2~150_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "6917",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~150_combout\,
	datab => \Add2~150_combout\,
	cin => \Add4~127\,
	cin0 => \Add4~147\,
	cin1 => \Add4~147COUT1_232\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~150_combout\,
	cout => \Add4~152\);

-- Location: LC_X11_Y6_N4
\Add5~145\ : maxv_lcell
-- Equation(s):
-- \Add5~145_combout\ = (\Add4~150_combout\ $ (((!\Add5~122\ & \Add5~142\) # (\Add5~122\ & \Add5~142COUT1_227\))))
-- \Add5~147\ = CARRY(((!\Add5~142COUT1_227\) # (!\Add4~150_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add4~150_combout\,
	cin => \Add5~122\,
	cin0 => \Add5~142\,
	cin1 => \Add5~142COUT1_227\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~145_combout\,
	cout => \Add5~147\);

-- Location: LC_X12_Y6_N2
\LessThan3~8\ : maxv_lcell
-- Equation(s):
-- \LessThan3~8_combout\ = (\Add5~140_combout\) # ((\LessThan3~7_combout\) # ((\Add5~145_combout\) # (\Add5~135_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~140_combout\,
	datab => \LessThan3~7_combout\,
	datac => \Add5~145_combout\,
	datad => \Add5~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~8_combout\);

-- Location: LC_X12_Y6_N3
\LessThan3~9\ : maxv_lcell
-- Equation(s):
-- \LessThan3~9_combout\ = (\LessThan3~5_combout\) # ((\LessThan3~6_combout\) # ((\LessThan3~4_combout\) # (\LessThan3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~5_combout\,
	datab => \LessThan3~6_combout\,
	datac => \LessThan3~4_combout\,
	datad => \LessThan3~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~9_combout\);

-- Location: LC_X12_Y6_N0
\uni_entrances[0]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(0) = DFFEAS(uni_entrances(0) $ (((!\Add5~150_combout\ & (\is_uni_car_entered~combout\ & \LessThan3~9_combout\)))), GLOBAL(\car_entered~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9ccc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => \Add5~150_combout\,
	datab => uni_entrances(0),
	datac => \is_uni_car_entered~combout\,
	datad => \LessThan3~9_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(0));

-- Location: LC_X13_Y6_N5
\uni_entrances[1]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(1) = DFFEAS(uni_entrances(1) $ ((uni_entrances(0))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[1]~1\ = CARRY((uni_entrances(1) & (uni_entrances(0))))
-- \uni_entrances[1]~1COUT1_90\ = CARRY((uni_entrances(1) & (uni_entrances(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => uni_entrances(1),
	datab => uni_entrances(0),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(1),
	cout0 => \uni_entrances[1]~1\,
	cout1 => \uni_entrances[1]~1COUT1_90\);

-- Location: LC_X13_Y6_N6
\uni_entrances[2]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(2) = DFFEAS(uni_entrances(2) $ ((((\uni_entrances[1]~1\)))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[2]~3\ = CARRY(((!\uni_entrances[1]~1\)) # (!uni_entrances(2)))
-- \uni_entrances[2]~3COUT1_92\ = CARRY(((!\uni_entrances[1]~1COUT1_90\)) # (!uni_entrances(2)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => uni_entrances(2),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin0 => \uni_entrances[1]~1\,
	cin1 => \uni_entrances[1]~1COUT1_90\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(2),
	cout0 => \uni_entrances[2]~3\,
	cout1 => \uni_entrances[2]~3COUT1_92\);

-- Location: LC_X13_Y6_N7
\uni_entrances[3]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(3) = DFFEAS((uni_entrances(3) $ ((!\uni_entrances[2]~3\))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[3]~5\ = CARRY(((uni_entrances(3) & !\uni_entrances[2]~3\)))
-- \uni_entrances[3]~5COUT1_94\ = CARRY(((uni_entrances(3) & !\uni_entrances[2]~3COUT1_92\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => uni_entrances(3),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin0 => \uni_entrances[2]~3\,
	cin1 => \uni_entrances[2]~3COUT1_92\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(3),
	cout0 => \uni_entrances[3]~5\,
	cout1 => \uni_entrances[3]~5COUT1_94\);

-- Location: LC_X13_Y6_N8
\uni_entrances[4]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(4) = DFFEAS(uni_entrances(4) $ ((((\uni_entrances[3]~5\)))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[4]~7\ = CARRY(((!\uni_entrances[3]~5\)) # (!uni_entrances(4)))
-- \uni_entrances[4]~7COUT1_96\ = CARRY(((!\uni_entrances[3]~5COUT1_94\)) # (!uni_entrances(4)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => uni_entrances(4),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin0 => \uni_entrances[3]~5\,
	cin1 => \uni_entrances[3]~5COUT1_94\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(4),
	cout0 => \uni_entrances[4]~7\,
	cout1 => \uni_entrances[4]~7COUT1_96\);

-- Location: LC_X13_Y6_N9
\uni_entrances[5]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(5) = DFFEAS((uni_entrances(5) $ ((!\uni_entrances[4]~7\))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )
-- \uni_entrances[5]~9\ = CARRY(((uni_entrances(5) & !\uni_entrances[4]~7COUT1_96\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	datab => uni_entrances(5),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin0 => \uni_entrances[4]~7\,
	cin1 => \uni_entrances[4]~7COUT1_96\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(5),
	cout => \uni_entrances[5]~9\);

-- Location: LC_X12_Y7_N0
\LessThan2~2\ : maxv_lcell
-- Equation(s):
-- \LessThan2~2_combout\ = (\Add3~65_combout\) # ((\Add3~55_combout\) # ((\Add3~60_combout\) # (\Add3~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~65_combout\,
	datab => \Add3~55_combout\,
	datac => \Add3~60_combout\,
	datad => \Add3~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~2_combout\);

-- Location: LC_X16_Y7_N9
\LessThan2~3\ : maxv_lcell
-- Equation(s):
-- \LessThan2~3_combout\ = (\Add3~80_combout\) # ((\Add3~70_combout\) # ((\Add3~75_combout\) # (\Add3~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~80_combout\,
	datab => \Add3~70_combout\,
	datac => \Add3~75_combout\,
	datad => \Add3~85_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~3_combout\);

-- Location: LC_X16_Y7_N6
\LessThan2~4\ : maxv_lcell
-- Equation(s):
-- \LessThan2~4_combout\ = (\Add3~90_combout\) # ((\Add3~100_combout\) # ((\Add3~105_combout\) # (\Add3~95_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~90_combout\,
	datab => \Add3~100_combout\,
	datac => \Add3~105_combout\,
	datad => \Add3~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~4_combout\);

-- Location: LC_X16_Y9_N5
\uni_departures[31]\ : maxv_lcell
-- Equation(s):
-- uni_departures(31) = DFFEAS(uni_departures(31) $ ((((!\uni_departures[30]~59\)))), GLOBAL(\car_exited~combout\), VCC, , \uni_departures[31]~63_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => uni_departures(31),
	aclr => GND,
	ena => \uni_departures[31]~63_combout\,
	cin => \uni_departures[30]~59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(31));

-- Location: LC_X15_Y7_N5
\Add3~155\ : maxv_lcell
-- Equation(s):
-- \Add3~155_combout\ = uni_entrances(31) $ (((\Add3~152\ $ (!uni_departures(31)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5aa5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(31),
	datad => uni_departures(31),
	cin => \Add3~152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add3~155_combout\);

-- Location: LC_X15_Y7_N9
\LessThan2~6\ : maxv_lcell
-- Equation(s):
-- \LessThan2~6_combout\ = (\Add3~145_combout\) # ((\Add3~140_combout\) # ((\Add3~130_combout\) # (\Add3~135_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~145_combout\,
	datab => \Add3~140_combout\,
	datac => \Add3~130_combout\,
	datad => \Add3~135_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~6_combout\);

-- Location: LC_X16_Y7_N8
\LessThan2~5\ : maxv_lcell
-- Equation(s):
-- \LessThan2~5_combout\ = (\Add3~125_combout\) # ((\Add3~115_combout\) # ((\Add3~120_combout\) # (\Add3~110_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~125_combout\,
	datab => \Add3~115_combout\,
	datac => \Add3~120_combout\,
	datad => \Add3~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~5_combout\);

-- Location: LC_X15_Y7_N8
\LessThan2~7\ : maxv_lcell
-- Equation(s):
-- \LessThan2~7_combout\ = (\Add3~155_combout\) # ((\LessThan2~6_combout\) # ((\Add3~150_combout\) # (\LessThan2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~155_combout\,
	datab => \LessThan2~6_combout\,
	datac => \Add3~150_combout\,
	datad => \LessThan2~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~7_combout\);

-- Location: LC_X15_Y7_N6
\LessThan2~8\ : maxv_lcell
-- Equation(s):
-- \LessThan2~8_combout\ = (\LessThan2~2_combout\) # ((\LessThan2~3_combout\) # ((\LessThan2~4_combout\) # (\LessThan2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~2_combout\,
	datab => \LessThan2~3_combout\,
	datac => \LessThan2~4_combout\,
	datad => \LessThan2~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~8_combout\);

-- Location: LC_X6_Y5_N0
\Add6~42\ : maxv_lcell
-- Equation(s):
-- \Add6~42_cout0\ = CARRY(((!reg_capacity(1))))
-- \Add6~42COUT1_54\ = CARRY(((!reg_capacity(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => reg_capacity(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~40\,
	cout0 => \Add6~42_cout0\,
	cout1 => \Add6~42COUT1_54\);

-- Location: LC_X6_Y5_N1
\Add6~35\ : maxv_lcell
-- Equation(s):
-- \Add6~35_combout\ = (reg_capacity(2) $ ((!\Add6~42_cout0\)))
-- \Add6~37\ = CARRY(((!reg_capacity(2) & !\Add6~42_cout0\)))
-- \Add6~37COUT1_56\ = CARRY(((!reg_capacity(2) & !\Add6~42COUT1_54\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => reg_capacity(2),
	cin0 => \Add6~42_cout0\,
	cin1 => \Add6~42COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~35_combout\,
	cout0 => \Add6~37\,
	cout1 => \Add6~37COUT1_56\);

-- Location: LC_X6_Y5_N2
\Add6~30\ : maxv_lcell
-- Equation(s):
-- \Add6~30_combout\ = reg_capacity(3) $ ((((!\Add6~37\))))
-- \Add6~32\ = CARRY(((!\Add6~37\)) # (!reg_capacity(3)))
-- \Add6~32COUT1_58\ = CARRY(((!\Add6~37COUT1_56\)) # (!reg_capacity(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a55f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => reg_capacity(3),
	cin0 => \Add6~37\,
	cin1 => \Add6~37COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~30_combout\,
	cout0 => \Add6~32\,
	cout1 => \Add6~32COUT1_58\);

-- Location: LC_X6_Y5_N3
\Add6~25\ : maxv_lcell
-- Equation(s):
-- \Add6~25_combout\ = (reg_capacity(4) $ ((!\Add6~32\)))
-- \Add6~27\ = CARRY(((!reg_capacity(4) & !\Add6~32\)))
-- \Add6~27COUT1_60\ = CARRY(((!reg_capacity(4) & !\Add6~32COUT1_58\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c303",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => reg_capacity(4),
	cin0 => \Add6~32\,
	cin1 => \Add6~32COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~25_combout\,
	cout0 => \Add6~27\,
	cout1 => \Add6~27COUT1_60\);

-- Location: LC_X6_Y5_N4
\Add6~20\ : maxv_lcell
-- Equation(s):
-- \Add6~20_combout\ = (reg_capacity(5) $ ((\Add6~27\)))
-- \Add6~22\ = CARRY(((reg_capacity(5)) # (!\Add6~27COUT1_60\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => reg_capacity(5),
	cin0 => \Add6~27\,
	cin1 => \Add6~27COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~20_combout\,
	cout => \Add6~22\);

-- Location: LC_X6_Y5_N5
\Add6~15\ : maxv_lcell
-- Equation(s):
-- \Add6~15_combout\ = (reg_capacity(6) $ ((\Add6~22\)))
-- \Add6~17\ = CARRY(((!\Add6~22\) # (!reg_capacity(6))))
-- \Add6~17COUT1_62\ = CARRY(((!\Add6~22\) # (!reg_capacity(6))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => reg_capacity(6),
	cin => \Add6~22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~15_combout\,
	cout0 => \Add6~17\,
	cout1 => \Add6~17COUT1_62\);

-- Location: LC_X6_Y5_N6
\Add6~10\ : maxv_lcell
-- Equation(s):
-- \Add6~10_combout\ = (reg_capacity(7) $ (((!\Add6~22\ & \Add6~17\) # (\Add6~22\ & \Add6~17COUT1_62\))))
-- \Add6~12\ = CARRY(((reg_capacity(7)) # (!\Add6~17\)))
-- \Add6~12COUT1_64\ = CARRY(((reg_capacity(7)) # (!\Add6~17COUT1_62\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3ccf",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => reg_capacity(7),
	cin => \Add6~22\,
	cin0 => \Add6~17\,
	cin1 => \Add6~17COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~10_combout\,
	cout0 => \Add6~12\,
	cout1 => \Add6~12COUT1_64\);

-- Location: LC_X6_Y5_N7
\Add6~5\ : maxv_lcell
-- Equation(s):
-- \Add6~5_combout\ = (reg_capacity(2) $ (((!\Add6~22\ & \Add6~12\) # (\Add6~22\ & \Add6~12COUT1_64\))))
-- \Add6~7\ = CARRY(((!\Add6~12\) # (!reg_capacity(2))))
-- \Add6~7COUT1_66\ = CARRY(((!\Add6~12COUT1_64\) # (!reg_capacity(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => reg_capacity(2),
	cin => \Add6~22\,
	cin0 => \Add6~12\,
	cin1 => \Add6~12COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~5_combout\,
	cout0 => \Add6~7\,
	cout1 => \Add6~7COUT1_66\);

-- Location: LC_X6_Y5_N8
\Add6~0\ : maxv_lcell
-- Equation(s):
-- \Add6~0_combout\ = (((!(!\Add6~22\ & \Add6~7\) # (\Add6~22\ & \Add6~7COUT1_66\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add6~22\,
	cin0 => \Add6~7\,
	cin1 => \Add6~7COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~0_combout\);

-- Location: LC_X11_Y5_N9
\LessThan2~9\ : maxv_lcell
-- Equation(s):
-- \LessThan2~9_combout\ = ((\Add3~5_combout\ & ((\Add3~0_combout\) # (!reg_capacity(1)))) # (!\Add3~5_combout\ & (\Add3~0_combout\ & !reg_capacity(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add3~5_combout\,
	datac => \Add3~0_combout\,
	datad => reg_capacity(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~9_combout\);

-- Location: LC_X11_Y5_N4
\LessThan2~10\ : maxv_lcell
-- Equation(s):
-- \LessThan2~10_combout\ = ((\LessThan2~9_combout\ & ((\Add3~10_combout\) # (!\Add6~35_combout\))) # (!\LessThan2~9_combout\ & (\Add3~10_combout\ & !\Add6~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~9_combout\,
	datac => \Add3~10_combout\,
	datad => \Add6~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~10_combout\);

-- Location: LC_X11_Y5_N1
\LessThan2~11\ : maxv_lcell
-- Equation(s):
-- \LessThan2~11_combout\ = ((\Add3~15_combout\ & ((\LessThan2~10_combout\) # (!\Add6~30_combout\))) # (!\Add3~15_combout\ & (\LessThan2~10_combout\ & !\Add6~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add3~15_combout\,
	datac => \LessThan2~10_combout\,
	datad => \Add6~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~11_combout\);

-- Location: LC_X11_Y5_N2
\LessThan2~17\ : maxv_lcell
-- Equation(s):
-- \LessThan2~17_combout\ = (\Add3~20_combout\ & (((\LessThan2~11_combout\) # (!\Add6~25_combout\)))) # (!\Add3~20_combout\ & (((!\Add6~25_combout\ & \LessThan2~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~20_combout\,
	datac => \Add6~25_combout\,
	datad => \LessThan2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~17_combout\);

-- Location: LC_X11_Y5_N3
\LessThan2~12\ : maxv_lcell
-- Equation(s):
-- \LessThan2~12_combout\ = ((\Add3~25_combout\ & ((\LessThan2~17_combout\) # (!\Add6~20_combout\))) # (!\Add3~25_combout\ & (!\Add6~20_combout\ & \LessThan2~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add3~25_combout\,
	datac => \Add6~20_combout\,
	datad => \LessThan2~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~12_combout\);

-- Location: LC_X11_Y5_N5
\LessThan2~13\ : maxv_lcell
-- Equation(s):
-- \LessThan2~13_combout\ = (\Add3~30_combout\ & (((\LessThan2~12_combout\)) # (!\Add6~15_combout\))) # (!\Add3~30_combout\ & (!\Add6~15_combout\ & ((\LessThan2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~30_combout\,
	datab => \Add6~15_combout\,
	datad => \LessThan2~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~13_combout\);

-- Location: LC_X11_Y5_N6
\LessThan2~14\ : maxv_lcell
-- Equation(s):
-- \LessThan2~14_combout\ = ((\Add3~35_combout\ & ((\LessThan2~13_combout\) # (!\Add6~10_combout\))) # (!\Add3~35_combout\ & (!\Add6~10_combout\ & \LessThan2~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add3~35_combout\,
	datac => \Add6~10_combout\,
	datad => \LessThan2~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~14_combout\);

-- Location: LC_X11_Y5_N7
\LessThan2~15\ : maxv_lcell
-- Equation(s):
-- \LessThan2~15_combout\ = ((\Add3~40_combout\ & ((\LessThan2~14_combout\) # (!\Add6~5_combout\))) # (!\Add3~40_combout\ & (!\Add6~5_combout\ & \LessThan2~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add3~40_combout\,
	datac => \Add6~5_combout\,
	datad => \LessThan2~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~15_combout\);

-- Location: LC_X11_Y5_N8
\LessThan2~16\ : maxv_lcell
-- Equation(s):
-- \LessThan2~16_combout\ = (\LessThan2~8_combout\) # ((\Add3~45_combout\ & ((\LessThan2~15_combout\) # (!\Add6~0_combout\))) # (!\Add3~45_combout\ & (!\Add6~0_combout\ & \LessThan2~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "efce",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~45_combout\,
	datab => \LessThan2~8_combout\,
	datac => \Add6~0_combout\,
	datad => \LessThan2~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan2~16_combout\);

-- Location: LC_X11_Y6_N6
\reg_entrances[31]~62\ : maxv_lcell
-- Equation(s):
-- \reg_entrances[31]~62_combout\ = (!\is_uni_car_entered~combout\ & ((\LessThan2~16_combout\ & ((!\Add5~150_combout\))) # (!\LessThan2~16_combout\ & (!\Add7~181_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0511",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \is_uni_car_entered~combout\,
	datab => \Add7~181_combout\,
	datac => \Add5~150_combout\,
	datad => \LessThan2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \reg_entrances[31]~62_combout\);

-- Location: LC_X11_Y8_N1
\Add7~102\ : maxv_lcell
-- Equation(s):
-- \Add7~102_combout\ = ((\LessThan2~16_combout\ & ((\Add5~80_combout\))) # (!\LessThan2~16_combout\ & (\Add7~97_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~97_combout\,
	datab => \Add5~80_combout\,
	datad => \LessThan2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~102_combout\);

-- Location: LC_X11_Y8_N9
\Add7~96\ : maxv_lcell
-- Equation(s):
-- \Add7~96_combout\ = ((\LessThan2~16_combout\ & ((\Add5~75_combout\))) # (!\LessThan2~16_combout\ & (\Add7~91_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~91_combout\,
	datab => \Add5~75_combout\,
	datad => \LessThan2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~96_combout\);

-- Location: LC_X10_Y8_N3
\Add7~114\ : maxv_lcell
-- Equation(s):
-- \Add7~114_combout\ = ((\LessThan2~16_combout\ & ((\Add5~90_combout\))) # (!\LessThan2~16_combout\ & (\Add7~109_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add7~109_combout\,
	datac => \Add5~90_combout\,
	datad => \LessThan2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~114_combout\);

-- Location: LC_X10_Y8_N4
\LessThan4~5\ : maxv_lcell
-- Equation(s):
-- \LessThan4~5_combout\ = (\Add7~114_combout\) # ((\LessThan2~16_combout\ & (\Add5~85_combout\)) # (!\LessThan2~16_combout\ & ((\Add7~103_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffd8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~16_combout\,
	datab => \Add5~85_combout\,
	datac => \Add7~103_combout\,
	datad => \Add7~114_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~5_combout\);

-- Location: LC_X10_Y8_N6
\Add7~138\ : maxv_lcell
-- Equation(s):
-- \Add7~138_combout\ = (\LessThan2~16_combout\ & (((\Add5~110_combout\)))) # (!\LessThan2~16_combout\ & (((\Add7~133_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~16_combout\,
	datac => \Add7~133_combout\,
	datad => \Add5~110_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~138_combout\);

-- Location: LC_X10_Y8_N2
\Add7~126\ : maxv_lcell
-- Equation(s):
-- \Add7~126_combout\ = (\LessThan2~16_combout\ & (((\Add5~100_combout\)))) # (!\LessThan2~16_combout\ & (((\Add7~121_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~16_combout\,
	datac => \Add7~121_combout\,
	datad => \Add5~100_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~126_combout\);

-- Location: LC_X10_Y8_N5
\Add7~132\ : maxv_lcell
-- Equation(s):
-- \Add7~132_combout\ = (\LessThan2~16_combout\ & (((\Add5~105_combout\)))) # (!\LessThan2~16_combout\ & (((\Add7~127_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~16_combout\,
	datac => \Add7~127_combout\,
	datad => \Add5~105_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~132_combout\);

-- Location: LC_X10_Y8_N7
\Add7~120\ : maxv_lcell
-- Equation(s):
-- \Add7~120_combout\ = (\LessThan2~16_combout\ & (((\Add5~95_combout\)))) # (!\LessThan2~16_combout\ & (((\Add7~115_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~16_combout\,
	datac => \Add7~115_combout\,
	datad => \Add5~95_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~120_combout\);

-- Location: LC_X10_Y8_N8
\LessThan4~6\ : maxv_lcell
-- Equation(s):
-- \LessThan4~6_combout\ = (\Add7~138_combout\) # ((\Add7~126_combout\) # ((\Add7~132_combout\) # (\Add7~120_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~138_combout\,
	datab => \Add7~126_combout\,
	datac => \Add7~132_combout\,
	datad => \Add7~120_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~6_combout\);

-- Location: LC_X10_Y8_N9
\LessThan4~7\ : maxv_lcell
-- Equation(s):
-- \LessThan4~7_combout\ = (\Add7~102_combout\) # ((\Add7~96_combout\) # ((\LessThan4~5_combout\) # (\LessThan4~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~102_combout\,
	datab => \Add7~96_combout\,
	datac => \LessThan4~5_combout\,
	datad => \LessThan4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~7_combout\);

-- Location: LC_X10_Y5_N6
\Add7~66\ : maxv_lcell
-- Equation(s):
-- \Add7~66_combout\ = (\LessThan2~16_combout\ & (((\Add5~50_combout\)))) # (!\LessThan2~16_combout\ & (\Add7~61_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~61_combout\,
	datab => \LessThan2~16_combout\,
	datad => \Add5~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~66_combout\);

-- Location: LC_X10_Y5_N9
\Add7~48\ : maxv_lcell
-- Equation(s):
-- \Add7~48_combout\ = ((\LessThan2~16_combout\ & (\Add5~35_combout\)) # (!\LessThan2~16_combout\ & ((\Add7~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~35_combout\,
	datab => \Add7~43_combout\,
	datad => \LessThan2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~48_combout\);

-- Location: LC_X10_Y5_N5
\Add7~54\ : maxv_lcell
-- Equation(s):
-- \Add7~54_combout\ = ((\LessThan2~16_combout\ & ((\Add5~40_combout\))) # (!\LessThan2~16_combout\ & (\Add7~49_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add7~49_combout\,
	datac => \Add5~40_combout\,
	datad => \LessThan2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~54_combout\);

-- Location: LC_X10_Y5_N1
\Add7~60\ : maxv_lcell
-- Equation(s):
-- \Add7~60_combout\ = ((\LessThan2~16_combout\ & (\Add5~45_combout\)) # (!\LessThan2~16_combout\ & ((\Add7~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~45_combout\,
	datac => \Add7~55_combout\,
	datad => \LessThan2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~60_combout\);

-- Location: LC_X10_Y5_N7
\LessThan4~2\ : maxv_lcell
-- Equation(s):
-- \LessThan4~2_combout\ = (\Add7~66_combout\) # ((\Add7~48_combout\) # ((\Add7~54_combout\) # (\Add7~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~66_combout\,
	datab => \Add7~48_combout\,
	datac => \Add7~54_combout\,
	datad => \Add7~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~2_combout\);

-- Location: LC_X8_Y5_N4
\Add7~18\ : maxv_lcell
-- Equation(s):
-- \Add7~18_combout\ = ((\LessThan2~16_combout\ & (\Add5~10_combout\)) # (!\LessThan2~16_combout\ & ((\Add7~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add5~10_combout\,
	datac => \Add7~13_combout\,
	datad => \LessThan2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~18_combout\);

-- Location: LC_X8_Y5_N1
\Add7~6\ : maxv_lcell
-- Equation(s):
-- \Add7~6_combout\ = ((\LessThan2~16_combout\ & ((\Add5~0_combout\))) # (!\LessThan2~16_combout\ & (\Add7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add7~1_combout\,
	datac => \Add5~0_combout\,
	datad => \LessThan2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~6_combout\);

-- Location: LC_X8_Y5_N0
\Add7~12\ : maxv_lcell
-- Equation(s):
-- \Add7~12_combout\ = ((\LessThan2~16_combout\ & (\Add5~5_combout\)) # (!\LessThan2~16_combout\ & ((\Add7~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add5~5_combout\,
	datac => \Add7~7_combout\,
	datad => \LessThan2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~12_combout\);

-- Location: LC_X8_Y5_N9
\Add7~0\ : maxv_lcell
-- Equation(s):
-- \Add7~0_combout\ = ((\LessThan2~16_combout\ & ((\Add4~0_combout\))) # (!\LessThan2~16_combout\ & (\Add2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add2~0_combout\,
	datac => \Add4~0_combout\,
	datad => \LessThan2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~0_combout\);

-- Location: LC_X8_Y5_N7
\LessThan4~0\ : maxv_lcell
-- Equation(s):
-- \LessThan4~0_combout\ = (\Add7~18_combout\) # ((\Add7~6_combout\) # ((\Add7~12_combout\) # (\Add7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~18_combout\,
	datab => \Add7~6_combout\,
	datac => \Add7~12_combout\,
	datad => \Add7~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~0_combout\);

-- Location: LC_X8_Y5_N8
\Add7~36\ : maxv_lcell
-- Equation(s):
-- \Add7~36_combout\ = ((\LessThan2~16_combout\ & (\Add5~25_combout\)) # (!\LessThan2~16_combout\ & ((\Add7~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add5~25_combout\,
	datac => \Add7~31_combout\,
	datad => \LessThan2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~36_combout\);

-- Location: LC_X8_Y5_N2
\Add7~24\ : maxv_lcell
-- Equation(s):
-- \Add7~24_combout\ = ((\LessThan2~16_combout\ & ((\Add5~15_combout\))) # (!\LessThan2~16_combout\ & (\Add7~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add7~19_combout\,
	datac => \Add5~15_combout\,
	datad => \LessThan2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~24_combout\);

-- Location: LC_X8_Y5_N5
\Add7~30\ : maxv_lcell
-- Equation(s):
-- \Add7~30_combout\ = ((\LessThan2~16_combout\ & ((\Add5~20_combout\))) # (!\LessThan2~16_combout\ & (\Add7~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~25_combout\,
	datac => \Add5~20_combout\,
	datad => \LessThan2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~30_combout\);

-- Location: LC_X8_Y5_N3
\Add7~42\ : maxv_lcell
-- Equation(s):
-- \Add7~42_combout\ = ((\LessThan2~16_combout\ & ((\Add5~30_combout\))) # (!\LessThan2~16_combout\ & (\Add7~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~37_combout\,
	datac => \Add5~30_combout\,
	datad => \LessThan2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~42_combout\);

-- Location: LC_X8_Y5_N6
\LessThan4~1\ : maxv_lcell
-- Equation(s):
-- \LessThan4~1_combout\ = (\Add7~36_combout\) # ((\Add7~24_combout\) # ((\Add7~30_combout\) # (\Add7~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~36_combout\,
	datab => \Add7~24_combout\,
	datac => \Add7~30_combout\,
	datad => \Add7~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~1_combout\);

-- Location: LC_X10_Y5_N4
\Add7~84\ : maxv_lcell
-- Equation(s):
-- \Add7~84_combout\ = ((\LessThan2~16_combout\ & ((\Add5~65_combout\))) # (!\LessThan2~16_combout\ & (\Add7~79_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~16_combout\,
	datac => \Add7~79_combout\,
	datad => \Add5~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~84_combout\);

-- Location: LC_X10_Y5_N2
\Add7~78\ : maxv_lcell
-- Equation(s):
-- \Add7~78_combout\ = ((\LessThan2~16_combout\ & (\Add5~60_combout\)) # (!\LessThan2~16_combout\ & ((\Add7~73_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~60_combout\,
	datac => \LessThan2~16_combout\,
	datad => \Add7~73_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~78_combout\);

-- Location: LC_X8_Y8_N9
\Add7~72\ : maxv_lcell
-- Equation(s):
-- \Add7~72_combout\ = ((\LessThan2~16_combout\ & (\Add5~55_combout\)) # (!\LessThan2~16_combout\ & ((\Add7~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add5~55_combout\,
	datac => \Add7~67_combout\,
	datad => \LessThan2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~72_combout\);

-- Location: LC_X10_Y5_N8
\Add7~90\ : maxv_lcell
-- Equation(s):
-- \Add7~90_combout\ = ((\LessThan2~16_combout\ & ((\Add5~70_combout\))) # (!\LessThan2~16_combout\ & (\Add7~85_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \LessThan2~16_combout\,
	datac => \Add7~85_combout\,
	datad => \Add5~70_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~90_combout\);

-- Location: LC_X9_Y8_N5
\LessThan4~3\ : maxv_lcell
-- Equation(s):
-- \LessThan4~3_combout\ = (\Add7~84_combout\) # ((\Add7~78_combout\) # ((\Add7~72_combout\) # (\Add7~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~84_combout\,
	datab => \Add7~78_combout\,
	datac => \Add7~72_combout\,
	datad => \Add7~90_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~3_combout\);

-- Location: LC_X9_Y8_N6
\LessThan4~4\ : maxv_lcell
-- Equation(s):
-- \LessThan4~4_combout\ = (\LessThan4~2_combout\) # ((\LessThan4~0_combout\) # ((\LessThan4~1_combout\) # (\LessThan4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan4~2_combout\,
	datab => \LessThan4~0_combout\,
	datac => \LessThan4~1_combout\,
	datad => \LessThan4~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~4_combout\);

-- Location: LC_X9_Y8_N4
\Add7~168\ : maxv_lcell
-- Equation(s):
-- \Add7~168_combout\ = ((\LessThan2~16_combout\ & ((\Add5~135_combout\))) # (!\LessThan2~16_combout\ & (\Add7~163_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~163_combout\,
	datac => \Add5~135_combout\,
	datad => \LessThan2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~168_combout\);

-- Location: LC_X11_Y6_N9
\Add7~180\ : maxv_lcell
-- Equation(s):
-- \Add7~180_combout\ = ((\LessThan2~16_combout\ & ((\Add5~145_combout\))) # (!\LessThan2~16_combout\ & (\Add7~175_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add7~175_combout\,
	datac => \Add5~145_combout\,
	datad => \LessThan2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~180_combout\);

-- Location: LC_X10_Y5_N0
\Add7~174\ : maxv_lcell
-- Equation(s):
-- \Add7~174_combout\ = ((\LessThan2~16_combout\ & ((\Add5~140_combout\))) # (!\LessThan2~16_combout\ & (\Add7~169_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add7~169_combout\,
	datac => \Add5~140_combout\,
	datad => \LessThan2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~174_combout\);

-- Location: LC_X9_Y8_N3
\Add7~144\ : maxv_lcell
-- Equation(s):
-- \Add7~144_combout\ = ((\LessThan2~16_combout\ & ((\Add5~115_combout\))) # (!\LessThan2~16_combout\ & (\Add7~139_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~139_combout\,
	datab => \Add5~115_combout\,
	datad => \LessThan2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~144_combout\);

-- Location: LC_X9_Y8_N2
\Add7~150\ : maxv_lcell
-- Equation(s):
-- \Add7~150_combout\ = ((\LessThan2~16_combout\ & ((\Add5~120_combout\))) # (!\LessThan2~16_combout\ & (\Add7~145_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add7~145_combout\,
	datac => \Add5~120_combout\,
	datad => \LessThan2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~150_combout\);

-- Location: LC_X10_Y8_N0
\Add7~162\ : maxv_lcell
-- Equation(s):
-- \Add7~162_combout\ = (\LessThan2~16_combout\ & (((\Add5~130_combout\)))) # (!\LessThan2~16_combout\ & (((\Add7~157_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~16_combout\,
	datac => \Add7~157_combout\,
	datad => \Add5~130_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~162_combout\);

-- Location: LC_X10_Y8_N1
\Add7~156\ : maxv_lcell
-- Equation(s):
-- \Add7~156_combout\ = (\LessThan2~16_combout\ & (((\Add5~125_combout\)))) # (!\LessThan2~16_combout\ & (\Add7~151_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan2~16_combout\,
	datab => \Add7~151_combout\,
	datad => \Add5~125_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~156_combout\);

-- Location: LC_X9_Y8_N7
\LessThan4~8\ : maxv_lcell
-- Equation(s):
-- \LessThan4~8_combout\ = (\Add7~144_combout\) # ((\Add7~150_combout\) # ((\Add7~162_combout\) # (\Add7~156_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~144_combout\,
	datab => \Add7~150_combout\,
	datac => \Add7~162_combout\,
	datad => \Add7~156_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~8_combout\);

-- Location: LC_X9_Y8_N8
\LessThan4~9\ : maxv_lcell
-- Equation(s):
-- \LessThan4~9_combout\ = (\Add7~168_combout\) # ((\Add7~180_combout\) # ((\Add7~174_combout\) # (\LessThan4~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~168_combout\,
	datab => \Add7~180_combout\,
	datac => \Add7~174_combout\,
	datad => \LessThan4~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~9_combout\);

-- Location: LC_X9_Y8_N9
\reg_entrances[31]~63\ : maxv_lcell
-- Equation(s):
-- \reg_entrances[31]~63_combout\ = (\reg_entrances[31]~62_combout\ & ((\LessThan4~7_combout\) # ((\LessThan4~4_combout\) # (\LessThan4~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaa8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \reg_entrances[31]~62_combout\,
	datab => \LessThan4~7_combout\,
	datac => \LessThan4~4_combout\,
	datad => \LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \reg_entrances[31]~63_combout\);

-- Location: LC_X8_Y8_N5
\reg_entrances[31]\ : maxv_lcell
-- Equation(s):
-- reg_entrances(31) = DFFEAS(reg_entrances(31) $ ((((!\reg_entrances[30]~59\)))), GLOBAL(\car_entered~combout\), VCC, , \reg_entrances[31]~63_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => reg_entrances(31),
	aclr => GND,
	ena => \reg_entrances[31]~63_combout\,
	cin => \reg_entrances[30]~59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => reg_entrances(31));

-- Location: LC_X7_Y7_N5
\Add2~155\ : maxv_lcell
-- Equation(s):
-- \Add2~155_combout\ = (reg_entrances(31) $ (\Add2~152\ $ (!reg_departures(31))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3cc3",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => reg_entrances(31),
	datad => reg_departures(31),
	cin => \Add2~152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add2~155_combout\);

-- Location: LC_X11_Y7_N5
\Add4~155\ : maxv_lcell
-- Equation(s):
-- \Add4~155_combout\ = \Add2~155_combout\ $ (((\Add4~152\ $ (\Add3~155_combout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~155_combout\,
	datad => \Add3~155_combout\,
	cin => \Add4~152\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add4~155_combout\);

-- Location: LC_X11_Y6_N5
\Add5~150\ : maxv_lcell
-- Equation(s):
-- \Add5~150_combout\ = ((\Add5~147\ $ (!\Add4~155_combout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "f00f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datad => \Add4~155_combout\,
	cin => \Add5~147\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add5~150_combout\);

-- Location: LC_X12_Y6_N4
\uni_entrances[31]~63\ : maxv_lcell
-- Equation(s):
-- \uni_entrances[31]~63_combout\ = (!\Add5~150_combout\ & (((\is_uni_car_entered~combout\ & \LessThan3~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~150_combout\,
	datac => \is_uni_car_entered~combout\,
	datad => \LessThan3~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uni_entrances[31]~63_combout\);

-- Location: LC_X16_Y6_N5
\uni_entrances[31]\ : maxv_lcell
-- Equation(s):
-- uni_entrances(31) = DFFEAS(uni_entrances(31) $ ((((!\uni_entrances[30]~59\)))), GLOBAL(\car_entered~combout\), VCC, , \uni_entrances[31]~63_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_entered~combout\,
	dataa => uni_entrances(31),
	aclr => GND,
	ena => \uni_entrances[31]~63_combout\,
	cin => \uni_entrances[30]~59\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_entrances(31));

-- Location: LC_X12_Y8_N4
\LessThan5~157\ : maxv_lcell
-- Equation(s):
-- \LessThan5~157_cout\ = CARRY((!uni_departures(0) & (uni_entrances(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff44",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(0),
	datab => uni_entrances(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~155\,
	cout => \LessThan5~157_cout\);

-- Location: LC_X12_Y8_N5
\LessThan5~152\ : maxv_lcell
-- Equation(s):
-- \LessThan5~152_cout0\ = CARRY((uni_entrances(1) & (uni_departures(1) & !\LessThan5~157_cout\)) # (!uni_entrances(1) & ((uni_departures(1)) # (!\LessThan5~157_cout\))))
-- \LessThan5~152COUT1_186\ = CARRY((uni_entrances(1) & (uni_departures(1) & !\LessThan5~157_cout\)) # (!uni_entrances(1) & ((uni_departures(1)) # (!\LessThan5~157_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(1),
	datab => uni_departures(1),
	cin => \LessThan5~157_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~150\,
	cout0 => \LessThan5~152_cout0\,
	cout1 => \LessThan5~152COUT1_186\);

-- Location: LC_X12_Y8_N6
\LessThan5~147\ : maxv_lcell
-- Equation(s):
-- \LessThan5~147_cout0\ = CARRY((uni_departures(2) & (uni_entrances(2) & !\LessThan5~152_cout0\)) # (!uni_departures(2) & ((uni_entrances(2)) # (!\LessThan5~152_cout0\))))
-- \LessThan5~147COUT1_188\ = CARRY((uni_departures(2) & (uni_entrances(2) & !\LessThan5~152COUT1_186\)) # (!uni_departures(2) & ((uni_entrances(2)) # (!\LessThan5~152COUT1_186\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(2),
	datab => uni_entrances(2),
	cin => \LessThan5~157_cout\,
	cin0 => \LessThan5~152_cout0\,
	cin1 => \LessThan5~152COUT1_186\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~145\,
	cout0 => \LessThan5~147_cout0\,
	cout1 => \LessThan5~147COUT1_188\);

-- Location: LC_X12_Y8_N7
\LessThan5~142\ : maxv_lcell
-- Equation(s):
-- \LessThan5~142_cout0\ = CARRY((uni_entrances(3) & (uni_departures(3) & !\LessThan5~147_cout0\)) # (!uni_entrances(3) & ((uni_departures(3)) # (!\LessThan5~147_cout0\))))
-- \LessThan5~142COUT1_190\ = CARRY((uni_entrances(3) & (uni_departures(3) & !\LessThan5~147COUT1_188\)) # (!uni_entrances(3) & ((uni_departures(3)) # (!\LessThan5~147COUT1_188\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(3),
	datab => uni_departures(3),
	cin => \LessThan5~157_cout\,
	cin0 => \LessThan5~147_cout0\,
	cin1 => \LessThan5~147COUT1_188\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~140\,
	cout0 => \LessThan5~142_cout0\,
	cout1 => \LessThan5~142COUT1_190\);

-- Location: LC_X12_Y8_N8
\LessThan5~137\ : maxv_lcell
-- Equation(s):
-- \LessThan5~137_cout0\ = CARRY((uni_departures(4) & (uni_entrances(4) & !\LessThan5~142_cout0\)) # (!uni_departures(4) & ((uni_entrances(4)) # (!\LessThan5~142_cout0\))))
-- \LessThan5~137COUT1_192\ = CARRY((uni_departures(4) & (uni_entrances(4) & !\LessThan5~142COUT1_190\)) # (!uni_departures(4) & ((uni_entrances(4)) # (!\LessThan5~142COUT1_190\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(4),
	datab => uni_entrances(4),
	cin => \LessThan5~157_cout\,
	cin0 => \LessThan5~142_cout0\,
	cin1 => \LessThan5~142COUT1_190\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~135\,
	cout0 => \LessThan5~137_cout0\,
	cout1 => \LessThan5~137COUT1_192\);

-- Location: LC_X12_Y8_N9
\LessThan5~132\ : maxv_lcell
-- Equation(s):
-- \LessThan5~132_cout\ = CARRY((uni_departures(5) & ((!\LessThan5~137COUT1_192\) # (!uni_entrances(5)))) # (!uni_departures(5) & (!uni_entrances(5) & !\LessThan5~137COUT1_192\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(5),
	datab => uni_entrances(5),
	cin => \LessThan5~157_cout\,
	cin0 => \LessThan5~137_cout0\,
	cin1 => \LessThan5~137COUT1_192\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~130\,
	cout => \LessThan5~132_cout\);

-- Location: LC_X13_Y8_N0
\LessThan5~127\ : maxv_lcell
-- Equation(s):
-- \LessThan5~127_cout0\ = CARRY((uni_departures(6) & (uni_entrances(6) & !\LessThan5~132_cout\)) # (!uni_departures(6) & ((uni_entrances(6)) # (!\LessThan5~132_cout\))))
-- \LessThan5~127COUT1_194\ = CARRY((uni_departures(6) & (uni_entrances(6) & !\LessThan5~132_cout\)) # (!uni_departures(6) & ((uni_entrances(6)) # (!\LessThan5~132_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(6),
	datab => uni_entrances(6),
	cin => \LessThan5~132_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~125\,
	cout0 => \LessThan5~127_cout0\,
	cout1 => \LessThan5~127COUT1_194\);

-- Location: LC_X13_Y8_N1
\LessThan5~122\ : maxv_lcell
-- Equation(s):
-- \LessThan5~122_cout0\ = CARRY((uni_entrances(7) & (uni_departures(7) & !\LessThan5~127_cout0\)) # (!uni_entrances(7) & ((uni_departures(7)) # (!\LessThan5~127_cout0\))))
-- \LessThan5~122COUT1_196\ = CARRY((uni_entrances(7) & (uni_departures(7) & !\LessThan5~127COUT1_194\)) # (!uni_entrances(7) & ((uni_departures(7)) # (!\LessThan5~127COUT1_194\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(7),
	datab => uni_departures(7),
	cin => \LessThan5~132_cout\,
	cin0 => \LessThan5~127_cout0\,
	cin1 => \LessThan5~127COUT1_194\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~120\,
	cout0 => \LessThan5~122_cout0\,
	cout1 => \LessThan5~122COUT1_196\);

-- Location: LC_X13_Y8_N2
\LessThan5~117\ : maxv_lcell
-- Equation(s):
-- \LessThan5~117_cout0\ = CARRY((uni_departures(8) & (uni_entrances(8) & !\LessThan5~122_cout0\)) # (!uni_departures(8) & ((uni_entrances(8)) # (!\LessThan5~122_cout0\))))
-- \LessThan5~117COUT1_198\ = CARRY((uni_departures(8) & (uni_entrances(8) & !\LessThan5~122COUT1_196\)) # (!uni_departures(8) & ((uni_entrances(8)) # (!\LessThan5~122COUT1_196\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(8),
	datab => uni_entrances(8),
	cin => \LessThan5~132_cout\,
	cin0 => \LessThan5~122_cout0\,
	cin1 => \LessThan5~122COUT1_196\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~115\,
	cout0 => \LessThan5~117_cout0\,
	cout1 => \LessThan5~117COUT1_198\);

-- Location: LC_X13_Y8_N3
\LessThan5~112\ : maxv_lcell
-- Equation(s):
-- \LessThan5~112_cout0\ = CARRY((uni_departures(9) & ((!\LessThan5~117_cout0\) # (!uni_entrances(9)))) # (!uni_departures(9) & (!uni_entrances(9) & !\LessThan5~117_cout0\)))
-- \LessThan5~112COUT1_200\ = CARRY((uni_departures(9) & ((!\LessThan5~117COUT1_198\) # (!uni_entrances(9)))) # (!uni_departures(9) & (!uni_entrances(9) & !\LessThan5~117COUT1_198\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(9),
	datab => uni_entrances(9),
	cin => \LessThan5~132_cout\,
	cin0 => \LessThan5~117_cout0\,
	cin1 => \LessThan5~117COUT1_198\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~110\,
	cout0 => \LessThan5~112_cout0\,
	cout1 => \LessThan5~112COUT1_200\);

-- Location: LC_X13_Y8_N4
\LessThan5~107\ : maxv_lcell
-- Equation(s):
-- \LessThan5~107_cout\ = CARRY((uni_entrances(10) & ((!\LessThan5~112COUT1_200\) # (!uni_departures(10)))) # (!uni_entrances(10) & (!uni_departures(10) & !\LessThan5~112COUT1_200\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(10),
	datab => uni_departures(10),
	cin => \LessThan5~132_cout\,
	cin0 => \LessThan5~112_cout0\,
	cin1 => \LessThan5~112COUT1_200\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~105\,
	cout => \LessThan5~107_cout\);

-- Location: LC_X13_Y8_N5
\LessThan5~102\ : maxv_lcell
-- Equation(s):
-- \LessThan5~102_cout0\ = CARRY((uni_departures(11) & ((!\LessThan5~107_cout\) # (!uni_entrances(11)))) # (!uni_departures(11) & (!uni_entrances(11) & !\LessThan5~107_cout\)))
-- \LessThan5~102COUT1_202\ = CARRY((uni_departures(11) & ((!\LessThan5~107_cout\) # (!uni_entrances(11)))) # (!uni_departures(11) & (!uni_entrances(11) & !\LessThan5~107_cout\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(11),
	datab => uni_entrances(11),
	cin => \LessThan5~107_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~100\,
	cout0 => \LessThan5~102_cout0\,
	cout1 => \LessThan5~102COUT1_202\);

-- Location: LC_X13_Y8_N6
\LessThan5~97\ : maxv_lcell
-- Equation(s):
-- \LessThan5~97_cout0\ = CARRY((uni_entrances(12) & ((!\LessThan5~102_cout0\) # (!uni_departures(12)))) # (!uni_entrances(12) & (!uni_departures(12) & !\LessThan5~102_cout0\)))
-- \LessThan5~97COUT1_204\ = CARRY((uni_entrances(12) & ((!\LessThan5~102COUT1_202\) # (!uni_departures(12)))) # (!uni_entrances(12) & (!uni_departures(12) & !\LessThan5~102COUT1_202\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(12),
	datab => uni_departures(12),
	cin => \LessThan5~107_cout\,
	cin0 => \LessThan5~102_cout0\,
	cin1 => \LessThan5~102COUT1_202\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~95\,
	cout0 => \LessThan5~97_cout0\,
	cout1 => \LessThan5~97COUT1_204\);

-- Location: LC_X13_Y8_N7
\LessThan5~92\ : maxv_lcell
-- Equation(s):
-- \LessThan5~92_cout0\ = CARRY((uni_entrances(13) & (uni_departures(13) & !\LessThan5~97_cout0\)) # (!uni_entrances(13) & ((uni_departures(13)) # (!\LessThan5~97_cout0\))))
-- \LessThan5~92COUT1_206\ = CARRY((uni_entrances(13) & (uni_departures(13) & !\LessThan5~97COUT1_204\)) # (!uni_entrances(13) & ((uni_departures(13)) # (!\LessThan5~97COUT1_204\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(13),
	datab => uni_departures(13),
	cin => \LessThan5~107_cout\,
	cin0 => \LessThan5~97_cout0\,
	cin1 => \LessThan5~97COUT1_204\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~90\,
	cout0 => \LessThan5~92_cout0\,
	cout1 => \LessThan5~92COUT1_206\);

-- Location: LC_X13_Y8_N8
\LessThan5~87\ : maxv_lcell
-- Equation(s):
-- \LessThan5~87_cout0\ = CARRY((uni_departures(14) & (uni_entrances(14) & !\LessThan5~92_cout0\)) # (!uni_departures(14) & ((uni_entrances(14)) # (!\LessThan5~92_cout0\))))
-- \LessThan5~87COUT1_208\ = CARRY((uni_departures(14) & (uni_entrances(14) & !\LessThan5~92COUT1_206\)) # (!uni_departures(14) & ((uni_entrances(14)) # (!\LessThan5~92COUT1_206\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(14),
	datab => uni_entrances(14),
	cin => \LessThan5~107_cout\,
	cin0 => \LessThan5~92_cout0\,
	cin1 => \LessThan5~92COUT1_206\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~85\,
	cout0 => \LessThan5~87_cout0\,
	cout1 => \LessThan5~87COUT1_208\);

-- Location: LC_X13_Y8_N9
\LessThan5~82\ : maxv_lcell
-- Equation(s):
-- \LessThan5~82_cout\ = CARRY((uni_departures(15) & ((!\LessThan5~87COUT1_208\) # (!uni_entrances(15)))) # (!uni_departures(15) & (!uni_entrances(15) & !\LessThan5~87COUT1_208\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(15),
	datab => uni_entrances(15),
	cin => \LessThan5~107_cout\,
	cin0 => \LessThan5~87_cout0\,
	cin1 => \LessThan5~87COUT1_208\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~80\,
	cout => \LessThan5~82_cout\);

-- Location: LC_X14_Y8_N0
\LessThan5~77\ : maxv_lcell
-- Equation(s):
-- \LessThan5~77_cout0\ = CARRY((uni_departures(16) & (uni_entrances(16) & !\LessThan5~82_cout\)) # (!uni_departures(16) & ((uni_entrances(16)) # (!\LessThan5~82_cout\))))
-- \LessThan5~77COUT1_210\ = CARRY((uni_departures(16) & (uni_entrances(16) & !\LessThan5~82_cout\)) # (!uni_departures(16) & ((uni_entrances(16)) # (!\LessThan5~82_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(16),
	datab => uni_entrances(16),
	cin => \LessThan5~82_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~75\,
	cout0 => \LessThan5~77_cout0\,
	cout1 => \LessThan5~77COUT1_210\);

-- Location: LC_X14_Y8_N1
\LessThan5~72\ : maxv_lcell
-- Equation(s):
-- \LessThan5~72_cout0\ = CARRY((uni_entrances(17) & (uni_departures(17) & !\LessThan5~77_cout0\)) # (!uni_entrances(17) & ((uni_departures(17)) # (!\LessThan5~77_cout0\))))
-- \LessThan5~72COUT1_212\ = CARRY((uni_entrances(17) & (uni_departures(17) & !\LessThan5~77COUT1_210\)) # (!uni_entrances(17) & ((uni_departures(17)) # (!\LessThan5~77COUT1_210\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(17),
	datab => uni_departures(17),
	cin => \LessThan5~82_cout\,
	cin0 => \LessThan5~77_cout0\,
	cin1 => \LessThan5~77COUT1_210\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~70\,
	cout0 => \LessThan5~72_cout0\,
	cout1 => \LessThan5~72COUT1_212\);

-- Location: LC_X14_Y8_N2
\LessThan5~67\ : maxv_lcell
-- Equation(s):
-- \LessThan5~67_cout0\ = CARRY((uni_departures(18) & (uni_entrances(18) & !\LessThan5~72_cout0\)) # (!uni_departures(18) & ((uni_entrances(18)) # (!\LessThan5~72_cout0\))))
-- \LessThan5~67COUT1_214\ = CARRY((uni_departures(18) & (uni_entrances(18) & !\LessThan5~72COUT1_212\)) # (!uni_departures(18) & ((uni_entrances(18)) # (!\LessThan5~72COUT1_212\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(18),
	datab => uni_entrances(18),
	cin => \LessThan5~82_cout\,
	cin0 => \LessThan5~72_cout0\,
	cin1 => \LessThan5~72COUT1_212\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~65\,
	cout0 => \LessThan5~67_cout0\,
	cout1 => \LessThan5~67COUT1_214\);

-- Location: LC_X14_Y8_N3
\LessThan5~62\ : maxv_lcell
-- Equation(s):
-- \LessThan5~62_cout0\ = CARRY((uni_departures(19) & ((!\LessThan5~67_cout0\) # (!uni_entrances(19)))) # (!uni_departures(19) & (!uni_entrances(19) & !\LessThan5~67_cout0\)))
-- \LessThan5~62COUT1_216\ = CARRY((uni_departures(19) & ((!\LessThan5~67COUT1_214\) # (!uni_entrances(19)))) # (!uni_departures(19) & (!uni_entrances(19) & !\LessThan5~67COUT1_214\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(19),
	datab => uni_entrances(19),
	cin => \LessThan5~82_cout\,
	cin0 => \LessThan5~67_cout0\,
	cin1 => \LessThan5~67COUT1_214\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~60\,
	cout0 => \LessThan5~62_cout0\,
	cout1 => \LessThan5~62COUT1_216\);

-- Location: LC_X14_Y8_N4
\LessThan5~57\ : maxv_lcell
-- Equation(s):
-- \LessThan5~57_cout\ = CARRY((uni_entrances(20) & ((!\LessThan5~62COUT1_216\) # (!uni_departures(20)))) # (!uni_entrances(20) & (!uni_departures(20) & !\LessThan5~62COUT1_216\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(20),
	datab => uni_departures(20),
	cin => \LessThan5~82_cout\,
	cin0 => \LessThan5~62_cout0\,
	cin1 => \LessThan5~62COUT1_216\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~55\,
	cout => \LessThan5~57_cout\);

-- Location: LC_X14_Y8_N5
\LessThan5~52\ : maxv_lcell
-- Equation(s):
-- \LessThan5~52_cout0\ = CARRY((uni_entrances(21) & (uni_departures(21) & !\LessThan5~57_cout\)) # (!uni_entrances(21) & ((uni_departures(21)) # (!\LessThan5~57_cout\))))
-- \LessThan5~52COUT1_218\ = CARRY((uni_entrances(21) & (uni_departures(21) & !\LessThan5~57_cout\)) # (!uni_entrances(21) & ((uni_departures(21)) # (!\LessThan5~57_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(21),
	datab => uni_departures(21),
	cin => \LessThan5~57_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~50\,
	cout0 => \LessThan5~52_cout0\,
	cout1 => \LessThan5~52COUT1_218\);

-- Location: LC_X14_Y8_N6
\LessThan5~47\ : maxv_lcell
-- Equation(s):
-- \LessThan5~47_cout0\ = CARRY((uni_departures(22) & (uni_entrances(22) & !\LessThan5~52_cout0\)) # (!uni_departures(22) & ((uni_entrances(22)) # (!\LessThan5~52_cout0\))))
-- \LessThan5~47COUT1_220\ = CARRY((uni_departures(22) & (uni_entrances(22) & !\LessThan5~52COUT1_218\)) # (!uni_departures(22) & ((uni_entrances(22)) # (!\LessThan5~52COUT1_218\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(22),
	datab => uni_entrances(22),
	cin => \LessThan5~57_cout\,
	cin0 => \LessThan5~52_cout0\,
	cin1 => \LessThan5~52COUT1_218\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~45\,
	cout0 => \LessThan5~47_cout0\,
	cout1 => \LessThan5~47COUT1_220\);

-- Location: LC_X14_Y8_N7
\LessThan5~42\ : maxv_lcell
-- Equation(s):
-- \LessThan5~42_cout0\ = CARRY((uni_entrances(23) & (uni_departures(23) & !\LessThan5~47_cout0\)) # (!uni_entrances(23) & ((uni_departures(23)) # (!\LessThan5~47_cout0\))))
-- \LessThan5~42COUT1_222\ = CARRY((uni_entrances(23) & (uni_departures(23) & !\LessThan5~47COUT1_220\)) # (!uni_entrances(23) & ((uni_departures(23)) # (!\LessThan5~47COUT1_220\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(23),
	datab => uni_departures(23),
	cin => \LessThan5~57_cout\,
	cin0 => \LessThan5~47_cout0\,
	cin1 => \LessThan5~47COUT1_220\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~40\,
	cout0 => \LessThan5~42_cout0\,
	cout1 => \LessThan5~42COUT1_222\);

-- Location: LC_X14_Y8_N8
\LessThan5~37\ : maxv_lcell
-- Equation(s):
-- \LessThan5~37_cout0\ = CARRY((uni_departures(24) & (uni_entrances(24) & !\LessThan5~42_cout0\)) # (!uni_departures(24) & ((uni_entrances(24)) # (!\LessThan5~42_cout0\))))
-- \LessThan5~37COUT1_224\ = CARRY((uni_departures(24) & (uni_entrances(24) & !\LessThan5~42COUT1_222\)) # (!uni_departures(24) & ((uni_entrances(24)) # (!\LessThan5~42COUT1_222\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(24),
	datab => uni_entrances(24),
	cin => \LessThan5~57_cout\,
	cin0 => \LessThan5~42_cout0\,
	cin1 => \LessThan5~42COUT1_222\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~35\,
	cout0 => \LessThan5~37_cout0\,
	cout1 => \LessThan5~37COUT1_224\);

-- Location: LC_X14_Y8_N9
\LessThan5~32\ : maxv_lcell
-- Equation(s):
-- \LessThan5~32_cout\ = CARRY((uni_entrances(25) & (uni_departures(25) & !\LessThan5~37COUT1_224\)) # (!uni_entrances(25) & ((uni_departures(25)) # (!\LessThan5~37COUT1_224\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(25),
	datab => uni_departures(25),
	cin => \LessThan5~57_cout\,
	cin0 => \LessThan5~37_cout0\,
	cin1 => \LessThan5~37COUT1_224\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~30\,
	cout => \LessThan5~32_cout\);

-- Location: LC_X15_Y8_N0
\LessThan5~27\ : maxv_lcell
-- Equation(s):
-- \LessThan5~27_cout0\ = CARRY((uni_departures(26) & (uni_entrances(26) & !\LessThan5~32_cout\)) # (!uni_departures(26) & ((uni_entrances(26)) # (!\LessThan5~32_cout\))))
-- \LessThan5~27COUT1_226\ = CARRY((uni_departures(26) & (uni_entrances(26) & !\LessThan5~32_cout\)) # (!uni_departures(26) & ((uni_entrances(26)) # (!\LessThan5~32_cout\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(26),
	datab => uni_entrances(26),
	cin => \LessThan5~32_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~25\,
	cout0 => \LessThan5~27_cout0\,
	cout1 => \LessThan5~27COUT1_226\);

-- Location: LC_X15_Y8_N1
\LessThan5~22\ : maxv_lcell
-- Equation(s):
-- \LessThan5~22_cout0\ = CARRY((uni_departures(27) & ((!\LessThan5~27_cout0\) # (!uni_entrances(27)))) # (!uni_departures(27) & (!uni_entrances(27) & !\LessThan5~27_cout0\)))
-- \LessThan5~22COUT1_228\ = CARRY((uni_departures(27) & ((!\LessThan5~27COUT1_226\) # (!uni_entrances(27)))) # (!uni_departures(27) & (!uni_entrances(27) & !\LessThan5~27COUT1_226\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(27),
	datab => uni_entrances(27),
	cin => \LessThan5~32_cout\,
	cin0 => \LessThan5~27_cout0\,
	cin1 => \LessThan5~27COUT1_226\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~20\,
	cout0 => \LessThan5~22_cout0\,
	cout1 => \LessThan5~22COUT1_228\);

-- Location: LC_X15_Y8_N2
\LessThan5~17\ : maxv_lcell
-- Equation(s):
-- \LessThan5~17_cout0\ = CARRY((uni_departures(28) & (uni_entrances(28) & !\LessThan5~22_cout0\)) # (!uni_departures(28) & ((uni_entrances(28)) # (!\LessThan5~22_cout0\))))
-- \LessThan5~17COUT1_230\ = CARRY((uni_departures(28) & (uni_entrances(28) & !\LessThan5~22COUT1_228\)) # (!uni_departures(28) & ((uni_entrances(28)) # (!\LessThan5~22COUT1_228\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_departures(28),
	datab => uni_entrances(28),
	cin => \LessThan5~32_cout\,
	cin0 => \LessThan5~22_cout0\,
	cin1 => \LessThan5~22COUT1_228\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~15\,
	cout0 => \LessThan5~17_cout0\,
	cout1 => \LessThan5~17COUT1_230\);

-- Location: LC_X15_Y8_N3
\LessThan5~12\ : maxv_lcell
-- Equation(s):
-- \LessThan5~12_cout0\ = CARRY((uni_entrances(29) & (uni_departures(29) & !\LessThan5~17_cout0\)) # (!uni_entrances(29) & ((uni_departures(29)) # (!\LessThan5~17_cout0\))))
-- \LessThan5~12COUT1_232\ = CARRY((uni_entrances(29) & (uni_departures(29) & !\LessThan5~17COUT1_230\)) # (!uni_entrances(29) & ((uni_departures(29)) # (!\LessThan5~17COUT1_230\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff4d",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(29),
	datab => uni_departures(29),
	cin => \LessThan5~32_cout\,
	cin0 => \LessThan5~17_cout0\,
	cin1 => \LessThan5~17COUT1_230\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~10\,
	cout0 => \LessThan5~12_cout0\,
	cout1 => \LessThan5~12COUT1_232\);

-- Location: LC_X15_Y8_N4
\LessThan5~7\ : maxv_lcell
-- Equation(s):
-- \LessThan5~7_cout\ = CARRY((uni_entrances(30) & ((!\LessThan5~12COUT1_232\) # (!uni_departures(30)))) # (!uni_entrances(30) & (!uni_departures(30) & !\LessThan5~12COUT1_232\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "ff2b",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uni_entrances(30),
	datab => uni_departures(30),
	cin => \LessThan5~32_cout\,
	cin0 => \LessThan5~12_cout0\,
	cin1 => \LessThan5~12COUT1_232\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~5\,
	cout => \LessThan5~7_cout\);

-- Location: LC_X15_Y8_N5
\LessThan5~0\ : maxv_lcell
-- Equation(s):
-- \LessThan5~0_combout\ = ((uni_entrances(31) & (\LessThan5~7_cout\ & uni_departures(31))) # (!uni_entrances(31) & ((\LessThan5~7_cout\) # (uni_departures(31)))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "f330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => uni_entrances(31),
	datad => uni_departures(31),
	cin => \LessThan5~7_cout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~0_combout\);

-- Location: LC_X12_Y7_N3
\uni_departures[0]\ : maxv_lcell
-- Equation(s):
-- uni_departures(0) = DFFEAS(uni_departures(0) $ ((((\LessThan5~0_combout\ & \is_uni_car_exited~combout\)))), GLOBAL(\car_exited~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5aaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \car_exited~combout\,
	dataa => uni_departures(0),
	datac => \LessThan5~0_combout\,
	datad => \is_uni_car_exited~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uni_departures(0));

-- Location: LC_X10_Y5_N3
\Add7~108\ : maxv_lcell
-- Equation(s):
-- \Add7~108_combout\ = ((\LessThan2~16_combout\ & ((\Add5~85_combout\))) # (!\LessThan2~16_combout\ & (\Add7~103_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~103_combout\,
	datac => \Add5~85_combout\,
	datad => \LessThan2~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~108_combout\);

-- Location: LC_X11_Y8_N3
\Add7~186\ : maxv_lcell
-- Equation(s):
-- \Add7~186_combout\ = ((\LessThan2~16_combout\ & ((\Add5~150_combout\))) # (!\LessThan2~16_combout\ & (\Add7~181_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \Add7~181_combout\,
	datac => \LessThan2~16_combout\,
	datad => \Add5~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add7~186_combout\);

-- Location: LC_X12_Y6_N6
\LessThan3~10\ : maxv_lcell
-- Equation(s):
-- \LessThan3~10_combout\ = (\LessThan3~9_combout\) # (((\Add5~150_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan3~9_combout\,
	datad => \Add5~150_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan3~10_combout\);

-- Location: LC_X11_Y8_N8
\LessThan4~10\ : maxv_lcell
-- Equation(s):
-- \LessThan4~10_combout\ = (\Add7~186_combout\) # ((\LessThan4~7_combout\) # ((\LessThan4~4_combout\) # (\LessThan4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~186_combout\,
	datab => \LessThan4~7_combout\,
	datac => \LessThan4~4_combout\,
	datad => \LessThan4~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~10_combout\);

-- Location: PIN_N10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~0_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(0));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~5_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(1));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~10_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(2));

-- Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~15_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(3));

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~20_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(4));

-- Location: PIN_K15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~25_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(5));

-- Location: PIN_J15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~30_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(6));

-- Location: PIN_P10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~35_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(7));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~40_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(8));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~45_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(9));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~50_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(10));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~55_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(11));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~60_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(12));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~65_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(13));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~70_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(14));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~75_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(15));

-- Location: PIN_H14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~80_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(16));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~85_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(17));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~90_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(18));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~95_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(19));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~100_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(20));

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~105_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(21));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~110_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(22));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~115_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(23));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~120_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(24));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~125_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(25));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~130_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(26));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~135_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(27));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~140_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(28));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~145_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(29));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~150_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(30));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_parked_car[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add3~155_combout\,
	oe => VCC,
	padio => ww_uni_parked_car(31));

-- Location: PIN_T4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~0_combout\,
	oe => VCC,
	padio => ww_parked_car(0));

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~5_combout\,
	oe => VCC,
	padio => ww_parked_car(1));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~10_combout\,
	oe => VCC,
	padio => ww_parked_car(2));

-- Location: PIN_T2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~15_combout\,
	oe => VCC,
	padio => ww_parked_car(3));

-- Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~20_combout\,
	oe => VCC,
	padio => ww_parked_car(4));

-- Location: PIN_P7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~25_combout\,
	oe => VCC,
	padio => ww_parked_car(5));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~30_combout\,
	oe => VCC,
	padio => ww_parked_car(6));

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~35_combout\,
	oe => VCC,
	padio => ww_parked_car(7));

-- Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~40_combout\,
	oe => VCC,
	padio => ww_parked_car(8));

-- Location: PIN_R6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~45_combout\,
	oe => VCC,
	padio => ww_parked_car(9));

-- Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~50_combout\,
	oe => VCC,
	padio => ww_parked_car(10));

-- Location: PIN_P6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~55_combout\,
	oe => VCC,
	padio => ww_parked_car(11));

-- Location: PIN_N5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~60_combout\,
	oe => VCC,
	padio => ww_parked_car(12));

-- Location: PIN_T5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~65_combout\,
	oe => VCC,
	padio => ww_parked_car(13));

-- Location: PIN_P5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~70_combout\,
	oe => VCC,
	padio => ww_parked_car(14));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~75_combout\,
	oe => VCC,
	padio => ww_parked_car(15));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~80_combout\,
	oe => VCC,
	padio => ww_parked_car(16));

-- Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~85_combout\,
	oe => VCC,
	padio => ww_parked_car(17));

-- Location: PIN_N6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~90_combout\,
	oe => VCC,
	padio => ww_parked_car(18));

-- Location: PIN_R7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~95_combout\,
	oe => VCC,
	padio => ww_parked_car(19));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~100_combout\,
	oe => VCC,
	padio => ww_parked_car(20));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~105_combout\,
	oe => VCC,
	padio => ww_parked_car(21));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~110_combout\,
	oe => VCC,
	padio => ww_parked_car(22));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~115_combout\,
	oe => VCC,
	padio => ww_parked_car(23));

-- Location: PIN_T6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~120_combout\,
	oe => VCC,
	padio => ww_parked_car(24));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~125_combout\,
	oe => VCC,
	padio => ww_parked_car(25));

-- Location: PIN_N8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~130_combout\,
	oe => VCC,
	padio => ww_parked_car(26));

-- Location: PIN_M10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~135_combout\,
	oe => VCC,
	padio => ww_parked_car(27));

-- Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~140_combout\,
	oe => VCC,
	padio => ww_parked_car(28));

-- Location: PIN_P8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~145_combout\,
	oe => VCC,
	padio => ww_parked_car(29));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~150_combout\,
	oe => VCC,
	padio => ww_parked_car(30));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\parked_car[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add2~155_combout\,
	oe => VCC,
	padio => ww_parked_car(31));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add4~0_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(0));

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~0_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(1));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~5_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(2));

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~10_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(3));

-- Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~15_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(4));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~20_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(5));

-- Location: PIN_R9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~25_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(6));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~30_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(7));

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~35_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(8));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~40_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(9));

-- Location: PIN_R10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~45_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(10));

-- Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~50_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(11));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~55_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(12));

-- Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~60_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(13));

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~65_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(14));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~70_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(15));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~75_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(16));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~80_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(17));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~85_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(18));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~90_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(19));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~95_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(20));

-- Location: PIN_E16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~100_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(21));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~105_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(22));

-- Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~110_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(23));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~115_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(24));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~120_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(25));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~125_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(26));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~130_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(27));

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~135_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(28));

-- Location: PIN_R11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~140_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(29));

-- Location: PIN_H13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~145_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(30));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_vacated_space[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add5~150_combout\,
	oe => VCC,
	padio => ww_uni_vacated_space(31));

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~0_combout\,
	oe => VCC,
	padio => ww_vacated_space(0));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~6_combout\,
	oe => VCC,
	padio => ww_vacated_space(1));

-- Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~12_combout\,
	oe => VCC,
	padio => ww_vacated_space(2));

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~18_combout\,
	oe => VCC,
	padio => ww_vacated_space(3));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~24_combout\,
	oe => VCC,
	padio => ww_vacated_space(4));

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~30_combout\,
	oe => VCC,
	padio => ww_vacated_space(5));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~36_combout\,
	oe => VCC,
	padio => ww_vacated_space(6));

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~42_combout\,
	oe => VCC,
	padio => ww_vacated_space(7));

-- Location: PIN_L16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~48_combout\,
	oe => VCC,
	padio => ww_vacated_space(8));

-- Location: PIN_M11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~54_combout\,
	oe => VCC,
	padio => ww_vacated_space(9));

-- Location: PIN_K12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~60_combout\,
	oe => VCC,
	padio => ww_vacated_space(10));

-- Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~66_combout\,
	oe => VCC,
	padio => ww_vacated_space(11));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~72_combout\,
	oe => VCC,
	padio => ww_vacated_space(12));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~78_combout\,
	oe => VCC,
	padio => ww_vacated_space(13));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~84_combout\,
	oe => VCC,
	padio => ww_vacated_space(14));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~90_combout\,
	oe => VCC,
	padio => ww_vacated_space(15));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~96_combout\,
	oe => VCC,
	padio => ww_vacated_space(16));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~102_combout\,
	oe => VCC,
	padio => ww_vacated_space(17));

-- Location: PIN_R12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~108_combout\,
	oe => VCC,
	padio => ww_vacated_space(18));

-- Location: PIN_E13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~114_combout\,
	oe => VCC,
	padio => ww_vacated_space(19));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~120_combout\,
	oe => VCC,
	padio => ww_vacated_space(20));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~126_combout\,
	oe => VCC,
	padio => ww_vacated_space(21));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~132_combout\,
	oe => VCC,
	padio => ww_vacated_space(22));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~138_combout\,
	oe => VCC,
	padio => ww_vacated_space(23));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~144_combout\,
	oe => VCC,
	padio => ww_vacated_space(24));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~150_combout\,
	oe => VCC,
	padio => ww_vacated_space(25));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~156_combout\,
	oe => VCC,
	padio => ww_vacated_space(26));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~162_combout\,
	oe => VCC,
	padio => ww_vacated_space(27));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~168_combout\,
	oe => VCC,
	padio => ww_vacated_space(28));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~174_combout\,
	oe => VCC,
	padio => ww_vacated_space(29));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~180_combout\,
	oe => VCC,
	padio => ww_vacated_space(30));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\vacated_space[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \Add7~186_combout\,
	oe => VCC,
	padio => ww_vacated_space(31));

-- Location: PIN_K11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\uni_is_vacated_space~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LessThan3~10_combout\,
	oe => VCC,
	padio => ww_uni_is_vacated_space);

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\is_vacated_space~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \LessThan4~10_combout\,
	oe => VCC,
	padio => ww_is_vacated_space);
END structure;


