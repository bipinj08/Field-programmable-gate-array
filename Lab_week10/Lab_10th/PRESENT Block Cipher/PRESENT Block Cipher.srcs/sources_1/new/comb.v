`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/16/2023 11:46:32 AM
// Design Name: 
// Module Name: comb
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


module comb ( sp , kp  , cnt , r0 , sn , kn ) ;
input [0:63] sp ; // State in
input [0:127] kp ; // Key in
input [0:4] cnt ; // Counter
input r0 ; // Round-0 flag
output [0:63] sn ; // State out
output [0:127] kn ; // Key out
wire [0:63] ssb ; // Sbox output
wire [0:63] ssp ; // Permutation output
wire [0:63] ssl;  //pxormatlayer output
wire [0:63] sss ; // Select sbox or permutation
wire [0:127] kkr ; // Key schedule output
wire [0:127] kks ; // Select initial key or schedule output
wire [0:23] mat ;

assign mat = sp[40:63] ;  // Matriculation input
// Sboxes on sp
sboxes sb ( .a(sp) , .y(ssb) ) ;
// Permutation on ssb
perm pm ( .inp(ssb) , .out(ssp) ) ;

pxormatlayer pl (.inp(ssp) , .mat(mat) , .out(ssl) );
// select sout
assign sss = r0 ? sp : ssl;
// Kround
kr kmod ( .kinp(kp) , .cnt(cnt) , .kout(kkr) ) ;
// Select kout
assign kks = r0 ? kp : kkr ;
// Sout (sn)
assign sn = sss ^ kks[0:127] ;
// Kout (kn)
assign kn = kks ;
endmodule