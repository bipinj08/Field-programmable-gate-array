`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/05/2023 10:08:20 AM
// Design Name: 
// Module Name: wrapper
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

module wrapper(


input [7:0] sw,
input clk, 
output [3:0] seg_an,
output [6:0] seg_cat


    );
    
    wire [3:0] number;
    wire [3:0] gen; 
    wire [3:0] pass;
    wire [3:0] cin;
    
    assign cin[0]=0;
    
    bitslice bitslice_1(
    .A(sw[0]),
     .B(sw[4]),
    .Cin(cin[0]),
     .G(gen[0]),
      .P(pass[0]), 
       .S(number[0])
  
    );
  
    assign cin[1] = gen[0] | (pass[0] & cin[0]);

bitslice bit2(

.A(sw[1]), 
.B(sw[5]), 
.Cin(cin[1]), 
.G(gen[1]),
 .P(pass[1]),
  .S(number[1])
  );

assign cin[2] = gen[1] | (pass[1] & gen[0]) | (pass[1] & pass[0] & cin[0]);

bitslice bit3(
.A(sw[2]), 
.B(sw[6]), 
.Cin(cin[2]), 
.G(gen[2]),
 .P(pass[2]), 
 .S(number[2])
 );

assign cin[3] = gen[2] | (pass[2] & gen[1]) | (pass[2] & pass[1] & gen[0]) |(pass[2] & pass[1] & pass[0] & cin[0]);

bitslice bit4(
.A(sw[3]),
 .B(sw[7]), 
 .Cin(cin[3]),
  .G(gen[3]),
   .P(pass[3]),
    .S(number[3])
    );
    wire [3:0] sdata;
wire [3:0] qdata;

CPGN input_cpgn(

.g(g),
 .p(p),
  .c(c)
  
  );
seven seven_input(

.one(one),
 .ten(ten), 
 .hunnid(4'd0),
  .thousand(4'd0), 
  .clk(clk), 
  .seg_an(seg_an), 
  .seg_cat(seg_cat)
  );    
    
endmodule