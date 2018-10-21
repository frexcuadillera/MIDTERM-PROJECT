`timescale 1ps/1ps
module priority_encoder83_forloop_tb();
reg En;
reg [7:0] d;
reg [8:0] k;
wire q;


initial begin
k = 0;
#512 $stop;
end

always begin
{En,d} = k;
#1 k = k + 1;
end

priority_encoder83_forloop MUT(
.En(En),
.d(d),
.q(q)
);

endmodule


