`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/26/2023 12:36:41 PM
// Design Name: 
// Module Name: bcd_counter_tb
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

module bcd_counter_tb;
    reg clk;
    wire [3:0] bcd;
    wire [6:0] seg;

    bcd_counter dut (
        .clk(clk),
        .bcd(bcd),
        .seg(seg)
    );

    initial begin
        clk = 0;
        #5;  // Initial delay before starting the clock

        // Reset
        #10; // Hold the reset for 10 time units
        #10; // Release the reset

        // Simulate 20 clock cycles
        repeat (20) begin
            #10; // Toggle the clock every 10 time units
        end

        $finish; // End the simulation
    end

    always @(posedge clk) begin
        $display("BCD: %d, SEG: %b", bcd, seg);
    end
endmodule
