LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;
use work.Declarations.all;

ENTITY CtrlLogicP IS
	GENERIC (n: integer := 8);
	PORT (RST, CLK: IN std_logic;
			SL_A, SL_B, SL_H, SL_L, SL_C: OUT std_logic;
			EN_A, EN_B, EN_H, EN_L, EN_C: OUT std_logic);
END CtrlLogicP;

ARCHITECTURE behav OF CtrlLogicP IS
	TYPE state_type IS (LOAD, ADD, SHIFT, FINISH);
	SIGNAL state: state_type;
	SIGNAL count: std_logic_vector (n downto 0);
	BEGIN
	p0: process(RST, CLK)
		BEGIN
		IF (RST = '1') THEN
			count <= (n downto 0 => '0');
		ELSIF (CLK'event AND CLK = '1') THEN
			count <= count + '1';
		END IF;
	END PROCESS;
	p1: process(RST, CLK)
		BEGIN
		IF (Rst='1') THEN state <= LOAD;
		ELSIF (CLK'event AND CLK='1') THEN
			CASE state IS
				WHEN LOAD => state <= ADD;
				WHEN ADD => state <= SHIFT;
				WHEN SHIFT => IF (conv_integer(count) = 2*n) THEN state <= FINISH; ELSE state <= ADD; END IF;
				WHEN FINISH => null;
			END CASE;
		END IF;
	END PROCESS;
	EN_A <= '1' WHEN state = LOAD ELSE '0';
	SL_A <= '0';
	EN_B <= '1' WHEN (state = LOAD OR state = SHIFT) ELSE '0';
	SL_B <= '1' WHEN state = SHIFT ELSE '0';
	EN_H <= '1' WHEN (state = ADD OR state = SHIFT) ELSE '0';
	SL_H <= '1' WHEN state = SHIFT ELSE '0';
	EN_L <= '1' WHEN (state = SHIFT) ELSE '0';
	SL_L <= '1' WHEN (state = SHIFT) ELSE '0';
	EN_C <= '1' WHEN (state = ADD) ELSE '0';
	SL_C <= '0';
END behav;
