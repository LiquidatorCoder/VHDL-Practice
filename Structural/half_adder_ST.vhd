library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity half_adder_ST is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           sum : out  STD_LOGIC;
           carry_out : out  STD_LOGIC);
end half_adder_ST;

architecture a_half_adder of half_adder_ST is

component xor_gate
  port (i1, i2: in std_logic; 
    o1: out std_logic);
end component;

component and_gate
  port (i1, i2: in std_logic;
    o1: out std_logic);
end component; 

begin

  u1: xor_gate port map (i1 => a, i2 => b, o1 => sum);
  u2: and_gate port map (i1 => a, i2 => b, o1 => carry_out);

end a_half_adder;

