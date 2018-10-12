`timescale 1ps/1ps
module mux41_case_tb();
reg s0,s1,w0,w1,w2,w3;
wire f;
reg [1:0]k;


initial begin
{w3,w2,w1,w0} = 4'b0000;
s0 = 0;
s1 = 0;
k = 2'b00;
#4 
{w3,w2,w1,w0} = 4'b0001;
#4 
{w3,w2,w1,w0} = 4'b0010;
#4 
{w3,w2,w1,w0} = 4'b0100;
#4 
{w3,w2,w1,w0} = 4'b1000;
end

always begin
s0 = k[0];
s1 = k[1];
#1 k = k + 1;
end

initial #20 $stop;

mux41_case MUT(
.s0(s0),
.s1(s1),
.w0(w0),
.w1(w1),
.w2(w2),
.w3(w3),
.f(f)
);

endmodule



