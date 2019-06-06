library IEEE;

use IEEE.std_logic_1164.all;

entity paritychk is

port ( r0,r1,r2,r3,r4,r5,r6,r7 : in bit; 
       cout : out bit);

end entity;

architecture log of paritychk is

begin

cout<= (r0 xor r1 xor r2 xor r3 xor r4 xor r5 xor r6 xor r7);

end log;