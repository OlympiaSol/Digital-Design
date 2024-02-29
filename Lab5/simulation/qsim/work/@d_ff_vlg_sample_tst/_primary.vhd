library verilog;
use verilog.vl_types.all;
entity D_ff_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        D               : in     vl_logic;
        SET             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end D_ff_vlg_sample_tst;
