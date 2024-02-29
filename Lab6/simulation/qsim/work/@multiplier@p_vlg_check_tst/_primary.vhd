library verilog;
use verilog.vl_types.all;
entity MultiplierP_vlg_check_tst is
    port(
        A_OUT           : in     vl_logic_vector(3 downto 0);
        B_OUT           : in     vl_logic_vector(3 downto 0);
        H_OUT           : in     vl_logic_vector(3 downto 0);
        L_OUT           : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end MultiplierP_vlg_check_tst;
