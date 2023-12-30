`timescale 1ns / 1ps

module pipo(
  input  clk,               
  input  sel,              
  input  [7:0] sw,       
  output [7:0] led      
            );
  
reg [7:0] register;
wire [7:0] mux_out;
  
  // PIPO 
  always @(posedge clk) begin   
            register <= sw;
   end
   
  // 2:1 Mux
 assign mux_out = sel ? register : sw;   
 assign led = mux_out;
  
endmodule