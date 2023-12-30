`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/28/2023 11:19:08 AM
// Design Name: 
// Module Name: wrapper
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
module wrapper(

input clk,btn,
output [6:0] seg_cat,
output [3:0]seg_an

    );
    
    wire [26:0] count;
    wire [3:0] seg_out;
    
    counter1 input_counter1(
    
    .clk(clk),
    .rst(btn),
    .counterout(count)
    

    
     );
    
    BCD input_BCD(
    
    .clk(count[26]),
    .rst(rst),
    .bcd_digit(seg_out)
    
    
  
    
    
    );
    
     seven input_seven(
     
     
     .seg_an(seg_out),
     .seg_cat(seg_cat)
  
     
     
     
     );
   assign seg_an=4'b1110;
    
    
endmodule
