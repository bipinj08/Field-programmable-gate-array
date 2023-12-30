`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/16/2023 11:44:59 AM
// Design Name: 
// Module Name: perm
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


module perm ( inp , out ) ;
input [0:63] inp ; // 4-bit input
output [0:63] out ; // 4-bit output
// Permutation
assign out = { inp[3],inp[8],inp[13],inp[18],
inp[23],inp[28],inp[33],inp[38],
inp[43],inp[48],inp[53],inp[58],
inp[63],inp[4],inp[9],inp[14],
inp[19],inp[24],inp[29],inp[34],
inp[39],inp[44],inp[49],inp[54],
inp[59],inp[0],inp[5],inp[10],
inp[15],inp[20],inp[25],inp[30],
inp[35],inp[40],inp[45],inp[50],
inp[55],inp[60],inp[1],inp[6],
inp[11],inp[16],inp[21],inp[26],
inp[31],inp[36],inp[41],inp[46],
inp[51],inp[56],inp[61],inp[2],
inp[7],inp[12],inp[17],inp[22],
inp[27],inp[32],inp[37],inp[42],
inp[47],inp[52],inp[57],inp[62] } ;
endmodule
