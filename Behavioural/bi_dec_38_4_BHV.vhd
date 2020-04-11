library IEEE;
use IEEE.STD_LOGIC_1164.ALL, IEEE.NUMERIC_STD.ALL;

entity bi_dec_38_4_BHV is
	 Port ( A : in  integer range 0 to 7;
           Y : out  unsigned (7 downto 0));
end bi_dec_38_4_BHV;

architecture a_bi_dec_38_4_BHV of bi_dec_38_4_BHV is

begin
	with A select
		Y <= "00000001" when 0,
			  "00000010" when 1,
			  "00000100" when 2,
			  "00001000" when 3,
			  "00010000" when 4,
			  "00100000" when 5,
			  "01000000" when 6,
			  "10000000" when 7,
			  "00000000" when others;

end a_bi_dec_38_4_BHV;