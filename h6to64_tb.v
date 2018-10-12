`timescale 1ps/1ps
module h6to64_tb();
reg En;
reg[5:0]w;
wire[63:0]y;
reg [6:0]k;

initial begin
k = 0;
#128 $stop;
end

always begin
{En,w} = k;
#1 k = k+1;
end

h6to64 MUT(
.En(En),
.w(w),
.y(y)
);
endmodule
