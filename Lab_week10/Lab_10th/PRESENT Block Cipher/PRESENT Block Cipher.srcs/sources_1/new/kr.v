`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/16/2023 11:45:47 AM
// Design Name: 
// Module Name: kr
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
module kr ( kinp , cnt , kout ) ;
input [0:127] kinp ;
input [0:4] cnt ;
output [0:127] kout ;
wire [0:127] krot ;
// Rotate
assign krot = { kinp[8:127] , kinp[0:7] } ; //rotated left by 8 bits
// Sbox1
s1box m1 ( .a(krot[66:69]) , .y(kout[66:69]) ) ; //s_1[x] box
// Sbox2
sbox m00 ( .a(krot[76:79]) , .y(kout[76:79]) ) ; //s_2[x] box
// XOR
assign kout[16:19] = cnt ^ krot[16:19] ;
// Assign rest
assign kout[0:15] = krot[0:15] ;
assign kout[20:65] = krot[20:65] ;
assign kout[70:75] = krot[70:75] ;
//assign kout[20:75] = krot[20:75] ; //if i use only s_2[x] box then i include this line for the unchanged
                                    // bits commenting out just above one line
assign kout[80:127] = krot[80:127] ;

endmodule