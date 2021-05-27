
`include "config.sv"
`include "constants.sv"

module adder #(
    parameter  WIDTH = 32
) (
    input  [WIDTH-1:0] operand_a,
    input  [WIDTH-1:0] operand_b,
    output [WIDTH-1:0] result
);

    assign result = operand_a + operand_b;

endmodule

