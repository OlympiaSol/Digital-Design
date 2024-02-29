LIBRARY ieee;
USE ieee.std_logic_1164.all;

-- εναλλακτική υλοποίηση FA με χρήση 2xHA και 1ας πύλης OR --

ENTITY FA1bit IS
    PORT ( A, B, Cin : IN std_logic;
             S, Cout : OUT std_logic );
END FA1bit;

ARCHITECTURE arch OF FA1bit IS
    SIGNAL S1, C1, S2, C2 : std_logic;

    COMPONENT HA1bit
        PORT ( A, B : IN std_logic;
            S, Cout : OUT std_logic );
    END COMPONENT;

    BEGIN
        HA1: HA1bit PORT MAP (A, B, S1, C1);
        HA2: HA1bit PORT MAP (S1, Cin, S2, C2);
        Cout <= C1 OR C2;
        S <= S2;
END arch;
