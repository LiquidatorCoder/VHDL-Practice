library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity jkff_BHV is
    Port ( j : in  STD_LOGIC;
           k : in  STD_LOGIC;
			  clk : in  STD_LOGIC;
           q : inout  STD_LOGIC;
           qbar : inout  STD_LOGIC);
end jkff_BHV;

architecture a_jkff of jkff_BHV is
begin
process (clk, j, k) is
begin
if (clk'event and clk = '1') then
if (j = not(k)) then
q <= j;
qbar <= k;
elsif (j = k and j = '0') then
q <= q;
qbar <= qbar;
elsif (j = k and j = '1') then
q <= qbar;
qbar <= q;
end if;
end if;
end process;
end a_jkff;

