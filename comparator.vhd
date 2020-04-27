Library ieee;
use ieee.std_logic_1164.all;
entity comparator is
  port (
      A: in std_logic_vector(20 downto 0);
		B: in std_logic_vector(20 downto 0);
      greater, equal  : out std_logic
   );
end comparator ;
architecture bhv of comparator is
begin
greater <= A when (A>B)
else B;
equal <= A when (A=B)
else B;
end bhv;
