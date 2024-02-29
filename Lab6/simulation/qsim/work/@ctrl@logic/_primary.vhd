library verilog;
use verilog.vl_types.all;
entity CtrlLogic is
    port(
        RST             : in     vl_logic;
        CLK             : in     vl_logic;
        SL_A            : out    vl_logic;
        SL_B            : out    vl_logic;
        SL_H            : out    vl_logic;
        SL_L            : out    vl_logic;
        SL_C            : out    vl_logic;
        EN_A            : out    vl_logic;
        EN_B            : out    vl_logic;
        EN_H            : out    vl_logic;
        EN_L            : out    vl_logic;
        EN_C            : out    vl_logic
    );
end CtrlLogic;
