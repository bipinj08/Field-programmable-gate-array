`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/25/2023 03:12:59 PM
// Design Name: 
// Module Name: pipo_register_tb
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

module pipo_register_tb;

  reg clk;
  reg [1:0] btn;
  reg [7:0] sw;
  wire [7:0] led;

  pipo_register dut (
    .clk(clk),
    .btn(btn),
    .sw(sw),
    .led(led)
  );

  // Clock generation
  always #5 clk = ~clk;

  // Stimulus
  initial begin
    clk = 0;
    btn = 2'b00; // Both buttons initially not pressed
    sw = 8'b00000000;
    
    #10; // Wait for initial stability
    
    // Test case 1: Memorize sw
    sw = 8'b10101010;
    btn[0] = 1; // Press the clock button to enable memorization
    #20;
    btn[0] = 0; // Release the clock button
    #10;
    sw = 8'b00000000;
    
    // Test case 2: Recall switches
    btn[1] = 1; // Press the recall button to output the current switch positions
    #20;
    btn[1] = 0; // Release the recall button
    #10;
    
    // Add more test cases if needed
    
    $finish; // End simulation
  end

endmodule



