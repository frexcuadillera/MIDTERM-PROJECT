library verilog;
use verilog.vl_types.all;
entity binary_encoder42 is
    port(
        En              : in     vl_logic;
        d3              : in     vl_logic;
        d2              : in     vl_logic;
        d1              : in     vl_logic;
        d0              : in     vl_logic;
        q1              : out    vl_logic;
        q0              : out    vl_logic
    );
end binary_encoder42;
