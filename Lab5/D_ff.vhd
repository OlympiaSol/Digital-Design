library	IEEE;
use	IEEE.std_logic_1164.all;
entity D_ff is																
port (	 CLK,	D,	CLR, SET:	in		std_logic;
				 Q,	Qn		:	out	std_logic );
end D_ff;
architecture	RTL	of D_ff is
		 signal	DFF	:	std_logic;
begin
		 seq0	:	process (CLK, CLR, SET )
		 begin
			 if	(CLR='1')	then DFF<='0';
				 elsif	(SET='1')	then DFF<='1';
				 elsif (CLK'event	and	CLK	=	'1')	then	DFF	<=D;	
				 end	if;
			 end	process;
			 Q	<=	DFF;	Qn	<=	not	DFF;
end RTL;