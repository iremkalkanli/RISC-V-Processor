`include "config.sv"
`include "constants.sv"

module alu (
    input        [4:0]  alu_function,
    input signed [31:0] operand_a,
    input signed [31:0] operand_b,
    output logic [31:0] result,
    output              result_equal_zero
);

logic  z;
assign result_equal_zero=z;


always_comb begin

case(alu_function)

5'b00001: begin
result=operand_a+operand_b;
if (result==0) begin
z=1;
end else begin
z=0;
end
end


5'b00010: begin
result=operand_a-operand_b;
if (result==0) begin
z=1;
end else begin
z=0;
end
end

5'b00011: begin
result=operand_a<<operand_b;
if (result==0) begin
z=1;
end else begin
z=0;
end
end

5'b00100: begin
result=operand_a>>operand_b;
if (result==0) begin
z=1;
end else begin
z=0;
end

end

5'b00101: begin
result=operand_a>>>operand_b;
if (result==0) begin
z=1;
end else begin
z=0;
end
end

5'b00110: begin
result=operand_a==operand_b;
if (result==0) begin
z=1;
end else begin
z=0;
end
end

5'b00111: begin
result=operand_a<operand_b;
if (result==0) begin
z=1;
end else begin
z=0;
end
end

5'b01000: begin
result=unsigned'(operand_a)+ unsigned'(operand_b);
if (result==0) begin
z=1;
end else begin
z=0;
end
end

5'b01001: begin
result=operand_a^operand_b;
if (result==0) begin
z=1;
end else begin
z=0;
end
end

5'b01010: begin
result=operand_a|operand_b;
if (result==0) begin
z=1;
end else begin
z=0;
end
end

5'b01011: begin
result=operand_a&operand_b;
if (result==0) begin
z=1;
end else begin
z=0;
end
end

endcase

end


endmodule

