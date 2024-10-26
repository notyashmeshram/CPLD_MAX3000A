library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity john_count is
Port ( CLOCK : in STD_LOGIC; 
RESET : in STD_LOGIC;
Q : out STD_LOGIC_VECTOR (2 downto 0));
end john_count;


architecture Behavioral of john_count is
    signal q_tmp: std_logic_vector(2 downto 0):= "000"; 
    begin
    process(CLOCK,RESET) 
        begin
        if RESET = ’1’ then
            q_tmp <= "000"; 
        elsif falling_edge(CLOCK) then
            q_tmp(1) <= q_tmp(0);
            q_tmp(2) <= q_tmp(1);
            q_tmp(0) <= not q_tmp(2); 
        end if;
    end process;
    Q <= q_tmp; 
end Behavioral;