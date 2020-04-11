library IEEE;
use IEEE.STD_LOGIC_1164.ALL, IEEE.Numeric_STd.ALL;

entity alu_BHV is
    Port ( Operator : in  unsigned (2 downto 0);
           Operand1 : in  unsigned (7 downto 0);
           Operand2 : in  unsigned (7 downto 0);
           Result : out  unsigned (7 downto 0));
end alu_BHV;

architecture a_alu_BHV of alu_BHV is

begin
	process (Operator, Operand1, Operand2)
	begin
		case (Operator) is
			when "000" => Result <= (others => '0');
			when "001" => Result <= Operand1 and Operand2;
			when "010" => Result <= Operand1 or Operand2;
			when "011" => Result <= Operand1 xor Operand2;
			when "100" => Result <= Operand1 srl 1;
			when "101" => Result <= Operand2 srl 1;
			when "110" => Result <= Operand1 sll 1;
			when "111" => Result <= Operand2 sll 1;
			when others => Result <= (others => '0');
		end case;
	end process;
end a_alu_BHV;