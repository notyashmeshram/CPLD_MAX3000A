library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
6
entity ring_count is 
Port ( CLOCK : in STD_LOGIC; 
RESET : in STD_LOGIC;
Q : out STD_LOGIC_VECTOR (2 downto 0));
end ring_count; 
architecture Behavioral of ring_count is
signal q_tmp: std_logic_vector(2 downto 0):= "000"; 
begin
process(CLOCK,RESET) 
begin
if RESET = ’1’ then
q_tmp <= "001"; 
elsif falling_edge(CLOCK) then
q_tmp(1) <= q_tmp(0);
q_tmp(2) <= q_tmp(1);
q_tmp(0) <= q_tmp(2);
end if;
end process;
Q <= q_tmp; 
end Behavioral;