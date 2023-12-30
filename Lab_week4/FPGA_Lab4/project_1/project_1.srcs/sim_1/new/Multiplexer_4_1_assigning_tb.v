`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2023 03:08:23 PM
// Design Name: 
// Module Name: Multiplexer_4_1_assigning_tb
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


module Multiplexer_4_1_assigning_tb;
  reg [13:10] sw;
  reg [1:0] sel;
  
  wire [0:0] led;
  
  // Instantiate the module under test
  Multiplexer_4_1_assigning cut (
    .sw(sw),
    .sel(sel),
    .led(led)
    );

integer k;  
initial begin
    
    
    sel = 2'b00;
    for(k=0; k < 16; k=k+1) begin
    sw = k;
    #10;
    end

    sel = 2'b01;
    for(k=0; k < 16; k=k+1) begin
    sw = k;
    #10;
    end
    
 
    sel = 2'b10;
    for(k=0; k < 16; k=k+1) begin
    sw = k;
    #10;
    end
    
 
    sel = 2'b11;
    for(k=0; k < 16; k=k+1) begin
    sw = k;
    #10;
    end
    
 
 
    sel = 2'b1z;
    for(k=0; k < 16; k=k+1) begin
    sw = k;
    #10;
    end
    
    sel = 2'b1x;
    for(k=0; k < 16; k=k+1) begin
    sw = k;
    #10;
    end

    $finish;
end
endmodule
