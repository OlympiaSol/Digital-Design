library verilog;
use verilog.vl_types.all;
entity MUX16_1_vlg_sample_tst is
    port(
        D               : in     vl_logic_vector(15 downto 0);
        SEL             : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end MUX16_1_vlg_sample_tst;
