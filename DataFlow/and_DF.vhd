library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_DF is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out  STD_LOGIC);
end and_DF;

architecture arc_and of and_DF is

begin

C <= A and B;

end arc_and;

