`timescale 1ps/1ps
module h3to8_tb();
	reg En;
	reg [2:0] w;
	reg [3:0] k;
	wire [7:0] y;

	initial begin 
		k = 0;
		#16 $stop;
	end

	always begin
		{En,w} = k;
		#1 k = k + 1;
	end

	h3to8 MUT(
		.En(En),
		.w(w),
		.y(y)
	);
endmodule

