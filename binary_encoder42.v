module binary_encoder42(d3,d2,d1,d0,q1,q0);
	input d3,d2,d1,d0;
	output reg q1,q0;

	always @ (d3,d2,d1,d0)begin
    {q1,q0} = 2'bxx;
		casex({d3,d2,d1,d0})
		4'b0001: {q1,q0} = 2'b00;
		4'b0010: {q1,q0} = 2'b01;
		4'b0100: {q1,q0} = 2'b10;
		4'b1000: {q1,q0} = 2'b11;
		default: {q1,q0} = 2'bxx;
		endcase
	end
endmodule

