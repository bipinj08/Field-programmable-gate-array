`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2023 04:53:37 PM
// Design Name: 
// Module Name: twelve_one_mux
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


module twelve_one_mux(
    input [15:12] sel,
    input [11:0] sw, 
    output reg [1:0] RGB0
);
reg out;
always @(*)
begin
    case(sel)
        4'b0000: out = sw[0];
        4'b0001: out = sw[1];
        4'b0010: out = sw[2];
        4'b0011: out = sw[3];
        4'b0100: out = sw[4];
        4'b0101: out = sw[5];
        4'b0110: out = sw[6];
        4'b0111: out = sw[7];
        4'b1000: out = sw[8];
        4'b1001: out = sw[9];
        4'b1010: out = sw[10];
        4'b1011: out = sw[11];
        default: out = 1'b0;
    endcase

    if (sel >= 4'b1100)
    begin
        RGB0[0] = 1'b1;
        RGB0[1] = 1'b0;
    end
    else
    begin
        RGB0[0] = 1'b0;
        RGB0[1] = 1'b1;
    end
end

endmodule
