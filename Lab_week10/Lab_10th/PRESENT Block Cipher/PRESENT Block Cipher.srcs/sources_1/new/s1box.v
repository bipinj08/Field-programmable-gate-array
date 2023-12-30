`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/21/2023 09:46:59 PM
// Design Name: 
// Module Name: s1box
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

// for the sbox 1 which need to bit generate Round keys
module s1box( a , y ) ; 
input [0:3] a ; // 4-bit input
output [0:3] y ; // 4-bit yput
reg [0:3] y ; // 4-bit yput
// Lookup table
always @ ( * )
case ( a )
4'h0 : y = 4'h3 ;
4'h1 : y = 4'h8 ;
4'h2 : y = 4'hD ;
4'h3 : y = 4'h2 ;
4'h4 : y = 4'h7 ;
4'h5 : y = 4'hC ;
4'h6 : y = 4'h1 ;
4'h7 : y = 4'h6 ;
4'h8 : y = 4'hB ;
4'h9 : y = 4'h0 ;
4'hA : y = 4'h5 ;
4'hB : y = 4'hA ;
4'hC : y = 4'hF ;
4'hD : y = 4'h4 ;
4'hE : y = 4'h9;
4'hF : y = 4'hE ;
endcase
endmodule