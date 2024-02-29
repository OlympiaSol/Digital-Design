LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
use work.Declarations.all;

ENTITY CtrlLogicP_tb  IS 
  GENERIC (
    n  : INTEGER   := 8); 
END ; 
 
ARCHITECTURE CtrlLogicP_tb_arch OF CtrlLogicP_tb IS
  SIGNAL SL_B   :  STD_LOGIC  ; 
  SIGNAL RST   :  STD_LOGIC  ; 
  SIGNAL SL_C   :  STD_LOGIC  ; 
  SIGNAL EN_A   :  STD_LOGIC  ; 
  SIGNAL EN_B   :  STD_LOGIC  ; 
  SIGNAL EN_C   :  STD_LOGIC  ; 
  SIGNAL SL_H   :  STD_LOGIC  ; 
  SIGNAL CLK   :  STD_LOGIC  ; 
  SIGNAL SL_L   :  STD_LOGIC  ; 
  SIGNAL EN_H   :  STD_LOGIC  ; 
  SIGNAL EN_L   :  STD_LOGIC  ; 
  SIGNAL SL_A   :  STD_LOGIC  ;
  SIGNAL monitor_count : std_logic_vector (n downto 0 );
  signal monitor_state	:	state_type;
  
  COMPONENT CtrlLogicP  
    GENERIC ( 
      n  : INTEGER  );  
    PORT ( 
      SL_B  : out STD_LOGIC ; 
      RST  : in STD_LOGIC ; 
      SL_C  : out STD_LOGIC ; 
      EN_A  : out STD_LOGIC ; 
      EN_B  : out STD_LOGIC ; 
      EN_C  : out STD_LOGIC ; 
      SL_H  : out STD_LOGIC ; 
      CLK  : in STD_LOGIC ; 
      SL_L  : out STD_LOGIC ; 
      EN_H  : out STD_LOGIC ; 
      EN_L  : out STD_LOGIC ; 
      SL_A  : out STD_LOGIC ); 
  END COMPONENT ; 
BEGIN
  DUT  : CtrlLogicP  
    GENERIC MAP ( 
      n  => n   )
    PORT MAP ( 
      SL_B   => SL_B  ,
      RST   => RST  ,
      SL_C   => SL_C  ,
      EN_A   => EN_A  ,
      EN_B   => EN_B  ,
      EN_C   => EN_C  ,
      SL_H   => SL_H  ,
      CLK   => CLK  ,
      SL_L   => SL_L  ,
      EN_H   => EN_H  ,
      EN_L   => EN_L  ,
      SL_A   => SL_A   ) ; 



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
  monitor_count <= <<signal DUT.count : std_logic_vector(n downto 0) >>;
 
monitor_state	<=	<<	signal DUT.state	:	state_type	>>;
END;
