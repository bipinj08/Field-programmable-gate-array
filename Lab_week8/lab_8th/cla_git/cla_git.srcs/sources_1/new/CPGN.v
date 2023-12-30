`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2023 10:10:47 AM
// Design Name: 
// Module Name: CPGN
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


module CPGN(


input [3:0] g,
    input [3:0] p,
    output [3:0] c
);
    assign c[0] = p[0];
    assign c[1] = g[1] | (p[1] & g[0]);
    assign c[2] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]);
    assign c[3] = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]);
endmodule
    


