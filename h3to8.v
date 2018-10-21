//3-to-8 binary decoder
module h3to8(En,w,y);
	input En;         //Enable input 
	input [2:0]w;     //3 input w
	output [7:0]y;    //8 output y
	wire En1,En0,w2_; //En1 for block1 Enable, En0 for block0 Enable, w2_ for not w[2]
	
	/*This part is a gate level representation of En input as Enable for the circuit
	  connected to the and gate for En1 and En2. If the most significant bit w[2]
	  is 0, the output will be at block0, if 1, the output will be at block1
	*/
	not(w2_,w[2]);         // assign w2_ = ~w[2];
	and g1(En0,w2_,En);    // assign En0 = ~w[2]&En;
	and g2(En1,w[2],En);   // assign En1 =  w[2]&En;
	
	/* block0 instance where w[1:0] are connected to the if2to4 w
	   output for y[3:0] at block0
	*/ 
	if2to4 block0(
		.En(En0),
		.w(w[1:0]),
		.y(y[3:0])
	);
	
	/*	block1 instance where w[1:0] are connected to the if2to4 w
		output for y[7:4] at block1
	*/
	if2to4 block1(
		.En(En1),
		.w(w[1:0]),
		.y(y[7:4])
	);

endmodule



