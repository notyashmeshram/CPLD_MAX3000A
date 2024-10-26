library IEEE;
use IEEE.STD_LOGIC_1164.ALL;--define the entity with ports 
entity adsub_3bit is 
port (a : in STD_LOGIC_VECTOR (2 downto 0);
b : in STD_LOGIC_VECTOR (2 downto 0);
m : in STD_LOGIC; 
sum :out STD_LOGIC_VECTOR (2 downto 0);
cout : out STD_LOGIC);
end adsub_3bit; 
architecture structure of adsub_3bit is 
component fulladder
port(i1, i2, i3: in std_logic; 
o1, o2: out std_logic);
end component; 
signal C0, C1: std_logic; 
signal b0, b1, b2: std_logic; 
begin
b0 <= b(0) xor m;
b1 <= b(1) xor m;
b2 <= b(2) xor m;
u1: fulladder port map (i1 => a(0), i2 => b0, i3 => m, o1 => sum(0), o2 => C0); 
u2: fulladder port map (i1 => a(1), i2 => b1, i3 => C0, o1 => sum(1), o2 => C1); u: fulladder port map (i1 => a(2), i2 => b2, i3 => C1, o1 => sum(2), o2 => cout); end structure;
--VHDL CODE FOR single bit full adder --in same VHDL file-----
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity fulladder is
port(i1, i2, i3: in bit; o1, o2 : out bit);
end fulladder;
--Defining the architecture of full adder in dataflow modelling style--- architecture dataflow of fulladder is 
begin
o1 <= i1 xor i2 xor i3;
o2 <= (i1 and i2) or ((i1 xor i2) and i3);
end data flow; 