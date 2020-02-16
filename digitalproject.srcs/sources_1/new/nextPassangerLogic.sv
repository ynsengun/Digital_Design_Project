`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.12.2018 14:34:33
// Design Name: 
// Module Name: nextPassangerLogic
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


module nextPassangerLogic(
    input reg[1:0] state,
    input reg[8:0] collect,
    input reg[1:0] direction,
    input reg[11:0] passanger,
    output reg[11:0] nextPassanger
    );
    
    //logic [2:0] p1,p2,p3;
            
    //assign p3 = collect[8:6];
    //assign p2 = collect[5:3];
    //assign p1 = collect[2:0];
    //assign nextPassanger = passanger;
    
    logic [3:0]tmp;
    
    always @(*) begin
        if( direction == 2'b00 ) begin
            if( state == 2'b00 ) begin
                nextPassanger <= passanger;
            end
            else if( state == 2'b01 ) begin
                nextPassanger <= passanger;
                tmp[2:0] <= collect[2:0];
                tmp[3] <= 1'b0;
                nextPassanger[3:0] <= passanger[3:0] - tmp;
            end
            else if( state == 2'b10 ) begin
                nextPassanger <= passanger;
                tmp[2:0] <= collect[5:3];
                tmp[3] <= 1'b0;
                nextPassanger[7:4] <= passanger[7:4] - tmp;
            end
            else if( state == 2'b11 ) begin
                nextPassanger <= passanger;
                tmp[2:0] <= collect[8:6];
                tmp[3] <= 1'b0;
                nextPassanger[11:8] <= passanger[11:8] - tmp;
            end
        end
        else begin
            nextPassanger <= passanger;
        end
    end
    
endmodule
