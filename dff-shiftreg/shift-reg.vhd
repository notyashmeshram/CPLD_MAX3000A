-- Universal Shift Register: 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity shift-reg is 
port(a1, a2, a3, sli, sri, m0, m1, clks, rsts: in std_logic; 
o1, o2, o3: inout std_logic);
end shift-reg;

architecture structural of usr is
    component dff_shiftreg is 
    port(d,clk,rst:in std_logic; 
    q:out std_logic); 
    end component; 

    component mux is
    port(i0, i1, i2, i3, s0, s1: in std_logic; 
    y: out std_logic); 
    end component; 

    signal d1,d2,d3:std_logic;
    begin
        mux1: mux port map(i0=>a1, i1=>sli, i2=>o2, i3=>o1, s0=>m0, s1=>m1, y=>d1);
        mux2: mux port map(i0=>a2, i1=>o1, i2=>o3, i3=>o2, s0=>m0, s1=>m1, y=>d2);
        mux3: mux port map(i0=>a3, i1=>o2, i2=>sri, i3=>o3, s0=>m0, s1=>m1, y=>d3);
        ﬀ1: dff_shiftreg port map(d=>d1, clk=>clks, rst=>rsts, q=>o1); 
        ﬀ2: dff_shiftreg port map(d=>d2, clk=>clks, rst=>rsts, q=>o2); 
        ﬀ3: dff_shiftreg port map(d=>d3, clk=>clks, rst=>rsts, q=>o3);
end structural;