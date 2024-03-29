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
-- CREATED		"Wed Mar 10 16:36:21 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Exercise4 IS 
	PORT
	(
		SET :  IN  STD_LOGIC;
		D :  IN  STD_LOGIC;
		CLOCK :  IN  STD_LOGIC;
		CLR :  IN  STD_LOGIC;
		Q :  OUT  STD_LOGIC
	);
END Exercise4;

ARCHITECTURE bdf_type OF Exercise4 IS 



BEGIN 



PROCESS(CLOCK,CLR,SET)
BEGIN
IF (CLR = '0') THEN
	Q <= '0';
ELSIF (SET = '0') THEN
	Q <= '1';
ELSIF (RISING_EDGE(CLOCK)) THEN
	Q <= D;
END IF;
END PROCESS;


END bdf_type;