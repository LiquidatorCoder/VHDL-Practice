library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bcd_e3_DF is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           D : in  STD_LOGIC;
           W : out  STD_LOGIC;
           X : out  STD_LOGIC;
           Y : out  STD_LOGIC;
           Z : out  STD_LOGIC);
end bcd_e3_DF;

architecture a_bcd_e3 of bcd_e3_DF is

begin

W <= A or (B and C) or (B and D);
X <= (not(B) and C) or (not(B) and D) or (B and not(c) and not(D));
Y <= (C and D) or (not(C) and not(D));
Z <= not(D);
end a_bcd_e3;

