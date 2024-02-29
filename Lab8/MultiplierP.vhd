LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY MultiplierP IS
	GENERIC (n: integer := 4);
	PORT (RST, CLK, SI: IN std_logic;
			A_IN, B_IN: IN std_logic_vector (n-1 downto 0);
			A_OUT, B_OUT, L_OUT, H_OUT: out std_logic_vector (n-1 downto 0));
END MultiplierP;
ARCHITECTURE struct OF MultiplierP IS
	COMPONENT Reg
		GENERIC (n: integer);
		PORT (D_IN: in std_logic_vector (n-1 downto 0);
				SI, CLK, RST, SLOAD, ENABLE: in std_logic;
				SO: out std_logic;
				D_OUT: out std_logic_vector (n-1 downto 0));
	END COMPONENT;
	COMPONENT Adder
		GENERIC (n: integer);
		PORT (A, B: IN std_logic_vector (n-1 downto 0);
				SUM: OUT std_logic_vector (n-1 downto 0);
				COUT: OUT std_logic);
	END COMPONENT;
	COMPONENT CtrlLogicP
		GENERIC (n: integer);
		PORT (RST, CLK : in std_logic;
				SL_A, SL_B, SL_H, SL_L, SL_C : out std_logic;
				EN_A, EN_B, EN_H, EN_L, EN_C : out std_logic);
	END COMPONENT;
	SIGNAL SL_A, SL_B, SL_H, SL_L, SL_C, EN_A, EN_B, EN_H, EN_L, EN_C: std_logic;
	SIGNAL SO_A, SO_H: std_logic;
	SIGNAL A, B, SUM, H: std_logic_vector (n-1 downto 0);
	SIGNAL C, COUT : std_logic_vector (0 downto 0);	
	BEGIN
	R_A: Reg GENERIC MAP (n)
				PORT MAP (A_IN, SI, CLK, RST, SL_A, EN_A, SO_A, A);
	R_B: Reg GENERIC MAP (n)
				PORT MAP (B_IN, SO_A, CLK, RST, SL_B, EN_B, open, B);
	R_C: Reg GENERIC MAP (n => 1)
				PORT MAP (COUT, '0', CLK, RST, SL_C, EN_C, open, C);
	R_H: Reg GENERIC MAP (n)
				PORT MAP (SUM, C(0), CLK, RST, SL_H, EN_H, SO_H, H);
	H_OUT <= H;
	R_L: Reg GENERIC MAP (n)
				PORT MAP ((n-1 downto 0 => '0'), SO_H, CLK, RST, SL_L, EN_L, open, L_OUT);
	U_ADD: Adder GENERIC MAP (n)
					 PORT MAP (H, ((n-1 downto 0 => B(0)) AND A), SUM, COUT(0));
	U_CTL: CtrlLogicP GENERIC MAP (n)
					PORT MAP (RST, CLK, SL_A, SL_B, SL_H, SL_L, SL_C, EN_A, EN_B, EN_H, EN_L, EN_C);
	A_OUT <= A;
	B_OUT <= B;
END struct;