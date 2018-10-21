library verilog;
use verilog.vl_types.all;
entity binary_encoder83 is
    port(
        En              : in     vl_logic;
        d               : in     vl_logic_vector(7 downto 0);
        q               : out    vl_logic_vector(2 downto 0)
    );
end binary_encoder83;
