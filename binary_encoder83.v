module binary_encoder83(En,d7,d6,d5,d4,d3,d2,d1,d0,q2,q1,q0);
	input En,d7,d6,d5,d4,d3,d2,d1,d0;
	output reg q2,q1,q0;

	always @ (*)begin
      {q2,q1,q0} = 3'bxxx;
		if(En) begin
		casex({d7,d6,d5,d4,d3,d2,d1,d0})
		8'b00000001: {q2,q1,q0} = 3'b000;
		8'b00000010: {q2,q1,q0} = 3'b001;
		8'b00000100: {q2,q1,q0} = 3'b010;
		8'b00001000: {q2,q1,q0} = 3'b011;
		8'b00010000: {q2,q1,q0} = 3'b100;
		8'b00100000: {q2,q1,q0} = 3'b101;
		8'b01000000: {q2,q1,q0} = 3'b110;
		8'b10000000: {q2,q1,q0} = 3'b111;
		    default: {q2,q1,q0} = 3'bxxx;
		endcase
		end
	end
endmodule


