library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity all_gates_DF is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Z_OR : out  STD_LOGIC;
           Z_AND : out  STD_LOGIC;
           Z_NOR : out  STD_LOGIC;
           Z_NAND : out  STD_LOGIC;
           Z_XOR : out  STD_LOGIC;
           Z_XNOR : out  STD_LOGIC;
           Z_NOT_A : out  STD_LOGIC;
           Z_NOT_B : out  STD_LOGIC);
end all_gates_DF;

architecture a_all_gates of all_gates_DF is

begin

Z_OR <= A or B;
Z_AND <= A and B;
Z_NOR <= A nor B;
Z_NAND <= A nand B;
Z_XOR <= A xor B;
Z_XNOR <= A xnor B;
Z_NOT_A <= not(A);
Z_NOT_B <= not(B);

end a_all_gates;

