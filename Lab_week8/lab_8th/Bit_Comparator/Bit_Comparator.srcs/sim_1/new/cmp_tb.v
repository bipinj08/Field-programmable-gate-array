`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2023 07:22:20 AM
// Design Name: 
// Module Name: cmp_tb
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


module cmp_tb;
  reg [3:0] A;
  reg [3:0] B;
  wire LT_O;
  wire EQ_O;
  wire GT_O;

  cmp dut (
    .A(A),
    .B(B),
    .LT_O(LT_O),
    .EQ_O(EQ_O),
    .GT_O(GT_O)
  );

  initial begin
    // Test Case 1
    A = 4'b0101;
    B = 4'b0101;
    #10;
    $display("Test Case 1: A = 5, B = 5");
    $display("LT_O = %b, EQ_O = %b, GT_O = %b", LT_O, EQ_O, GT_O);

    // Test Case 2
    A = 4'b1100;
    B = 4'b0101;
    #10;
    $display("Test Case 2: A = 12, B = 5");
    $display("LT_O = %b, EQ_O = %b, GT_O = %b", LT_O, EQ_O, GT_O);

    // Test Case 3
    A = 4'b0011;
    B = 4'b1100;
    #10;
    $display("Test Case 3: A = 3, B = 12");
    $display("LT_O = %b, EQ_O = %b, GT_O = %b", LT_O, EQ_O, GT_O);

    // Add more test cases as needed

    $finish;
  end
endmodule
