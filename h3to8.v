//3-to-8 binary decoder
module h3to8(En,w2,w1,w0,y7,y6,y5,y4,y3,y2,y1,y0);
input En,w2,w1,w0;
output y7,y6,y5,y4,y3,y2,y1,y0;
wire En1,En2,w2_;

not(w2_,w2);
and g1(En1,w2_,En);
and g2(En2,w2,En);

if2to4 block1(
.En(En1),
.w1(w1),
.w0(w0),
.y3(y3),
.y2(y2),
.y1(y1),
.y0(y0)
);

if2to4 block2(
.En(En2),
.w1(w1),
.w0(w0),
.y3(y7),
.y2(y6),
.y1(y5),
.y0(y4)
);

endmodule
