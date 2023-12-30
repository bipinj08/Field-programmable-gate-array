`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/16/2023 11:37:22 AM
// Design Name: 
// Module Name: kreg
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


module kreg ( sta , act , inp , nxt , ck , rn , out ) ;
input [0:127] inp ; // Key initial data
input [0:127] nxt ; // Next value of key
input act ; // Active signal
input sta ; // Start signal
input ck ; // Rising edge clock
input rn ; // Active low reset
output [0:127] out ; // Key output
reg [0:127] out ; // Key output
always @ ( posedge ck or negedge rn )
if ( !rn ) out <= 0 ;
else if ( sta ) out <= inp ;
else if ( act ) out <= nxt ;
endmodule