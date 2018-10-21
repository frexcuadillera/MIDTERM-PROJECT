module priority_encoder83_forloop(En,d,q);
	input En; //Enable input
	input wire [7:0] d; //8bit d input
	output reg [2:0] q; //3bit q output
	integer k; //integer k to be used in for loop

	//always block with En and d sensitivity list
	always @(En,d) begin
		q = 3'bx; //initialize q = xxx, not zero because zero is for case 1
		if(En) begin //The enable must be on for the circuit to work
			for(k = 0; k < 8;k = k + 1)begin //begin looping from 0 to 7
				if(d[k]) q = k; 
				/*
				 the loop finds the highest bit with 1 value 
				 and returns it to the q output, the loop are executed 
				 simultaneously therefore the value of  q will be the latest value
				 after the loop
				*/
			end
		end
	end
endmodule




