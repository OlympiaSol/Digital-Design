LIBRARY altera_mf  ; 
LIBRARY ieee  ; 
LIBRARY std  ; 
USE altera_mf.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY ram32x8_db  IS 
END ; 
 
ARCHITECTURE ram32x8_db_arch OF ram32x8_db IS
  SIGNAL wren   :  STD_LOGIC  ; 
  SIGNAL clock   :  STD_LOGIC := '1'  ; 
  SIGNAL q   :  STD_LOGIC_VECTOR (7 downto 0)  ; 
  SIGNAL data   :  STD_LOGIC_VECTOR (7 downto 0)  ; 
  SIGNAL address   :  STD_LOGIC_VECTOR (4 downto 0)  ; 
  COMPONENT RAM32x8  
    PORT ( 
      wren  : in STD_LOGIC ; 
      clock  : in STD_LOGIC ; 
      q  : out STD_LOGIC_VECTOR (7 downto 0) ; 
      data  : in STD_LOGIC_VECTOR (7 downto 0) ; 
      address  : in STD_LOGIC_VECTOR (4 downto 0) ); 
  END COMPONENT ; 
BEGIN
  DUT  : RAM32x8  
    PORT MAP ( 
      wren   => wren  ,
      clock   => clock  ,
      q   => q  ,
      data   => data  ,
      address   => address   ) ; 



-- "Counter Pattern"(Range-Up) : step = 1 Range(00000-11111)
-- Start Time = 0 ns, End Time = 1 us, Period = 100 ns
  Process
	variable VARaddress  : std_logic_vector(4 downto 0);
	Begin
	VARaddress  := "00000" ;
	for repeatLength in 1 to 10
	loop
	    address  <= VARaddress  ;
	   wait for 100 ns ;
	   VARaddress  := VARaddress  + 1 ;
	end loop;
-- 1 us, periods remaining till edit start time.
	wait;
 End Process;


-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 40 ns
  Process
	Begin
	 clock  <= '0'  ;
	wait for 20 ns ;
-- 20 ns, single loop till start period.
	for Z in 1 to 24
	loop
	    clock  <= '1'  ;
	   wait for 20 ns ;
	    clock  <= '0'  ;
	   wait for 20 ns ;
-- 980 ns, repeat pattern in loop.
	end  loop;
	 clock  <= '1'  ;
	wait for 20 ns ;
-- dumped values till 1 us
	wait;
 End Process;


-- "Constant Pattern"
-- Start Time = 0 ns, End Time = 1 us, Period = 0 ns
  Process
	Begin
	 data  <= "00000000"  ;
	wait for 1 us ;
-- dumped values till 1 us
	wait;
 End Process;
END;
