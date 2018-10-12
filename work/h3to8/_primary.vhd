library verilog;
use verilog.vl_types.all;
entity h3to8 is
    port(
        En              : in     vl_logic;
        w2              : in     vl_logic;
        w1              : in     vl_logic;
        w0              : in     vl_logic;
        y7              : out    vl_logic;
        y6              : out    vl_logic;
        y5              : out    vl_logic;
        y4              : out    vl_logic;
        y3              : out    vl_logic;
        y2              : out    vl_logic;
        y1              : out    vl_logic;
        y0              : out    vl_logic
    );
end h3to8;
