LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY half_adder_struct IS
	PORT (
		A, B       : IN BIT;
		Sum, Carry : OUT BIT);
END half_adder_struct;

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY not_gate IS
	PORT (
		I : IN BIT;
		O : OUT BIT
	);
END not_gate;
ARCHITECTURE behavioral OF not_gate IS
BEGIN
	O <= NOT(I) AFTER 10 ns;
END behavioral;

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY and_gate IS
	PORT (
		I1, I2 : IN BIT;
		O      : OUT BIT
	);
END and_gate;
ARCHITECTURE behavioral OF and_gate IS
BEGIN
	O <= (I1 AND I2) AFTER 10 ns;
END behavioral;

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY or_gate IS
	PORT (
		I1, I2 : IN BIT;
		O      : OUT BIT
	);
END or_gate;
ARCHITECTURE behavioral OF or_gate IS
BEGIN
	O <= (I1 OR I2) AFTER 10 ns;
END behavioral;

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

ARCHITECTURE structure_view OF half_adder_struct IS

	COMPONENT not_gate
		PORT (
			I : IN BIT;
			O : OUT BIT
		);
	END COMPONENT;

	COMPONENT and_gate
		PORT (
			I1, I2 : IN BIT;
			O      : OUT BIT
		);
	END COMPONENT;

	COMPONENT or_gate
		PORT (
			I1, I2 : IN BIT;
			O      : OUT BIT
		);
	END COMPONENT;

	SIGNAL w, x, y, z : BIT;

BEGIN
	G1 : not_gate
	PORT MAP(A, x);
	G2 : not_gate
	PORT MAP(B, y);
	G3 : and_gate
	PORT MAP(x, B, z);
	G4 : and_gate
	PORT MAP(A, y, w);
	G5 : or_gate
	PORT MAP(z, w, Sum);
	G6 : and_gate
	PORT MAP(A, B, Carry);
END structure_view;

ENTITY FULL_ADDER IS
	PORT (
		A, B, Cin : IN BIT;
		Sum, Co   : OUT BIT
	);
END FULL_ADDER;

ARCHITECTURE structure_view OF FULL_ADDER IS

	COMPONENT HALF_ADDER
		PORT (
			A, B       : IN BIT;
			Sum, Carry : OUT BIT
		);
	END COMPONENT;

	COMPONENT or_gate
		PORT (
			I1, I2 : IN BIT;
			O      : OUT BIT
		);
	END COMPONENT;

	SIGNAL Y0, Z0, Z1 : BIT;

BEGIN
	HA0 : HALF_ADDER
	PORT MAP(A, B, Y0, Z0);
	HA1 : HALF_ADDER
	PORT MAP(Cin, Y0, Sum, Z1);
	OG : or_gate
	PORT MAP(Z0, Z1, Co);

END structure_view;