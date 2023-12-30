
// simulation file
`timescale 1ns / 1ps
module multiplexorb_tb;
// inputs
reg [15:0] sw;
reg [1:0] btn;
// outputs
wire [3:0] led;
// connect test signals to our mux
mux_4_2 CUT (
.sw(sw),
.btn(btn),
.led(led)
);
initial begin

btn[1:0] = 2'b00;
sw[3:0] = 4'h1;
sw[7:4] = 4'h3;
sw[11:8] = 4'hD;
sw[15:12] = 4'hF;
#10; // wait 10ns

btn[1:0] = 2'b01;
sw[3:0] = 4'h1;
sw[7:4] = 4'h3;
sw[11:8] = 4'hD;
sw[15:12] = 4'hF;
#10;

btn[1:0] = 2'b10;
sw[3:0] = 4'h1;
sw[7:4] = 4'h3;
sw[11:8] = 4'hD;
sw[15:12] = 4'hF;
#10;

btn[1:0] = 2'b11;
sw[3:0] = 4'h1;
sw[7:4] = 4'h3;
sw[11:8] = 4'hD;
sw[15:12] = 4'hF;
#10;
$finish;
end
endmodule