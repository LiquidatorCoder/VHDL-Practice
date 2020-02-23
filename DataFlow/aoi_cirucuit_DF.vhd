library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity aoi_cirucuit_DF is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           c : in  STD_LOGIC;
           d : in  STD_LOGIC;
           y : out  STD_LOGIC);
end aoi_cirucuit_DF;

architecture a_aoi of aoi_cirucuit_DF is

begin

y <= not((a and d) or (b and c));

end a_aoi;

