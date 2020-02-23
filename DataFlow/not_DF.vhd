library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity not_DF is
    Port ( A : in  STD_LOGIC;
           B : out  STD_LOGIC);
end not_DF;

architecture arc_not of not_DF is

begin

B <= not a;

end arc_not;

