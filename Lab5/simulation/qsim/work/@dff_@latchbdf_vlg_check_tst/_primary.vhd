library verilog;
use verilog.vl_types.all;
entity Dff_Latchbdf_vlg_check_tst is
    port(
        D_Q             : in     vl_logic;
        L_Q             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Dff_Latchbdf_vlg_check_tst;
