library IEEE;
use IEEE.std_logic_1164.all;	

entity FA is
	

	port(   A : in std_logic;
			  B : in std_logic;
			Cin : in std_logic;
			Sum : out std_logic;
			Cout: out std_logic
			);
end FA;


architecture structural of FA is
	signal AxorB : std_logic;
	begin
		AxorB <= (A xor B);
		Sum  <= AxorB xor Cin;
		Cout <= ( A and B) or (Cin and AxorB);

end structural;
