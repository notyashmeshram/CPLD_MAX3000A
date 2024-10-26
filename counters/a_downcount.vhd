library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity a_downcount is 
Port ( CLOCK : in STD_LOGIC; 
RESET : in STD_LOGIC;
Q : out STD_LOGIC_VECTOR (2 downto 0));
end a_downcount;

architecture Behavioral of a_downcount is
    signal q_tmp: std_logic_vector(2 downto 0):= "111";
    begin
    process(CLOCK,RESET) 
        begin
        if RESET = ’1’ then
            q_tmp <= "000"; 
        elsif falling_edge(CLOCK) then
            if(q_tmp(0)=’1’) then
                q_tmp(0)<=’0’;
            elsif q_tmp(1)=’1’ then 
                q_tmp(1)<= ’0’;
                q_tmp(0)<=’1’;
            elsif q_tmp(2)= ’1’ then 
                q_tmp(2)<= ’0’;
                q_tmp(1)<= ’1’;
                3
                q_tmp(0)<=’1’;
            else
                q_tmp(2)<= ’1’;
                q_tmp(1)<= ’1’;
                q_tmp(0)<=’1’;
            end if;
        end if;
    end process;
    Q <= q_tmp; 
end Behavioral;