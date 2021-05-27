`include "config.sv"
`include "constants.sv"

module instruction_decoder(
    input [31:0] inst,
    output [6:0] inst_opcode,
    output [2:0] inst_funct3,
    output [6:0] inst_funct7,
    output [4:0] inst_rd,
    output [4:0] inst_rs1,
    output [4:0] inst_rs2
);

logic [6:0] OP;
logic [2:0] Func3;
logic [6:0] Func7;
logic [4:0] RD;
logic [4:0] RS1;
logic [4:0] RS2;

always_latch begin
OP=inst[6:0];
Func3=inst[14:12];
Func7=inst[31:25];
RD=inst[11:7];
RS1=inst[19:15];
RS2=inst[24:20];
end    

assign inst_opcode=OP;
assign inst_funct3=Func3;
assign inst_funct7=Func7;
assign inst_rd=RD;
assign inst_rs1=RS1;
assign inst_rs2=RS2;

endmodule