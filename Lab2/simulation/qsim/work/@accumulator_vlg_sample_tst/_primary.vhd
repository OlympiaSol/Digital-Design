library verilog;
use verilog.vl_types.all;
entity Accumulator_vlg_sample_tst is
    port(
        Cin             : in     vl_logic;
        clk             : in     vl_logic;
        I               : in     vl_logic_vector(3 downto 0);
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Accumulator_vlg_sample_tst;
