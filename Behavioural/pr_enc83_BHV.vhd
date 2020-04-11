library IEEE;
use IEEE.STD_LOGIC_1164.ALL, IEEE.NUMERIC_STD.ALL;

entity pr_enc83_BHV is
    Port ( A : in  unsigned (7 downto 0);
           Valid : out  STD_LOGIC;
           Y : out  unsigned (2 downto 0));
end pr_enc83_BHV;

architecture a_pr_enc83_BHV of pr_enc83_BHV is

begin
	process (A)
	begin
		Valid <= '1';
		if (A(7) = '1') then Y <= "111";
		elsif (A(6) = '1') then Y <= "110";
		elsif (A(5) = '1') then Y <= "101";
		elsif (A(4) = '1') then Y <= "100";
		elsif (A(3) = '1') then Y <= "011";
		elsif (A(2) = '1') then Y <= "010";
		elsif (A(1) = '1') then Y <= "001";
		elsif (A(0) = '1') then Y <= "000";
		else
			Valid <= '0';
			Y <= "XXX";
		end if;
	end process;

end a_pr_enc83_BHV;

