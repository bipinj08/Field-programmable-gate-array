`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/09/2023 04:06:41 PM
// Design Name: 
// Module Name: ALU_8bit_TB
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


module ALU_8bit_Testbench;

  reg [7:0] A;
  reg [7:0] B;
  reg [2:0] opcode;
  reg Cin;
  wire [7:0] F;
  wire Cout;

  ALU_8bit uut (
    .A(A),
    .B(B),
    .opcode(opcode),
    .Cin(Cin),
    .F(F),
    .Cout(Cout)
  );

  initial
  begin
    // Test case 1: Addition
    A = 8'b11111111 ;
    B = 8'b00000001;
    opcode = 3'b000;
    Cin = 0;
    #10;
    // Verify the output
    $display("Addition Result: F=%b, Cout=%b", F, Cout);

    // Test case 2: Increment
    A = 8'b11001100;
    B = 8'b00000000;
    opcode = 3'b001;
    Cin = 0;
    #10;
    // Verify the output
    $display("Increment Result: F=%b, Cout=%b", F, Cout);

    // Test case 3: Subtract
    A = 8'b11111111;
    B = 8'b00110011;
    opcode = 3'b010;
    Cin = 0;
    #10;
    // Verify the output
    $display("Subtract Result: F=%b, Cout=%b", F, Cout);


    // Test case 5: Bit-wise XOR
    A = 8'b11001100;
    B = 8'b00110011;
    opcode = 3'b011;
    Cin = 0;
    #10;
    // Verify the output
    $display("Bit-wise XOR Result: F=%b, Cout=%b", F, Cout);

    

    // Test case 7: Bit-wise OR
    A = 8'b11110000;
    B = 8'b00110011;
    opcode = 3'b100;
    Cin = 0;
    #10;
    // Verify the output
    $display("Bit-wise OR Result: F=%b, Cout=%b", F, Cout);

    // Test case 8: Bit-wise AND
    A = 8'b11001100;
    B = 8'b10101010;
    opcode = 3'b101;
    Cin = 0;
    #10;
    // Verify the output
    $display("Bit-wise AND Result: F=%b, Cout=%b", F, Cout);

    $finish;
  end

endmodule

