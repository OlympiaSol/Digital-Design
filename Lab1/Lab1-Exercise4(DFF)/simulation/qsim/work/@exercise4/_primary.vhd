library verilog;
use verilog.vl_types.all;
entity Exercise4 is
    port(
        Q               : out    vl_logic;
        CLR             : in     vl_logic;
        CLOCK           : in     vl_logic;
        D               : in     vl_logic;
        SET             : in     vl_logic
    );
end Exercise4;
