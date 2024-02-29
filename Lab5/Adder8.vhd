library IEEE;
use IEEE.std_logic_1164.all;	

entity Adder8 is
	port	(	A,	B :	 in	std_logic_vector	(7 downto 0);
				Cin	:	 in	std_logic;
				Y:	 out std_logic_vector	(7 downto 0);
				Cout:	 out	std_logic );
end	Adder8;	



architecture structural of Adder8 is
	
	component FA
	
		port( a,b,CIN : in std_logic;
				Sum,COUT : out std_logic
			);

	end component;
	
	signal carry : std_logic_vector(7 downto 0);
	
	
	begin
	
		u0 : FA port map( A(0),B(0),Cin     ,Y(0),carry(0));
		u1 : FA port map( A(1),B(1),carry(0),Y(1),carry(1));
		u2 : FA port map( A(2),B(2),carry(1),Y(2),carry(2));
		u3 : FA port map( A(3),B(3),carry(2),Y(3),carry(3));
		u4 : FA port map( A(4),B(4),carry(3),Y(4),carry(4));
		u5 : FA port map( A(5),B(5),carry(4),Y(5),carry(5));
		u6 : FA port map( A(6),B(6),carry(5),Y(6),carry(6));
		u7 : FA port map( A(7),B(7),carry(6),Y(7),Cout);
		

	
end structural;
