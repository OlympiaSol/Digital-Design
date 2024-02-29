library verilog;
use verilog.vl_types.all;
entity Accumulator is
    port(
        Acc             : out    vl_logic_vector(7 downto 0);
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        Cin             : in     vl_logic;
        I               : in     vl_logic_vector(3 downto 0)
    );
end Accumulator;
