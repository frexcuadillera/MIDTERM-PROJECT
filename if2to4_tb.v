module if2to4_tb();
reg En,w1,w0;
reg [2:0]k;
wire y3,y2,y1,y0;

initial begin 
k = 0;
#8 $stop;
end

always begin
{En,w1,w0} = k;
#1 k = k + 1;
end

if2to4 MUT(
.En(En),
.w1(w1),
.w0(w0),
.y3(y3),
.y2(y2),
.y1(y1),
.y0(y0)
);
endmodule
