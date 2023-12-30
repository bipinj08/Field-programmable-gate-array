`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2023 02:15:49 PM
// Design Name: 
// Module Name: four_two_encorder
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


module four_two_encorder(
        input wire [3:0] sw,
        output wire [1:0] led
);

  assign led = sw[3] ? 2'b11 :
                   sw[2] ? 2'b10 :
                   sw[1] ? 2'b01 :
                   sw[0] ? 2'b00 : 2'b00;

endmodule
