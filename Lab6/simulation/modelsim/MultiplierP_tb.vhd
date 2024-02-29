LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
use work.Declarations.all;

ENTITY MultiplierP_tb  IS 
  GENERIC (
    n  : INTEGER   := 8 ); 
END ; 
 
ARCHITECTURE MultiplierP_tb_arch OF MultiplierP_tb IS
  SIGNAL A_OUT   :  STD_LOGIC_VECTOR (n - 1 downto 0)  ; 
  SIGNAL B_IN   :  STD_LOGIC_VECTOR (n - 1 downto 0)  ; 
  SIGNAL SI   :  STD_LOGIC  ; 
  SIGNAL B_OUT   :  STD_LOGIC_VECTOR (n - 1 downto 0)  ; 
  SIGNAL RST   :  STD_LOGIC  ; 
  SIGNAL CLK   :  STD_LOGIC  ; 
  SIGNAL H_OUT   :  STD_LOGIC_VECTOR (n - 1 downto 0)  ; 
  SIGNAL L_OUT   :  STD_LOGIC_VECTOR (n - 1 downto 0)  ; 
  SIGNAL A_IN   :  STD_LOGIC_VECTOR (n - 1 downto 0)  ; 
   signal monitor_state	:	state_type;

  COMPONENT MultiplierP  
    GENERIC ( 
      n  : INTEGER  );  
    PORT ( 
      A_OUT  : out STD_LOGIC_VECTOR (n - 1 downto 0) ; 
      B_IN  : in STD_LOGIC_VECTOR (n - 1 downto 0) ; 
      SI  : in STD_LOGIC ; 
      B_OUT  : out STD_LOGIC_VECTOR (n - 1 downto 0) ; 
      RST  : in STD_LOGIC ; 
      CLK  : in STD_LOGIC ; 
      H_OUT  : out STD_LOGIC_VECTOR (n - 1 downto 0) ; 
      L_OUT  : out STD_LOGIC_VECTOR (n - 1 downto 0) ; 
      A_IN  : in STD_LOGIC_VECTOR (n - 1 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : MultiplierP  
    GENERIC MAP ( 
      n  => n   )
    PORT MAP ( 
      A_OUT   => A_OUT  ,
      B_IN   => B_IN  ,
      SI   => SI  ,
      B_OUT   => B_OUT  ,
      RST   => RST  ,
      CLK   => CLK  ,
      H_OUT   => H_OUT  ,
      L_OUT   => L_OUT  ,
      A_IN   => A_IN   ) ; 



-- "Constant Pattern"
-- Start Time = 5 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 rst  <= '1'  ;
	wait for 5 ns ;
	 rst  <= '0'  ;
	wait for 995 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 20 ns
  Process
	Begin
	 clk  <= '0'  ;
	wait for 10 ns ;
-- 10 ns, single loop till start period.
	for Z in 1 to 49
	loop
	    clk  <= '1'  ;
	   wait for 10 ns ;
	    clk  <= '0'  ;
	   wait for 10 ns ;
-- 990 ns, repeat pattern in loop.
	end  loop;
	 clk  <= '1'  ;
	wait for 10 ns ;
-- dumped values till 1 us
	wait;
 End Process;
 SI<='0';
 A_IN<="00010011";
 B_IN<="01011100";
 monitor_state	<=	<< signal DUT.U_Ctl.state	:	state_type	>>;

process
	begin
		wait	on monitor_state;
		if (monitor_state = FINISH)	then
			wait	on clk;
			assert (FALSE)	report "Checking..."	severity note;
			--assert (L_OUT="0011"	and H_OUT="0010")	report "Check	Failed"	severity error;
			assert(L_OUT="0011" and H_OUT="0010") report "Check Failed" severity error;
		end	if;
end	process;
END;
