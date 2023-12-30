`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2023 03:48:44 PM
// Design Name: 
// Module Name: ALU_8bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module ALU_8bit (
  input [7:0] A,
  input [7:0] B,
  input [2:0] opcode,
  input Cin,
  output [7:0] F,
  output Cout
);

  reg [7:0] F;
  reg Cout;

  always @*
  begin
    case (opcode)
      3'b000: // Addition
        begin
          F = A + B + Cin;
          Cout = (A & B) | (Cin & (A ^ B));
        end
      3'b001: // Increment
        begin
          F = A + 1;
          Cout = Cin & A;
        end
      3'b010: // Subtract
        begin
          F = A - B;
          Cout = (~(A^B) & Cin) | (~A & B & (A ^ B));
        end
      3'b011: // Bit-wise XOR
        begin
          F = A ^ B;
          Cout = 0;
        end
      3'b100: // Bit-wise OR
        begin
          F = A | B;
          Cout = 0;
        end
      3'b101: // Bit-wise AND
        begin
          F = A & B;
          Cout = 0;
        end
      default:
        begin
          F = 0;
          Cout = 0;
        end
    endcase
  end

endmodule

