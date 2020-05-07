LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
entity bcd_7seg is
port(q0,q1,q2,q3: in bit;a,b,c,d,e,f,g:out bit);
end entity bcd_7seg;
architecture operation of bcd_7seg is
begin
a<= (((not q2) and (not q0))or q1 or q3 or (q2 and q0));
b<=(not q2 or ((not q1) and (not q0))or(q1 and q0));
c<=((not q1) or q0 or q2);
d<=(((not q2) and (not q0)) or (not q2 and q1) or (q2 and (not q1) and q0) or (q1 and (not q0))or q3);
e<=((not q2 and (not q0))or (q1 and (not q0))); 
f<=((not q1 and (not q0))or (q2 and (not q1))or (q2 and (not q0))or q3);
g<=((not q2 and q1)or(q2 and (not q1))or q3 or(q2 and (not q0)));
end architecture operation;.
