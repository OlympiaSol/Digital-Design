LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY lab8_tb  IS 
END ; 
 
ARCHITECTURE lab8_tb_arch OF lab8_tb IS
  SIGNAL OUTP   :  STD_LOGIC_VECTOR (7 downto 0)  ; 
  SIGNAL addrA   :  STD_LOGIC_VECTOR (7 downto 0)  ; 
  SIGNAL addrB   :  STD_LOGIC_VECTOR (7 downto 0)  ; 
  SIGNAL A   :  STD_LOGIC_VECTOR (3 downto 0)  ; 
  SIGNAL gnd   :  STD_LOGIC_VECTOR (3 downto 0)  ; 
  SIGNAL clck   :  STD_LOGIC  ; 
  SIGNAL B   :  STD_LOGIC_VECTOR (3 downto 0)  ; 
  SIGNAL enACC   :  STD_LOGIC  ; 
  SIGNAL rest   :  STD_LOGIC  ; 
  SIGNAL Result   :  STD_LOGIC_VECTOR (15 downto 0)  ; 
  SIGNAL rsMUL   :  STD_LOGIC  ; 
  COMPONENT Lab8  
    PORT ( 
      OUTP  : out STD_LOGIC_VECTOR (7 downto 0) ; 
      addrA  : out STD_LOGIC_VECTOR (7 downto 0) ; 
      addrB  : out STD_LOGIC_VECTOR (7 downto 0) ; 
      A  : out STD_LOGIC_VECTOR (3 downto 0) ; 
      gnd  : in STD_LOGIC_VECTOR (3 downto 0) ; 
      clck  : in STD_LOGIC ; 
      B  : out STD_LOGIC_VECTOR (3 downto 0) ; 
      enACC  : out STD_LOGIC ; 
      rest  : in STD_LOGIC ; 
      Result  : out STD_LOGIC_VECTOR (15 downto 0) ; 
      rsMUL  : out STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : Lab8  
    PORT MAP ( 
      OUTP   => OUTP  ,
      addrA   => addrA  ,
      addrB   => addrB  ,
      A   => A  ,
      gnd   => gnd  ,
      clck   => clck  ,
      B   => B  ,
      enACC   => enACC  ,
      rest   => rest  ,
      Result   => Result  ,
      rsMUL   => rsMUL   ) ; 



-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 20 ns
  Process
	Begin
	 clck  <= '0'  ;
	wait for 10 ns ;
-- 10 ns, single loop till start period.
	for Z in 1 to 49
	loop
	    clck  <= '1'  ;
	   wait for 10 ns ;
	    clck  <= '0'  ;
	   wait for 10 ns ;
-- 990 ns, repeat pattern in loop.
	end  loop;
	 clck  <= '1'  ;
	wait for 10 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 5 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 rest  <= '1'  ;
	wait for 5 ns ;
	 rest  <= '0'  ;
	wait for 995 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 gnd  <= "0000"  ;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;
END;
