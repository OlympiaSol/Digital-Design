library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity Counter8Bit is 

	port( SET,CLK,CLR : in std_logic;
			Q : out std_logic_vector(7 downto 0)
	);
end Counter8Bit;


architecture behavioural of Counter8Bit is
	
		signal output : std_logic_vector(7 downto 0);
		
		--begin of architecture.
		begin
		
				seq0	:	process (CLK, CLR, SET )
-----------------begin of process seq0.-------------------
					begin
						if(CLR = '1') then output<="00000000";
							
						elsif(SET = '1') then output<="11111111";
							
						elsif(CLK'event	and	CLK	=	'1') 
						
						then
						output <=( output + '1' );
						
						end if;
						
					end process;
------------------end of proccess seq0.--------------------	

			Q <= output;
							

end behavioural;
