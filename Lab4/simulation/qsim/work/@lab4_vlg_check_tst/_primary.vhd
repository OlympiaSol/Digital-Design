library verilog;
use verilog.vl_types.all;
entity Lab4_vlg_check_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        Z               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Lab4_vlg_check_tst;
