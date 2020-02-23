library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nor_DF is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out  STD_LOGIC);
end nor_DF;

architecture arc_nor of nor_DF is

begin

C <= A nor B;

end arc_nor;

