`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/02/2023 01:08:39 PM
// Design Name: 
// Module Name: cmp
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


module cmp(
input [3:0] A,  //from sw[0:3]
input [3:0] B,  //from sw[12:15]
output LT_O,
output EQ_O,
output GT_O
    );
wire [3:0] GT_int;
wire [3:0] EQ_int;
wire [3:0] LT_int;
cmp_bitslice slice_0 (
.A(A[0]),
.B(B[0]),
.LT_I(1'b0),
.EQ_I(1'b1),
.GT_I(1'b0),
.LT_O(LT_int[0]),
.EQ_O(EQ_int[0]),
.GT_O(GT_int[0])
    );
cmp_bitslice slice_1 (
.A(A[1]),
.B(B[1]),
.LT_I(LT_int[0]),
.EQ_I(EQ_int[0]),
.GT_I(GT_int[0]),
.LT_O(LT_int[1]),
.EQ_O(EQ_int[1]),
.GT_O(GT_int[1])
    );
cmp_bitslice slice_2 (
.A(A[2]),
.B(B[2]),
.LT_I(LT_int[1]),
.EQ_I(EQ_int[1]),
.GT_I(GT_int[1]),
.LT_O(LT_int[2]),
.EQ_O(EQ_int[2]),
.GT_O(GT_int[2])
    );
cmp_bitslice slice_3 (
.A(A[3]),
.B(B[3]),
.LT_I(LT_int[2]),
.EQ_I(EQ_int[2]),
.GT_I(GT_int[2]),
.LT_O(LT_int[3]),
.EQ_O(EQ_int[3]),
.GT_O(GT_int[3])
    );
assign LT_O = LT_int[3]; //led[2]
assign EQ_O = EQ_int[3]; //led[1]
assign GT_O = GT_int[3]; //led[0]
endmodule