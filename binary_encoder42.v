module binary_encoder42(En,d3,d2,d1,d0,q1,q0);
	input En,d3,d2,d1,d0;
	//Enable inputs and 4 d inputs
	output reg q1,q0;
	/*2 q outputs as register because it will be used inside always block
	  
	  always block with * sensitivity list because the design will work
	  if at least 1 input is on, in this case, the enable input should 
	  always be on
   */	
	always @ (*)begin
		{q1,q0} = 2'bxx;
		//initialize q as x, not zero because the 0 output is for case 1

		//En must be on
		if(En) begin
			casex({d3,d2,d1,d0}) //concatenate d inputs in case statements
				4'b0001: {q1,q0} = 2'b00;
				// if d = 0001 , q = 00
				4'b0010: {q1,q0} = 2'b01;
				// if d = 0010 , q = 01
				4'b0100: {q1,q0} = 2'b10;
				// if d = 0100 , q = 10
				4'b1000: {q1,q0} = 2'b11;
				// if d = 1000 , q = 11
				default: {q1,q0} = 2'bxx;
				//else, q = xx
			endcase
		end
	end
endmodule


