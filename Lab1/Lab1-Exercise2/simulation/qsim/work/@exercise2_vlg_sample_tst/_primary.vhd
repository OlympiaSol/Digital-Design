library verilog;
use verilog.vl_types.all;
entity Exercise2_vlg_sample_tst is
    port(
        A0              : in     vl_logic;
        A1              : in     vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        I2              : in     vl_logic;
        I3              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Exercise2_vlg_sample_tst;
