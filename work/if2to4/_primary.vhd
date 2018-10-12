library verilog;
use verilog.vl_types.all;
entity if2to4 is
    port(
        En              : in     vl_logic;
        w1              : in     vl_logic;
        w0              : in     vl_logic;
        y3              : out    vl_logic;
        y2              : out    vl_logic;
        y1              : out    vl_logic;
        y0              : out    vl_logic
    );
end if2to4;
