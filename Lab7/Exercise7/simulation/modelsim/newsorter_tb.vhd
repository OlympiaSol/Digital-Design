LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY newsorter_tb  IS 
END ; 
 
ARCHITECTURE newsorter_tb_arch OF newsorter_tb IS
  SIGNAL q   :  STD_LOGIC_VECTOR (7 downto 0)  ; 
  SIGNAL Complete   :  STD_LOGIC  ; 
  SIGNAL a   :  STD_LOGIC_VECTOR (7 downto 0)  ; 
  SIGNAL b   :  STD_LOGIC_VECTOR (7 downto 0)  ; 
  SIGNAL clk   :  STD_LOGIC  ; 
  SIGNAL reset   :  STD_LOGIC  ; 
  SIGNAL launch   :  STD_LOGIC  ; 
  COMPONENT newSorter  
    PORT ( 
      q  : out STD_LOGIC_VECTOR (7 downto 0) ; 
      Complete  : out STD_LOGIC ; 
      a  : in STD_LOGIC_VECTOR (7 downto 0) ; 
      b  : in STD_LOGIC_VECTOR (7 downto 0) ; 
      clk  : in STD_LOGIC ; 
      reset  : in STD_LOGIC ; 
      launch  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : newSorter  
    PORT MAP ( 
      q   => q  ,
      Complete   => Complete  ,
      a   => a  ,
      b   => b  ,
      clk   => clk  ,
      reset   => reset  ,
      launch   => launch   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 20 ns
  Process
	Begin
	 clk  <= '0'  ;
	wait for 10 ns ;
-- 10 ns, single loop till start period.
	
	loop
	    clk  <= '1'  ;
	   wait for 10 ns ;
	    clk  <= '0'  ;
	   wait for 10 ns ;
-- 990 ns, repeat pattern in loop.
	exit	when (Complete'last_value	=	'0'	and Complete	=	'1');
	end  loop;
	 clk  <= '1'  ;
	wait for 10 ns ;
-- dumped values till 1 us
	wait;
 End Process;
 --ΑΜ¨4202
 a<="00000010";
 b<="00000101";
 process
	begin
		reset <= '1';
		launch <= '0';
		wait	for 12	ns;
		reset<='0';
		launch<='1';
		wait	for 50	ns;
		launch <=	'0';
	wait;
end process;
END;
