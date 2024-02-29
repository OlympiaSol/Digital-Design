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
-- CREATED		"Wed Mar 31 21:06:57 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY MUX4to1 IS 
	PORT
	(
		I0 :  IN  STD_LOGIC;
		I1 :  IN  STD_LOGIC;
		I2 :  IN  STD_LOGIC;
		I3 :  IN  STD_LOGIC;
		S1 :  IN  STD_LOGIC;
		S0 :  IN  STD_LOGIC;
		Y :  OUT  STD_LOGIC
	);
END MUX4to1;

ARCHITECTURE bdf_type OF MUX4to1 IS 

SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_8 <= NOT(S1);



SYNTHESIZED_WIRE_9 <= NOT(S0);



SYNTHESIZED_WIRE_4 <= I0 AND SYNTHESIZED_WIRE_8 AND SYNTHESIZED_WIRE_9;


SYNTHESIZED_WIRE_7 <= I1 AND SYNTHESIZED_WIRE_8 AND S0;


SYNTHESIZED_WIRE_5 <= I2 AND S1 AND SYNTHESIZED_WIRE_9;


SYNTHESIZED_WIRE_6 <= I3 AND S1 AND S0;


Y <= SYNTHESIZED_WIRE_4 OR SYNTHESIZED_WIRE_5 OR SYNTHESIZED_WIRE_6 OR SYNTHESIZED_WIRE_7;


END bdf_type;