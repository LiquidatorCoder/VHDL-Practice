library IEEE;
use IEEE.STD_LOGIC_1164.ALL, IEEE.NUMERIC_STD.ALL;

entity bi_dec_38_3_BHV is
    Port ( A : in  integer range 0 to 7;
           Y : out  unsigned (7 downto 0));
end bi_dec_38_3_BHV;

architecture a_bi_dec_38_3_BHV of bi_dec_38_3_BHV is

begin
	process (A)
	begin
		case A is
			when 0 => Y <= "00000001";
			when 1 => Y <= "00000010";
			when 2 => Y <= "00000100";
			when 3 => Y <= "00001000";
			when 4 => Y <= "00010000";
			when 5 => Y <= "00100000";
			when 6 => Y <= "01000000";
			when 7 => Y <= "10000000";
		end case;
	end process;

end a_bi_dec_38_3_BHV;