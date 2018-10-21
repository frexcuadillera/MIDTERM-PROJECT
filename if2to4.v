//2 to 4 binary decoder
module if2to4(En,w,y);
	input En;            //Enable input
	input [1:0] w;       //2 input w
	output reg [3:0] y;  
	/*4 output reg y , it is also declared 
	as register because it will be used inside always block  
	*/
	/*	behaviroural model inside the always block
		@(*) sensitivity list denotes that the code 
		will execute when at least 1 input port is on.
		In this case, the circuit will only works if the 
		Enable input is on and it satisfies the condition
	*/
	always @(*)begin
		y = 0;  //initial value of y as 0
		
		//the Enable input must be on
		if(En) begin
					//decoder logic if-else as follows
				  if(w == 2'b00) 
						y = 4'b0001;
			else if(w == 2'b01) 
						y = 4'b0010;
			else if(w == 2'b10) 
						y = 4'b0100;
			else if(w == 2'b11)
						y = 4'b1000;
			else
						y = 0; //the output will be 0 if the w is x or z value
		end
	end
endmodule

