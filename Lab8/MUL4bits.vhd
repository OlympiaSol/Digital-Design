LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY AMUL4bits IS
    PORT ( A, B : IN std_logic_vector(3 downto 0);
              P : OUT std_logic_vector(7 downto 0) );
END AMUL4bits;

ARCHITECTURE arch OF AMUL4bits IS
    SIGNAL AiBj : std_logic_vector(15 downto 0);
    SIGNAL S, C : std_logic_vector(11 downto 0);

    COMPONENT HA1bit
        PORT ( A, B : IN std_logic;
            S, Cout : OUT std_logic );
    END COMPONENT;

    COMPONENT FA1bit
        PORT ( A, B, Cin : IN std_logic;
                 S, Cout : OUT std_logic );
    END COMPONENT;

    BEGIN
        PROCESS (A, B)
            BEGIN
                FOR j IN 0 TO 3 LOOP
                    FOR i IN 0 TO 3 LOOP
                        AiBj(4*j+i) <= A(i) AND B(j);
                    END LOOP;
                END LOOP;
        END PROCESS;

        P(0) <= AiBj(0);
        FIRSTROWs: FOR i IN 0 TO 2 GENERATE
            HAi0: HA1bit PORT MAP ( AiBj(4*0+i+1), AiBj(4*(0+1)+i), S(3*0+i), C(3*0+i) );
            LEFTFAs: IF i = 2 GENERATE
                LEFTGEN: FOR j IN 1 TO 2 GENERATE
                    FA2j: FA1bit PORT MAP ( AiBj(4*j+i+1), AiBj(4*(j+1)+i), C(3*(j-1)+i), S(3*j+i), C(3*j+i) );
                END GENERATE LEFTGEN;
            END GENERATE LEFTFAs;
            RIGHTFAs: IF i < 2 GENERATE
                RIGHTGEN: FOR j IN 1 TO 2 GENERATE
                    FAij: FA1bit PORT MAP ( S(3*(j-1)+i+1), AiBj(4*(j+1)+i), C(3*(j-1)+i), S(3*j+i), C(3*j+i) );
                END GENERATE RIGHTGEN;
            END GENERATE RIGHTFAs;
            P(i+1) <= S(3*i+0);
        END GENERATE;

        HA03: HA1bit PORT MAP ( S(3*(4-1)+0+1), C(3*(4-1)+0), S(3*4+0), C(3*4+0) );  P(3+1+0) <= S(3*4+0);
        LASTROW: FOR i IN 1 TO 2 GENERATE
            FAi4: FA1bit PORT MAP ( S(4*(4-1)+i+1), C(4*(4-1)+i), C(4*4+i-1), S(4*4+i), C(4*4+i) );
            P(4+1+i) <= S(4*4+i);
        END GENERATE;
        FA34: FA1bit PORT MAP ( AiBj(5*4+3+1), C(4*(4-1)+3), C(4*4+3-1), S(4*4+3), C(4*4+3) );  P(4+1+3) <= S(4*4+3);
        P(4+1+4) <= C(4*4+4-1);

END arch;
