`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2023 02:33:42 PM
// Design Name: 
// Module Name: four_two_encorder_tb
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


module four_two_encorder_tb;
// Inputs
  reg [3:0] inputs;
  
  // Outputs
  wire [1:0] outputs;
  
  four_two_encorder uut (
    .sw(inputs),
    .led(outputs)
  );
initial begin
    inputs = 4'b0000;
    #10;
    inputs = 4'b0001;
    #10;
    inputs = 4'b0010;
    #10;
    inputs = 4'b0011;
    #10;
    inputs = 4'b0100;
    #10;
    inputs = 4'b0101;
    #10;
    inputs = 4'b0110;
    #10;
    inputs = 4'b0111;
    #10;
    inputs = 4'b1000;
    #10;
    inputs = 4'b1001;
    #10;
    inputs = 4'b1010;
    #10;
    inputs = 4'b1011;
    #10;
    inputs = 4'b1100;
    #10;
    inputs = 4'b1101;
    #10;
    inputs = 4'b1110;
    #10;
    inputs = 4'b1111;

    $finish;
    
  end

endmodule
