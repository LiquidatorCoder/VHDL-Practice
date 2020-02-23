library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder_DF is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry_out : out  STD_LOGIC);
end half_adder_DF;

architecture a_half_adder of half_adder_DF is

begin

sum <= a xor b;
carry_out <= a and b; 

end a_half_adder;

