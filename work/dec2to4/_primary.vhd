library verilog;
use verilog.vl_types.all;
entity dec2to4 is
    port(
        W               : in     vl_logic_vector(1 downto 0);
        En              : in     vl_logic;
        Y               : out    vl_logic_vector(3 downto 0)
    );
end dec2to4;
