library verilog;
use verilog.vl_types.all;
entity h6to64 is
    port(
        En              : in     vl_logic;
        w               : in     vl_logic_vector(5 downto 0);
        y               : in     vl_logic_vector(63 downto 0)
    );
end h6to64;