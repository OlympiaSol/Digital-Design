library verilog;
use verilog.vl_types.all;
entity Exercise4_vlg_sample_tst is
    port(
        CLOCK           : in     vl_logic;
        CLR             : in     vl_logic;
        D               : in     vl_logic;
        SET             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Exercise4_vlg_sample_tst;
