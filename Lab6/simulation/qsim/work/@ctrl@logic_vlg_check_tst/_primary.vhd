library verilog;
use verilog.vl_types.all;
entity CtrlLogic_vlg_check_tst is
    port(
        EN_A            : in     vl_logic;
        EN_B            : in     vl_logic;
        EN_C            : in     vl_logic;
        EN_H            : in     vl_logic;
        EN_L            : in     vl_logic;
        SL_A            : in     vl_logic;
        SL_B            : in     vl_logic;
        SL_C            : in     vl_logic;
        SL_H            : in     vl_logic;
        SL_L            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end CtrlLogic_vlg_check_tst;
