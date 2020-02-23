library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity or_DF is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out  STD_LOGIC);
end or_DF;

architecture arc_or of or_DF is

begin

C <= A or B;

end arc_or;

