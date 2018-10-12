module priority_encoder83_casex(En,d7,d6,d5,d4,d3,d2,d1,d0,q2,q1,q0);
input En,d7,d6,d5,d4,d3,d2,d1,d0;
output reg q2,q1,q0;

always @(*)begin
{q2,q1,q0} = 3'bxxx;
if(En) begin
casex({d7,d6,d5,d4,d3,d2,d1,d0})
8'b00000001: {q2,q1,q0} = 3'b000;
8'b0000001?: {q2,q1,q0} = 3'b001;
8'b000001??: {q2,q1,q0} = 3'b010;
8'b00001???: {q2,q1,q0} = 3'b011;
8'b0001????: {q2,q1,q0} = 3'b100;
8'b001?????: {q2,q1,q0} = 3'b101;
8'b01??????: {q2,q1,q0} = 3'b110;
8'b1???????: {q2,q1,q0} = 3'b111;
    default: {q2,q1,q0} = 3'bxxx;
endcase
end
end
endmodule


