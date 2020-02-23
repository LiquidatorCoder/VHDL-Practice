library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ripple_adder_4 is
    Port ( a : in  STD_LOGIC_VECTOR (3 downto 0);
           b : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
           s : out  STD_LOGIC_VECTOR (3 downto 0);
           cout : out  STD_LOGIC);
end ripple_adder_4;

architecture a_ripple_adder of ripple_adder_4 is

component full_adder
Port (a : in STD_Logic;
		b : in STD_LOGIC;
		cin : in STD_LOGIC;
		s : out STD_LOGIC;
		cout : out STD_LOGIC);
end component;

signal c1,c2,c3 : STD_LOGIC;

begin

fa1 : full_adder port map( a(0), b(0), cin, s(0), c1);
fa2 : full_adder port map( a(1), b(1), c1, s(1), c2);
fa3 : full_adder port map( a(2), b(2), c2, s(2), c3);
fa4 : full_adder port map( a(3), b(3), c3, s(3), cout);

end a_ripple_adder;

