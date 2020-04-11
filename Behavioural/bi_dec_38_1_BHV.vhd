library IEEE;
use IEEE.STD_LOGIC_1164.ALL, IEEE.NUMERIC_STD.ALL;

entity bi_dec_38_1_BHV is
    Port ( A : in  integer range 0 to 7;
           Y : out  unsigned (7 downto 0));
end bi_dec_38_1_BHV;

architecture a_bi_dec_38_1_BHV of bi_dec_38_1_BHV is

begin
	process (A)
	begin
		if (A = 0) then Y <= "00000001";
		elsif (A = 1) then Y <= "00000010";
		elsif (A = 2) then Y <= "00000100";
		elsif (A = 3) then Y <= "00001000";
		elsif (A = 4) then Y <= "00010000";
		elsif (A = 5) then Y <= "00100000";
		elsif (A = 6) then Y <= "01000000";
		else Y <= "10000000";
		end if;
	end process;

end a_bi_dec_38_1_BHV;

