library verilog;
use verilog.vl_types.all;
entity D_ff is
    port(
        CLK             : in     vl_logic;
        D               : in     vl_logic;
        CLR             : in     vl_logic;
        SET             : in     vl_logic;
        Q               : out    vl_logic;
        Qn              : out    vl_logic
    );
end D_ff;
