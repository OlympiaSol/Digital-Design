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
-- CREATED		"Mon May 17 18:59:38 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY newSorter IS 
	PORT
	(
		clk :  IN  STD_LOGIC;
		launch :  IN  STD_LOGIC;
		reset :  IN  STD_LOGIC;
		a :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		b :  IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
		Complete :  OUT  STD_LOGIC;
		q :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END newSorter;

ARCHITECTURE bdf_type OF newSorter IS 

COMPONENT ram256x8
	PORT(clock : IN STD_LOGIC;
		 wren : IN STD_LOGIC;
		 address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

COMPONENT newsort
	PORT(clk : IN STD_LOGIC;
		 launch : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 DataIn : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 Complete : OUT STD_LOGIC;
		 WR : OUT STD_LOGIC;
		 Address : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 DataOut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 
q <= SYNTHESIZED_WIRE_3;



b2v_inst : ram256x8
PORT MAP(clock => clk,
		 wren => SYNTHESIZED_WIRE_0,
		 address => SYNTHESIZED_WIRE_1,
		 data => SYNTHESIZED_WIRE_2,
		 q => SYNTHESIZED_WIRE_3);


b2v_inst2 : newsort
PORT MAP(clk => clk,
		 launch => launch,
		 reset => reset,
		 a => a,
		 b => b,
		 DataIn => SYNTHESIZED_WIRE_3,
		 Complete => Complete,
		 WR => SYNTHESIZED_WIRE_0,
		 Address => SYNTHESIZED_WIRE_1,
		 DataOut => SYNTHESIZED_WIRE_2);


END bdf_type;