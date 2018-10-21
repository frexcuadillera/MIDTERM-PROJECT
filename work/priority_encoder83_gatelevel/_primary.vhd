library verilog;
use verilog.vl_types.all;
entity priority_encoder83_gatelevel is
    port(
        d0              : in     vl_logic;
        d1              : in     vl_logic;
        d2              : in     vl_logic;
        d3              : in     vl_logic;
        d4              : in     vl_logic;
        d5              : in     vl_logic;
        d6              : in     vl_logic;
        d7              : in     vl_logic;
        p0              : out    vl_logic;
        p1              : out    vl_logic;
        p2              : out    vl_logic;
        p3              : out    vl_logic;
        p4              : out    vl_logic;
        p5              : out    vl_logic;
        p6              : out    vl_logic;
        p7              : out    vl_logic
    );
end priority_encoder83_gatelevel;
