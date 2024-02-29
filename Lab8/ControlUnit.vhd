library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity ControlUnit is
	port(
		clk,reset :IN std_logic;
		enableACC, resetMUL : OUT std_logic;
		cnt : OUT std_logic_vector(3 downto 0);
		addressA : OUT std_logic_vector(7 downto 0);
		addressB : OUT std_logic_vector(7 downto 0));
end ControlUnit;

architecture behav of ControlUnit is
	
	signal addr :std_logic_vector(6 downto 0) := "0000000";
	signal counter :std_logic_vector(3 downto 0);
	signal enaACC :std_logic := '0';
	signal rstMUL :std_logic := '1';

	begin
		RST: process(clk,reset)
			begin
				if(reset='1') then
					enaACC <= '0';
					rstMUL <= '1';
					counter <= "0000";
				elsif(clk'event AND clk='0') then
					if(counter="0000") then
						rstMUL <= '0';
						counter <= counter + "0001";
					elsif(counter="1001") then
						enaACC <= '1';
						counter <= counter + "0001";
					elsif(counter>="1010") then
						enaACC <= '0';
						rstMUL <= '1';
						if(addr<"1111111") then
							counter <= "0000";
							addr <= addr + "0000001";
						end if;
					else counter <= counter + "0001";
					end if;
				end if;
			end process;
		enableACC <= enaACC;
		resetMUL <= rstMUL;
		addressA <= '0' & addr;
		addressB <= '1' & addr;
		cnt <= counter;
end behav;
