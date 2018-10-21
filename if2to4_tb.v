`timescale 1ps/1ps
module if2to4_tb();
	reg En;
	reg [1:0] w;
	reg [2:0] k;
	wire [3:0] y;

	initial begin 
		k = 0;
		#8 $stop;
	end

	always begin
		{En,w} = k;
		#1 k = k + 1;
	end

	if2to4 MUT(
		.En(En),
		.w(w),
		.y(y)
	);
endmodule
