library verilog;
use verilog.vl_types.all;
entity priority_encoder83_case is
    port(
        En              : in     vl_logic;
        d7              : in     vl_logic;
        d6              : in     vl_logic;
        d5              : in     vl_logic;
        d4              : in     vl_logic;
        d3              : in     vl_logic;
        d2              : in     vl_logic;
        d1              : in     vl_logic;
        d0              : in     vl_logic;
        q2              : out    vl_logic;
        q1              : out    vl_logic;
        q0              : out    vl_logic
    );
end priority_encoder83_case;
