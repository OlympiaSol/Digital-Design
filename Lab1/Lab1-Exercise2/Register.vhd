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
-- CREATED		"Mon Mar 08 19:59:38 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Register IS 
	PORT
	(
		S1 :  IN  STD_LOGIC;
		S0 :  IN  STD_LOGIC;
		CLK :  IN  STD_LOGIC;
		I0 :  IN  STD_LOGIC;
		I1 :  IN  STD_LOGIC;
		I2 :  IN  STD_LOGIC;
		I3 :  IN  STD_LOGIC;
		Q0 :  OUT  STD_LOGIC;
		Q1 :  OUT  STD_LOGIC;
		Q2 :  OUT  STD_LOGIC;
		Q3 :  OUT  STD_LOGIC
	);
END Register;

ARCHITECTURE bdf_type OF Register IS 

SIGNAL	-S0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_38 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_39 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_40 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_41 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_42 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_43 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_44 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_45 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_46 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_47 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_48 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_34 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_35 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC;


BEGIN 
Q0 <= SYNTHESIZED_WIRE_40;
Q1 <= SYNTHESIZED_WIRE_48;
Q2 <= SYNTHESIZED_WIRE_42;
Q3 <= SYNTHESIZED_WIRE_44;



SYNTHESIZED_WIRE_38 <= NOT(S1);



SYNTHESIZED_WIRE_41 <= NOT(S1);



SYNTHESIZED_WIRE_43 <= NOT(S1);



SYNTHESIZED_WIRE_46 <= NOT(S1);



SYNTHESIZED_WIRE_4 <= S1 AND S0 AND SYNTHESIZED_WIRE_0;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	SYNTHESIZED_WIRE_40 <= SYNTHESIZED_WIRE_1;
END IF;
END PROCESS;


PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	SYNTHESIZED_WIRE_42 <= SYNTHESIZED_WIRE_2;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_6 <= -S0 AND SYNTHESIZED_WIRE_38 AND I0;


SYNTHESIZED_WIRE_1 <= SYNTHESIZED_WIRE_4 OR SYNTHESIZED_WIRE_5 OR SYNTHESIZED_WIRE_6 OR SYNTHESIZED_WIRE_7;


SYNTHESIZED_WIRE_15 <= S1 AND SYNTHESIZED_WIRE_39 AND SYNTHESIZED_WIRE_40;


SYNTHESIZED_WIRE_13 <= SYNTHESIZED_WIRE_41 AND S0 AND SYNTHESIZED_WIRE_42;


SYNTHESIZED_WIRE_14 <= SYNTHESIZED_WIRE_39 AND SYNTHESIZED_WIRE_41 AND I1;


SYNTHESIZED_WIRE_35 <= SYNTHESIZED_WIRE_12 OR SYNTHESIZED_WIRE_13 OR SYNTHESIZED_WIRE_14 OR SYNTHESIZED_WIRE_15;


SYNTHESIZED_WIRE_20 <= SYNTHESIZED_WIRE_43 AND S0 AND SYNTHESIZED_WIRE_44;


SYNTHESIZED_WIRE_21 <= SYNTHESIZED_WIRE_45 AND SYNTHESIZED_WIRE_43 AND I2;


SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_19 OR SYNTHESIZED_WIRE_20 OR SYNTHESIZED_WIRE_21 OR SYNTHESIZED_WIRE_22;


SYNTHESIZED_WIRE_27 <= SYNTHESIZED_WIRE_46 AND S0 AND I3;


SYNTHESIZED_WIRE_28 <= SYNTHESIZED_WIRE_47 AND SYNTHESIZED_WIRE_46 AND I3;


SYNTHESIZED_WIRE_30 <= SYNTHESIZED_WIRE_26 OR SYNTHESIZED_WIRE_27 OR SYNTHESIZED_WIRE_28 OR SYNTHESIZED_WIRE_29;


SYNTHESIZED_WIRE_47 <= NOT(S0);



PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	SYNTHESIZED_WIRE_44 <= SYNTHESIZED_WIRE_30;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_34 <= NOT(SYNTHESIZED_WIRE_48);



SYNTHESIZED_WIRE_36 <= NOT(SYNTHESIZED_WIRE_42);



SYNTHESIZED_WIRE_37 <= NOT(SYNTHESIZED_WIRE_44);



-S0 <= NOT(S0);



SYNTHESIZED_WIRE_22 <= S1 AND SYNTHESIZED_WIRE_45 AND SYNTHESIZED_WIRE_48;


SYNTHESIZED_WIRE_29 <= S1 AND SYNTHESIZED_WIRE_47 AND SYNTHESIZED_WIRE_42;


SYNTHESIZED_WIRE_7 <= S1 AND -S0 AND I0;


SYNTHESIZED_WIRE_5 <= SYNTHESIZED_WIRE_38 AND S0 AND SYNTHESIZED_WIRE_48;


SYNTHESIZED_WIRE_0 <= NOT(SYNTHESIZED_WIRE_40);



SYNTHESIZED_WIRE_12 <= S1 AND S0 AND SYNTHESIZED_WIRE_34;


SYNTHESIZED_WIRE_39 <= NOT(S0);



PROCESS(CLK)
BEGIN
IF (RISING_EDGE(CLK)) THEN
	SYNTHESIZED_WIRE_48 <= SYNTHESIZED_WIRE_35;
END IF;
END PROCESS;


SYNTHESIZED_WIRE_19 <= S1 AND S0 AND SYNTHESIZED_WIRE_36;


SYNTHESIZED_WIRE_45 <= NOT(S0);



SYNTHESIZED_WIRE_26 <= S1 AND S0 AND SYNTHESIZED_WIRE_37;


END bdf_type;