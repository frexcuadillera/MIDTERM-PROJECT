module mux4to1(w0,w1,w2,w3,S,f);
	input w0,w1,w2,w3; //declare 4bit w inputs
	input [1:0] S; //2bit Selector input
	output reg f;  
	/* output register f, also declared register
	   because it will be used inside always block
				
		always block with * sensitivity list
		because f only return 1 when the selected 
		input is 1
	*/
	always @(*) begin //added begin-end keyword for readability
		f = 0; //initialize f = 0
		
		//multiplexer logic as follows
		     if(S == 2'b00)
			f = w0;
		else if(S == 2'b01)
			f = w1;
		else if(S == 2'b10)
			f = w2;
		else if(S == 2'b11) //should be an else if block
			f = w3;
		else     //the else block should be f = 0 for x or z input for selector
			f = 0;
	end
endmodule

