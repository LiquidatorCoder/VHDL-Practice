library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xnor_DF is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out  STD_LOGIC);
end xnor_DF;

architecture arc_DF of xnor_DF is

begin

C <= A xnor B;

end arc_DF;

