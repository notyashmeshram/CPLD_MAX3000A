library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity DFF_b is
port(d,clk,rst:in std_logic; 
q:out std_logic
);
end DFF_b;

architecture Behavioral of DFF_b is
begin
    process(rst,clk) 
    begin
        if(rst= ’1’) then 
            q<=’0’;
            elsif(clk’event and clk= ’1’) then 
            q<=d;
        end if;
    end process;
end Behavioral