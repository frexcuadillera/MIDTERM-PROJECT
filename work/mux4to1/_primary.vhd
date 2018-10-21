library verilog;
use verilog.vl_types.all;
entity mux4to1 is
    port(
        w0              : in     vl_logic;
        w1              : in     vl_logic;
        w2              : in     vl_logic;
        w3              : in     vl_logic;
        S               : in     vl_logic_vector(1 downto 0);
        f               : out    vl_logic
    );
end mux4to1;
