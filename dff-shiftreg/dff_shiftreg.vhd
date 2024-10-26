-- D Flip-Flop component:
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity dff_shiftreg is
port(d,clk,rst:in std_logic; 
q:out std_logic
);
end dff_shiftreg;

architecture Behavioral of dff_shiftreg is
    begin
    process(rst,clk) 
    begin
        if(rst= ’1’) then 
        --IF RESET IS 1 THEN SET OUTPUT TO 0
        q<=’0’;
        elsif(clk’event and clk= ’1’) then 
        q<=d;
        end if;
    end process;
end Behavioral;