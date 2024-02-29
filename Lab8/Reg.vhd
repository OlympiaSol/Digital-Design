LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Reg IS
	GENERIC (n: integer := 8);
	PORT (D_IN: in std_logic_vector (n-1 downto 0);
			SI, CLK, RST, SLOAD, ENABLE: in std_logic;
			SO: out std_logic;
			D_OUT: out std_logic_vector (n-1 downto 0));
END Reg;

ARCHITECTURE behav OF Reg IS
	SIGNAL F: std_logic_vector(n-1 downto 0);
	BEGIN
	p0: PROCESS(RST,CLK)
		BEGIN 
			IF(RST = '1') THEN F <= (n-1 downto 0 => '0');
			ELSIF(CLK'event and CLK = '1') THEN
				IF(ENABLE = '1') THEN
					IF(SLOAD = '0') THEN F <= D_IN;
					ELSE F <= SI&F(n-1 downto 1);
					END IF;
				END IF;
			END IF;
	END PROCESS;
	D_OUT <= F;
	SO <= F(0);
END behav;
