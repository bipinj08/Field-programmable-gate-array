`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/17/2023 11:13:37 AM
// Design Name: 
// Module Name: sr_latch_tb
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


module sr_latch_tb;
reg S;
reg R;
wire Q;
wire Qn;

sr_latch uut(
    .S(S),
    .R(R),
    .Q(Q),
    .Qn(Qn)
);
initial begin
// Initialize Inputs
S = 1;
R = 1;
// Add stimulus here
#100 S = 0;
#100 S = 1;
#100 R = 0;
#100 R = 1;
#100 S = 0;
R = 0;
#100 S = 1;
R = 1;
#100 S = 0;
R = 0;
#100 ;

end
endmodule

