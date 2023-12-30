`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2023 02:41:35 PM
// Design Name: 
// Module Name: Exm_2_tb
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


module Exm_2_tb;

  // Declare signals for the testbench
  reg A, C;
  wire D, F, B;

  // Instantiate the module under test
  Exm_2 uut (
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .F(F)
  );

  // Provide stimulus (test cases)
  initial begin
    // Test case 1: A=0, C=0
    A = 0;
    C = 0;
    #10; // Wait for a few time units
    // Display the results
    $display("Test case 1: A=0, C=0 -> D=%b, F=%b, B=%b", D, F, B);

    // Test case 2: A=1, C=0
    A = 1;
    C = 0;
    #10; // Wait for a few time units
    // Display the results
    $display("Test case 2: A=1, C=0 -> D=%b, F=%b, B=%b", D, F, B);

    // Add more test cases as needed
  end

  // Add any additional stimulus or testing logic here

endmodule