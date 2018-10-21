module priority_encoder83_casex(En,d7,d6,d5,d4,d3,d2,d1,d0,q2,q1,q0);
	input En,d7,d6,d5,d4,d3,d2,d1,d0; //inputs Enable and 8-bit d
	output reg q2,q1,q0;
	/*
	3-bit q output, also declared as register because it will be 
	used inside the always block
	*/
	always @(*)begin
		{q2,q1,q0} = 3'bxxx; //initialize q = 3'bxxx
		
		//En should be on
		if(En) begin
			casex({d7,d6,d5,d4,d3,d2,d1,d0}) 
			//concatenated q inputs inside case statement
				/*priority encoder logic as follows:
				in every possible d inputs, return the index
				/position of the highest bit with 1 value
				if every inputs is zero, return q = 3'bxxx
				*/
				8'b00000001: {q2,q1,q0} = 3'b000;
				8'b0000001?: {q2,q1,q0} = 3'b001;
				8'b000001??: {q2,q1,q0} = 3'b010;
				8'b00001???: {q2,q1,q0} = 3'b011;
				8'b0001????: {q2,q1,q0} = 3'b100;
				8'b001?????: {q2,q1,q0} = 3'b101;
				8'b01??????: {q2,q1,q0} = 3'b110;
				8'b1???????: {q2,q1,q0} = 3'b111;
					 default: {q2,q1,q0} = 3'bxxx;
			endcase
		end
	end
endmodule


