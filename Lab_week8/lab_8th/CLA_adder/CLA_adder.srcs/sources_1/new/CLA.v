`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2023 09:12:13 AM
// Design Name: 
// Module Name: CLA
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

module CLA(A, B, Cin, Sum, Cout);
  input [3:0] A, B;
  input Cin;
  output [3:0] Sum;
  output Cout;

  wire C0, C1, C2, C3;

  BitSlice bs0(A[0], B[0], Cin, Sum[0], C0);
  BitSlice bs1(A[1], B[1], C0, Sum[1], C1);
  BitSlice bs2(A[2], B[2], C1, Sum[2], C2);
  BitSlice bs3(A[3], B[3], C2, Sum[3], C3);

  CPGN cpgn(C0, C1, C2, C3, Cout);
endmodule
