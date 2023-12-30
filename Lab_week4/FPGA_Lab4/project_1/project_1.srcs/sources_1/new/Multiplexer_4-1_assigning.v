`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/20/2023 08:43:49 AM
// Design Name: 
// Module Name: Multiplexer_4-1_assigning
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


module Multiplexer_4_1_assigning(
    input [13:10] sw,
    input [1:0] sel,
    output [0:0] led

    );
reg tmp;
always @(sw, sel) begin
    case(sel)
    2'b00: tmp <= sw[10];
    2'b01: tmp <= sw[11];
    2'b10: tmp <= sw[12];
    2'b11: tmp <= sw[13];
    default: tmp <= 1'b0;
    endcase
end
assign led[0:0] = tmp;
endmodule
