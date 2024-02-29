library verilog;
use verilog.vl_types.all;
entity Intro_vlg_sample_tst is
    port(
        PB1             : in     vl_logic;
        PB2             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Intro_vlg_sample_tst;
