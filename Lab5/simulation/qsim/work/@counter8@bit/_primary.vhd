library verilog;
use verilog.vl_types.all;
entity Counter8Bit is
    port(
        SET             : in     vl_logic;
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        Q               : out    vl_logic_vector(7 downto 0)
    );
end Counter8Bit;
