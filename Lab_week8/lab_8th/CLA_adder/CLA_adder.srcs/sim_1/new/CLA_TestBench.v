`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2023 09:45:24 AM
// Design Name: 
// Module Name: CLA_TestBench
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
module CLA_TestBench;
  // Inputs
  reg [3:0] A;
  reg [3:0] B;
  reg Cin;

  // Outputs
  wire [3:0] Sum;
  wire Cout;

  // Instantiate the CLA module
  CLA dut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .Sum(Sum),
    .Cout(Cout)
  );

  // Test case generation
  initial begin
    A = 4'b0000;             // Initial values for inputs
    B = 4'b0000;
    Cin = 0;

    // Run the test cases
    repeat (16) begin
      // Display inputs
      $display("A = %b, B = %b, Cin = %b", A, B, Cin);
      // Display outputs
      $display("Sum = %b, Cout = %b", Sum, Cout);
      // Change input values
      A = A + 1;
      B = B + 1;
      Cin = ~Cin;
      #10; // Delay between test cases (adjust as needed)
    end

    $finish;
  end

endmodule


