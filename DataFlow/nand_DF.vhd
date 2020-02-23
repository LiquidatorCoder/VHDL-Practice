library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity nand_DF is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : out  STD_LOGIC);
end nand_DF;

architecture arc_nand of nand_DF is

begin

C <= A nand B;

end arc_nand;

