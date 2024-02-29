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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/31/2021 19:28:58"

-- 
-- Device: Altera EP2C35F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab8 IS
    PORT (
	clck : IN std_logic;
	rest : IN std_logic;
	\gnd\ : IN std_logic_vector(3 DOWNTO 0);
	enACC : OUT std_logic;
	rsMUL : OUT std_logic;
	A : OUT std_logic_vector(3 DOWNTO 0);
	addrA : OUT std_logic_vector(7 DOWNTO 0);
	addrB : OUT std_logic_vector(7 DOWNTO 0);
	B : OUT std_logic_vector(3 DOWNTO 0);
	OUTP : OUT std_logic_vector(7 DOWNTO 0);
	Result : OUT std_logic_vector(15 DOWNTO 0)
	);
END Lab8;

-- Design Ports Information
-- enACC	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- rsMUL	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[0]	=>  Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[1]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[2]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[3]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- addrA[0]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- addrA[1]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- addrA[2]	=>  Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- addrA[3]	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- addrA[4]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- addrA[5]	=>  Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- addrA[6]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- addrA[7]	=>  Location: PIN_L17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- addrB[0]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- addrB[1]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- addrB[2]	=>  Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- addrB[3]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- addrB[4]	=>  Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- addrB[5]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- addrB[6]	=>  Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- addrB[7]	=>  Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[0]	=>  Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[2]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- B[3]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTP[0]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTP[1]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTP[2]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTP[3]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTP[4]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTP[5]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTP[6]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OUTP[7]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[0]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[1]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[2]	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[3]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[4]	=>  Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[5]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[6]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[7]	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[8]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[9]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[10]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[11]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[12]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[13]	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[14]	=>  Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Result[15]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clck	=>  Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rest	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- gnd[0]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- gnd[1]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- gnd[2]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- gnd[3]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Lab8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clck : std_logic;
SIGNAL ww_rest : std_logic;
SIGNAL \ww_gnd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_enACC : std_logic;
SIGNAL ww_rsMUL : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_addrA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_addrB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OUTP : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Result : std_logic_vector(15 DOWNTO 0);
SIGNAL \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clck~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rest~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SYNTHESIZED_WIRE_4~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|U_ADD|SUM[3]~7\ : std_logic;
SIGNAL \b2v_inst2|U_ADD|COUT~0_combout\ : std_logic;
SIGNAL \b2v_inst2|U_CTL|count[1]~4_combout\ : std_logic;
SIGNAL \b2v_inst3|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst2|comb~0_combout\ : std_logic;
SIGNAL \b2v_inst2|comb~2_combout\ : std_logic;
SIGNAL \b2v_inst2|comb~3_combout\ : std_logic;
SIGNAL \b2v_inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \clck~combout\ : std_logic;
SIGNAL \b2v_inst3|addr[1]~9\ : std_logic;
SIGNAL \b2v_inst3|addr[2]~12\ : std_logic;
SIGNAL \b2v_inst3|addr[3]~13_combout\ : std_logic;
SIGNAL \b2v_inst3|addr[5]~18\ : std_logic;
SIGNAL \b2v_inst3|addr[6]~19_combout\ : std_logic;
SIGNAL \b2v_inst3|counter[3]~2_combout\ : std_logic;
SIGNAL \b2v_inst3|counter[0]~5_combout\ : std_logic;
SIGNAL \rest~combout\ : std_logic;
SIGNAL \rest~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst3|Add1~0_combout\ : std_logic;
SIGNAL \b2v_inst3|counter[2]~3_combout\ : std_logic;
SIGNAL \b2v_inst3|Equal1~0_combout\ : std_logic;
SIGNAL \b2v_inst3|counter[1]~4_combout\ : std_logic;
SIGNAL \b2v_inst3|addr[0]~6_combout\ : std_logic;
SIGNAL \b2v_inst3|addr[0]~10_combout\ : std_logic;
SIGNAL \b2v_inst3|addr[3]~14\ : std_logic;
SIGNAL \b2v_inst3|addr[4]~16\ : std_logic;
SIGNAL \b2v_inst3|addr[5]~17_combout\ : std_logic;
SIGNAL \b2v_inst3|counter[3]~1_combout\ : std_logic;
SIGNAL \b2v_inst3|addr[0]~7_combout\ : std_logic;
SIGNAL \b2v_inst3|addr[1]~8_combout\ : std_logic;
SIGNAL \b2v_inst3|counter[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst3|counter~6_combout\ : std_logic;
SIGNAL \b2v_inst3|counter[3]~7_combout\ : std_logic;
SIGNAL \b2v_inst3|enaACC~0_combout\ : std_logic;
SIGNAL \b2v_inst3|enaACC~regout\ : std_logic;
SIGNAL \clck~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst3|rstMUL~0_combout\ : std_logic;
SIGNAL \b2v_inst3|rstMUL~regout\ : std_logic;
SIGNAL \b2v_inst3|addr[2]~11_combout\ : std_logic;
SIGNAL \b2v_inst3|addr[4]~15_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \b2v_inst2|U_CTL|count[0]~12_combout\ : std_logic;
SIGNAL \b2v_inst2|U_CTL|count[1]~5\ : std_logic;
SIGNAL \b2v_inst2|U_CTL|count[2]~6_combout\ : std_logic;
SIGNAL \b2v_inst2|U_CTL|count[2]~7\ : std_logic;
SIGNAL \b2v_inst2|U_CTL|count[3]~9\ : std_logic;
SIGNAL \b2v_inst2|U_CTL|count[4]~10_combout\ : std_logic;
SIGNAL \b2v_inst2|U_CTL|count[3]~8_combout\ : std_logic;
SIGNAL \b2v_inst2|U_CTL|Selector0~0_combout\ : std_logic;
SIGNAL \b2v_inst2|U_CTL|Selector0~1_combout\ : std_logic;
SIGNAL \b2v_inst2|U_CTL|state.ADD~regout\ : std_logic;
SIGNAL \b2v_inst2|U_CTL|state.SHIFT~feeder_combout\ : std_logic;
SIGNAL \b2v_inst2|U_CTL|state.SHIFT~regout\ : std_logic;
SIGNAL \b2v_inst2|U_CTL|state.LOAD~feeder_combout\ : std_logic;
SIGNAL \b2v_inst2|U_CTL|state.LOAD~regout\ : std_logic;
SIGNAL \b2v_inst2|R_B|F~3_combout\ : std_logic;
SIGNAL \b2v_inst2|U_CTL|EN_B~combout\ : std_logic;
SIGNAL \b2v_inst2|R_B|F~2_combout\ : std_logic;
SIGNAL \b2v_inst2|R_B|F~1_combout\ : std_logic;
SIGNAL \b2v_inst2|R_B|F~0_combout\ : std_logic;
SIGNAL \b2v_inst2|comb~1_combout\ : std_logic;
SIGNAL \b2v_inst2|U_ADD|SUM[0]~1\ : std_logic;
SIGNAL \b2v_inst2|U_ADD|SUM[1]~3\ : std_logic;
SIGNAL \b2v_inst2|U_ADD|SUM[2]~4_combout\ : std_logic;
SIGNAL \b2v_inst2|R_H|F~2_combout\ : std_logic;
SIGNAL \b2v_inst2|U_CTL|EN_H~combout\ : std_logic;
SIGNAL \b2v_inst2|U_ADD|SUM[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|R_H|F~1_combout\ : std_logic;
SIGNAL \b2v_inst2|U_ADD|SUM[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|R_H|F~0_combout\ : std_logic;
SIGNAL \b2v_inst2|R_C|F[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|U_ADD|SUM[2]~5\ : std_logic;
SIGNAL \b2v_inst2|U_ADD|SUM[3]~6_combout\ : std_logic;
SIGNAL \b2v_inst2|R_H|F~3_combout\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_4~combout\ : std_logic;
SIGNAL \SYNTHESIZED_WIRE_4~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst1|inst|inst|inst~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst1|inst1~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst1|inst5~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst2|inst1~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst2|inst5~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst3|inst1~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst3|inst5~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst4|inst1~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst5|inst1~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst5|inst1~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst5|inst5~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst6|inst1~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst5|inst5~1_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst5|inst5~2_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst6|inst5~0_combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst7|inst1~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst11|inst~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst11|inst1~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst10|inst~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst13|inst~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst12|inst~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst12|inst1~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst17|inst~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst16|inst~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst15|inst~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst15|inst1~combout\ : std_logic;
SIGNAL \b2v_inst1|inst|inst14|inst~combout\ : std_logic;
SIGNAL \b2v_inst2|R_C|F\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b2v_inst2|U_CTL|count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \b2v_inst3|counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|R_H|F\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst1|inst1|dffs\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \b2v_inst2|R_A|F\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|R_L|F\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|R_B|F\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst3|addr\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \gnd~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|altsyncram_component|auto_generated|q_b\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_clck~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_clck~combout\ : std_logic;
SIGNAL \b2v_inst2|U_CTL|ALT_INV_state.LOAD~regout\ : std_logic;
SIGNAL \b2v_inst3|ALT_INV_rstMUL~regout\ : std_logic;

BEGIN

ww_clck <= clck;
ww_rest <= rest;
\ww_gnd\ <= \gnd\;
enACC <= ww_enACC;
rsMUL <= ww_rsMUL;
A <= ww_A;
addrA <= ww_addrA;
addrB <= ww_addrB;
B <= ww_B;
OUTP <= ww_OUTP;
Result <= ww_Result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\gnd~combout\(3) & \gnd~combout\(2) & \gnd~combout\(1) & \gnd~combout\(0));

\b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\ <= (\gnd~combout\(3) & \gnd~combout\(2) & \gnd~combout\(1) & \gnd~combout\(0));

\b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\~GND~combout\ & \b2v_inst3|addr\(6) & \b2v_inst3|addr\(5) & \b2v_inst3|addr\(4) & \b2v_inst3|addr\(3) & \b2v_inst3|addr\(2) & \b2v_inst3|addr\(1) & 
\b2v_inst3|addr\(0));

\b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (vcc & \b2v_inst3|addr\(6) & \b2v_inst3|addr\(5) & \b2v_inst3|addr\(4) & \b2v_inst3|addr\(3) & \b2v_inst3|addr\(2) & \b2v_inst3|addr\(1) & \b2v_inst3|addr\(0));

\b2v_inst|altsyncram_component|auto_generated|q_a\(0) <= \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\b2v_inst|altsyncram_component|auto_generated|q_a\(1) <= \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\b2v_inst|altsyncram_component|auto_generated|q_a\(2) <= \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\b2v_inst|altsyncram_component|auto_generated|q_a\(3) <= \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\b2v_inst|altsyncram_component|auto_generated|q_b\(0) <= \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\b2v_inst|altsyncram_component|auto_generated|q_b\(1) <= \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\b2v_inst|altsyncram_component|auto_generated|q_b\(2) <= \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\b2v_inst|altsyncram_component|auto_generated|q_b\(3) <= \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);

\clck~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clck~combout\);

\rest~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \rest~combout\);

\SYNTHESIZED_WIRE_4~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \SYNTHESIZED_WIRE_4~combout\);
\ALT_INV_clck~clkctrl_outclk\ <= NOT \clck~clkctrl_outclk\;
\ALT_INV_clck~combout\ <= NOT \clck~combout\;
\b2v_inst2|U_CTL|ALT_INV_state.LOAD~regout\ <= NOT \b2v_inst2|U_CTL|state.LOAD~regout\;
\b2v_inst3|ALT_INV_rstMUL~regout\ <= NOT \b2v_inst3|rstMUL~regout\;

-- Location: LCCOMB_X32_Y34_N24
\b2v_inst2|U_ADD|SUM[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|U_ADD|SUM[3]~6_combout\ = (\b2v_inst2|comb~3_combout\ & ((\b2v_inst2|R_H|F\(3) & (\b2v_inst2|U_ADD|SUM[2]~5\ & VCC)) # (!\b2v_inst2|R_H|F\(3) & (!\b2v_inst2|U_ADD|SUM[2]~5\)))) # (!\b2v_inst2|comb~3_combout\ & ((\b2v_inst2|R_H|F\(3) & 
-- (!\b2v_inst2|U_ADD|SUM[2]~5\)) # (!\b2v_inst2|R_H|F\(3) & ((\b2v_inst2|U_ADD|SUM[2]~5\) # (GND)))))
-- \b2v_inst2|U_ADD|SUM[3]~7\ = CARRY((\b2v_inst2|comb~3_combout\ & (!\b2v_inst2|R_H|F\(3) & !\b2v_inst2|U_ADD|SUM[2]~5\)) # (!\b2v_inst2|comb~3_combout\ & ((!\b2v_inst2|U_ADD|SUM[2]~5\) # (!\b2v_inst2|R_H|F\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|comb~3_combout\,
	datab => \b2v_inst2|R_H|F\(3),
	datad => VCC,
	cin => \b2v_inst2|U_ADD|SUM[2]~5\,
	combout => \b2v_inst2|U_ADD|SUM[3]~6_combout\,
	cout => \b2v_inst2|U_ADD|SUM[3]~7\);

-- Location: LCFF_X31_Y34_N21
\b2v_inst2|U_CTL|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clck~clkctrl_outclk\,
	datain => \b2v_inst2|U_CTL|count[1]~4_combout\,
	aclr => \b2v_inst3|ALT_INV_rstMUL~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|U_CTL|count\(1));

-- Location: LCCOMB_X32_Y34_N26
\b2v_inst2|U_ADD|COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|U_ADD|COUT~0_combout\ = !\b2v_inst2|U_ADD|SUM[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst2|U_ADD|SUM[3]~7\,
	combout => \b2v_inst2|U_ADD|COUT~0_combout\);

-- Location: LCCOMB_X31_Y34_N20
\b2v_inst2|U_CTL|count[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|U_CTL|count[1]~4_combout\ = (\b2v_inst2|U_CTL|count\(1) & (\b2v_inst2|U_CTL|count\(0) $ (VCC))) # (!\b2v_inst2|U_CTL|count\(1) & (\b2v_inst2|U_CTL|count\(0) & VCC))
-- \b2v_inst2|U_CTL|count[1]~5\ = CARRY((\b2v_inst2|U_CTL|count\(1) & \b2v_inst2|U_CTL|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|U_CTL|count\(1),
	datab => \b2v_inst2|U_CTL|count\(0),
	datad => VCC,
	combout => \b2v_inst2|U_CTL|count[1]~4_combout\,
	cout => \b2v_inst2|U_CTL|count[1]~5\);

-- Location: LCCOMB_X30_Y34_N20
\b2v_inst3|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst3|Equal0~0_combout\ = (!\b2v_inst3|counter\(2) & !\b2v_inst3|counter\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst3|counter\(2),
	datad => \b2v_inst3|counter\(1),
	combout => \b2v_inst3|Equal0~0_combout\);

-- Location: LCFF_X29_Y34_N21
\b2v_inst2|R_A|F[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clck~clkctrl_outclk\,
	sdata => \b2v_inst|altsyncram_component|auto_generated|q_a\(0),
	aclr => \b2v_inst3|ALT_INV_rstMUL~regout\,
	sload => VCC,
	ena => \b2v_inst2|U_CTL|ALT_INV_state.LOAD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|R_A|F\(0));

-- Location: LCCOMB_X29_Y34_N24
\b2v_inst2|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|comb~0_combout\ = (\b2v_inst2|R_A|F\(0) & \b2v_inst2|R_B|F\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|R_A|F\(0),
	datad => \b2v_inst2|R_B|F\(0),
	combout => \b2v_inst2|comb~0_combout\);

-- Location: LCFF_X29_Y34_N17
\b2v_inst2|R_A|F[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clck~clkctrl_outclk\,
	sdata => \b2v_inst|altsyncram_component|auto_generated|q_a\(2),
	aclr => \b2v_inst3|ALT_INV_rstMUL~regout\,
	sload => VCC,
	ena => \b2v_inst2|U_CTL|ALT_INV_state.LOAD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|R_A|F\(2));

-- Location: LCCOMB_X29_Y34_N16
\b2v_inst2|comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|comb~2_combout\ = (\b2v_inst2|R_A|F\(2) & \b2v_inst2|R_B|F\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|R_A|F\(2),
	datad => \b2v_inst2|R_B|F\(0),
	combout => \b2v_inst2|comb~2_combout\);

-- Location: LCFF_X29_Y34_N23
\b2v_inst2|R_A|F[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clck~clkctrl_outclk\,
	sdata => \b2v_inst|altsyncram_component|auto_generated|q_a\(3),
	aclr => \b2v_inst3|ALT_INV_rstMUL~regout\,
	sload => VCC,
	ena => \b2v_inst2|U_CTL|ALT_INV_state.LOAD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|R_A|F\(3));

-- Location: LCCOMB_X29_Y34_N22
\b2v_inst2|comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|comb~3_combout\ = (\b2v_inst2|R_A|F\(3) & \b2v_inst2|R_B|F\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|R_A|F\(3),
	datad => \b2v_inst2|R_B|F\(0),
	combout => \b2v_inst2|comb~3_combout\);

-- Location: LCCOMB_X30_Y34_N16
\b2v_inst3|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst3|LessThan0~0_combout\ = (\b2v_inst3|counter\(3) & ((\b2v_inst3|counter\(1)) # (\b2v_inst3|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|counter\(1),
	datab => \b2v_inst3|counter\(2),
	datad => \b2v_inst3|counter\(3),
	combout => \b2v_inst3|LessThan0~0_combout\);

-- Location: PIN_M1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clck~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clck,
	combout => \clck~combout\);

-- Location: LCCOMB_X27_Y34_N10
\b2v_inst3|addr[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst3|addr[1]~8_combout\ = (\b2v_inst3|addr\(1) & (\b2v_inst3|addr\(0) $ (VCC))) # (!\b2v_inst3|addr\(1) & (\b2v_inst3|addr\(0) & VCC))
-- \b2v_inst3|addr[1]~9\ = CARRY((\b2v_inst3|addr\(1) & \b2v_inst3|addr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|addr\(1),
	datab => \b2v_inst3|addr\(0),
	datad => VCC,
	combout => \b2v_inst3|addr[1]~8_combout\,
	cout => \b2v_inst3|addr[1]~9\);

-- Location: LCCOMB_X27_Y34_N12
\b2v_inst3|addr[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst3|addr[2]~11_combout\ = (\b2v_inst3|addr\(2) & (!\b2v_inst3|addr[1]~9\)) # (!\b2v_inst3|addr\(2) & ((\b2v_inst3|addr[1]~9\) # (GND)))
-- \b2v_inst3|addr[2]~12\ = CARRY((!\b2v_inst3|addr[1]~9\) # (!\b2v_inst3|addr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|addr\(2),
	datad => VCC,
	cin => \b2v_inst3|addr[1]~9\,
	combout => \b2v_inst3|addr[2]~11_combout\,
	cout => \b2v_inst3|addr[2]~12\);

-- Location: LCCOMB_X27_Y34_N14
\b2v_inst3|addr[3]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst3|addr[3]~13_combout\ = (\b2v_inst3|addr\(3) & (\b2v_inst3|addr[2]~12\ $ (GND))) # (!\b2v_inst3|addr\(3) & (!\b2v_inst3|addr[2]~12\ & VCC))
-- \b2v_inst3|addr[3]~14\ = CARRY((\b2v_inst3|addr\(3) & !\b2v_inst3|addr[2]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst3|addr\(3),
	datad => VCC,
	cin => \b2v_inst3|addr[2]~12\,
	combout => \b2v_inst3|addr[3]~13_combout\,
	cout => \b2v_inst3|addr[3]~14\);

-- Location: LCCOMB_X27_Y34_N18
\b2v_inst3|addr[5]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst3|addr[5]~17_combout\ = (\b2v_inst3|addr\(5) & (\b2v_inst3|addr[4]~16\ $ (GND))) # (!\b2v_inst3|addr\(5) & (!\b2v_inst3|addr[4]~16\ & VCC))
-- \b2v_inst3|addr[5]~18\ = CARRY((\b2v_inst3|addr\(5) & !\b2v_inst3|addr[4]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst3|addr\(5),
	datad => VCC,
	cin => \b2v_inst3|addr[4]~16\,
	combout => \b2v_inst3|addr[5]~17_combout\,
	cout => \b2v_inst3|addr[5]~18\);

-- Location: LCCOMB_X27_Y34_N20
\b2v_inst3|addr[6]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst3|addr[6]~19_combout\ = \b2v_inst3|addr\(6) $ (\b2v_inst3|addr[5]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|addr\(6),
	cin => \b2v_inst3|addr[5]~18\,
	combout => \b2v_inst3|addr[6]~19_combout\);

-- Location: LCFF_X27_Y34_N21
\b2v_inst3|addr[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clck~clkctrl_outclk\,
	datain => \b2v_inst3|addr[6]~19_combout\,
	ena => \b2v_inst3|addr[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst3|addr\(6));

-- Location: LCCOMB_X27_Y34_N6
\b2v_inst3|counter[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst3|counter[3]~2_combout\ = (\b2v_inst3|addr\(4) & (\b2v_inst3|addr\(6) & \b2v_inst3|addr\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|addr\(4),
	datac => \b2v_inst3|addr\(6),
	datad => \b2v_inst3|addr\(5),
	combout => \b2v_inst3|counter[3]~2_combout\);

-- Location: LCCOMB_X30_Y34_N22
\b2v_inst3|counter[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst3|counter[0]~5_combout\ = (\b2v_inst3|LessThan0~0_combout\ & (\b2v_inst3|counter[3]~2_combout\ & (\b2v_inst3|counter\(0) & \b2v_inst3|counter[3]~0_combout\))) # (!\b2v_inst3|LessThan0~0_combout\ & (((!\b2v_inst3|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|LessThan0~0_combout\,
	datab => \b2v_inst3|counter[3]~2_combout\,
	datac => \b2v_inst3|counter\(0),
	datad => \b2v_inst3|counter[3]~0_combout\,
	combout => \b2v_inst3|counter[0]~5_combout\);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rest~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rest,
	combout => \rest~combout\);

-- Location: CLKCTRL_G1
\rest~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \rest~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \rest~clkctrl_outclk\);

-- Location: LCFF_X30_Y34_N23
\b2v_inst3|counter[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clck~clkctrl_outclk\,
	datain => \b2v_inst3|counter[0]~5_combout\,
	aclr => \rest~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst3|counter\(0));

-- Location: LCCOMB_X30_Y34_N8
\b2v_inst3|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst3|Add1~0_combout\ = \b2v_inst3|counter\(2) $ (((\b2v_inst3|counter\(1) & \b2v_inst3|counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|counter\(1),
	datab => \b2v_inst3|counter\(2),
	datad => \b2v_inst3|counter\(0),
	combout => \b2v_inst3|Add1~0_combout\);

-- Location: LCCOMB_X30_Y34_N14
\b2v_inst3|counter[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst3|counter[2]~3_combout\ = (\b2v_inst3|LessThan0~0_combout\ & (((\b2v_inst3|counter\(2) & \b2v_inst3|counter[3]~1_combout\)))) # (!\b2v_inst3|LessThan0~0_combout\ & (\b2v_inst3|Add1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|LessThan0~0_combout\,
	datab => \b2v_inst3|Add1~0_combout\,
	datac => \b2v_inst3|counter\(2),
	datad => \b2v_inst3|counter[3]~1_combout\,
	combout => \b2v_inst3|counter[2]~3_combout\);

-- Location: LCFF_X30_Y34_N15
\b2v_inst3|counter[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clck~clkctrl_outclk\,
	datain => \b2v_inst3|counter[2]~3_combout\,
	aclr => \rest~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst3|counter\(2));

-- Location: LCCOMB_X30_Y34_N28
\b2v_inst3|Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst3|Equal1~0_combout\ = (!\b2v_inst3|counter\(1) & (\b2v_inst3|counter\(0) & (!\b2v_inst3|counter\(2) & \b2v_inst3|counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|counter\(1),
	datab => \b2v_inst3|counter\(0),
	datac => \b2v_inst3|counter\(2),
	datad => \b2v_inst3|counter\(3),
	combout => \b2v_inst3|Equal1~0_combout\);

-- Location: LCCOMB_X30_Y34_N6
\b2v_inst3|counter[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst3|counter[1]~4_combout\ = (\b2v_inst3|LessThan0~0_combout\ & (((\b2v_inst3|counter\(1) & \b2v_inst3|counter[3]~1_combout\)))) # (!\b2v_inst3|LessThan0~0_combout\ & (\b2v_inst3|counter\(0) $ ((\b2v_inst3|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|LessThan0~0_combout\,
	datab => \b2v_inst3|counter\(0),
	datac => \b2v_inst3|counter\(1),
	datad => \b2v_inst3|counter[3]~1_combout\,
	combout => \b2v_inst3|counter[1]~4_combout\);

-- Location: LCFF_X30_Y34_N7
\b2v_inst3|counter[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clck~clkctrl_outclk\,
	datain => \b2v_inst3|counter[1]~4_combout\,
	aclr => \rest~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst3|counter\(1));

-- Location: LCCOMB_X30_Y34_N18
\b2v_inst3|addr[0]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst3|addr[0]~6_combout\ = (!\rest~combout\ & (\b2v_inst3|counter\(3) & ((\b2v_inst3|counter\(2)) # (\b2v_inst3|counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rest~combout\,
	datab => \b2v_inst3|counter\(3),
	datac => \b2v_inst3|counter\(2),
	datad => \b2v_inst3|counter\(1),
	combout => \b2v_inst3|addr[0]~6_combout\);

-- Location: LCCOMB_X27_Y34_N24
\b2v_inst3|addr[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst3|addr[0]~10_combout\ = (!\b2v_inst3|Equal1~0_combout\ & (\b2v_inst3|addr[0]~6_combout\ & ((!\b2v_inst3|counter[3]~0_combout\) # (!\b2v_inst3|counter[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|counter[3]~2_combout\,
	datab => \b2v_inst3|counter[3]~0_combout\,
	datac => \b2v_inst3|Equal1~0_combout\,
	datad => \b2v_inst3|addr[0]~6_combout\,
	combout => \b2v_inst3|addr[0]~10_combout\);

-- Location: LCFF_X27_Y34_N15
\b2v_inst3|addr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clck~clkctrl_outclk\,
	datain => \b2v_inst3|addr[3]~13_combout\,
	ena => \b2v_inst3|addr[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst3|addr\(3));

-- Location: LCCOMB_X27_Y34_N16
\b2v_inst3|addr[4]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst3|addr[4]~15_combout\ = (\b2v_inst3|addr\(4) & (!\b2v_inst3|addr[3]~14\)) # (!\b2v_inst3|addr\(4) & ((\b2v_inst3|addr[3]~14\) # (GND)))
-- \b2v_inst3|addr[4]~16\ = CARRY((!\b2v_inst3|addr[3]~14\) # (!\b2v_inst3|addr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|addr\(4),
	datad => VCC,
	cin => \b2v_inst3|addr[3]~14\,
	combout => \b2v_inst3|addr[4]~15_combout\,
	cout => \b2v_inst3|addr[4]~16\);

-- Location: LCFF_X27_Y34_N19
\b2v_inst3|addr[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clck~clkctrl_outclk\,
	datain => \b2v_inst3|addr[5]~17_combout\,
	ena => \b2v_inst3|addr[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst3|addr\(5));

-- Location: LCCOMB_X27_Y34_N8
\b2v_inst3|counter[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst3|counter[3]~1_combout\ = (\b2v_inst3|addr\(4) & (\b2v_inst3|addr\(5) & (\b2v_inst3|addr\(6) & \b2v_inst3|counter[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|addr\(4),
	datab => \b2v_inst3|addr\(5),
	datac => \b2v_inst3|addr\(6),
	datad => \b2v_inst3|counter[3]~0_combout\,
	combout => \b2v_inst3|counter[3]~1_combout\);

-- Location: LCCOMB_X27_Y34_N28
\b2v_inst3|addr[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst3|addr[0]~7_combout\ = \b2v_inst3|addr\(0) $ (((!\b2v_inst3|Equal1~0_combout\ & (!\b2v_inst3|counter[3]~1_combout\ & \b2v_inst3|addr[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|Equal1~0_combout\,
	datab => \b2v_inst3|counter[3]~1_combout\,
	datac => \b2v_inst3|addr\(0),
	datad => \b2v_inst3|addr[0]~6_combout\,
	combout => \b2v_inst3|addr[0]~7_combout\);

-- Location: LCFF_X27_Y34_N29
\b2v_inst3|addr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clck~clkctrl_outclk\,
	datain => \b2v_inst3|addr[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst3|addr\(0));

-- Location: LCFF_X27_Y34_N11
\b2v_inst3|addr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clck~clkctrl_outclk\,
	datain => \b2v_inst3|addr[1]~8_combout\,
	ena => \b2v_inst3|addr[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst3|addr\(1));

-- Location: LCCOMB_X27_Y34_N22
\b2v_inst3|counter[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst3|counter[3]~0_combout\ = (\b2v_inst3|addr\(2) & (\b2v_inst3|addr\(0) & (\b2v_inst3|addr\(3) & \b2v_inst3|addr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|addr\(2),
	datab => \b2v_inst3|addr\(0),
	datac => \b2v_inst3|addr\(3),
	datad => \b2v_inst3|addr\(1),
	combout => \b2v_inst3|counter[3]~0_combout\);

-- Location: LCCOMB_X30_Y34_N12
\b2v_inst3|counter~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst3|counter~6_combout\ = (\b2v_inst3|counter\(1) & (\b2v_inst3|counter\(0) & (\b2v_inst3|counter\(2) & !\b2v_inst3|counter\(3)))) # (!\b2v_inst3|counter\(1) & (((!\b2v_inst3|counter\(2) & \b2v_inst3|counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|counter\(1),
	datab => \b2v_inst3|counter\(0),
	datac => \b2v_inst3|counter\(2),
	datad => \b2v_inst3|counter\(3),
	combout => \b2v_inst3|counter~6_combout\);

-- Location: LCCOMB_X30_Y34_N26
\b2v_inst3|counter[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst3|counter[3]~7_combout\ = (\b2v_inst3|counter~6_combout\) # ((\b2v_inst3|LessThan0~0_combout\ & (\b2v_inst3|counter[3]~0_combout\ & \b2v_inst3|counter[3]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|LessThan0~0_combout\,
	datab => \b2v_inst3|counter[3]~0_combout\,
	datac => \b2v_inst3|counter[3]~2_combout\,
	datad => \b2v_inst3|counter~6_combout\,
	combout => \b2v_inst3|counter[3]~7_combout\);

-- Location: LCFF_X30_Y34_N27
\b2v_inst3|counter[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clck~clkctrl_outclk\,
	datain => \b2v_inst3|counter[3]~7_combout\,
	aclr => \rest~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst3|counter\(3));

-- Location: LCCOMB_X30_Y34_N30
\b2v_inst3|enaACC~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst3|enaACC~0_combout\ = (\b2v_inst3|counter\(3) & (\b2v_inst3|Equal0~0_combout\ & ((\b2v_inst3|enaACC~regout\) # (\b2v_inst3|counter\(0))))) # (!\b2v_inst3|counter\(3) & (((\b2v_inst3|enaACC~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|Equal0~0_combout\,
	datab => \b2v_inst3|counter\(3),
	datac => \b2v_inst3|enaACC~regout\,
	datad => \b2v_inst3|counter\(0),
	combout => \b2v_inst3|enaACC~0_combout\);

-- Location: LCFF_X30_Y34_N31
\b2v_inst3|enaACC\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clck~combout\,
	datain => \b2v_inst3|enaACC~0_combout\,
	aclr => \rest~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst3|enaACC~regout\);

-- Location: CLKCTRL_G3
\clck~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clck~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clck~clkctrl_outclk\);

-- Location: LCCOMB_X30_Y34_N24
\b2v_inst3|rstMUL~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst3|rstMUL~0_combout\ = (\b2v_inst3|Equal0~0_combout\ & ((\b2v_inst3|rstMUL~regout\) # ((!\b2v_inst3|counter\(3) & !\b2v_inst3|counter\(0))))) # (!\b2v_inst3|Equal0~0_combout\ & (!\b2v_inst3|counter\(3) & (\b2v_inst3|rstMUL~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst3|Equal0~0_combout\,
	datab => \b2v_inst3|counter\(3),
	datac => \b2v_inst3|rstMUL~regout\,
	datad => \b2v_inst3|counter\(0),
	combout => \b2v_inst3|rstMUL~0_combout\);

-- Location: LCFF_X30_Y34_N25
\b2v_inst3|rstMUL\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clck~clkctrl_outclk\,
	datain => \b2v_inst3|rstMUL~0_combout\,
	aclr => \rest~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst3|rstMUL~regout\);

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\gnd[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => \ww_gnd\(0),
	combout => \gnd~combout\(0));

-- Location: LCFF_X27_Y34_N13
\b2v_inst3|addr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clck~clkctrl_outclk\,
	datain => \b2v_inst3|addr[2]~11_combout\,
	ena => \b2v_inst3|addr[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst3|addr\(2));

-- Location: LCFF_X27_Y34_N17
\b2v_inst3|addr[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clck~clkctrl_outclk\,
	datain => \b2v_inst3|addr[4]~15_combout\,
	ena => \b2v_inst3|addr[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst3|addr\(4));

-- Location: LCCOMB_X27_Y34_N26
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\gnd[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => \ww_gnd\(1),
	combout => \gnd~combout\(1));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\gnd[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => \ww_gnd\(2),
	combout => \gnd~combout\(2));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\gnd[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => \ww_gnd\(3),
	combout => \gnd~combout\(3));

-- Location: M4K_X26_Y34
\b2v_inst|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA910FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA98765432",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "RamContents.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ram2ports4x256:b2v_inst|altsyncram:altsyncram_component|altsyncram_dg92:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "bidir_dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 4,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 8,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_in_clock => "clock0",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 4,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 255,
	port_b_logical_ram_depth => 256,
	port_b_logical_ram_width => 4,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock0",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	portbrewe => GND,
	clk0 => \clck~clkctrl_outclk\,
	portadatain => \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portbdatain => \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAIN_bus\,
	portaaddr => \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\,
	portbdataout => \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X31_Y34_N18
\b2v_inst2|U_CTL|count[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|U_CTL|count[0]~12_combout\ = !\b2v_inst2|U_CTL|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|U_CTL|count\(0),
	combout => \b2v_inst2|U_CTL|count[0]~12_combout\);

-- Location: LCFF_X31_Y34_N19
\b2v_inst2|U_CTL|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clck~clkctrl_outclk\,
	datain => \b2v_inst2|U_CTL|count[0]~12_combout\,
	aclr => \b2v_inst3|ALT_INV_rstMUL~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|U_CTL|count\(0));

-- Location: LCCOMB_X31_Y34_N22
\b2v_inst2|U_CTL|count[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|U_CTL|count[2]~6_combout\ = (\b2v_inst2|U_CTL|count\(2) & (!\b2v_inst2|U_CTL|count[1]~5\)) # (!\b2v_inst2|U_CTL|count\(2) & ((\b2v_inst2|U_CTL|count[1]~5\) # (GND)))
-- \b2v_inst2|U_CTL|count[2]~7\ = CARRY((!\b2v_inst2|U_CTL|count[1]~5\) # (!\b2v_inst2|U_CTL|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|U_CTL|count\(2),
	datad => VCC,
	cin => \b2v_inst2|U_CTL|count[1]~5\,
	combout => \b2v_inst2|U_CTL|count[2]~6_combout\,
	cout => \b2v_inst2|U_CTL|count[2]~7\);

-- Location: LCFF_X31_Y34_N23
\b2v_inst2|U_CTL|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clck~clkctrl_outclk\,
	datain => \b2v_inst2|U_CTL|count[2]~6_combout\,
	aclr => \b2v_inst3|ALT_INV_rstMUL~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|U_CTL|count\(2));

-- Location: LCCOMB_X31_Y34_N24
\b2v_inst2|U_CTL|count[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|U_CTL|count[3]~8_combout\ = (\b2v_inst2|U_CTL|count\(3) & (\b2v_inst2|U_CTL|count[2]~7\ $ (GND))) # (!\b2v_inst2|U_CTL|count\(3) & (!\b2v_inst2|U_CTL|count[2]~7\ & VCC))
-- \b2v_inst2|U_CTL|count[3]~9\ = CARRY((\b2v_inst2|U_CTL|count\(3) & !\b2v_inst2|U_CTL|count[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|U_CTL|count\(3),
	datad => VCC,
	cin => \b2v_inst2|U_CTL|count[2]~7\,
	combout => \b2v_inst2|U_CTL|count[3]~8_combout\,
	cout => \b2v_inst2|U_CTL|count[3]~9\);

-- Location: LCCOMB_X31_Y34_N26
\b2v_inst2|U_CTL|count[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|U_CTL|count[4]~10_combout\ = \b2v_inst2|U_CTL|count[3]~9\ $ (\b2v_inst2|U_CTL|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|U_CTL|count\(4),
	cin => \b2v_inst2|U_CTL|count[3]~9\,
	combout => \b2v_inst2|U_CTL|count[4]~10_combout\);

-- Location: LCFF_X31_Y34_N27
\b2v_inst2|U_CTL|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clck~clkctrl_outclk\,
	datain => \b2v_inst2|U_CTL|count[4]~10_combout\,
	aclr => \b2v_inst3|ALT_INV_rstMUL~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|U_CTL|count\(4));

-- Location: LCFF_X31_Y34_N25
\b2v_inst2|U_CTL|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clck~clkctrl_outclk\,
	datain => \b2v_inst2|U_CTL|count[3]~8_combout\,
	aclr => \b2v_inst3|ALT_INV_rstMUL~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|U_CTL|count\(3));

-- Location: LCCOMB_X31_Y34_N0
\b2v_inst2|U_CTL|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|U_CTL|Selector0~0_combout\ = (\b2v_inst2|U_CTL|count\(1)) # ((\b2v_inst2|U_CTL|count\(2)) # ((\b2v_inst2|U_CTL|count\(0)) # (!\b2v_inst2|U_CTL|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|U_CTL|count\(1),
	datab => \b2v_inst2|U_CTL|count\(2),
	datac => \b2v_inst2|U_CTL|count\(3),
	datad => \b2v_inst2|U_CTL|count\(0),
	combout => \b2v_inst2|U_CTL|Selector0~0_combout\);

-- Location: LCCOMB_X31_Y34_N10
\b2v_inst2|U_CTL|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|U_CTL|Selector0~1_combout\ = ((\b2v_inst2|U_CTL|state.SHIFT~regout\ & ((\b2v_inst2|U_CTL|count\(4)) # (\b2v_inst2|U_CTL|Selector0~0_combout\)))) # (!\b2v_inst2|U_CTL|state.LOAD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|U_CTL|state.LOAD~regout\,
	datab => \b2v_inst2|U_CTL|count\(4),
	datac => \b2v_inst2|U_CTL|state.SHIFT~regout\,
	datad => \b2v_inst2|U_CTL|Selector0~0_combout\,
	combout => \b2v_inst2|U_CTL|Selector0~1_combout\);

-- Location: LCFF_X31_Y34_N11
\b2v_inst2|U_CTL|state.ADD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clck~clkctrl_outclk\,
	datain => \b2v_inst2|U_CTL|Selector0~1_combout\,
	aclr => \b2v_inst3|ALT_INV_rstMUL~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|U_CTL|state.ADD~regout\);

-- Location: LCCOMB_X31_Y34_N4
\b2v_inst2|U_CTL|state.SHIFT~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|U_CTL|state.SHIFT~feeder_combout\ = \b2v_inst2|U_CTL|state.ADD~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|U_CTL|state.ADD~regout\,
	combout => \b2v_inst2|U_CTL|state.SHIFT~feeder_combout\);

-- Location: LCFF_X31_Y34_N5
\b2v_inst2|U_CTL|state.SHIFT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clck~clkctrl_outclk\,
	datain => \b2v_inst2|U_CTL|state.SHIFT~feeder_combout\,
	aclr => \b2v_inst3|ALT_INV_rstMUL~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|U_CTL|state.SHIFT~regout\);

-- Location: LCCOMB_X31_Y34_N12
\b2v_inst2|U_CTL|state.LOAD~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|U_CTL|state.LOAD~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \b2v_inst2|U_CTL|state.LOAD~feeder_combout\);

-- Location: LCFF_X31_Y34_N13
\b2v_inst2|U_CTL|state.LOAD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clck~clkctrl_outclk\,
	datain => \b2v_inst2|U_CTL|state.LOAD~feeder_combout\,
	aclr => \b2v_inst3|ALT_INV_rstMUL~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|U_CTL|state.LOAD~regout\);

-- Location: LCFF_X29_Y34_N15
\b2v_inst2|R_A|F[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clck~clkctrl_outclk\,
	sdata => \b2v_inst|altsyncram_component|auto_generated|q_a\(1),
	aclr => \b2v_inst3|ALT_INV_rstMUL~regout\,
	sload => VCC,
	ena => \b2v_inst2|U_CTL|ALT_INV_state.LOAD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|R_A|F\(1));

-- Location: LCCOMB_X29_Y34_N8
\b2v_inst2|R_B|F~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|R_B|F~3_combout\ = (\b2v_inst2|U_CTL|state.SHIFT~regout\ & (\b2v_inst2|R_A|F\(0))) # (!\b2v_inst2|U_CTL|state.SHIFT~regout\ & ((\b2v_inst|altsyncram_component|auto_generated|q_b\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|R_A|F\(0),
	datac => \b2v_inst2|U_CTL|state.SHIFT~regout\,
	datad => \b2v_inst|altsyncram_component|auto_generated|q_b\(3),
	combout => \b2v_inst2|R_B|F~3_combout\);

-- Location: LCCOMB_X29_Y34_N20
\b2v_inst2|U_CTL|EN_B\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|U_CTL|EN_B~combout\ = (\b2v_inst2|U_CTL|state.SHIFT~regout\) # (!\b2v_inst2|U_CTL|state.LOAD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|U_CTL|state.SHIFT~regout\,
	datad => \b2v_inst2|U_CTL|state.LOAD~regout\,
	combout => \b2v_inst2|U_CTL|EN_B~combout\);

-- Location: LCFF_X29_Y34_N9
\b2v_inst2|R_B|F[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clck~clkctrl_outclk\,
	datain => \b2v_inst2|R_B|F~3_combout\,
	aclr => \b2v_inst3|ALT_INV_rstMUL~regout\,
	ena => \b2v_inst2|U_CTL|EN_B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|R_B|F\(3));

-- Location: LCCOMB_X29_Y34_N18
\b2v_inst2|R_B|F~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|R_B|F~2_combout\ = (\b2v_inst2|U_CTL|state.SHIFT~regout\ & (\b2v_inst2|R_B|F\(3))) # (!\b2v_inst2|U_CTL|state.SHIFT~regout\ & ((\b2v_inst|altsyncram_component|auto_generated|q_b\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|U_CTL|state.SHIFT~regout\,
	datac => \b2v_inst2|R_B|F\(3),
	datad => \b2v_inst|altsyncram_component|auto_generated|q_b\(2),
	combout => \b2v_inst2|R_B|F~2_combout\);

-- Location: LCFF_X29_Y34_N19
\b2v_inst2|R_B|F[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clck~clkctrl_outclk\,
	datain => \b2v_inst2|R_B|F~2_combout\,
	aclr => \b2v_inst3|ALT_INV_rstMUL~regout\,
	ena => \b2v_inst2|U_CTL|EN_B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|R_B|F\(2));

-- Location: LCCOMB_X29_Y34_N28
\b2v_inst2|R_B|F~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|R_B|F~1_combout\ = (\b2v_inst2|U_CTL|state.SHIFT~regout\ & (\b2v_inst2|R_B|F\(2))) # (!\b2v_inst2|U_CTL|state.SHIFT~regout\ & ((\b2v_inst|altsyncram_component|auto_generated|q_b\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|R_B|F\(2),
	datac => \b2v_inst2|U_CTL|state.SHIFT~regout\,
	datad => \b2v_inst|altsyncram_component|auto_generated|q_b\(1),
	combout => \b2v_inst2|R_B|F~1_combout\);

-- Location: LCFF_X29_Y34_N29
\b2v_inst2|R_B|F[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clck~clkctrl_outclk\,
	datain => \b2v_inst2|R_B|F~1_combout\,
	aclr => \b2v_inst3|ALT_INV_rstMUL~regout\,
	ena => \b2v_inst2|U_CTL|EN_B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|R_B|F\(1));

-- Location: LCCOMB_X29_Y34_N26
\b2v_inst2|R_B|F~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|R_B|F~0_combout\ = (\b2v_inst2|U_CTL|state.SHIFT~regout\ & (\b2v_inst2|R_B|F\(1))) # (!\b2v_inst2|U_CTL|state.SHIFT~regout\ & ((\b2v_inst|altsyncram_component|auto_generated|q_b\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|R_B|F\(1),
	datac => \b2v_inst2|U_CTL|state.SHIFT~regout\,
	datad => \b2v_inst|altsyncram_component|auto_generated|q_b\(0),
	combout => \b2v_inst2|R_B|F~0_combout\);

-- Location: LCFF_X29_Y34_N27
\b2v_inst2|R_B|F[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clck~clkctrl_outclk\,
	datain => \b2v_inst2|R_B|F~0_combout\,
	aclr => \b2v_inst3|ALT_INV_rstMUL~regout\,
	ena => \b2v_inst2|U_CTL|EN_B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|R_B|F\(0));

-- Location: LCCOMB_X29_Y34_N14
\b2v_inst2|comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|comb~1_combout\ = (\b2v_inst2|R_A|F\(1) & \b2v_inst2|R_B|F\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|R_A|F\(1),
	datad => \b2v_inst2|R_B|F\(0),
	combout => \b2v_inst2|comb~1_combout\);

-- Location: LCCOMB_X32_Y34_N18
\b2v_inst2|U_ADD|SUM[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|U_ADD|SUM[0]~0_combout\ = (\b2v_inst2|comb~0_combout\ & (\b2v_inst2|R_H|F\(0) $ (VCC))) # (!\b2v_inst2|comb~0_combout\ & (\b2v_inst2|R_H|F\(0) & VCC))
-- \b2v_inst2|U_ADD|SUM[0]~1\ = CARRY((\b2v_inst2|comb~0_combout\ & \b2v_inst2|R_H|F\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|comb~0_combout\,
	datab => \b2v_inst2|R_H|F\(0),
	datad => VCC,
	combout => \b2v_inst2|U_ADD|SUM[0]~0_combout\,
	cout => \b2v_inst2|U_ADD|SUM[0]~1\);

-- Location: LCCOMB_X32_Y34_N20
\b2v_inst2|U_ADD|SUM[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|U_ADD|SUM[1]~2_combout\ = (\b2v_inst2|R_H|F\(1) & ((\b2v_inst2|comb~1_combout\ & (\b2v_inst2|U_ADD|SUM[0]~1\ & VCC)) # (!\b2v_inst2|comb~1_combout\ & (!\b2v_inst2|U_ADD|SUM[0]~1\)))) # (!\b2v_inst2|R_H|F\(1) & ((\b2v_inst2|comb~1_combout\ & 
-- (!\b2v_inst2|U_ADD|SUM[0]~1\)) # (!\b2v_inst2|comb~1_combout\ & ((\b2v_inst2|U_ADD|SUM[0]~1\) # (GND)))))
-- \b2v_inst2|U_ADD|SUM[1]~3\ = CARRY((\b2v_inst2|R_H|F\(1) & (!\b2v_inst2|comb~1_combout\ & !\b2v_inst2|U_ADD|SUM[0]~1\)) # (!\b2v_inst2|R_H|F\(1) & ((!\b2v_inst2|U_ADD|SUM[0]~1\) # (!\b2v_inst2|comb~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|R_H|F\(1),
	datab => \b2v_inst2|comb~1_combout\,
	datad => VCC,
	cin => \b2v_inst2|U_ADD|SUM[0]~1\,
	combout => \b2v_inst2|U_ADD|SUM[1]~2_combout\,
	cout => \b2v_inst2|U_ADD|SUM[1]~3\);

-- Location: LCCOMB_X32_Y34_N22
\b2v_inst2|U_ADD|SUM[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|U_ADD|SUM[2]~4_combout\ = ((\b2v_inst2|comb~2_combout\ $ (\b2v_inst2|R_H|F\(2) $ (!\b2v_inst2|U_ADD|SUM[1]~3\)))) # (GND)
-- \b2v_inst2|U_ADD|SUM[2]~5\ = CARRY((\b2v_inst2|comb~2_combout\ & ((\b2v_inst2|R_H|F\(2)) # (!\b2v_inst2|U_ADD|SUM[1]~3\))) # (!\b2v_inst2|comb~2_combout\ & (\b2v_inst2|R_H|F\(2) & !\b2v_inst2|U_ADD|SUM[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|comb~2_combout\,
	datab => \b2v_inst2|R_H|F\(2),
	datad => VCC,
	cin => \b2v_inst2|U_ADD|SUM[1]~3\,
	combout => \b2v_inst2|U_ADD|SUM[2]~4_combout\,
	cout => \b2v_inst2|U_ADD|SUM[2]~5\);

-- Location: LCCOMB_X31_Y34_N28
\b2v_inst2|R_H|F~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|R_H|F~2_combout\ = (\b2v_inst2|U_CTL|state.SHIFT~regout\ & (\b2v_inst2|R_H|F\(3))) # (!\b2v_inst2|U_CTL|state.SHIFT~regout\ & ((\b2v_inst2|U_ADD|SUM[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|R_H|F\(3),
	datac => \b2v_inst2|U_CTL|state.SHIFT~regout\,
	datad => \b2v_inst2|U_ADD|SUM[2]~4_combout\,
	combout => \b2v_inst2|R_H|F~2_combout\);

-- Location: LCCOMB_X31_Y34_N8
\b2v_inst2|U_CTL|EN_H\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|U_CTL|EN_H~combout\ = (\b2v_inst2|U_CTL|state.ADD~regout\) # (\b2v_inst2|U_CTL|state.SHIFT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|U_CTL|state.ADD~regout\,
	datac => \b2v_inst2|U_CTL|state.SHIFT~regout\,
	combout => \b2v_inst2|U_CTL|EN_H~combout\);

-- Location: LCFF_X31_Y34_N29
\b2v_inst2|R_H|F[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clck~clkctrl_outclk\,
	datain => \b2v_inst2|R_H|F~2_combout\,
	aclr => \b2v_inst3|ALT_INV_rstMUL~regout\,
	ena => \b2v_inst2|U_CTL|EN_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|R_H|F\(2));

-- Location: LCCOMB_X31_Y34_N30
\b2v_inst2|R_H|F~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|R_H|F~1_combout\ = (\b2v_inst2|U_CTL|state.SHIFT~regout\ & (\b2v_inst2|R_H|F\(2))) # (!\b2v_inst2|U_CTL|state.SHIFT~regout\ & ((\b2v_inst2|U_ADD|SUM[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|R_H|F\(2),
	datac => \b2v_inst2|U_CTL|state.SHIFT~regout\,
	datad => \b2v_inst2|U_ADD|SUM[1]~2_combout\,
	combout => \b2v_inst2|R_H|F~1_combout\);

-- Location: LCFF_X31_Y34_N31
\b2v_inst2|R_H|F[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clck~clkctrl_outclk\,
	datain => \b2v_inst2|R_H|F~1_combout\,
	aclr => \b2v_inst3|ALT_INV_rstMUL~regout\,
	ena => \b2v_inst2|U_CTL|EN_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|R_H|F\(1));

-- Location: LCCOMB_X31_Y34_N16
\b2v_inst2|R_H|F~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|R_H|F~0_combout\ = (\b2v_inst2|U_CTL|state.SHIFT~regout\ & (\b2v_inst2|R_H|F\(1))) # (!\b2v_inst2|U_CTL|state.SHIFT~regout\ & ((\b2v_inst2|U_ADD|SUM[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|R_H|F\(1),
	datac => \b2v_inst2|U_CTL|state.SHIFT~regout\,
	datad => \b2v_inst2|U_ADD|SUM[0]~0_combout\,
	combout => \b2v_inst2|R_H|F~0_combout\);

-- Location: LCFF_X31_Y34_N17
\b2v_inst2|R_H|F[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clck~clkctrl_outclk\,
	datain => \b2v_inst2|R_H|F~0_combout\,
	aclr => \b2v_inst3|ALT_INV_rstMUL~regout\,
	ena => \b2v_inst2|U_CTL|EN_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|R_H|F\(0));

-- Location: LCFF_X31_Y35_N13
\b2v_inst2|R_L|F[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clck~clkctrl_outclk\,
	sdata => \b2v_inst2|R_H|F\(0),
	aclr => \b2v_inst3|ALT_INV_rstMUL~regout\,
	sload => VCC,
	ena => \b2v_inst2|U_CTL|state.SHIFT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|R_L|F\(3));

-- Location: LCFF_X31_Y35_N11
\b2v_inst2|R_L|F[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clck~clkctrl_outclk\,
	sdata => \b2v_inst2|R_L|F\(3),
	aclr => \b2v_inst3|ALT_INV_rstMUL~regout\,
	sload => VCC,
	ena => \b2v_inst2|U_CTL|state.SHIFT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|R_L|F\(2));

-- Location: LCFF_X31_Y35_N1
\b2v_inst2|R_L|F[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clck~clkctrl_outclk\,
	sdata => \b2v_inst2|R_L|F\(2),
	aclr => \b2v_inst3|ALT_INV_rstMUL~regout\,
	sload => VCC,
	ena => \b2v_inst2|U_CTL|state.SHIFT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|R_L|F\(1));

-- Location: LCFF_X31_Y35_N27
\b2v_inst2|R_L|F[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clck~clkctrl_outclk\,
	sdata => \b2v_inst2|R_L|F\(1),
	aclr => \b2v_inst3|ALT_INV_rstMUL~regout\,
	sload => VCC,
	ena => \b2v_inst2|U_CTL|state.SHIFT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|R_L|F\(0));

-- Location: LCCOMB_X31_Y34_N14
\b2v_inst2|R_C|F[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|R_C|F[0]~0_combout\ = (\b2v_inst2|U_CTL|state.ADD~regout\ & (\b2v_inst2|U_ADD|COUT~0_combout\)) # (!\b2v_inst2|U_CTL|state.ADD~regout\ & ((\b2v_inst2|R_C|F\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|U_ADD|COUT~0_combout\,
	datac => \b2v_inst2|R_C|F\(0),
	datad => \b2v_inst2|U_CTL|state.ADD~regout\,
	combout => \b2v_inst2|R_C|F[0]~0_combout\);

-- Location: LCFF_X31_Y34_N15
\b2v_inst2|R_C|F[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clck~clkctrl_outclk\,
	datain => \b2v_inst2|R_C|F[0]~0_combout\,
	aclr => \b2v_inst3|ALT_INV_rstMUL~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|R_C|F\(0));

-- Location: LCCOMB_X31_Y34_N6
\b2v_inst2|R_H|F~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|R_H|F~3_combout\ = (\b2v_inst2|U_CTL|state.SHIFT~regout\ & (\b2v_inst2|R_C|F\(0))) # (!\b2v_inst2|U_CTL|state.SHIFT~regout\ & ((\b2v_inst2|U_ADD|SUM[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|U_CTL|state.SHIFT~regout\,
	datac => \b2v_inst2|R_C|F\(0),
	datad => \b2v_inst2|U_ADD|SUM[3]~6_combout\,
	combout => \b2v_inst2|R_H|F~3_combout\);

-- Location: LCFF_X31_Y34_N7
\b2v_inst2|R_H|F[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clck~clkctrl_outclk\,
	datain => \b2v_inst2|R_H|F~3_combout\,
	aclr => \b2v_inst3|ALT_INV_rstMUL~regout\,
	ena => \b2v_inst2|U_CTL|EN_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|R_H|F\(3));

-- Location: LCCOMB_X30_Y34_N10
SYNTHESIZED_WIRE_4 : cycloneii_lcell_comb
-- Equation(s):
-- \SYNTHESIZED_WIRE_4~combout\ = LCELL((\clck~combout\ & \b2v_inst3|enaACC~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clck~combout\,
	datad => \b2v_inst3|enaACC~regout\,
	combout => \SYNTHESIZED_WIRE_4~combout\);

-- Location: CLKCTRL_G8
\SYNTHESIZED_WIRE_4~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SYNTHESIZED_WIRE_4~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SYNTHESIZED_WIRE_4~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y35_N2
\b2v_inst1|inst|inst|inst\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst|inst~combout\ = \b2v_inst2|R_L|F\(0) $ (\b2v_inst1|inst1|dffs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|R_L|F\(0),
	datac => \b2v_inst1|inst1|dffs\(0),
	combout => \b2v_inst1|inst|inst|inst~combout\);

-- Location: LCFF_X31_Y35_N3
\b2v_inst1|inst1|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYNTHESIZED_WIRE_4~clkctrl_outclk\,
	datain => \b2v_inst1|inst|inst|inst~combout\,
	aclr => \rest~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst1|dffs\(0));

-- Location: LCCOMB_X31_Y35_N4
\b2v_inst1|inst|inst1|inst1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst1|inst1~0_combout\ = \b2v_inst2|R_L|F\(1) $ (\b2v_inst1|inst1|dffs\(1) $ (((\b2v_inst2|R_L|F\(0) & \b2v_inst1|inst1|dffs\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|R_L|F\(1),
	datab => \b2v_inst2|R_L|F\(0),
	datac => \b2v_inst1|inst1|dffs\(1),
	datad => \b2v_inst1|inst1|dffs\(0),
	combout => \b2v_inst1|inst|inst1|inst1~0_combout\);

-- Location: LCFF_X31_Y35_N5
\b2v_inst1|inst1|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYNTHESIZED_WIRE_4~clkctrl_outclk\,
	datain => \b2v_inst1|inst|inst1|inst1~0_combout\,
	aclr => \rest~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst1|dffs\(1));

-- Location: LCCOMB_X31_Y35_N0
\b2v_inst1|inst|inst1|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst1|inst5~0_combout\ = (\b2v_inst1|inst1|dffs\(1) & ((\b2v_inst2|R_L|F\(1)) # ((\b2v_inst2|R_L|F\(0) & \b2v_inst1|inst1|dffs\(0))))) # (!\b2v_inst1|inst1|dffs\(1) & (\b2v_inst2|R_L|F\(0) & (\b2v_inst2|R_L|F\(1) & 
-- \b2v_inst1|inst1|dffs\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|R_L|F\(0),
	datab => \b2v_inst1|inst1|dffs\(1),
	datac => \b2v_inst2|R_L|F\(1),
	datad => \b2v_inst1|inst1|dffs\(0),
	combout => \b2v_inst1|inst|inst1|inst5~0_combout\);

-- Location: LCCOMB_X31_Y35_N8
\b2v_inst1|inst|inst2|inst1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst2|inst1~0_combout\ = \b2v_inst2|R_L|F\(2) $ (\b2v_inst1|inst1|dffs\(2) $ (\b2v_inst1|inst|inst1|inst5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|R_L|F\(2),
	datac => \b2v_inst1|inst1|dffs\(2),
	datad => \b2v_inst1|inst|inst1|inst5~0_combout\,
	combout => \b2v_inst1|inst|inst2|inst1~0_combout\);

-- Location: LCFF_X31_Y35_N9
\b2v_inst1|inst1|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYNTHESIZED_WIRE_4~clkctrl_outclk\,
	datain => \b2v_inst1|inst|inst2|inst1~0_combout\,
	aclr => \rest~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst1|dffs\(2));

-- Location: LCCOMB_X31_Y35_N10
\b2v_inst1|inst|inst2|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst2|inst5~0_combout\ = (\b2v_inst1|inst1|dffs\(2) & ((\b2v_inst2|R_L|F\(2)) # (\b2v_inst1|inst|inst1|inst5~0_combout\))) # (!\b2v_inst1|inst1|dffs\(2) & (\b2v_inst2|R_L|F\(2) & \b2v_inst1|inst|inst1|inst5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst1|dffs\(2),
	datac => \b2v_inst2|R_L|F\(2),
	datad => \b2v_inst1|inst|inst1|inst5~0_combout\,
	combout => \b2v_inst1|inst|inst2|inst5~0_combout\);

-- Location: LCCOMB_X32_Y35_N4
\b2v_inst1|inst|inst3|inst1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst3|inst1~combout\ = \b2v_inst2|R_L|F\(3) $ (\b2v_inst1|inst1|dffs\(3) $ (\b2v_inst1|inst|inst2|inst5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|R_L|F\(3),
	datac => \b2v_inst1|inst1|dffs\(3),
	datad => \b2v_inst1|inst|inst2|inst5~0_combout\,
	combout => \b2v_inst1|inst|inst3|inst1~combout\);

-- Location: LCFF_X32_Y35_N5
\b2v_inst1|inst1|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYNTHESIZED_WIRE_4~clkctrl_outclk\,
	datain => \b2v_inst1|inst|inst3|inst1~combout\,
	aclr => \rest~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst1|dffs\(3));

-- Location: LCCOMB_X31_Y35_N12
\b2v_inst1|inst|inst3|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst3|inst5~0_combout\ = (\b2v_inst1|inst1|dffs\(3) & ((\b2v_inst2|R_L|F\(3)) # (\b2v_inst1|inst|inst2|inst5~0_combout\))) # (!\b2v_inst1|inst1|dffs\(3) & (\b2v_inst2|R_L|F\(3) & \b2v_inst1|inst|inst2|inst5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst1|dffs\(3),
	datac => \b2v_inst2|R_L|F\(3),
	datad => \b2v_inst1|inst|inst2|inst5~0_combout\,
	combout => \b2v_inst1|inst|inst3|inst5~0_combout\);

-- Location: LCCOMB_X32_Y35_N22
\b2v_inst1|inst|inst4|inst1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst4|inst1~combout\ = \b2v_inst1|inst|inst3|inst5~0_combout\ $ (\b2v_inst1|inst1|dffs\(4) $ (\b2v_inst2|R_H|F\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst|inst3|inst5~0_combout\,
	datac => \b2v_inst1|inst1|dffs\(4),
	datad => \b2v_inst2|R_H|F\(0),
	combout => \b2v_inst1|inst|inst4|inst1~combout\);

-- Location: LCFF_X32_Y35_N23
\b2v_inst1|inst1|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYNTHESIZED_WIRE_4~clkctrl_outclk\,
	datain => \b2v_inst1|inst|inst4|inst1~combout\,
	aclr => \rest~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst1|dffs\(4));

-- Location: LCCOMB_X32_Y35_N24
\b2v_inst1|inst|inst5|inst1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst5|inst1~0_combout\ = \b2v_inst2|R_H|F\(1) $ (\b2v_inst1|inst1|dffs\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|R_H|F\(1),
	datad => \b2v_inst1|inst1|dffs\(5),
	combout => \b2v_inst1|inst|inst5|inst1~0_combout\);

-- Location: LCCOMB_X32_Y35_N28
\b2v_inst1|inst|inst5|inst1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst5|inst1~combout\ = \b2v_inst1|inst|inst5|inst1~0_combout\ $ (((\b2v_inst2|R_H|F\(0) & ((\b2v_inst1|inst|inst3|inst5~0_combout\) # (\b2v_inst1|inst1|dffs\(4)))) # (!\b2v_inst2|R_H|F\(0) & (\b2v_inst1|inst|inst3|inst5~0_combout\ & 
-- \b2v_inst1|inst1|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|R_H|F\(0),
	datab => \b2v_inst1|inst|inst3|inst5~0_combout\,
	datac => \b2v_inst1|inst|inst5|inst1~0_combout\,
	datad => \b2v_inst1|inst1|dffs\(4),
	combout => \b2v_inst1|inst|inst5|inst1~combout\);

-- Location: LCFF_X32_Y35_N29
\b2v_inst1|inst1|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYNTHESIZED_WIRE_4~clkctrl_outclk\,
	datain => \b2v_inst1|inst|inst5|inst1~combout\,
	aclr => \rest~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst1|dffs\(5));

-- Location: LCCOMB_X32_Y35_N26
\b2v_inst1|inst|inst5|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst5|inst5~0_combout\ = (\b2v_inst2|R_H|F\(1) & \b2v_inst1|inst1|dffs\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|R_H|F\(1),
	datad => \b2v_inst1|inst1|dffs\(5),
	combout => \b2v_inst1|inst|inst5|inst5~0_combout\);

-- Location: LCCOMB_X32_Y35_N30
\b2v_inst1|inst|inst6|inst1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst6|inst1~combout\ = \b2v_inst1|inst1|dffs\(6) $ (\b2v_inst2|R_H|F\(2) $ (((\b2v_inst1|inst|inst5|inst5~2_combout\) # (\b2v_inst1|inst|inst5|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst|inst5|inst5~2_combout\,
	datab => \b2v_inst1|inst|inst5|inst5~0_combout\,
	datac => \b2v_inst1|inst1|dffs\(6),
	datad => \b2v_inst2|R_H|F\(2),
	combout => \b2v_inst1|inst|inst6|inst1~combout\);

-- Location: LCFF_X32_Y35_N31
\b2v_inst1|inst1|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYNTHESIZED_WIRE_4~clkctrl_outclk\,
	datain => \b2v_inst1|inst|inst6|inst1~combout\,
	aclr => \rest~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst1|dffs\(6));

-- Location: LCCOMB_X31_Y35_N26
\b2v_inst1|inst|inst5|inst5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst5|inst5~1_combout\ = (\b2v_inst2|R_H|F\(0) & ((\b2v_inst1|inst1|dffs\(4)) # (\b2v_inst1|inst|inst3|inst5~0_combout\))) # (!\b2v_inst2|R_H|F\(0) & (\b2v_inst1|inst1|dffs\(4) & \b2v_inst1|inst|inst3|inst5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|R_H|F\(0),
	datab => \b2v_inst1|inst1|dffs\(4),
	datad => \b2v_inst1|inst|inst3|inst5~0_combout\,
	combout => \b2v_inst1|inst|inst5|inst5~1_combout\);

-- Location: LCCOMB_X31_Y35_N30
\b2v_inst1|inst|inst5|inst5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst5|inst5~2_combout\ = (\b2v_inst1|inst|inst5|inst5~1_combout\ & ((\b2v_inst1|inst1|dffs\(5)) # (\b2v_inst2|R_H|F\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst1|dffs\(5),
	datac => \b2v_inst2|R_H|F\(1),
	datad => \b2v_inst1|inst|inst5|inst5~1_combout\,
	combout => \b2v_inst1|inst|inst5|inst5~2_combout\);

-- Location: LCCOMB_X31_Y35_N6
\b2v_inst1|inst|inst6|inst5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst6|inst5~0_combout\ = (\b2v_inst2|R_H|F\(2) & ((\b2v_inst1|inst1|dffs\(6)) # ((\b2v_inst1|inst|inst5|inst5~0_combout\) # (\b2v_inst1|inst|inst5|inst5~2_combout\)))) # (!\b2v_inst2|R_H|F\(2) & (\b2v_inst1|inst1|dffs\(6) & 
-- ((\b2v_inst1|inst|inst5|inst5~0_combout\) # (\b2v_inst1|inst|inst5|inst5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|R_H|F\(2),
	datab => \b2v_inst1|inst1|dffs\(6),
	datac => \b2v_inst1|inst|inst5|inst5~0_combout\,
	datad => \b2v_inst1|inst|inst5|inst5~2_combout\,
	combout => \b2v_inst1|inst|inst6|inst5~0_combout\);

-- Location: LCCOMB_X32_Y35_N8
\b2v_inst1|inst|inst7|inst1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst7|inst1~combout\ = \b2v_inst2|R_H|F\(3) $ (\b2v_inst1|inst1|dffs\(7) $ (\b2v_inst1|inst|inst6|inst5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|R_H|F\(3),
	datac => \b2v_inst1|inst1|dffs\(7),
	datad => \b2v_inst1|inst|inst6|inst5~0_combout\,
	combout => \b2v_inst1|inst|inst7|inst1~combout\);

-- Location: LCFF_X32_Y35_N9
\b2v_inst1|inst1|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYNTHESIZED_WIRE_4~clkctrl_outclk\,
	datain => \b2v_inst1|inst|inst7|inst1~combout\,
	aclr => \rest~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst1|dffs\(7));

-- Location: LCCOMB_X32_Y35_N2
\b2v_inst1|inst|inst11|inst\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst11|inst~combout\ = \b2v_inst1|inst1|dffs\(8) $ (((\b2v_inst2|R_H|F\(3) & ((\b2v_inst1|inst|inst6|inst5~0_combout\) # (\b2v_inst1|inst1|dffs\(7)))) # (!\b2v_inst2|R_H|F\(3) & (\b2v_inst1|inst|inst6|inst5~0_combout\ & 
-- \b2v_inst1|inst1|dffs\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|R_H|F\(3),
	datab => \b2v_inst1|inst|inst6|inst5~0_combout\,
	datac => \b2v_inst1|inst1|dffs\(8),
	datad => \b2v_inst1|inst1|dffs\(7),
	combout => \b2v_inst1|inst|inst11|inst~combout\);

-- Location: LCFF_X32_Y35_N3
\b2v_inst1|inst1|dffs[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYNTHESIZED_WIRE_4~clkctrl_outclk\,
	datain => \b2v_inst1|inst|inst11|inst~combout\,
	aclr => \rest~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst1|dffs\(8));

-- Location: LCCOMB_X31_Y35_N28
\b2v_inst1|inst|inst11|inst1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst11|inst1~combout\ = (\b2v_inst1|inst1|dffs\(8) & ((\b2v_inst2|R_H|F\(3) & ((\b2v_inst1|inst1|dffs\(7)) # (\b2v_inst1|inst|inst6|inst5~0_combout\))) # (!\b2v_inst2|R_H|F\(3) & (\b2v_inst1|inst1|dffs\(7) & 
-- \b2v_inst1|inst|inst6|inst5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst1|dffs\(8),
	datab => \b2v_inst2|R_H|F\(3),
	datac => \b2v_inst1|inst1|dffs\(7),
	datad => \b2v_inst1|inst|inst6|inst5~0_combout\,
	combout => \b2v_inst1|inst|inst11|inst1~combout\);

-- Location: LCCOMB_X30_Y35_N0
\b2v_inst1|inst|inst10|inst\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst10|inst~combout\ = \b2v_inst1|inst1|dffs\(9) $ (\b2v_inst1|inst|inst11|inst1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|inst1|dffs\(9),
	datad => \b2v_inst1|inst|inst11|inst1~combout\,
	combout => \b2v_inst1|inst|inst10|inst~combout\);

-- Location: LCFF_X30_Y35_N1
\b2v_inst1|inst1|dffs[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYNTHESIZED_WIRE_4~clkctrl_outclk\,
	datain => \b2v_inst1|inst|inst10|inst~combout\,
	aclr => \rest~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst1|dffs\(9));

-- Location: LCCOMB_X30_Y35_N30
\b2v_inst1|inst|inst13|inst\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst13|inst~combout\ = \b2v_inst1|inst1|dffs\(10) $ (((\b2v_inst1|inst1|dffs\(9) & \b2v_inst1|inst|inst11|inst1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst1|inst1|dffs\(9),
	datac => \b2v_inst1|inst1|dffs\(10),
	datad => \b2v_inst1|inst|inst11|inst1~combout\,
	combout => \b2v_inst1|inst|inst13|inst~combout\);

-- Location: LCFF_X30_Y35_N31
\b2v_inst1|inst1|dffs[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYNTHESIZED_WIRE_4~clkctrl_outclk\,
	datain => \b2v_inst1|inst|inst13|inst~combout\,
	aclr => \rest~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst1|dffs\(10));

-- Location: LCCOMB_X30_Y35_N8
\b2v_inst1|inst|inst12|inst\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst12|inst~combout\ = \b2v_inst1|inst1|dffs\(11) $ (((\b2v_inst1|inst1|dffs\(10) & (\b2v_inst1|inst1|dffs\(9) & \b2v_inst1|inst|inst11|inst1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst1|dffs\(10),
	datab => \b2v_inst1|inst1|dffs\(9),
	datac => \b2v_inst1|inst1|dffs\(11),
	datad => \b2v_inst1|inst|inst11|inst1~combout\,
	combout => \b2v_inst1|inst|inst12|inst~combout\);

-- Location: LCFF_X30_Y35_N9
\b2v_inst1|inst1|dffs[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYNTHESIZED_WIRE_4~clkctrl_outclk\,
	datain => \b2v_inst1|inst|inst12|inst~combout\,
	aclr => \rest~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst1|dffs\(11));

-- Location: LCCOMB_X31_Y35_N18
\b2v_inst1|inst|inst12|inst1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst12|inst1~combout\ = (\b2v_inst1|inst1|dffs\(11) & (\b2v_inst1|inst1|dffs\(9) & (\b2v_inst1|inst1|dffs\(10) & \b2v_inst1|inst|inst11|inst1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst1|dffs\(11),
	datab => \b2v_inst1|inst1|dffs\(9),
	datac => \b2v_inst1|inst1|dffs\(10),
	datad => \b2v_inst1|inst|inst11|inst1~combout\,
	combout => \b2v_inst1|inst|inst12|inst1~combout\);

-- Location: LCCOMB_X31_Y35_N16
\b2v_inst1|inst|inst17|inst\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst17|inst~combout\ = \b2v_inst1|inst1|dffs\(12) $ (\b2v_inst1|inst|inst12|inst1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|inst1|dffs\(12),
	datad => \b2v_inst1|inst|inst12|inst1~combout\,
	combout => \b2v_inst1|inst|inst17|inst~combout\);

-- Location: LCFF_X31_Y35_N17
\b2v_inst1|inst1|dffs[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYNTHESIZED_WIRE_4~clkctrl_outclk\,
	datain => \b2v_inst1|inst|inst17|inst~combout\,
	aclr => \rest~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst1|dffs\(12));

-- Location: LCCOMB_X31_Y35_N14
\b2v_inst1|inst|inst16|inst\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst16|inst~combout\ = \b2v_inst1|inst1|dffs\(13) $ (((\b2v_inst1|inst1|dffs\(12) & \b2v_inst1|inst|inst12|inst1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst1|dffs\(12),
	datac => \b2v_inst1|inst1|dffs\(13),
	datad => \b2v_inst1|inst|inst12|inst1~combout\,
	combout => \b2v_inst1|inst|inst16|inst~combout\);

-- Location: LCFF_X31_Y35_N15
\b2v_inst1|inst1|dffs[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYNTHESIZED_WIRE_4~clkctrl_outclk\,
	datain => \b2v_inst1|inst|inst16|inst~combout\,
	aclr => \rest~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst1|dffs\(13));

-- Location: LCCOMB_X31_Y35_N24
\b2v_inst1|inst|inst15|inst\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst15|inst~combout\ = \b2v_inst1|inst1|dffs\(14) $ (((\b2v_inst1|inst1|dffs\(12) & (\b2v_inst1|inst1|dffs\(13) & \b2v_inst1|inst|inst12|inst1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst1|dffs\(12),
	datab => \b2v_inst1|inst1|dffs\(13),
	datac => \b2v_inst1|inst1|dffs\(14),
	datad => \b2v_inst1|inst|inst12|inst1~combout\,
	combout => \b2v_inst1|inst|inst15|inst~combout\);

-- Location: LCFF_X31_Y35_N25
\b2v_inst1|inst1|dffs[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYNTHESIZED_WIRE_4~clkctrl_outclk\,
	datain => \b2v_inst1|inst|inst15|inst~combout\,
	aclr => \rest~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst1|dffs\(14));

-- Location: LCCOMB_X31_Y35_N22
\b2v_inst1|inst|inst15|inst1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst15|inst1~combout\ = (\b2v_inst1|inst1|dffs\(14) & (\b2v_inst1|inst1|dffs\(13) & (\b2v_inst1|inst1|dffs\(12) & \b2v_inst1|inst|inst12|inst1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst1|inst1|dffs\(14),
	datab => \b2v_inst1|inst1|dffs\(13),
	datac => \b2v_inst1|inst1|dffs\(12),
	datad => \b2v_inst1|inst|inst12|inst1~combout\,
	combout => \b2v_inst1|inst|inst15|inst1~combout\);

-- Location: LCCOMB_X31_Y35_N20
\b2v_inst1|inst|inst14|inst\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst1|inst|inst14|inst~combout\ = \b2v_inst1|inst1|dffs\(15) $ (\b2v_inst1|inst|inst15|inst1~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst1|inst1|dffs\(15),
	datad => \b2v_inst1|inst|inst15|inst1~combout\,
	combout => \b2v_inst1|inst|inst14|inst~combout\);

-- Location: LCFF_X31_Y35_N21
\b2v_inst1|inst1|dffs[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \SYNTHESIZED_WIRE_4~clkctrl_outclk\,
	datain => \b2v_inst1|inst|inst14|inst~combout\,
	aclr => \rest~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst1|inst1|dffs\(15));

-- Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\enACC~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst3|enaACC~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_enACC);

-- Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\rsMUL~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst3|ALT_INV_rstMUL~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_rsMUL);

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst|altsyncram_component|auto_generated|q_a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A(0));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst|altsyncram_component|auto_generated|q_a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A(1));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst|altsyncram_component|auto_generated|q_a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A(2));

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\A[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst|altsyncram_component|auto_generated|q_a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_A(3));

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\addrA[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst3|addr\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_addrA(0));

-- Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\addrA[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst3|addr\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_addrA(1));

-- Location: PIN_G7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\addrA[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst3|addr\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_addrA(2));

-- Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\addrA[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst3|addr\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_addrA(3));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\addrA[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst3|addr\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_addrA(4));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\addrA[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst3|addr\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_addrA(5));

-- Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\addrA[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst3|addr\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_addrA(6));

-- Location: PIN_L17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\addrA[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_addrA(7));

-- Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\addrB[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst3|addr\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_addrB(0));

-- Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\addrB[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst3|addr\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_addrB(1));

-- Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\addrB[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst3|addr\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_addrB(2));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\addrB[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst3|addr\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_addrB(3));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\addrB[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst3|addr\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_addrB(4));

-- Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\addrB[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst3|addr\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_addrB(5));

-- Location: PIN_B5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\addrB[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst3|addr\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_addrB(6));

-- Location: PIN_V9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\addrB[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_addrB(7));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst|altsyncram_component|auto_generated|q_b\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(0));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst|altsyncram_component|auto_generated|q_b\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(1));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst|altsyncram_component|auto_generated|q_b\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(2));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\B[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst|altsyncram_component|auto_generated|q_b\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_B(3));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTP[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst2|R_L|F\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTP(0));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTP[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst2|R_L|F\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTP(1));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTP[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst2|R_L|F\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTP(2));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTP[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst2|R_L|F\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTP(3));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTP[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst2|R_H|F\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTP(4));

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTP[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst2|R_H|F\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTP(5));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTP[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst2|R_H|F\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTP(6));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OUTP[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst2|R_H|F\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OUTP(7));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst1|dffs\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(0));

-- Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst1|dffs\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(1));

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst1|dffs\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(2));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst1|dffs\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(3));

-- Location: PIN_E14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst1|dffs\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(4));

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst1|dffs\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(5));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst1|dffs\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(6));

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst1|dffs\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(7));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst1|dffs\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(8));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst1|dffs\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(9));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst1|dffs\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(10));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst1|dffs\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(11));

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst1|dffs\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(12));

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst1|dffs\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(13));

-- Location: PIN_A16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst1|dffs\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(14));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Result[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst1|inst1|dffs\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Result(15));
END structure;


