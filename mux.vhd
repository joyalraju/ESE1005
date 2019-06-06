library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity mux is
port(
A,B,C,D,E,F,G,H : in bit;
S0,S1,S2 : in bit;
Z: out bit
);
end mux;

architecture bhv of mux is
begin
process (A,B,C,D,E,F,G,H,S0,S1,S2) is
begin
if (S0 ='0' and S1 = '0' and S2 = '0') then
Z <= A;
elsif (S0 ='1' and S1 = '0' and S2 = '0') then
Z <= B;
elsif (S0 ='0' and S1 = '1' and S2 = '0') then
Z <= C;
elsif (S0 ='1' and S1 = '1' and S2 = '0') then
Z <= D;
elsif (S0 ='0' and S1 = '0' and S2 = '1') then
Z <= E;
elsif (S0 ='1' and S1 = '0' and S2 = '1') then
Z <= F;
elsif (S0 ='0' and S1 = '1' and S2 = '1') then
Z <= G;
else
Z <= H;
end if;

end process;
end bhv;