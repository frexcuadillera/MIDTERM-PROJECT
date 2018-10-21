library verilog;
use verilog.vl_types.all;
entity h3to8 is
    port(
        En              : in     vl_logic;
        w               : in     vl_logic_vector(2 downto 0);
        y               : out    vl_logic_vector(7 downto 0)
    );
end h3to8;
