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

-- DATE "05/17/2021 19:10:04"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	newSorter IS
    PORT (
	clk : IN std_logic;
	launch : IN std_logic;
	reset : IN std_logic;
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	Complete : OUT std_logic;
	q : OUT std_logic_vector(7 DOWNTO 0)
	);
END newSorter;

-- Design Ports Information
-- Complete	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[0]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[1]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[2]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[3]	=>  Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[4]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[5]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[6]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- q[7]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- b[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[2]	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[3]	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[4]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[5]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- b[7]	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- launch	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[1]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[0]	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[3]	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[2]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[5]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[4]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[7]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- a[6]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF newSorter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_launch : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Complete : std_logic;
SIGNAL ww_q : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|Selector5~6_combout\ : std_logic;
SIGNAL \b2v_inst2|Selector5~8_combout\ : std_logic;
SIGNAL \b2v_inst2|WR~combout\ : std_logic;
SIGNAL \launch~combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst2|delay~0_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst2|delay~regout\ : std_logic;
SIGNAL \b2v_inst2|Selector5~9_combout\ : std_logic;
SIGNAL \b2v_inst2|count[0]~8_combout\ : std_logic;
SIGNAL \b2v_inst2|Selector6~0_combout\ : std_logic;
SIGNAL \b2v_inst2|Selector6~1_combout\ : std_logic;
SIGNAL \b2v_inst2|Flag~regout\ : std_logic;
SIGNAL \b2v_inst2|Cnt~1_combout\ : std_logic;
SIGNAL \b2v_inst2|count[7]~12_combout\ : std_logic;
SIGNAL \b2v_inst2|count[0]~9\ : std_logic;
SIGNAL \b2v_inst2|count[1]~10_combout\ : std_logic;
SIGNAL \b2v_inst2|count[1]~11\ : std_logic;
SIGNAL \b2v_inst2|count[2]~14\ : std_logic;
SIGNAL \b2v_inst2|count[3]~15_combout\ : std_logic;
SIGNAL \b2v_inst2|count[3]~16\ : std_logic;
SIGNAL \b2v_inst2|count[4]~17_combout\ : std_logic;
SIGNAL \b2v_inst2|count[4]~18\ : std_logic;
SIGNAL \b2v_inst2|count[5]~19_combout\ : std_logic;
SIGNAL \b2v_inst2|count[5]~20\ : std_logic;
SIGNAL \b2v_inst2|count[6]~21_combout\ : std_logic;
SIGNAL \b2v_inst2|count[6]~22\ : std_logic;
SIGNAL \b2v_inst2|count[7]~23_combout\ : std_logic;
SIGNAL \b2v_inst2|state.SendAddrA_w~feeder_combout\ : std_logic;
SIGNAL \b2v_inst2|state.SendAddrA_w~regout\ : std_logic;
SIGNAL \b2v_inst2|dataB[7]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|state.WriteA~regout\ : std_logic;
SIGNAL \b2v_inst2|DataOut[7]~7_combout\ : std_logic;
SIGNAL \b2v_inst2|DataOut[6]~6_combout\ : std_logic;
SIGNAL \b2v_inst2|dataA[7]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|DataOut[5]~5_combout\ : std_logic;
SIGNAL \b2v_inst2|DataOut[4]~4_combout\ : std_logic;
SIGNAL \b2v_inst2|DataOut[3]~3_combout\ : std_logic;
SIGNAL \b2v_inst2|DataOut[2]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|DataOut[1]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|DataOut[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|LessThan0~1_cout\ : std_logic;
SIGNAL \b2v_inst2|LessThan0~3_cout\ : std_logic;
SIGNAL \b2v_inst2|LessThan0~5_cout\ : std_logic;
SIGNAL \b2v_inst2|LessThan0~7_cout\ : std_logic;
SIGNAL \b2v_inst2|LessThan0~9_cout\ : std_logic;
SIGNAL \b2v_inst2|LessThan0~11_cout\ : std_logic;
SIGNAL \b2v_inst2|LessThan0~13_cout\ : std_logic;
SIGNAL \b2v_inst2|LessThan0~14_combout\ : std_logic;
SIGNAL \b2v_inst2|Selector5~10_combout\ : std_logic;
SIGNAL \b2v_inst2|state~21_combout\ : std_logic;
SIGNAL \b2v_inst2|state.SendAddrB_w~regout\ : std_logic;
SIGNAL \b2v_inst2|state.WriteB~regout\ : std_logic;
SIGNAL \b2v_inst2|Cnt~0_combout\ : std_logic;
SIGNAL \b2v_inst2|count[2]~13_combout\ : std_logic;
SIGNAL \b2v_inst2|Selector5~4_combout\ : std_logic;
SIGNAL \b2v_inst2|Selector5~5_combout\ : std_logic;
SIGNAL \b2v_inst2|Selector5~3_combout\ : std_logic;
SIGNAL \b2v_inst2|Selector5~7_combout\ : std_logic;
SIGNAL \b2v_inst2|Selector1~0_combout\ : std_logic;
SIGNAL \b2v_inst2|state.SendAddrA_r~regout\ : std_logic;
SIGNAL \b2v_inst2|Selector2~0_combout\ : std_logic;
SIGNAL \b2v_inst2|state.GetA~regout\ : std_logic;
SIGNAL \b2v_inst2|state~20_combout\ : std_logic;
SIGNAL \b2v_inst2|state.SendAddrB_r~regout\ : std_logic;
SIGNAL \b2v_inst2|Selector3~0_combout\ : std_logic;
SIGNAL \b2v_inst2|state.GetB~regout\ : std_logic;
SIGNAL \b2v_inst2|state~19_combout\ : std_logic;
SIGNAL \b2v_inst2|state.Compare~regout\ : std_logic;
SIGNAL \b2v_inst2|Selector4~0_combout\ : std_logic;
SIGNAL \b2v_inst2|state.CheckLoop~regout\ : std_logic;
SIGNAL \b2v_inst2|state~18_combout\ : std_logic;
SIGNAL \b2v_inst2|state.CheckFlag~regout\ : std_logic;
SIGNAL \b2v_inst2|Selector0~0_combout\ : std_logic;
SIGNAL \b2v_inst2|Selector0~1_combout\ : std_logic;
SIGNAL \b2v_inst2|state.Waiting~regout\ : std_logic;
SIGNAL \b2v_inst2|dataB\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst2|dataA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst2|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \a~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst2|ALT_INV_state.Waiting~regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_launch <= launch;
ww_reset <= reset;
ww_a <= a;
ww_b <= b;
Complete <= ww_Complete;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\b2v_inst2|DataOut[7]~7_combout\ & \b2v_inst2|DataOut[6]~6_combout\ & \b2v_inst2|DataOut[5]~5_combout\ & \b2v_inst2|DataOut[4]~4_combout\ & \b2v_inst2|DataOut[3]~3_combout\ & 
\b2v_inst2|DataOut[2]~2_combout\ & \b2v_inst2|DataOut[1]~1_combout\ & \b2v_inst2|DataOut[0]~0_combout\);

\b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\b2v_inst2|count\(7) & \b2v_inst2|count\(6) & \b2v_inst2|count\(5) & \b2v_inst2|count\(4) & \b2v_inst2|count\(3) & \b2v_inst2|count\(2) & \b2v_inst2|count\(1) & 
\b2v_inst2|count\(0));

\b2v_inst|altsyncram_component|auto_generated|q_a\(0) <= \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\b2v_inst|altsyncram_component|auto_generated|q_a\(1) <= \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\b2v_inst|altsyncram_component|auto_generated|q_a\(2) <= \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\b2v_inst|altsyncram_component|auto_generated|q_a\(3) <= \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\b2v_inst|altsyncram_component|auto_generated|q_a\(4) <= \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\b2v_inst|altsyncram_component|auto_generated|q_a\(5) <= \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\b2v_inst|altsyncram_component|auto_generated|q_a\(6) <= \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\b2v_inst|altsyncram_component|auto_generated|q_a\(7) <= \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);
\b2v_inst2|ALT_INV_state.Waiting~regout\ <= NOT \b2v_inst2|state.Waiting~regout\;

-- Location: LCCOMB_X11_Y23_N12
\b2v_inst2|Selector5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|Selector5~6_combout\ = (\b~combout\(7) & (\b2v_inst2|count\(7) & (\b~combout\(6) $ (!\b2v_inst2|count\(6))))) # (!\b~combout\(7) & (!\b2v_inst2|count\(7) & (\b~combout\(6) $ (!\b2v_inst2|count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(7),
	datab => \b2v_inst2|count\(7),
	datac => \b~combout\(6),
	datad => \b2v_inst2|count\(6),
	combout => \b2v_inst2|Selector5~6_combout\);

-- Location: LCCOMB_X15_Y23_N24
\b2v_inst2|Selector5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|Selector5~8_combout\ = (\b2v_inst2|Flag~regout\ & ((\b2v_inst2|state.CheckFlag~regout\) # ((\launch~combout\ & !\b2v_inst2|state.Waiting~regout\)))) # (!\b2v_inst2|Flag~regout\ & (((\launch~combout\ & !\b2v_inst2|state.Waiting~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|Flag~regout\,
	datab => \b2v_inst2|state.CheckFlag~regout\,
	datac => \launch~combout\,
	datad => \b2v_inst2|state.Waiting~regout\,
	combout => \b2v_inst2|Selector5~8_combout\);

-- Location: LCFF_X12_Y23_N17
\b2v_inst2|dataA[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \b2v_inst2|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|dataA\(6));

-- Location: LCFF_X12_Y23_N13
\b2v_inst2|dataA[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \b2v_inst2|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|dataA\(4));

-- Location: LCFF_X12_Y23_N11
\b2v_inst2|dataA[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \b2v_inst2|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|dataA\(3));

-- Location: LCFF_X12_Y23_N7
\b2v_inst2|dataA[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \b2v_inst2|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|dataA\(1));

-- Location: LCCOMB_X14_Y23_N8
\b2v_inst2|WR\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|WR~combout\ = (\b2v_inst2|state.WriteA~regout\) # (\b2v_inst2|state.WriteB~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|state.WriteA~regout\,
	datad => \b2v_inst2|state.WriteB~regout\,
	combout => \b2v_inst2|WR~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[0]~I\ : cycloneii_io
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
	padio => ww_b(0),
	combout => \b~combout\(0));

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[2]~I\ : cycloneii_io
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
	padio => ww_b(2),
	combout => \b~combout\(2));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[4]~I\ : cycloneii_io
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
	padio => ww_b(4),
	combout => \b~combout\(4));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[6]~I\ : cycloneii_io
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
	padio => ww_b(6),
	combout => \b~combout\(6));

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[7]~I\ : cycloneii_io
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
	padio => ww_b(7),
	combout => \b~combout\(7));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\launch~I\ : cycloneii_io
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
	padio => ww_launch,
	combout => \launch~combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
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
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[3]~I\ : cycloneii_io
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
	padio => ww_b(3),
	combout => \b~combout\(3));

-- Location: LCCOMB_X15_Y23_N2
\b2v_inst2|delay~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|delay~0_combout\ = \b2v_inst2|delay~regout\ $ (((\b2v_inst2|state.GetB~regout\) # (\b2v_inst2|state.GetA~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|state.GetB~regout\,
	datac => \b2v_inst2|delay~regout\,
	datad => \b2v_inst2|state.GetA~regout\,
	combout => \b2v_inst2|delay~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: LCFF_X15_Y23_N3
\b2v_inst2|delay\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|delay~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|delay~regout\);

-- Location: LCCOMB_X15_Y23_N8
\b2v_inst2|Selector5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|Selector5~9_combout\ = (\b2v_inst2|delay~regout\ & ((\b2v_inst2|state.GetB~regout\) # (\b2v_inst2|state.GetA~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|state.GetB~regout\,
	datac => \b2v_inst2|state.GetA~regout\,
	datad => \b2v_inst2|delay~regout\,
	combout => \b2v_inst2|Selector5~9_combout\);

-- Location: LCCOMB_X11_Y23_N16
\b2v_inst2|count[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|count[0]~8_combout\ = \b2v_inst2|count\(0) $ (VCC)
-- \b2v_inst2|count[0]~9\ = CARRY(\b2v_inst2|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|count\(0),
	datad => VCC,
	combout => \b2v_inst2|count[0]~8_combout\,
	cout => \b2v_inst2|count[0]~9\);

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[0]~I\ : cycloneii_io
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
	padio => ww_a(0),
	combout => \a~combout\(0));

-- Location: LCCOMB_X15_Y23_N18
\b2v_inst2|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|Selector6~0_combout\ = (\b2v_inst2|state.GetA~regout\) # ((\b2v_inst2|state.GetB~regout\) # ((\b2v_inst2|state.Waiting~regout\ & !\b2v_inst2|state.CheckFlag~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|state.Waiting~regout\,
	datab => \b2v_inst2|state.CheckFlag~regout\,
	datac => \b2v_inst2|state.GetA~regout\,
	datad => \b2v_inst2|state.GetB~regout\,
	combout => \b2v_inst2|Selector6~0_combout\);

-- Location: LCCOMB_X15_Y23_N16
\b2v_inst2|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|Selector6~1_combout\ = (\b2v_inst2|Flag~regout\ & (((\b2v_inst2|Selector6~0_combout\) # (\b2v_inst2|state.Compare~regout\)))) # (!\b2v_inst2|Flag~regout\ & (\b2v_inst2|LessThan0~14_combout\ & ((\b2v_inst2|state.Compare~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|LessThan0~14_combout\,
	datab => \b2v_inst2|Selector6~0_combout\,
	datac => \b2v_inst2|Flag~regout\,
	datad => \b2v_inst2|state.Compare~regout\,
	combout => \b2v_inst2|Selector6~1_combout\);

-- Location: LCFF_X15_Y23_N17
\b2v_inst2|Flag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|Flag~regout\);

-- Location: LCCOMB_X15_Y23_N6
\b2v_inst2|Cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|Cnt~1_combout\ = ((\b2v_inst2|state.CheckFlag~regout\ & \b2v_inst2|Flag~regout\)) # (!\b2v_inst2|state.Waiting~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|state.CheckFlag~regout\,
	datac => \b2v_inst2|Flag~regout\,
	datad => \b2v_inst2|state.Waiting~regout\,
	combout => \b2v_inst2|Cnt~1_combout\);

-- Location: LCCOMB_X11_Y23_N4
\b2v_inst2|count[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|count[7]~12_combout\ = (\b2v_inst2|Cnt~0_combout\) # ((\b2v_inst2|Cnt~1_combout\) # ((\b2v_inst2|state.Compare~regout\ & \b2v_inst2|LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|Cnt~0_combout\,
	datab => \b2v_inst2|state.Compare~regout\,
	datac => \b2v_inst2|Cnt~1_combout\,
	datad => \b2v_inst2|LessThan0~14_combout\,
	combout => \b2v_inst2|count[7]~12_combout\);

-- Location: LCFF_X11_Y23_N17
\b2v_inst2|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|count[0]~8_combout\,
	sdata => \a~combout\(0),
	sload => \b2v_inst2|Cnt~1_combout\,
	ena => \b2v_inst2|count[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|count\(0));

-- Location: LCCOMB_X11_Y23_N18
\b2v_inst2|count[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|count[1]~10_combout\ = (\b2v_inst2|Cnt~0_combout\ & ((\b2v_inst2|count\(1) & (!\b2v_inst2|count[0]~9\)) # (!\b2v_inst2|count\(1) & ((\b2v_inst2|count[0]~9\) # (GND))))) # (!\b2v_inst2|Cnt~0_combout\ & ((\b2v_inst2|count\(1) & 
-- (\b2v_inst2|count[0]~9\ & VCC)) # (!\b2v_inst2|count\(1) & (!\b2v_inst2|count[0]~9\))))
-- \b2v_inst2|count[1]~11\ = CARRY((\b2v_inst2|Cnt~0_combout\ & ((!\b2v_inst2|count[0]~9\) # (!\b2v_inst2|count\(1)))) # (!\b2v_inst2|Cnt~0_combout\ & (!\b2v_inst2|count\(1) & !\b2v_inst2|count[0]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|Cnt~0_combout\,
	datab => \b2v_inst2|count\(1),
	datad => VCC,
	cin => \b2v_inst2|count[0]~9\,
	combout => \b2v_inst2|count[1]~10_combout\,
	cout => \b2v_inst2|count[1]~11\);

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[1]~I\ : cycloneii_io
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
	padio => ww_a(1),
	combout => \a~combout\(1));

-- Location: LCFF_X11_Y23_N19
\b2v_inst2|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|count[1]~10_combout\,
	sdata => \a~combout\(1),
	sload => \b2v_inst2|Cnt~1_combout\,
	ena => \b2v_inst2|count[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|count\(1));

-- Location: LCCOMB_X11_Y23_N20
\b2v_inst2|count[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|count[2]~13_combout\ = ((\b2v_inst2|count\(2) $ (\b2v_inst2|Cnt~0_combout\ $ (\b2v_inst2|count[1]~11\)))) # (GND)
-- \b2v_inst2|count[2]~14\ = CARRY((\b2v_inst2|count\(2) & ((!\b2v_inst2|count[1]~11\) # (!\b2v_inst2|Cnt~0_combout\))) # (!\b2v_inst2|count\(2) & (!\b2v_inst2|Cnt~0_combout\ & !\b2v_inst2|count[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|count\(2),
	datab => \b2v_inst2|Cnt~0_combout\,
	datad => VCC,
	cin => \b2v_inst2|count[1]~11\,
	combout => \b2v_inst2|count[2]~13_combout\,
	cout => \b2v_inst2|count[2]~14\);

-- Location: LCCOMB_X11_Y23_N22
\b2v_inst2|count[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|count[3]~15_combout\ = (\b2v_inst2|Cnt~0_combout\ & ((\b2v_inst2|count\(3) & (!\b2v_inst2|count[2]~14\)) # (!\b2v_inst2|count\(3) & ((\b2v_inst2|count[2]~14\) # (GND))))) # (!\b2v_inst2|Cnt~0_combout\ & ((\b2v_inst2|count\(3) & 
-- (\b2v_inst2|count[2]~14\ & VCC)) # (!\b2v_inst2|count\(3) & (!\b2v_inst2|count[2]~14\))))
-- \b2v_inst2|count[3]~16\ = CARRY((\b2v_inst2|Cnt~0_combout\ & ((!\b2v_inst2|count[2]~14\) # (!\b2v_inst2|count\(3)))) # (!\b2v_inst2|Cnt~0_combout\ & (!\b2v_inst2|count\(3) & !\b2v_inst2|count[2]~14\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|Cnt~0_combout\,
	datab => \b2v_inst2|count\(3),
	datad => VCC,
	cin => \b2v_inst2|count[2]~14\,
	combout => \b2v_inst2|count[3]~15_combout\,
	cout => \b2v_inst2|count[3]~16\);

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[3]~I\ : cycloneii_io
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
	padio => ww_a(3),
	combout => \a~combout\(3));

-- Location: LCFF_X11_Y23_N23
\b2v_inst2|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|count[3]~15_combout\,
	sdata => \a~combout\(3),
	sload => \b2v_inst2|Cnt~1_combout\,
	ena => \b2v_inst2|count[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|count\(3));

-- Location: LCCOMB_X11_Y23_N24
\b2v_inst2|count[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|count[4]~17_combout\ = ((\b2v_inst2|Cnt~0_combout\ $ (\b2v_inst2|count\(4) $ (\b2v_inst2|count[3]~16\)))) # (GND)
-- \b2v_inst2|count[4]~18\ = CARRY((\b2v_inst2|Cnt~0_combout\ & (\b2v_inst2|count\(4) & !\b2v_inst2|count[3]~16\)) # (!\b2v_inst2|Cnt~0_combout\ & ((\b2v_inst2|count\(4)) # (!\b2v_inst2|count[3]~16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|Cnt~0_combout\,
	datab => \b2v_inst2|count\(4),
	datad => VCC,
	cin => \b2v_inst2|count[3]~16\,
	combout => \b2v_inst2|count[4]~17_combout\,
	cout => \b2v_inst2|count[4]~18\);

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[4]~I\ : cycloneii_io
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
	padio => ww_a(4),
	combout => \a~combout\(4));

-- Location: LCFF_X11_Y23_N25
\b2v_inst2|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|count[4]~17_combout\,
	sdata => \a~combout\(4),
	sload => \b2v_inst2|Cnt~1_combout\,
	ena => \b2v_inst2|count[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|count\(4));

-- Location: LCCOMB_X11_Y23_N26
\b2v_inst2|count[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|count[5]~19_combout\ = (\b2v_inst2|Cnt~0_combout\ & ((\b2v_inst2|count\(5) & (!\b2v_inst2|count[4]~18\)) # (!\b2v_inst2|count\(5) & ((\b2v_inst2|count[4]~18\) # (GND))))) # (!\b2v_inst2|Cnt~0_combout\ & ((\b2v_inst2|count\(5) & 
-- (\b2v_inst2|count[4]~18\ & VCC)) # (!\b2v_inst2|count\(5) & (!\b2v_inst2|count[4]~18\))))
-- \b2v_inst2|count[5]~20\ = CARRY((\b2v_inst2|Cnt~0_combout\ & ((!\b2v_inst2|count[4]~18\) # (!\b2v_inst2|count\(5)))) # (!\b2v_inst2|Cnt~0_combout\ & (!\b2v_inst2|count\(5) & !\b2v_inst2|count[4]~18\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|Cnt~0_combout\,
	datab => \b2v_inst2|count\(5),
	datad => VCC,
	cin => \b2v_inst2|count[4]~18\,
	combout => \b2v_inst2|count[5]~19_combout\,
	cout => \b2v_inst2|count[5]~20\);

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[5]~I\ : cycloneii_io
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
	padio => ww_a(5),
	combout => \a~combout\(5));

-- Location: LCFF_X11_Y23_N27
\b2v_inst2|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|count[5]~19_combout\,
	sdata => \a~combout\(5),
	sload => \b2v_inst2|Cnt~1_combout\,
	ena => \b2v_inst2|count[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|count\(5));

-- Location: LCCOMB_X11_Y23_N28
\b2v_inst2|count[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|count[6]~21_combout\ = ((\b2v_inst2|Cnt~0_combout\ $ (\b2v_inst2|count\(6) $ (\b2v_inst2|count[5]~20\)))) # (GND)
-- \b2v_inst2|count[6]~22\ = CARRY((\b2v_inst2|Cnt~0_combout\ & (\b2v_inst2|count\(6) & !\b2v_inst2|count[5]~20\)) # (!\b2v_inst2|Cnt~0_combout\ & ((\b2v_inst2|count\(6)) # (!\b2v_inst2|count[5]~20\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|Cnt~0_combout\,
	datab => \b2v_inst2|count\(6),
	datad => VCC,
	cin => \b2v_inst2|count[5]~20\,
	combout => \b2v_inst2|count[6]~21_combout\,
	cout => \b2v_inst2|count[6]~22\);

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[6]~I\ : cycloneii_io
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
	padio => ww_a(6),
	combout => \a~combout\(6));

-- Location: LCFF_X11_Y23_N29
\b2v_inst2|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|count[6]~21_combout\,
	sdata => \a~combout\(6),
	sload => \b2v_inst2|Cnt~1_combout\,
	ena => \b2v_inst2|count[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|count\(6));

-- Location: LCCOMB_X11_Y23_N30
\b2v_inst2|count[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|count[7]~23_combout\ = \b2v_inst2|Cnt~0_combout\ $ (\b2v_inst2|count\(7) $ (!\b2v_inst2|count[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|Cnt~0_combout\,
	datab => \b2v_inst2|count\(7),
	cin => \b2v_inst2|count[6]~22\,
	combout => \b2v_inst2|count[7]~23_combout\);

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[7]~I\ : cycloneii_io
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
	padio => ww_a(7),
	combout => \a~combout\(7));

-- Location: LCFF_X11_Y23_N31
\b2v_inst2|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|count[7]~23_combout\,
	sdata => \a~combout\(7),
	sload => \b2v_inst2|Cnt~1_combout\,
	ena => \b2v_inst2|count[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|count\(7));

-- Location: LCCOMB_X14_Y23_N14
\b2v_inst2|state.SendAddrA_w~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|state.SendAddrA_w~feeder_combout\ = \b2v_inst2|state.WriteB~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst2|state.WriteB~regout\,
	combout => \b2v_inst2|state.SendAddrA_w~feeder_combout\);

-- Location: LCFF_X14_Y23_N15
\b2v_inst2|state.SendAddrA_w\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|state.SendAddrA_w~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|state.SendAddrA_w~regout\);

-- Location: LCCOMB_X14_Y23_N12
\b2v_inst2|dataB[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|dataB[7]~0_combout\ = (\b2v_inst2|state.GetB~regout\ & \b2v_inst2|delay~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|state.GetB~regout\,
	datad => \b2v_inst2|delay~regout\,
	combout => \b2v_inst2|dataB[7]~0_combout\);

-- Location: LCFF_X12_Y23_N21
\b2v_inst2|dataB[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \b2v_inst2|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|dataB\(7));

-- Location: LCFF_X14_Y23_N11
\b2v_inst2|state.WriteA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst2|state.SendAddrA_w~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|state.WriteA~regout\);

-- Location: LCCOMB_X12_Y23_N20
\b2v_inst2|DataOut[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|DataOut[7]~7_combout\ = (\b2v_inst2|state.SendAddrA_w~regout\ & (\b2v_inst2|dataA\(7))) # (!\b2v_inst2|state.SendAddrA_w~regout\ & ((\b2v_inst2|state.WriteA~regout\ & (\b2v_inst2|dataA\(7))) # (!\b2v_inst2|state.WriteA~regout\ & 
-- ((\b2v_inst2|dataB\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|state.SendAddrA_w~regout\,
	datab => \b2v_inst2|dataA\(7),
	datac => \b2v_inst2|dataB\(7),
	datad => \b2v_inst2|state.WriteA~regout\,
	combout => \b2v_inst2|DataOut[7]~7_combout\);

-- Location: M4K_X13_Y23
\b2v_inst|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F303132333435363738393A3B3C3D3E3F404142434445464748494A4B4C4D4E4F505152535455565758595A5B5C5D5E5F606162636465666768696A6B6C6D6E6F707172737475767778797A7B7C7D7E7F808182838485868788898A8B8C8D8E8F909192939495969798999A9B9C9D9E9FA0A1A2A3A4A5A6A7A8A9AAABACADAEAFB0B1B2B3B4B5B6B7B8B9BABBBCBDBEBFC0C1C2C3C4C5C6C7C8C9CACBCCCDCECFD0D1D2D3D4D5D6D7D8D9DADBDCDDDEDFE0E1E2E3E4E5E6E7E8E9EAEBECEDEEEFF0F1F2F3F4F5F6F7F8F9FAFBFCFDFEFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "RAM256x8.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAM256x8:b2v_inst|altsyncram:altsyncram_component|altsyncram_rtc1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \b2v_inst2|WR~combout\,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \b2v_inst|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCFF_X12_Y23_N31
\b2v_inst2|dataB[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \b2v_inst2|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|dataB\(6));

-- Location: LCCOMB_X12_Y23_N30
\b2v_inst2|DataOut[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|DataOut[6]~6_combout\ = (\b2v_inst2|state.SendAddrA_w~regout\ & (\b2v_inst2|dataA\(6))) # (!\b2v_inst2|state.SendAddrA_w~regout\ & ((\b2v_inst2|state.WriteA~regout\ & (\b2v_inst2|dataA\(6))) # (!\b2v_inst2|state.WriteA~regout\ & 
-- ((\b2v_inst2|dataB\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|dataA\(6),
	datab => \b2v_inst2|state.SendAddrA_w~regout\,
	datac => \b2v_inst2|dataB\(6),
	datad => \b2v_inst2|state.WriteA~regout\,
	combout => \b2v_inst2|DataOut[6]~6_combout\);

-- Location: LCCOMB_X14_Y23_N22
\b2v_inst2|dataA[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|dataA[7]~0_combout\ = (\b2v_inst2|state.GetA~regout\ & \b2v_inst2|delay~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|state.GetA~regout\,
	datad => \b2v_inst2|delay~regout\,
	combout => \b2v_inst2|dataA[7]~0_combout\);

-- Location: LCFF_X12_Y23_N15
\b2v_inst2|dataA[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \b2v_inst2|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|dataA\(5));

-- Location: LCFF_X12_Y23_N25
\b2v_inst2|dataB[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \b2v_inst2|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|dataB\(5));

-- Location: LCCOMB_X12_Y23_N24
\b2v_inst2|DataOut[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|DataOut[5]~5_combout\ = (\b2v_inst2|state.SendAddrA_w~regout\ & (\b2v_inst2|dataA\(5))) # (!\b2v_inst2|state.SendAddrA_w~regout\ & ((\b2v_inst2|state.WriteA~regout\ & (\b2v_inst2|dataA\(5))) # (!\b2v_inst2|state.WriteA~regout\ & 
-- ((\b2v_inst2|dataB\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|state.SendAddrA_w~regout\,
	datab => \b2v_inst2|dataA\(5),
	datac => \b2v_inst2|dataB\(5),
	datad => \b2v_inst2|state.WriteA~regout\,
	combout => \b2v_inst2|DataOut[5]~5_combout\);

-- Location: LCFF_X12_Y23_N27
\b2v_inst2|dataB[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \b2v_inst2|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|dataB\(4));

-- Location: LCCOMB_X12_Y23_N26
\b2v_inst2|DataOut[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|DataOut[4]~4_combout\ = (\b2v_inst2|state.SendAddrA_w~regout\ & (\b2v_inst2|dataA\(4))) # (!\b2v_inst2|state.SendAddrA_w~regout\ & ((\b2v_inst2|state.WriteA~regout\ & (\b2v_inst2|dataA\(4))) # (!\b2v_inst2|state.WriteA~regout\ & 
-- ((\b2v_inst2|dataB\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|dataA\(4),
	datab => \b2v_inst2|state.SendAddrA_w~regout\,
	datac => \b2v_inst2|dataB\(4),
	datad => \b2v_inst2|state.WriteA~regout\,
	combout => \b2v_inst2|DataOut[4]~4_combout\);

-- Location: LCFF_X12_Y23_N1
\b2v_inst2|dataB[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \b2v_inst2|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|dataB\(3));

-- Location: LCCOMB_X12_Y23_N0
\b2v_inst2|DataOut[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|DataOut[3]~3_combout\ = (\b2v_inst2|state.SendAddrA_w~regout\ & (\b2v_inst2|dataA\(3))) # (!\b2v_inst2|state.SendAddrA_w~regout\ & ((\b2v_inst2|state.WriteA~regout\ & (\b2v_inst2|dataA\(3))) # (!\b2v_inst2|state.WriteA~regout\ & 
-- ((\b2v_inst2|dataB\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|dataA\(3),
	datab => \b2v_inst2|state.SendAddrA_w~regout\,
	datac => \b2v_inst2|dataB\(3),
	datad => \b2v_inst2|state.WriteA~regout\,
	combout => \b2v_inst2|DataOut[3]~3_combout\);

-- Location: LCFF_X12_Y23_N9
\b2v_inst2|dataA[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \b2v_inst2|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|dataA\(2));

-- Location: LCFF_X12_Y23_N3
\b2v_inst2|dataB[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \b2v_inst2|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|dataB\(2));

-- Location: LCCOMB_X12_Y23_N2
\b2v_inst2|DataOut[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|DataOut[2]~2_combout\ = (\b2v_inst2|state.SendAddrA_w~regout\ & (\b2v_inst2|dataA\(2))) # (!\b2v_inst2|state.SendAddrA_w~regout\ & ((\b2v_inst2|state.WriteA~regout\ & (\b2v_inst2|dataA\(2))) # (!\b2v_inst2|state.WriteA~regout\ & 
-- ((\b2v_inst2|dataB\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|state.SendAddrA_w~regout\,
	datab => \b2v_inst2|dataA\(2),
	datac => \b2v_inst2|dataB\(2),
	datad => \b2v_inst2|state.WriteA~regout\,
	combout => \b2v_inst2|DataOut[2]~2_combout\);

-- Location: LCFF_X12_Y23_N29
\b2v_inst2|dataB[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \b2v_inst2|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|dataB\(1));

-- Location: LCCOMB_X12_Y23_N28
\b2v_inst2|DataOut[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|DataOut[1]~1_combout\ = (\b2v_inst2|state.SendAddrA_w~regout\ & (\b2v_inst2|dataA\(1))) # (!\b2v_inst2|state.SendAddrA_w~regout\ & ((\b2v_inst2|state.WriteA~regout\ & (\b2v_inst2|dataA\(1))) # (!\b2v_inst2|state.WriteA~regout\ & 
-- ((\b2v_inst2|dataB\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|dataA\(1),
	datab => \b2v_inst2|state.SendAddrA_w~regout\,
	datac => \b2v_inst2|dataB\(1),
	datad => \b2v_inst2|state.WriteA~regout\,
	combout => \b2v_inst2|DataOut[1]~1_combout\);

-- Location: LCFF_X12_Y23_N5
\b2v_inst2|dataA[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \b2v_inst2|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|dataA\(0));

-- Location: LCFF_X12_Y23_N23
\b2v_inst2|dataB[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \b2v_inst2|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|dataB\(0));

-- Location: LCCOMB_X12_Y23_N22
\b2v_inst2|DataOut[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|DataOut[0]~0_combout\ = (\b2v_inst2|state.SendAddrA_w~regout\ & (\b2v_inst2|dataA\(0))) # (!\b2v_inst2|state.SendAddrA_w~regout\ & ((\b2v_inst2|state.WriteA~regout\ & (\b2v_inst2|dataA\(0))) # (!\b2v_inst2|state.WriteA~regout\ & 
-- ((\b2v_inst2|dataB\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|state.SendAddrA_w~regout\,
	datab => \b2v_inst2|dataA\(0),
	datac => \b2v_inst2|dataB\(0),
	datad => \b2v_inst2|state.WriteA~regout\,
	combout => \b2v_inst2|DataOut[0]~0_combout\);

-- Location: LCFF_X12_Y23_N19
\b2v_inst2|dataA[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \b2v_inst2|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|dataA\(7));

-- Location: LCCOMB_X12_Y23_N4
\b2v_inst2|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|LessThan0~1_cout\ = CARRY((\b2v_inst2|dataA\(0) & !\b2v_inst2|dataB\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|dataA\(0),
	datab => \b2v_inst2|dataB\(0),
	datad => VCC,
	cout => \b2v_inst2|LessThan0~1_cout\);

-- Location: LCCOMB_X12_Y23_N6
\b2v_inst2|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|LessThan0~3_cout\ = CARRY((\b2v_inst2|dataA\(1) & (\b2v_inst2|dataB\(1) & !\b2v_inst2|LessThan0~1_cout\)) # (!\b2v_inst2|dataA\(1) & ((\b2v_inst2|dataB\(1)) # (!\b2v_inst2|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|dataA\(1),
	datab => \b2v_inst2|dataB\(1),
	datad => VCC,
	cin => \b2v_inst2|LessThan0~1_cout\,
	cout => \b2v_inst2|LessThan0~3_cout\);

-- Location: LCCOMB_X12_Y23_N8
\b2v_inst2|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|LessThan0~5_cout\ = CARRY((\b2v_inst2|dataB\(2) & (\b2v_inst2|dataA\(2) & !\b2v_inst2|LessThan0~3_cout\)) # (!\b2v_inst2|dataB\(2) & ((\b2v_inst2|dataA\(2)) # (!\b2v_inst2|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|dataB\(2),
	datab => \b2v_inst2|dataA\(2),
	datad => VCC,
	cin => \b2v_inst2|LessThan0~3_cout\,
	cout => \b2v_inst2|LessThan0~5_cout\);

-- Location: LCCOMB_X12_Y23_N10
\b2v_inst2|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|LessThan0~7_cout\ = CARRY((\b2v_inst2|dataA\(3) & (\b2v_inst2|dataB\(3) & !\b2v_inst2|LessThan0~5_cout\)) # (!\b2v_inst2|dataA\(3) & ((\b2v_inst2|dataB\(3)) # (!\b2v_inst2|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|dataA\(3),
	datab => \b2v_inst2|dataB\(3),
	datad => VCC,
	cin => \b2v_inst2|LessThan0~5_cout\,
	cout => \b2v_inst2|LessThan0~7_cout\);

-- Location: LCCOMB_X12_Y23_N12
\b2v_inst2|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|LessThan0~9_cout\ = CARRY((\b2v_inst2|dataA\(4) & ((!\b2v_inst2|LessThan0~7_cout\) # (!\b2v_inst2|dataB\(4)))) # (!\b2v_inst2|dataA\(4) & (!\b2v_inst2|dataB\(4) & !\b2v_inst2|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|dataA\(4),
	datab => \b2v_inst2|dataB\(4),
	datad => VCC,
	cin => \b2v_inst2|LessThan0~7_cout\,
	cout => \b2v_inst2|LessThan0~9_cout\);

-- Location: LCCOMB_X12_Y23_N14
\b2v_inst2|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|LessThan0~11_cout\ = CARRY((\b2v_inst2|dataB\(5) & ((!\b2v_inst2|LessThan0~9_cout\) # (!\b2v_inst2|dataA\(5)))) # (!\b2v_inst2|dataB\(5) & (!\b2v_inst2|dataA\(5) & !\b2v_inst2|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|dataB\(5),
	datab => \b2v_inst2|dataA\(5),
	datad => VCC,
	cin => \b2v_inst2|LessThan0~9_cout\,
	cout => \b2v_inst2|LessThan0~11_cout\);

-- Location: LCCOMB_X12_Y23_N16
\b2v_inst2|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|LessThan0~13_cout\ = CARRY((\b2v_inst2|dataA\(6) & ((!\b2v_inst2|LessThan0~11_cout\) # (!\b2v_inst2|dataB\(6)))) # (!\b2v_inst2|dataA\(6) & (!\b2v_inst2|dataB\(6) & !\b2v_inst2|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|dataA\(6),
	datab => \b2v_inst2|dataB\(6),
	datad => VCC,
	cin => \b2v_inst2|LessThan0~11_cout\,
	cout => \b2v_inst2|LessThan0~13_cout\);

-- Location: LCCOMB_X12_Y23_N18
\b2v_inst2|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|LessThan0~14_combout\ = (\b2v_inst2|dataB\(7) & (\b2v_inst2|LessThan0~13_cout\ & \b2v_inst2|dataA\(7))) # (!\b2v_inst2|dataB\(7) & ((\b2v_inst2|LessThan0~13_cout\) # (\b2v_inst2|dataA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|dataB\(7),
	datad => \b2v_inst2|dataA\(7),
	cin => \b2v_inst2|LessThan0~13_cout\,
	combout => \b2v_inst2|LessThan0~14_combout\);

-- Location: LCCOMB_X15_Y23_N28
\b2v_inst2|Selector5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|Selector5~10_combout\ = (\b2v_inst2|Selector5~8_combout\) # ((\b2v_inst2|Selector5~9_combout\) # ((\b2v_inst2|LessThan0~14_combout\ & \b2v_inst2|state.Compare~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|Selector5~8_combout\,
	datab => \b2v_inst2|Selector5~9_combout\,
	datac => \b2v_inst2|LessThan0~14_combout\,
	datad => \b2v_inst2|state.Compare~regout\,
	combout => \b2v_inst2|Selector5~10_combout\);

-- Location: LCCOMB_X15_Y23_N4
\b2v_inst2|state~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|state~21_combout\ = (\b2v_inst2|state.Compare~regout\ & ((\b2v_inst2|Selector5~10_combout\) # ((\b2v_inst2|state.CheckLoop~regout\ & \b2v_inst2|Selector5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|state.Compare~regout\,
	datab => \b2v_inst2|state.CheckLoop~regout\,
	datac => \b2v_inst2|Selector5~7_combout\,
	datad => \b2v_inst2|Selector5~10_combout\,
	combout => \b2v_inst2|state~21_combout\);

-- Location: LCFF_X15_Y23_N5
\b2v_inst2|state.SendAddrB_w\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|state~21_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|state.SendAddrB_w~regout\);

-- Location: LCFF_X15_Y23_N21
\b2v_inst2|state.WriteB\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst2|state.SendAddrB_w~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|state.WriteB~regout\);

-- Location: LCCOMB_X15_Y23_N26
\b2v_inst2|Cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|Cnt~0_combout\ = (\b2v_inst2|state.WriteB~regout\) # ((\b2v_inst2|state.GetA~regout\ & \b2v_inst2|delay~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|state.GetA~regout\,
	datac => \b2v_inst2|state.WriteB~regout\,
	datad => \b2v_inst2|delay~regout\,
	combout => \b2v_inst2|Cnt~0_combout\);

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\a[2]~I\ : cycloneii_io
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
	padio => ww_a(2),
	combout => \a~combout\(2));

-- Location: LCFF_X11_Y23_N21
\b2v_inst2|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|count[2]~13_combout\,
	sdata => \a~combout\(2),
	sload => \b2v_inst2|Cnt~1_combout\,
	ena => \b2v_inst2|count[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|count\(2));

-- Location: LCCOMB_X11_Y23_N0
\b2v_inst2|Selector5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|Selector5~4_combout\ = (\b~combout\(2) & (\b2v_inst2|count\(2) & (\b~combout\(3) $ (!\b2v_inst2|count\(3))))) # (!\b~combout\(2) & (!\b2v_inst2|count\(2) & (\b~combout\(3) $ (!\b2v_inst2|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(2),
	datab => \b~combout\(3),
	datac => \b2v_inst2|count\(2),
	datad => \b2v_inst2|count\(3),
	combout => \b2v_inst2|Selector5~4_combout\);

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[5]~I\ : cycloneii_io
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
	padio => ww_b(5),
	combout => \b~combout\(5));

-- Location: LCCOMB_X11_Y23_N14
\b2v_inst2|Selector5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|Selector5~5_combout\ = (\b~combout\(4) & (\b2v_inst2|count\(4) & (\b~combout\(5) $ (!\b2v_inst2|count\(5))))) # (!\b~combout\(4) & (!\b2v_inst2|count\(4) & (\b~combout\(5) $ (!\b2v_inst2|count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(4),
	datab => \b~combout\(5),
	datac => \b2v_inst2|count\(4),
	datad => \b2v_inst2|count\(5),
	combout => \b2v_inst2|Selector5~5_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\b[1]~I\ : cycloneii_io
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
	padio => ww_b(1),
	combout => \b~combout\(1));

-- Location: LCCOMB_X11_Y23_N2
\b2v_inst2|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|Selector5~3_combout\ = (\b~combout\(0) & (\b2v_inst2|count\(0) & (\b2v_inst2|count\(1) $ (!\b~combout\(1))))) # (!\b~combout\(0) & (!\b2v_inst2|count\(0) & (\b2v_inst2|count\(1) $ (!\b~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b~combout\(0),
	datab => \b2v_inst2|count\(1),
	datac => \b2v_inst2|count\(0),
	datad => \b~combout\(1),
	combout => \b2v_inst2|Selector5~3_combout\);

-- Location: LCCOMB_X11_Y23_N10
\b2v_inst2|Selector5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|Selector5~7_combout\ = (\b2v_inst2|Selector5~6_combout\ & (\b2v_inst2|Selector5~4_combout\ & (\b2v_inst2|Selector5~5_combout\ & \b2v_inst2|Selector5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|Selector5~6_combout\,
	datab => \b2v_inst2|Selector5~4_combout\,
	datac => \b2v_inst2|Selector5~5_combout\,
	datad => \b2v_inst2|Selector5~3_combout\,
	combout => \b2v_inst2|Selector5~7_combout\);

-- Location: LCCOMB_X15_Y23_N30
\b2v_inst2|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|Selector1~0_combout\ = (\b2v_inst2|Selector5~10_combout\ & (((\b2v_inst2|Selector0~0_combout\)))) # (!\b2v_inst2|Selector5~10_combout\ & (\b2v_inst2|state.CheckLoop~regout\ & ((\b2v_inst2|Selector0~0_combout\) # 
-- (!\b2v_inst2|Selector5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|state.CheckLoop~regout\,
	datab => \b2v_inst2|Selector0~0_combout\,
	datac => \b2v_inst2|Selector5~7_combout\,
	datad => \b2v_inst2|Selector5~10_combout\,
	combout => \b2v_inst2|Selector1~0_combout\);

-- Location: LCFF_X15_Y23_N31
\b2v_inst2|state.SendAddrA_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|Selector1~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|state.SendAddrA_r~regout\);

-- Location: LCCOMB_X15_Y23_N0
\b2v_inst2|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|Selector2~0_combout\ = (\b2v_inst2|state.SendAddrA_r~regout\) # ((\b2v_inst2|state.GetA~regout\ & !\b2v_inst2|delay~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|state.SendAddrA_r~regout\,
	datac => \b2v_inst2|state.GetA~regout\,
	datad => \b2v_inst2|delay~regout\,
	combout => \b2v_inst2|Selector2~0_combout\);

-- Location: LCFF_X15_Y23_N1
\b2v_inst2|state.GetA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|Selector2~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|state.GetA~regout\);

-- Location: LCCOMB_X15_Y23_N14
\b2v_inst2|state~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|state~20_combout\ = (\b2v_inst2|state.GetA~regout\ & ((\b2v_inst2|Selector5~10_combout\) # ((\b2v_inst2|state.CheckLoop~regout\ & \b2v_inst2|Selector5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|state.CheckLoop~regout\,
	datab => \b2v_inst2|state.GetA~regout\,
	datac => \b2v_inst2|Selector5~7_combout\,
	datad => \b2v_inst2|Selector5~10_combout\,
	combout => \b2v_inst2|state~20_combout\);

-- Location: LCFF_X15_Y23_N15
\b2v_inst2|state.SendAddrB_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|state~20_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|state.SendAddrB_r~regout\);

-- Location: LCCOMB_X14_Y23_N16
\b2v_inst2|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|Selector3~0_combout\ = (\b2v_inst2|state.SendAddrB_r~regout\) # ((\b2v_inst2|state.GetB~regout\ & !\b2v_inst2|delay~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|state.SendAddrB_r~regout\,
	datac => \b2v_inst2|state.GetB~regout\,
	datad => \b2v_inst2|delay~regout\,
	combout => \b2v_inst2|Selector3~0_combout\);

-- Location: LCFF_X14_Y23_N17
\b2v_inst2|state.GetB\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|Selector3~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|state.GetB~regout\);

-- Location: LCCOMB_X15_Y23_N10
\b2v_inst2|state~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|state~19_combout\ = (\b2v_inst2|state.GetB~regout\ & ((\b2v_inst2|Selector5~10_combout\) # ((\b2v_inst2|state.CheckLoop~regout\ & \b2v_inst2|Selector5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|state.CheckLoop~regout\,
	datab => \b2v_inst2|state.GetB~regout\,
	datac => \b2v_inst2|Selector5~7_combout\,
	datad => \b2v_inst2|Selector5~10_combout\,
	combout => \b2v_inst2|state~19_combout\);

-- Location: LCFF_X15_Y23_N11
\b2v_inst2|state.Compare\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|state~19_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|state.Compare~regout\);

-- Location: LCCOMB_X11_Y23_N8
\b2v_inst2|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|Selector4~0_combout\ = (\b2v_inst2|state.WriteA~regout\) # ((\b2v_inst2|state.Compare~regout\ & !\b2v_inst2|LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|state.Compare~regout\,
	datac => \b2v_inst2|state.WriteA~regout\,
	datad => \b2v_inst2|LessThan0~14_combout\,
	combout => \b2v_inst2|Selector4~0_combout\);

-- Location: LCFF_X11_Y23_N9
\b2v_inst2|state.CheckLoop\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|Selector4~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|state.CheckLoop~regout\);

-- Location: LCCOMB_X15_Y23_N22
\b2v_inst2|state~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|state~18_combout\ = (\b2v_inst2|state.CheckLoop~regout\ & ((\b2v_inst2|Selector5~7_combout\) # (\b2v_inst2|Selector5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|state.CheckLoop~regout\,
	datac => \b2v_inst2|Selector5~7_combout\,
	datad => \b2v_inst2|Selector5~10_combout\,
	combout => \b2v_inst2|state~18_combout\);

-- Location: LCFF_X15_Y23_N23
\b2v_inst2|state.CheckFlag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|state~18_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|state.CheckFlag~regout\);

-- Location: LCCOMB_X15_Y23_N20
\b2v_inst2|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|Selector0~0_combout\ = (\b2v_inst2|state.CheckFlag~regout\) # (!\b2v_inst2|state.Waiting~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|state.CheckFlag~regout\,
	datad => \b2v_inst2|state.Waiting~regout\,
	combout => \b2v_inst2|Selector0~0_combout\);

-- Location: LCCOMB_X15_Y23_N12
\b2v_inst2|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|Selector0~1_combout\ = ((\b2v_inst2|Selector5~10_combout\) # ((\b2v_inst2|state.CheckLoop~regout\ & \b2v_inst2|Selector5~7_combout\))) # (!\b2v_inst2|Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|state.CheckLoop~regout\,
	datab => \b2v_inst2|Selector0~0_combout\,
	datac => \b2v_inst2|Selector5~7_combout\,
	datad => \b2v_inst2|Selector5~10_combout\,
	combout => \b2v_inst2|Selector0~1_combout\);

-- Location: LCFF_X15_Y23_N13
\b2v_inst2|state.Waiting\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|Selector0~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|state.Waiting~regout\);

-- Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Complete~I\ : cycloneii_io
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
	datain => \b2v_inst2|ALT_INV_state.Waiting~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Complete);

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[0]~I\ : cycloneii_io
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
	padio => ww_q(0));

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[1]~I\ : cycloneii_io
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
	padio => ww_q(1));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[2]~I\ : cycloneii_io
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
	padio => ww_q(2));

-- Location: PIN_L10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[3]~I\ : cycloneii_io
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
	padio => ww_q(3));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[4]~I\ : cycloneii_io
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
	datain => \b2v_inst|altsyncram_component|auto_generated|q_a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(4));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[5]~I\ : cycloneii_io
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
	datain => \b2v_inst|altsyncram_component|auto_generated|q_a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(5));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[6]~I\ : cycloneii_io
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
	datain => \b2v_inst|altsyncram_component|auto_generated|q_a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(6));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\q[7]~I\ : cycloneii_io
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
	datain => \b2v_inst|altsyncram_component|auto_generated|q_a\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_q(7));
END structure;


