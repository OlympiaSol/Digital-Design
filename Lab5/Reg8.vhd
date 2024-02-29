library	IEEE;
use	IEEE.std_logic_1164.all;

entity Reg8 is																
		port (	 CLK ,	CLR, SET:	in		std_logic;
					 D   : in std_logic_vector(7 downto 0);
				 Q,	Qn		:	out	std_logic_vector(7 downto 0) );
end Reg8;


architecture	RTL	of Reg8 is
		 signal	DFF	:	std_logic_vector(7 downto 0);
	begin
		seq0	:	process (CLK, CLR, SET )
			begin
				if	(CLR='1')	then DFF<="00000000";
				
					elsif	(SET='1')	then DFF<="11111111";
					
					elsif (CLK'event	and	CLK	=	'1')	then	DFF	<=D;	
					
					end	if;
		end	process;
		Q	<=	DFF;
		Qn	<=	not	DFF;
		
		
end RTL;