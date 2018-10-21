`timescale 1ps/1ps
module dec2to4_tb();
	reg En;
	reg [1:0]W;
	wire [3:0]Y;
	reg [2:0]k;

	initial begin
		k = 0;
		#8 $stop;
	end

	always begin
		{En,W} = k;
		#1 k = k + 1;
	end

	dec2to4 MUT(.W(W),.En(En),.Y(Y));
endmodule
