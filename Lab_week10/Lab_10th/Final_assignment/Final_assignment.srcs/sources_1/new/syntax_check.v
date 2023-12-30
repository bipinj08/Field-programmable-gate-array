`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/11/2023 01:57:10 PM
// Design Name: 
// Module Name: syntax_check
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

module Exm_2(A, B, C, D, F); // Changed "Exm-2" to "Exm_2" as module names can't contain hyphens
    input A, C;
    output D, F, B; // Moved the output declaration to its own line and added a semicolon

    assign B = A & C; // Changed "==" to "=" for assignment
    assign {D, B} = ~C;    // Used the bitwise negation operator "~" to invert B and assign it to D
                          
    assign F = B | C; // Used the bitwise OR operator "|" to perform the OR operation and assign it to F

endmodule
