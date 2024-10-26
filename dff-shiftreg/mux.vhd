--MUX component:
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity mux is
port(i0,i1, i2, i3, s0, s1: in std_logic; 
y: out std_logic); 
end mux; 

architecture behavior of mux is
    Begin 
    c1: process (s0,s1) 
        Begin 
            if(s0= ’0’) then
                if(s1= ’0’) then
                    y<=i0; 
                    else
                    y<=i1; 
                end if;
                else 
                if(s1= ’0’) then
                    y<=i2;
                else
                    y<=i3;
                end if;
            end if;
    end process c1;
end behavior;