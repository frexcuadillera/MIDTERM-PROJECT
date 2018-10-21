module dec2to4(W,En,Y);
	input [1:0]W; //2bit input W
	input En;     //Enable input
	output reg [3:0] Y; //4bit Y input vector should be [msb:lsb]
	integer k;    //integer k to be used in for loop
	
	//always block with * sensitivity list
	always @(*) begin //added begin-end for readability
		Y = 0; //initialize first the value of Y
		
		if(En) begin // the En should be 1, added if block
			for(k = 0; k <= 3; k = k+1) begin 
			//added begin-end at for loop
				if(W == k)  //test if k = W
					Y[k] = 1;
			end		//return Y[k] = 1
		end
	end
endmodule


