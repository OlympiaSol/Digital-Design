library verilog;
use verilog.vl_types.all;
entity MultiplierP is
    port(
        RST             : in     vl_logic;
        CLK             : in     vl_logic;
        SI              : in     vl_logic;
        A_IN            : in     vl_logic_vector(3 downto 0);
        B_IN            : in     vl_logic_vector(3 downto 0);
        A_OUT           : out    vl_logic_vector(3 downto 0);
        B_OUT           : out    vl_logic_vector(3 downto 0);
        L_OUT           : out    vl_logic_vector(3 downto 0);
        H_OUT           : out    vl_logic_vector(3 downto 0)
    );
end MultiplierP;
