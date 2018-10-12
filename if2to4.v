//2 to 4 binary decoder

module if2to4(En,w1,w0,y3,y2,y1,y0);
input En,w1,w0;
output reg y3,y2,y1,y0;

always @(*)begin
{y3,y2,y1,y0} = 0;
if(En) begin
if({w1,w0} == 2'b00) y0 = 1;
else if({w1,w0} == 2'b01) y1 = 1;
else if({w1,w0} == 2'b10) y2 = 1;
else y3 = 1;
end
end
endmodule

