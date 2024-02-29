library verilog;
use verilog.vl_types.all;
entity Intro is
    port(
        LED             : out    vl_logic;
        PB2             : in     vl_logic;
        PB1             : in     vl_logic
    );
end Intro;
