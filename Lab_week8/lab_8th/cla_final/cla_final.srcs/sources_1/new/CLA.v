`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2023 10:29:44 AM
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


module CLA(
    output [3:0] S, //sw[
    output reg [6:0] seven_seg1,
    output reg [6:0] seven_seg2,
    output Cout,PG,GG, //[
    input [3:0] A,B, //from sw[0:7]
    input Cin 
    );
    wire [3:0] G,P,C; 
    wire [4:0] temp;
 
    assign G = A & B; //Generate
    assign P = A ^ B; //Propagate
    assign C[0] = Cin;
    assign C[1] = G[0] | (P[0] & C[0]);
    assign C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & C[0]);
    assign C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) |             (P[2] & P[1] & P[0] & C[0]);
    assign Cout = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) |(P[3] & P[2] & P[1] & P[0] & C[0]);
    assign S = P ^ C;
    
    assign PG = P[3] & P[2] & P[1] & P[0];
    assign GG = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]);
    
    assign temp = A + B;
    
    always @(S) 
    case (temp)
    0: begin seven_seg1 = 7'b1000000; seven_seg2 = 7'b1000000; end
    1: begin seven_seg1 = 7'b1111001; seven_seg2 = 7'b1000000; end
    2: begin seven_seg1 = 7'b0100100; seven_seg2 = 7'b1000000; end
    3: begin seven_seg1 = 7'b0110000; seven_seg2 = 7'b1000000; end
    4: begin seven_seg1 = 7'b0011001; seven_seg2 = 7'b1000000; end
    5: begin seven_seg1 = 7'b0010010; seven_seg2 = 7'b1000000; end
    6: begin seven_seg1 = 7'b0000010; seven_seg2 = 7'b1000000; end
    7: begin seven_seg1 = 7'b1111000; seven_seg2 = 7'b1000000; end
    8: begin seven_seg1 = 7'b0000000; seven_seg2 = 7'b1000000; end
    9: begin seven_seg1 = 7'b1110011; seven_seg2 = 7'b1000000; end
    10: begin seven_seg1 = 7'b1000000; seven_seg2 = 7'b1111001; end
    11: begin seven_seg1 = 7'b1111001; seven_seg2 = 7'b1111001; end
    12: begin seven_seg1 = 7'b0100100; seven_seg2 = 7'b1111001; end
    13: begin seven_seg1 = 7'b0110000; seven_seg2 = 7'b1111001; end
    14: begin seven_seg1 = 7'b0011001; seven_seg2 = 7'b1111001; end
    15: begin seven_seg1 = 7'b0010010; seven_seg2 = 7'b1111001; end
    16: begin seven_seg1 = 7'b0000010; seven_seg2 = 7'b1111001; end
    17: begin seven_seg1 = 7'b1111000; seven_seg2 = 7'b1111001; end
    18: begin seven_seg1 = 7'b0000000; seven_seg2 = 7'b1111001; end
    19: begin seven_seg1 = 7'b1110011; seven_seg2 = 7'b1111001; end
    20: begin seven_seg1 = 7'b1000000; seven_seg2 = 7'b0100100; end
    21: begin seven_seg1 = 7'b1111001; seven_seg2 = 7'b0100100; end
    22: begin seven_seg1 = 7'b0100100; seven_seg2 = 7'b0100100; end
    23: begin seven_seg1 = 7'b0110000; seven_seg2 = 7'b0100100; end
    24: begin seven_seg1 = 7'b0011001; seven_seg2 = 7'b0100100; end
    25: begin seven_seg1 = 7'b0010010; seven_seg2 = 7'b0100100; end
    26: begin seven_seg1 = 7'b0000010; seven_seg2 = 7'b0100100; end
    27: begin seven_seg1 = 7'b1111000; seven_seg2 = 7'b0100100; end
    28: begin seven_seg1 = 7'b0000000; seven_seg2 = 7'b0100100; end
    29: begin seven_seg1 = 7'b1110011; seven_seg2 = 7'b0100100; end
    30: begin seven_seg1 = 7'b1000000; seven_seg2 = 7'b0110000; end
    default: begin seven_seg1 = 7'b1000000; seven_seg2 = 7'b1000000; end
    endcase
    
endmodule
