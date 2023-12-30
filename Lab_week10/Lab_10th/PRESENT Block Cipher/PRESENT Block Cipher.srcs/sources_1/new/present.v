`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/16/2023 12:05:43 PM
// Design Name: 
// Module Name: present
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

module present ( sta , inp , key , ck , rn , rdy , out ) ;
input sta ; // Start signal
input [0:63] inp ; // Data input
input [0:127] key ; // Data input
input ck ; // Rising edge clock
input rn ; // Active low reset
output rdy ; // Ready flag
output [0:63] out ; // Ciphertext
wire r0 ; // Round-0 flag
wire act ; // Active signal
wire [0:4] cnt ; // Counter
wire [0:63] sout ; // State output
wire [0:63] snxt ; // State next value
wire [0:127] kout ; // Key schedule output
wire [0:127] knxt ; // Key schedule next value
// Control unit
control u_control (
.sta ( sta ) ,
.ck ( ck ) ,
.rn ( rn ) ,
.r0 ( r0 ) ,
.cnt ( cnt ) ,
.act ( act ) ,
.rdy ( rdy )
) ;
// State registers
sreg u_sreg (
.sta ( sta ) ,
.act ( act ) ,
.inp ( inp ) ,
.nxt ( snxt ) ,
.ck ( ck ) ,
.rn ( rn ) ,
.out ( sout )
) ;
// Key registers
kreg u_kreg (
.sta ( sta ) ,
.act ( act ) ,
.inp ( key ) ,
.nxt ( knxt ) ,
.ck ( ck ) ,
.rn ( rn ) ,
.out ( kout )
) ;
// Combinational block (round function and key update)
comb u_comb (
.sp ( sout ) ,
.kp ( kout ) ,
.cnt ( cnt ) ,
.r0 ( r0 ) ,
.sn ( snxt ) ,
.kn ( knxt )
) ;
// Assign last state output as the final output
assign out = sout ;
endmodule
