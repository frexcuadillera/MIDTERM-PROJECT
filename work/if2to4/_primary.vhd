library verilog;
use verilog.vl_types.all;
entity if2to4 is
    port(
        En              : in     vl_logic;
        w               : in     vl_logic_vector(1 downto 0);
        y               : out    vl_logic_vector(3 downto 0)
    );
end if2to4;
