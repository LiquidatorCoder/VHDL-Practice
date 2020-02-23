library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity dff_BHV is
    Port ( data : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           q : out  STD_LOGIC);
end dff_BHV;

architecture a_dff of dff_BHV is

begin
process (clk, reset) is
begin
if (reset = '0')
then q <= 0;
elsif (clk'event and clk = '1')
then q <= data;
end if;
end process;

end a_dff;

