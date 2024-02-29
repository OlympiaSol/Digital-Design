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
-- CREATED		"Mon May 31 18:16:45 2021"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Lab8 IS 
	PORT
	(
		clck :  IN  STD_LOGIC;
		rest :  IN  STD_LOGIC;
		gnd :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		enACC :  OUT  STD_LOGIC;
		rsMUL :  OUT  STD_LOGIC;
		A :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		addrA :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		addrB :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		B :  OUT  STD_LOGIC_VECTOR(3 DOWNTO 0);
		OUTP :  OUT  STD_LOGIC_VECTOR(7 DOWNTO 0);
		Result :  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END Lab8;

ARCHITECTURE bdf_type OF Lab8 IS 

COMPONENT ram2ports4x256
	PORT(clock : IN STD_LOGIC;
		 wren_a : IN STD_LOGIC;
		 wren_b : IN STD_LOGIC;
		 address_a : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 address_b : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data_a : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 data_b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 q_a : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 q_b : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT accumulator
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 I : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 Acc : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT multiplierp
GENERIC (n : INTEGER
			);
	PORT(RST : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 SI : IN STD_LOGIC;
		 A_IN : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 B_IN : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 A_OUT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 B_OUT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 H_OUT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 L_OUT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT controlunit
	PORT(clk : IN STD_LOGIC;
		 reset : IN STD_LOGIC;
		 enableACC : OUT STD_LOGIC;
		 resetMUL : OUT STD_LOGIC;
		 addressA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 addressB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 cnt : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	OUTP_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;


BEGIN 
enACC <= SYNTHESIZED_WIRE_9;
rsMUL <= SYNTHESIZED_WIRE_5;
A <= SYNTHESIZED_WIRE_7;
addrA <= SYNTHESIZED_WIRE_2;
addrB <= SYNTHESIZED_WIRE_3;
B <= SYNTHESIZED_WIRE_8;
SYNTHESIZED_WIRE_10 <= '0';



b2v_inst : ram2ports4x256
PORT MAP(clock => clck,
		 wren_a => SYNTHESIZED_WIRE_10,
		 wren_b => SYNTHESIZED_WIRE_10,
		 address_a => SYNTHESIZED_WIRE_2,
		 address_b => SYNTHESIZED_WIRE_3,
		 data_a => gnd,
		 data_b => gnd,
		 q_a => SYNTHESIZED_WIRE_7,
		 q_b => SYNTHESIZED_WIRE_8);


b2v_inst1 : accumulator
PORT MAP(clk => SYNTHESIZED_WIRE_4,
		 reset => rest,
		 I => OUTP_ALTERA_SYNTHESIZED,
		 Acc => Result);


b2v_inst2 : multiplierp
GENERIC MAP(n => 4
			)
PORT MAP(RST => SYNTHESIZED_WIRE_5,
		 CLK => clck,
		 SI => SYNTHESIZED_WIRE_10,
		 A_IN => SYNTHESIZED_WIRE_7,
		 B_IN => SYNTHESIZED_WIRE_8,
		 H_OUT => OUTP_ALTERA_SYNTHESIZED(7 DOWNTO 4),
		 L_OUT => OUTP_ALTERA_SYNTHESIZED(3 DOWNTO 0));


b2v_inst3 : controlunit
PORT MAP(clk => clck,
		 reset => rest,
		 enableACC => SYNTHESIZED_WIRE_9,
		 resetMUL => SYNTHESIZED_WIRE_5,
		 addressA => SYNTHESIZED_WIRE_2,
		 addressB => SYNTHESIZED_WIRE_3);



SYNTHESIZED_WIRE_4 <= SYNTHESIZED_WIRE_9 AND clck;

OUTP <= OUTP_ALTERA_SYNTHESIZED;

END bdf_type;