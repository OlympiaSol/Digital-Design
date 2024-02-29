library verilog;
use verilog.vl_types.all;
entity MultiplierP_vlg_sample_tst is
    port(
        A_IN            : in     vl_logic_vector(3 downto 0);
        B_IN            : in     vl_logic_vector(3 downto 0);
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        SI              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MultiplierP_vlg_sample_tst;
