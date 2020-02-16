`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.12.2018 14:34:33
// Design Name: 
// Module Name: nextElevatorLogic
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


module nextElevatorLogic(
    input reg[1:0] state,
    input reg[8:0] collect,
    input reg[1:0] direction,
    input reg[2:0] elevator,
    output reg[2:0] nextElevator
    );
    
    //logic [2:0] p1,p2,p3;
        
    //assign p3 = collect[8:6];
    //assign p2 = collect[5:3];
    //assign p1 = collect[2:0];
    
    always @(*) begin
        if( direction == 2'b00 ) begin
            if( state == 2'b00) begin
                nextElevator <= 3'b000;
            end
            if( state == 2'b01) begin
                nextElevator <= elevator + collect[2:0];
            end
            else if( state == 2'b10) begin
                nextElevator <= elevator + collect[5:3];
            end
            else if( state == 2'b11) begin
                nextElevator <= elevator + collect[8:6];
            end
        end
        else begin
            nextElevator <= elevator;
        end
    end
    
endmodule
