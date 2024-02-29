library verilog;
use verilog.vl_types.all;
entity Reg8Shcematic is
    port(
        Q               : out    vl_logic_vector(7 downto 0);
        CLK             : in     vl_logic;
        CLR             : in     vl_logic;
        SET             : in     vl_logic;
        D               : in     vl_logic_vector(7 downto 0)
    );
end Reg8Shcematic;
