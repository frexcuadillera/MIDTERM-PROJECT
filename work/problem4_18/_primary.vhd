library verilog;
use verilog.vl_types.all;
entity problem4_18 is
    port(
        W               : in     vl_logic_vector(1 downto 0);
        En              : in     vl_logic;
        y0              : out    vl_logic;
        y1              : out    vl_logic;
        y2              : out    vl_logic;
        y3              : out    vl_logic
    );
end problem4_18;
