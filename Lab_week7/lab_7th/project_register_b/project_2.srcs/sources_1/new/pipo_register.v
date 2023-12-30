`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

// 
//////////////////////////////////////////////////////////////////////////////////


module pipo_register(
  input wire clk,
  input wire [1:0] btn,  //btn[0] is clock input and btn[1] is recall as sel[1] of mux
  input wire [7:0] sw,
  output wire [7:0] led
);

  reg [7:0] register;
  reg [7:0] mux_output;

  // PIPO Register
  always @(posedge clk) begin
    if (btn[0]) begin  //btn[0] is clock input
      register <= sw;
    end
  end

  // 2:1 Mux
  always @(*) begin
    if (btn[1]) begin
      mux_output = register;
    end
    else begin
      mux_output = sw;
    end
  end

  // LED Connections
  assign led = mux_output;

endmodule
