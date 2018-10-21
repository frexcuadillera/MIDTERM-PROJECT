module mux41_case(s0,s1,w0,w1,w2,w3,f);
	input s0,s1,w0,w1,w2,w3; 
	/* input s as selector input, 
	   w  as data inputs
	*/
	output reg f; 
	/* output reg f , declared as 
	   register because it will be 
	   used inside always block
	
		always block with * sensitivity 
	   list because the multiplexer
	   will only return 1 when the 
		selected input is 1
	*/
	always @ (*) begin
		f = 0;  //initialize f = 0
		case({s1,s0,w3,w2,w1,w0}) 
		/* concatenate every inputs 
		   inside case statement
		*/
		6'b000001: f = 1;  
		//if s is 00 and w is 0001 , f = 1
		6'b010010: f = 1;  
		//if s is 01 and w is 0010 , f = 1
		6'b100100: f = 1;  
		//if s is 10 and w is 0100 , f = 1
		6'b111000: f = 1;  
		//if s is 11 and w is 1000 , f = 1
		default: f = 0;	 
		//default f = 0
		endcase
	end
endmodule


