library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity p_enc is
port (ino : in STD_LOGIC_VECTOR (3 downto 0);
en : in STD_LOGIC; 
outo :out STD_LOGIC_VECTOR (1 downto 0));
end p_enc;
architecture behavior of p_enc is
begin
c1: process (ino, en) 
begin
if(en='0') then 
outo(0)<='0'; 
outo(1)<='0'; 
else if(ino(0)='1') then 
outo(0)<='1'; 
outo(1)<='1';
else if(ino(1)='1') then 
outo(0)<='0'; 
outo(1)<= ‘1';
else if(ino(2)='1') then 
outo(0)<='1'; 
outo(1)<='0'; 
else
outo(0)<= ‘0';
outo(1)<='0'; 
end if;
end if;
end if;
end if;
end process c1;
end behavior;