library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity newSort is
port (
			a,b              :in std_logic_vector(7 downto 0);
			clk,launch,reset :in std_logic;
			DataIn			  :in std_logic_vector(7 downto 0);
			Address			  :out std_logic_vector(7 downto 0);
			DataOut			  :out std_logic_vector(7 downto 0);
			Complete,WR		  :out std_logic);
end newSort;

architecture RTL of newSort is
		type state_type is(Waiting,SendAddrA_r,GetA,SendAddrB_r,GetB,Compare,SendAddrA_w,WriteA,SendAddrB_w,WriteB,CheckLoop,CheckFlag);
		type StateArray is array(state_type, bit) of state_type;
		constant NextState: StateArray:= (
									Waiting				=>('0'=>Waiting,'1'=>SendAddrA_r),
									SendAddrA_r			=>(others=>GetA),
									GetA  				=>('0'=>GetA,'1'=>SendAddrB_r),
									SendAddrB_r			=>(others=>GetB),
									GetB	   			=>('0'=>GetB,'1'=>Compare),
									Compare				=>('0'=>CheckLoop,'1'=>SendAddrB_w),
									SendAddrB_w			=>(others=>WriteB),
									WriteB				=>(others=>SendAddrA_w),
									SendAddrA_w			=>(others=>WriteA),
									WriteA				=>(others=>CheckLoop),
									CheckLoop			=>('0'=>SendAddrA_r,'1'=>CheckFlag),
									CheckFlag			=>('0'=>Waiting,'1'=>SendAddrA_r));
									
		signal state: state_type;
		signal dataA,dataB: std_logic_vector (7 downto 0);
		signal count: std_logic_vector(7 downto 0);
		signal Flag, Swap,CountEnd,condition,delay :std_logic;

begin

		FSM: process(clk,reset)
		begin
			if(reset='1') then state <=Waiting;
			elsif(clk'event and clk='1')then
				state <= NextState(state, to_bit(condition));
			end if;
		end process;
		
		with state select
					condition<= launch when Waiting,swap when Compare,CountEnd when CheckLoop, Flag when CheckFlag,delay when GetA|GetB,'X' when others;
					
		
		Cnt: process(clk)
		begin
				if(clk'event and clk='1')then
				  if(state= Waiting or (state=CheckFlag and Flag = '1')) then count <= a;
				  elsif((state=GetA and delay='1')or state=WriteB) then count <= count + "00001";
				  elsif(state=Compare and Swap= '1') then count <= count - "00001";
				  end if;
				end if;
		end process;
		
		MemWait:process(clk,reset)
		begin
				if(reset='1')then delay <='0';
				elsif(clk'event and clk='1') then
						if(state= GetA or state = GetB) then delay <= not delay; end if;
				end if;
		end process;
		
		
		Seq:process(clk)
		begin
				if(clk'event and clk='1') then
					case(state) is
						when Waiting|CheckFlag		=>Flag<='0';
						when GetA 		            =>if(delay='1')then dataA<=DataIn;end if;
						when GetB						=>if(delay='1')then dataB<=DataIn;end if;
						when Compare					=>if(Swap='1')then Flag<='1';end if;
						when others						=>null;
					end case;
				end if;
		end process;
						
DataOut<=dataA when (state = SendAddrA_w or state = WriteA) else dataB;
Address<=count;
WR<='1' when state=WriteB or state=WriteA else'0';
Swap<='1' when dataA>dataB else '0';
CountEnd<='1' when count = b else '0';
Complete<='1' when state=Waiting else '0';

end RTL;					