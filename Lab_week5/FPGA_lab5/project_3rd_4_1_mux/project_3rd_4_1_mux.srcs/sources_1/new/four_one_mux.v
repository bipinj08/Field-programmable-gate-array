`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/30/2023 09:45:21 PM
// Design Name: 
// Module Name: four_one_mux
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



module four_one_mux  ( 
    input C,D,
    input [1:0] sel,
    output Y
);
reg tmp;
always @(sel) 
begin 
case (sel)
2'b00: tmp <= D;
2'b01: tmp <= (~C & ~D);
2'b10: tmp <= (C & D);
2'b11: tmp <= 1; 
default: tmp <= 1'b0; 
endcase
end
assign Y = tmp;    
                
endmodule

