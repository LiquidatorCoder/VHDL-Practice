library IEEE;
use IEEE.STD_LOGIC_1164.ALL, IEEE.NUMERIC_STD.ALL;

entity encoder83_BHV is
    Port ( A : in  unsigned (7 downto 0);
           Y : out  unsigned (2 downto 0));
end encoder83_BHV;

architecture a_encoder83_BHV of encoder83_BHV is

begin
	process (A)
	begin
		if (A = "00000001") then Y <= "000";
		elsif (A = "00000010") then Y <= "001";
		elsif (A = "00000100") then Y <= "010";
		elsif (A = "00001000") then Y <= "011";
		elsif (A = "00010000") then Y <= "100";
		elsif (A = "00100000") then Y <= "101";
		elsif (A = "01000000") then Y <= "110";
		elsif (A = "10000000") then Y <= "111";
		else Y <= "XXX";
		end if;
	end process;

end a_encoder83_BHV;

