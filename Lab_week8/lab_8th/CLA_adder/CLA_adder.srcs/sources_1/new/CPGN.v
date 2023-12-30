`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2023 09:11:32 AM
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

module CPGN(A, B, C, D, Cout);
  input A, B, C, D;
  output Cout;

  wire P0, G0, P1, G1, P2, G2, P3, G3;

  assign P0 = A ^ B;
  assign G0 = A & B;
  assign P1 = P0 ^ C;
  assign G1 = P0 & C;
  assign P2 = P1 ^ D;
  assign G2 = P1 & D;
  assign Cout = G0 | (G1 & P0) | (G2 & P1) | (G3 & P2);
endmodule

