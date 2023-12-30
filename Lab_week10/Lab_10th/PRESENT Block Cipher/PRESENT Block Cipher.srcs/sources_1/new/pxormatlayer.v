`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/20/2023 10:23:28 PM
// Design Name: 
// Module Name: pxormatlayer
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


module pxormatlayer(inp , mat , out ) ;
input [0:63] inp ; // 4-bit input
input [0:23] mat ; // Matriculation number
output [0:63] out ; // 4-bit output
wire [0:23] matin ;
wire [0:63] matnew;
wire [0:63] matrot;

assign matin = { mat[1], mat[3], mat[0], mat[5], mat[2], mat[4] } ; // shuffling the matriculation number first
assign matnew = { matin[1] , matin[3], matin[0], matin[5], matin[2], matin[4] , matin[1], matin[3], matin[0], matin[5],
        matin[2] , matin[4], matin[1], matin[3], matin[0], matin[5] }; // Cyclic sequence of shuffled matriculation
assign matrot = {matnew[14:15] , matnew[0:13] }; // Rotating to the right by 2-bits
assign out = inp ^ matrot ;

endmodule
