library IEEE;
use IEEE.STD_LOGIC_1164.ALL, IEEE.NUMERIC_STD.ALL;

entity mux41_BHV is
    Port ( Sel : in  unsigned (1 downto 0);
           A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           Y : out  STD_LOGIC);
end mux41_BHV;

architecture a_mux41_BHV of mux41_BHV is

begin

	process (Sel, A, B, C, D)
	begin
		if (Sel = "00") then
			Y <= A;
		elsif (Sel = "01") then
			Y <= B;
		elsif (Sel = "10") then
			Y <= C;
		else
			Y <= D;
		end if;
	end process;

end a_mux41_BHV;

