LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY Counter8Bit_tb  IS 
END ; 
 
ARCHITECTURE Counter8Bit_tb_arch OF Counter8Bit_tb IS
  SIGNAL SET   :  STD_LOGIC  ; 
  SIGNAL Q   :  std_logic_vector (7 downto 0)  ; 
  SIGNAL CLR   :  STD_LOGIC  ; 
  SIGNAL CLK   :  STD_LOGIC  ; 
  COMPONENT Counter8Bit  
    PORT ( 
      SET  : in STD_LOGIC ; 
      Q  : out std_logic_vector (7 downto 0) ; 
      CLR  : in STD_LOGIC ; 
      CLK  : in STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : Counter8Bit  
    PORT MAP ( 
      SET   => SET  ,
      Q   => Q  ,
      CLR   => CLR  ,
      CLK   => CLK   ) ; 



-- "Constant Pattern"
-- Start Time = 100 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 set  <= '1'  ;
	wait for 100 ns ;
	 set  <= '0'  ;
	wait for 900 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 420 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 clr  <= '0'  ;
	wait for 320 ns ;
	 clr  <= '1'  ;
	wait for 100 ns ;
	 clr  <= '0'  ;
	wait for 580 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 100 ns
  Process
	Begin
	 clk  <= '0'  ;
	wait for 50 ns ;
-- 50 ns, single loop till start period.
	for Z in 1 to 9
	loop
	    clk  <= '1'  ;
	   wait for 50 ns ;
	    clk  <= '0'  ;
	   wait for 50 ns ;
-- 950 ns, repeat pattern in loop.
	end  loop;
	 clk  <= '1'  ;
	wait for 50 ns ;
-- dumped values till 1 us
	wait;
 End Process;
END;
