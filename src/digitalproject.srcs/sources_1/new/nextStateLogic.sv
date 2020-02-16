`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.12.2018 14:34:32
// Design Name: 
// Module Name: nextStateLogic
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


module nextStateLogic(
    input reg [1:0]direction,
    input reg [1:0]state,
    output reg [1:0]nextState
    );
    
    always @(*) begin
        if(direction == 2'b00) begin
            nextState <= state;
        end
        else if( direction == 2'b01 ) begin
            nextState <= state + 1;
        end
        else begin
            nextState <= state - 1;
        end
    end
    
endmodule
