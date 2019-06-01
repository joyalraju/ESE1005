LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
entity dflip is
port(trig: in bit; qout:out bit);
end entity dflip;
architecture function1 of dflip is
signal d_in,out1:bit;
begin
d_in<=not out1;
process(trig)
begin
if(trig'EVENT AND trig='1')then
out1<=d_in;
end if ;
end process;
qout<=out1;
end architecture function1;
entity d_upcounter is
port(clk: in bit;qout1,qout2,qout3,qout4:out bit);
end entity d_upcounter;
architecture operation of d_upcounter is
component dflip is
port (trig: in bit; qout: out bit);
end component dflip;
signal w,x,y:bit;
begin
D1: dflip port map (trig=> clk,qout=> w);
qout1<=w;
D2: dflip port map (trig=> not w,qout=> x);
qout2<=x;
D3: dflip port map (trig=> not x,qout=> y);
qout3<=y;
D4: dflip port map (trig=> not y,qout=> qout4);
end architecture operation;