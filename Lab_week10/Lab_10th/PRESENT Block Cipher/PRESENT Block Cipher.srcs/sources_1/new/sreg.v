`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/16/2023 11:36:30 AM
// Design Name: 
// Module Name: sreg
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


module sreg ( sta , act , inp , nxt , ck , rn , out ) ;
input [0:63] inp ; // State initial data
input [0:63] nxt ; // Next value of state
input act ; // Active signal
input sta ; // Start signal
input ck ; // Rising edge clock
input rn ; // Active low reset
output [0:63] out ; // State output
reg [0:63] out ; // State output
always @ ( posedge ck or negedge rn )
if ( !rn ) out <= 0 ;
else if ( sta ) out <= inp ;
else if ( act ) out <= nxt ;
endmodule
