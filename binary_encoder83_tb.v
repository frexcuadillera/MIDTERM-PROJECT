`timescale 1ps/1ps //timescale of 1 picosecond with 1 picosecond precision
module binary_encoder83_tb();
	reg En;      //Enable input as register
	reg [7:0] d; //8-bit input vector d as register
	wire [2:0] q;//3-bit output vector q as wire 

	//initial block
	initial begin
		En = 1;
		d = 0;
		//initialize En = 1, d = 0
		// set every legal d inputs every 1ps
		#1 d = 8'b00000001;
		#1 d = 8'b00000010;
		#1 d = 8'b00000100;
		#1 d = 8'b00001000;
		#1 d = 8'b00010000;
		#1 d = 8'b00100000;
		#1 d = 8'b01000000;
		#1 d = 8'b10000000;
		#1 $stop;
	end
	
	//instantiate the module
	binary_encoder83 MUT(
		.En(En),
		.d(d),
		.q(q)
	);
	
endmodule

