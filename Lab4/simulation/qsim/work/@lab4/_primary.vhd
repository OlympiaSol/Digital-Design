library verilog;
use verilog.vl_types.all;
entity Lab4 is
    port(
        Z               : out    vl_logic;
        reset           : in     vl_logic;
        clock           : in     vl_logic;
        start           : in     vl_logic;
        X               : in     vl_logic_vector(7 downto 0);
        Y               : in     vl_logic_vector(7 downto 0);
        A               : out    vl_logic_vector(7 downto 0);
        B               : out    vl_logic_vector(7 downto 0)
    );
end Lab4;
