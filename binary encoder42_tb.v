module binary_encoder42_tb();
reg En,d3,d2,d1,d0;
wire q1,q0;
reg [4:0] k;

initial begin
k = 0;
#32 $stop;
end

always begin
{En,d3,d2,d1,d0} = k;
#1 k = k + 1;
end

binary_encoder42 MUT(
.En(En),
.d3(d3),
.d2(d2),
.d1(d1),
.d0(d0),
.q1(q1),
.q0(q0)
);

endmodule

