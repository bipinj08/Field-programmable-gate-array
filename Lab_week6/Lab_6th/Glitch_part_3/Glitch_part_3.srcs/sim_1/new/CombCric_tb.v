`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/20/2023 11:14:57 PM
// Design Name: 
// Module Name: CombCric_tb
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


module CombCric_tb;
//inputs
reg A;
reg B;
reg C;
//output
wire X;

//Unit under test
CombCric uut(
    .A(A),
    .B(B),
    .C(C),
    .X(X)
);
integer k = 0;    
initial
begin
// Initialize Inputs
A = 0;
B = 0;
C = 0;
// Add stimulus here
    for(k = 0; k < 4; k=k+1)
    begin
    {A,C} = k;
    #5 B = 1;
    #5 B = 0;
    #5;
    end
end

endmodule
