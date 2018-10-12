library verilog;
use verilog.vl_types.all;
entity mux41_case is
    port(
        s0              : in     vl_logic;
        s1              : in     vl_logic;
        w0              : in     vl_logic;
        w1              : in     vl_logic;
        w2              : in     vl_logic;
        w3              : in     vl_logic;
        f               : out    vl_logic
    );
end mux41_case;
