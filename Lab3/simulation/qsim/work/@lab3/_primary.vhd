library verilog;
use verilog.vl_types.all;
entity Lab3 is
    port(
        regA            : out    vl_logic_vector(7 downto 0);
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        Ser             : in     vl_logic;
        \function\      : in     vl_logic;
        regB            : out    vl_logic_vector(7 downto 0)
    );
end Lab3;
