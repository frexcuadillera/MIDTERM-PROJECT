module h3to8_tb();
reg En,w2,w1,w0;
reg [3:0]k;
wire y7,y6,y5,y4,y3,y2,y1,y0;

initial begin 
k = 0;
#16 $stop;
end

always begin
{En,w2,w1,w0} = k;
#1 k = k + 1;
end

h3to8 MUT(
.En(En),
.w2(w2),
.w1(w1),
.w0(w0),
.y7(y7),
.y6(y6),
.y5(y5),
.y4(y4),
.y3(y3),
.y2(y2),
.y1(y1),
.y0(y0)
);
endmodule

