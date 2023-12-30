`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2023 01:37:55 PM
// Design Name: 
// Module Name: two_four_decorder
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

module task21(
    input [1:0] sw,
    input [3:0] btn,
    output [3:0] led
    );
    
reg [3:0] y;

always @ (sw,btn,y)
begin
    case(sw)
        2'b00: y <= 4'b0001;
        2'b01: y <= 4'b0010;
        2'b10: y <= 4'b0100;
        2'b11: y <= 4'b1000;
        
    endcase
end

assign led[0] = y[0] & btn[0];
assign led[1] = y[1] & btn[1];
assign led[2] = y[2] & btn[2];
assign led[3] = y[3] & btn[3]; 

endmodule
