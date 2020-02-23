library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity xor_DF is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out  STD_LOGIC);
end xor_DF;

architecture arc_xor of xor_DF is

begin

C <= A xor B;

end arc_xor;

