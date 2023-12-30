`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2023 10:17:31 AM
// Design Name: 
// Module Name: CLA_Test
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


module CLA_Test;

  reg [7:0] sw;
  
  wire [3:0] seg_an;
  wire [6:0] seg_cat;
  
  // Instantiate the CLA wrapper module
  wrapper dut (
    .sw(sw),
    .seg_an(seg_an),
    .seg_cat(seg_cat)
  );
  
  // Stimulus
  initial begin
    // Initialize inputs
    sw = 8'b10111011;
    
    // Display input values
    $display("CLA Test Bench");
    $display("---------------");
    $display("Input A: %b", sw[7:4]);
    $display("Input B: %b", sw[3:0]);
    $display("Carry-In (Cin): 1");
    $display("");
    
    // Display segment values
    $display("Segment AN: %b", seg_an);
    $display("Segment CAT: %b", seg_cat);
    
    // Terminate simulation
    $finish;
  end
  
endmodule

