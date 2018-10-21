//6-to-64 binary decoder
module h6to64(En,w,y);
	input En;       //The enable input
	input[5:0]w;    //6 input w
	output[63:0]y;  //64 output y
	wire[7:0]En_w;  //8 input En_w input for the 8 instances of h3to8 Enable input
	
	
	/* The parent block instance of h3to8 module,the Enable 
	input will be the Enable input of the entire design.
		The 3-inputs "w" ports will be its w[5:3] (most significant bits) 
		input and acts as decoder for the En_w wires.
		The outputs will be the En_w wires that are connected to each 
		Enable input of the 8 child blocks instance of h3to8 module	
	*/
	h3to8 parent_block(.En(En),.w(w[5:3]),.y(En_w[7:0]));

	/*	The 8-child block instance of h3to8 module,the Enable input are connected 
	to the En_w wires from 0 to 7.The 3-inputs "w" are connected to w[2:0] 
	(least significant bits) and acts as decoder for the nblock output.
		The output will be grouped every 8 bits as block0 for outputs 0 to 7,
		block1 for outputs 15 to 8 and so on...
   */	
	h3to8 block0(.En(En_w[0]),.w(w[2:0]),.y(y[7:0]));
	h3to8 block1(.En(En_w[1]),.w(w[2:0]),.y(y[15:8]));
	h3to8 block2(.En(En_w[2]),.w(w[2:0]),.y(y[23:16]));
	h3to8 block3(.En(En_w[3]),.w(w[2:0]),.y(y[31:24]));
	h3to8 block4(.En(En_w[4]),.w(w[2:0]),.y(y[39:32]));
	h3to8 block5(.En(En_w[5]),.w(w[2:0]),.y(y[47:40]));
	h3to8 block6(.En(En_w[6]),.w(w[2:0]),.y(y[55:48]));
	h3to8 block7(.En(En_w[7]),.w(w[2:0]),.y(y[63:56]));
endmodule


