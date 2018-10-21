module priority_encoder83_gatelevel_tb();
	reg d7,d6,d5,d4,d3,d2,d1,d0;
	wire q0,q1,q2,V;
	reg [7:0] k;

	initial begin
		k = 0;
		#256 $stop;
	end

	always begin
		{d7,d6,d5,d4,d3,d2,d1,d0} = k;
		#1 k = k + 1;
	end

	priority_encoder_83_gatelevel MUT(
		d0,
		d1,
		d2,
		d3,
		d4,
		d5,
		d6,
		d7,
		q0,
		q1,
		q2,
		V
	);
endmodule

