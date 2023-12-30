`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2023 09:50:31 AM
// Design Name: 
// Module Name: mux_4_2
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

module mux_4_2 (
input [15:0] sw, // four 2-bit input
input [1:0] btn,
output [3:0] led
);
reg [3:0] tmp; //2-bit reg
always @(sw, btn) begin
case (btn)
2'b00: tmp <= sw[3:0];
2'b01: tmp <= sw[7:4];
2'b10: tmp <= sw[11:8];
2'b11: tmp <= sw[15:12];
default: tmp <= 4'b0000;
endcase
end
assign led[3:0] = tmp;
endmodule
