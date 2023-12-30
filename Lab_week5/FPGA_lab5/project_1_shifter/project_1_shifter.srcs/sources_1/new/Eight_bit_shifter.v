`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2023 01:43:32 PM
// Design Name: 
// Module Name: Eight_bit_shifter
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


module Eight_bit_shifter(
    input [7:0] sw,
    input F,
    input [3:0] btn,
    
    output  reg [11:0]led
    );
 

    
 always @(sw[7:0], btn[3:0])
 begin 
    if (btn[2] == 1) //btn[2]==0 means its rotate shift
        begin
        if (btn[3] == 0)  //btn[3] ==0 means its moving right shift
        
            begin
            if (btn[1:0] == 2'b00)
                led <= {sw[6:0], sw[7]};
            else if (btn[1:0] == 2'b01)
                led <= {sw[5:0], sw[7:6]};
            else if (btn[1:0] == 2'b10)
                led <= {sw[4:0], sw[7:5]};
            else 
                led <= {sw[4:0], sw[7:5]};
            end
            
        else
            //btn[3] ==1; MEANING LEFT SHIFT
            begin
                if (btn[1:0] == 2'b00)
                led <= {sw[0], sw[7:1]};
            else if (btn[1:0] == 2'b01)
                led <= {sw[1:0], sw[7:2]};
            else if (btn[1:0] == 2'b10)
                led <= {sw[2:0], sw[7:3]};
            else 
                led <= {sw[3:0], sw[7:4]};
            end
        end
        
    else //btn[2] ==0, meaning its logical shift 
        begin
            if (btn[3] == 0)  //btn[3] ==0 means its moving right shift
        
            begin
            if (btn[1:0] == 2'b00)
                led <= {sw[6:0], F};
            else if (btn[1:0] == 2'b01)
                led <= {sw[5:0], F ,F};
            else if (btn[1:0] == 2'b10)
                led <= {sw[4:0], F, F, F};
            else 
                led <= {sw[3:0], F,F,F,F};
            end
            
        else
            //btn[3] ==1; MEANING LEFT SHIFT
            begin
            if (btn[1:0] == 2'b00)
                led <= {F, sw[7:1]};
            else if (btn[1:0] == 2'b01)
                led <= {F, F, sw[7:2]};
            else if (btn[1:0] == 2'b10)
                led <= {F,F,F, sw[7:3]};
            else 
                led <= {F,F,F,F, sw[7:4]};
            end
        end
     end
         
            
                
endmodule
