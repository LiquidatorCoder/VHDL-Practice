library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux_41_BHV is
    Port ( abcd : in  STD_LOGIC_VECTOR (3 downto 0);
           s0s1 : in  STD_LOGIC_VECTOR (1 downto 0);
           f : out  STD_LOGIC);
end mux_41_BHV;

architecture a_mux_41 of mux_41_BHV is

begin
process (s0s1) is
begin
if (s0s1(0) = '0' and s0s1(1) = '0') then
f <= abcd(0);
elsif (s0s1(0) = '0' and s0s1(1) = '1') then
f <= abcd(1);
elsif (s0s1(0) = '1' and s0s1(1) = '0') then
f <= abcd(2);
elsif (s0s1(0) = '1' and s0s1(1) = '1') then
f <= abcd(3);
else
f <= 'X';
end if;
end process;
end a_mux_41;