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
-- CREATED		"Mon May 17 17:00:03 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Sorter IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		launch :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		Complete :  OUT  STD_LOGIC;
		Data :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END Sorter;

ARCHITECTURE bdf_type OF Sorter IS 

COMPONENT sort
	PORT(clk : IN STD_LOGIC;
		 launch : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 DataIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 Complete : OUT STD_LOGIC;
		 WR : OUT STD_LOGIC;
		 Address : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
		 DataOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ram32x8
	PORT(clock : IN STD_LOGIC;
		 wren : IN STD_LOGIC;
		 address : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		 data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 
Data <= SYNTHESIZED_WIRE_0;



b2v_inst : sort
PORT MAP(clk => clk,
		 launch => launch,
		 reset => reset,
		 DataIn => SYNTHESIZED_WIRE_0,
		 Complete => Complete,
		 WR => SYNTHESIZED_WIRE_1,
		 Address => SYNTHESIZED_WIRE_2,
		 DataOut => SYNTHESIZED_WIRE_3);


b2v_inst2 : ram32x8
PORT MAP(clock => clk,
		 wren => SYNTHESIZED_WIRE_1,
		 address => SYNTHESIZED_WIRE_2,
		 data => SYNTHESIZED_WIRE_3,
		 q => SYNTHESIZED_WIRE_0);


END bdf_type;