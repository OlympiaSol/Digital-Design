library IEEE;
use IEEE.std_logic_1164.all;

entity  is Counter8Bit

	port( Cin,CLK,RESET : std_logic;
			I : std_logic_vector(7 downto 0)
	)
end Counter8Bit;


architecture behavioural of Counter8Bit is
	
	
	signal BUS : std_logic_vector(7 downto 0);
	

	begin
		seq0 :	process (CLK, CLR, SET )
			begin
				

end behavioural;
