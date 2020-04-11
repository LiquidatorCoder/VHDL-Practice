library IEEE;
use IEEE.STD_LOGIC_1164.ALL, IEEE.NUMERIC_STD.ALL;

entity bi_dec_38_2_BHV is
    Port ( A : in  integer range 0 to 7;
           Y : out  unsigned (7 downto 0));
end bi_dec_38_2_BHV;

architecture a_bi_dec_38_2_BHV of bi_dec_38_2_BHV is

begin
	Y <= "00000001" when A = 0 else
		  "00000010" when A = 1 else
		  "00000100" when A = 2 else
		  "00001000" when A = 3 else
		  "00010000" when A = 4 else
		  "00100000" when A = 5 else
		  "01000000" when A = 6 else
		  "10000000";

end a_bi_dec_38_2_BHV;

