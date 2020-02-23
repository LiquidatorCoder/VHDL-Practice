library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity and_BHV is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC);
end and_BHV;

architecture arc_and of and_BHV is
begin

PROCESS (A, B)
begin 

if (A='0') then
C <= '0';
elsif (B='0') then
C <= '0';

end arc_and;

