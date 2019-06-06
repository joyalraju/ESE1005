library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity dmux is

port(rin,s1,s2,s0:in bit;
y0,y1,y2,y3,y4,y5,y6,y7: out bit);

end dmux;

architecture behavioral of dmux is 
begin
y0<=(rin and (not s2)and(not s1) and (not s0));  
y1<= (rin and (not s2)and(not s1) and s0);
y2<= (rin and (not s2)and s1 and (not s0));
y3<= (rin and (not s2)and(s1) and s0);
y4<= (rin and (s2)and(not s1) and (not s0));
y5<= (rin and (s2)and(not s1) and (s0));
y6<= (rin and (s2)and(s1) and (not s0));
y7<= (rin and (s2)and(s1) and (s0));
end behavioral;