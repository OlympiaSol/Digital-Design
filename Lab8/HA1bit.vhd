LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- τυπική υλοποίηση HA --

ENTITY HA1bit IS
    PORT ( A, B : IN std_logic;
        S, Cout : OUT std_logic );
END HA1bit;

ARCHITECTURE arch OF HA1bit IS
    BEGIN
        S <= A XOR B;
        Cout <= A AND B;
END arch;
