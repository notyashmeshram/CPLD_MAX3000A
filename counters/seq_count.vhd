library ieee;
use ieee.std_logic_1164.all;


entity seq_count is
port (clk, reset: in std_logic; 
q: out std_logic_vector (2 downto 0));
end seq_count;


architecture two_seg_arch of seq_count is
    signal r_reg: std_logic_vector (2 downto 0); 
    signal r_next: std_logic_vector (2 downto 0); 
    Begin 
    -- register 
    process (clk, reset)
        begin
        if (reset= ’1’) then 
            r_reg <= "011"; 
            elsif falling_edge(clk) then 
            r_reg <= r_next;
        end if;
    end process;
    -- next-state logic
    r_next <= "011" when r_reg="100" else
    "000" when r_reg="011"
    else
    "010" when r_reg="000"
    else
    "101" when r_reg="010" 
    else
    "001" when r_reg="101"
    else
    "100" when r_reg="001" 
    else
    "011"; -- r_reg="111" 
    -- output logic 
    q <= r_next;
end two_seg_arch;