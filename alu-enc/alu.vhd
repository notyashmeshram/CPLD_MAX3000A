library IEEE; 
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 
use ieee.NUMERIC_STD.all;

entity ALU is
Port ( A, B : in STD_LOGIC_VECTOR(3 downto 0); -- 2 inputs 8-bit ALU_Sel : in STD_LOGIC_VECTOR(1 downto 0);
ALU_Out : out STD_LOGIC_VECTOR(3 downto 0));
end ALU;

architecture Behavioral of ALU is
begin
c1: process(A,B,ALU_Sel)
begin
if(ALU_Sel(0)='0') then 
if(ALU_Sel(1)='0') then 
ALU_Out<=A+B; 
else ALU_Out<=A-B; 
end if;
else if(ALU_Sel(1)='0') then 
Alu_Out(0)<=A(0) and B(0);
Alu_Out(1)<=A(1) and B(1); 
Alu_Out(2)<=A(2) and B(2); Alu_Out(3)<= ‘0';
else Alu_Out(0)<=A(0) xor B(0);
Alu_Out(1)<=A(1) xor B(1); 
Alu_Out(2)<=A(2) xor B(2); 
Alu_Out(3)<='0';
end if;
end if;
end process c1;
end Behavioral;