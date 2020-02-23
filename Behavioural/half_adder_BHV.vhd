library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder_BHV is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry_out : out  STD_LOGIC);
end half_adder_BHV;

architecture a_half_adder of half_adder_BHV is

begin
  process (a, b)
  begin
    if a = '1' then
      sum <= not b;
      carry_out <= b;
    else
      sum <= b;
      carry_out <= '0'; 
    end if;
  end process;

end a_half_adder;

