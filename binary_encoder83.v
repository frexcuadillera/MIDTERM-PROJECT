module binary_encoder83(En,d,q);
	input En;     //Enable input
   input [7:0]d; //d input vector with 8 bits
	output reg [2:0]q;
	/* q outputs vector with 3 bits, also declared as register because it will be used
	   inside always block
	   
	  always block with * sensitivity list because the design will work if at least 1 
	  input is on, in this case, the enable input should always be on
	*/
	always @ (*)begin
      q = 3'bxxx;
		//initialize q as x, not zero because the 0 output is for case 1
		
		//En must be on
		if(En) begin
			casex(d)
				/* encoder logic as follows:
					if a single d input is 1, q returns its index.
				   If the d input contain 2 or more "1" inputs, q will return x values			  
				*/
				8'b00000001: q = 3'b000;
				8'b00000010: q = 3'b001;
				8'b00000100: q = 3'b010;
				8'b00001000: q = 3'b011;
				8'b00010000: q = 3'b100;
				8'b00100000: q = 3'b101;
				8'b01000000: q = 3'b110;
				8'b10000000: q = 3'b111;
			       default: q = 3'bxxx;
					 //default q = x
			endcase
		end
	end
endmodule


