`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2023 10:09:18 AM
// Design Name: 
// Module Name: seven
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

module seven(

input [3:0] seg_an,

output reg [6:0] seg_cat
 );

    
    always @(*) 
    begin
    case (seg_an)
 
 4'd0: seg_cat = 7'b1000000;
 4'd1: seg_cat = 7'b1111001;
 4'd2: seg_cat = 7'b0100100;
 4'd3: seg_cat = 7'b0110000;
 4'd4: seg_cat = 7'b0011001;
 4'd5: seg_cat = 7'b0010010;
 4'd6: seg_cat = 7'b0000010;
 4'd7: seg_cat = 7'b1111000;
 4'd8: seg_cat = 7'b0000000	;
 4'd9: seg_cat = 7'b0010000 ;
// 4'd10:seg_cat =7'b0001000;
// 4'd11: seg_cat =7'b0000011;
// 4'd12: seg_cat=7'b1000110;
// 4'd13:  seg_cat = 7'b0100001;
// 4'd14:seg_cat =7'b0000110;
// 4'd15: seg_cat = 7'b0001110;
 endcase
 end
 endmodule