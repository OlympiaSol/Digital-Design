library verilog;
use verilog.vl_types.all;
entity REG4_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        I0              : in     vl_logic;
        I1              : in     vl_logic;
        I2              : in     vl_logic;
        I3              : in     vl_logic;
        S0              : in     vl_logic;
        S1              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end REG4_vlg_sample_tst;
