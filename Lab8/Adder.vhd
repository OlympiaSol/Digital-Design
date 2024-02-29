LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY Adder IS
	GENERIC (n: integer := 8);
	PORT (A, B: IN std_logic_vector (n-1 downto 0);
			SUM: OUT std_logic_vector (n-1 downto 0);
			COUT: OUT std_logic);
END Adder;

ARCHITECTURE behav OF Adder IS
	SIGNAL temp: std_logic_vector (n downto 0);
	BEGIN
		temp <= ('0'&A) + ('0'&B);
		SUM <= temp(n-1 downto 0);
		COUT <= temp(n);
END behav;
