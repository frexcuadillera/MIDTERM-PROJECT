module priority_encoder83_casex_tb();
reg En,d7,d6,d5,d4,d3,d2,d1,d0;
wire q2,q1,q0;
reg [8:0] k;

initial begin
k = 0;
#512 $stop;
end

always begin
{En,d7,d6,d5,d4,d3,d2,d1,d0} = k;
#1 k = k + 1;
end

priority_encoder83_casex MUT(
.En(En),
.d7(d7),
.d6(d6),
.d5(d5),
.d4(d4),
.d3(d3),
.d2(d2),
.d1(d1),
.d0(d0),
.q2(q2),
.q1(q1),
.q0(q0)
);

endmodule

