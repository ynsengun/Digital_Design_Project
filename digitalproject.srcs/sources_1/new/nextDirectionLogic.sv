`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.12.2018 14:34:33
// Design Name: 
// Module Name: nextDirectionLogic
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


module nextDirectionLogic(
    input reg[1:0] state,
    input reg[8:0] collect,
    inout reg[11:0] passanger,
    input reg[1:0] direction,
    output reg[1:0] nextDirection
    );
    
    //logic [2:0] p1,p2,p3;
    
    //assign p3 = collect[8:6];
    //assign p2 = collect[5:3];
    //assign p1 = collect[2:0];
    
    always @(*) begin
    
        if( direction == 2'b01 ) begin
            if( (state + 1) == 2'b01 ) begin
                if( collect[2:0] != 3'b000 ) begin
                    nextDirection <= 2'b00;
                end
                else begin
                    nextDirection <= 2'b01;
                end
            end
            else if( (state + 1) == 2'b10 ) begin
                if( collect[5:3] != 3'b000 ) begin
                    nextDirection <= 2'b00;
                end
                else begin
                    nextDirection <= 2'b01;
                end
            end
            else if( (state + 1) == 2'b11 ) begin
                nextDirection <= 2'b00;
            end
        end
        
        else if( direction == 2'b10 ) begin
            if( (state - 1) == 2'b00 ) begin
                nextDirection <= 2'b00;
            end
            else begin
                nextDirection <= 2'b10;
            end
        end
        
        else if( direction == 2'b00 ) begin
            if( state == 2'b00 ) begin
                if( passanger == 12'b000000000 ) begin
                    nextDirection <= 2'b00;
                end
                else begin
                    nextDirection <= 2'b01;
                end
            end
            else if( state == 2'b01 ) begin
                if( collect[8:3] != 6'b000000 ) begin
                    nextDirection <= 2'b01;
                end
                else begin
                    nextDirection <= 2'b10;
                end
            end
            else if( state == 2'b10 ) begin
                if( collect[8:6] != 3'b000 ) begin
                    nextDirection <= 2'b01;
                end
                else begin
                    nextDirection <= 2'b10;
                end
            end
            else if( state == 2'b11 ) begin
                nextDirection <= 2'b10;
            end
        end
        
        
    end
    
endmodule
