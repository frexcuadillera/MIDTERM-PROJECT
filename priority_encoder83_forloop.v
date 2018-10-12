module priority_encoder83_forloop(En,d,q);
	input En;
	input [7:0] d;
	output reg [2:0] q;
	integer k;

	always @(*)begin
		q = 3'bxxx;
		if(En) begin
			for(k=0; k<=7;k=k+1)begin
				if(d[k] == 1) q = k;
			end
		end
	end
endmodule



