library verilog;
use verilog.vl_types.all;
entity JK_FF_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        J               : in     vl_logic;
        K               : in     vl_logic;
        SET             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end JK_FF_vlg_sample_tst;
