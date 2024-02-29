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

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Wed Mar 10 16:24:07 2021"



LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Exercise3 IS 
	PORT
	(
		I1 :  IN  STD_LOGIC;
		I2 :  IN  STD_LOGIC;
		I0 :  IN  STD_LOGIC;
		F0 :  OUT  STD_LOGIC;
		F1 :  OUT  STD_LOGIC
	);
END Exercise3;

ARCHITECTURE bdf_type OF Exercise3 IS 

SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_4 <= I2 XOR I1;


F0 <= SYNTHESIZED_WIRE_4 XOR I0;


SYNTHESIZED_WIRE_3 <= SYNTHESIZED_WIRE_4 AND I0;


SYNTHESIZED_WIRE_2 <= I2 AND I1;


F1 <= SYNTHESIZED_WIRE_2 OR SYNTHESIZED_WIRE_3;


END bdf_type;