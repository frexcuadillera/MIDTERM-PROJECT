module problem4_18(W, En, y0, y1, y2, y3);
	input [1:0]W;            //2 input W
	input En;                //Enable input 
	output reg y0,y1,y2,y3;  // outputs
	
	
	//always block
	always@(W,En)begin
		y0 = 0;  //initialize y inputs as 0
		y1 = 0;
		y2 = 0;
		y3 = 0;
		
		//the Enable input must be on
		if(En) begin
				//decoder logic as follows
				if(W==0) 
					y0 = 1;
		else if (W==1) 
					y1 = 1;
		else if (W==2)
					y2 = 1;
		else if (W==3)
					y3 = 1;
		else                 
					y0 = 0; //if w is x or z values, 
					y1 = 0; //the outputs should be 0
					y2 = 0;
					y3 = 0;
		end
	end
endmodule

