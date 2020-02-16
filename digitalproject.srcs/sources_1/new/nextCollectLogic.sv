`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.12.2018 14:34:33
// Design Name: 
// Module Name: nextCollectLogic
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


module nextCollectLogic(
    input reg[1:0] state,
    input reg[11:0] passanger,
    input reg[1:0] direction,
    input reg[8:0] collect,
    output reg[8:0] nextCollect
    );
    
    //assign nextCollect = collect;
    
    always @(*) begin
        if( state == 2'b00 && collect == 9'b000000000 )begin
            if( 8*passanger[11] + 4*passanger[10] + 2*passanger[9] + passanger[8] > 3 ) begin
                nextCollect <= 9'b000000000;
                nextCollect[8:6] <= 3'b100;
            end
            else if( 8*passanger[11] + 4*passanger[10] + 2*passanger[9] + passanger[8] > 0 ) begin
                nextCollect <= 9'b000000000;
                nextCollect[7] <= passanger[9];
                nextCollect[6] <= passanger[8];
                if( 2*passanger[5] + passanger[4] + 2*passanger[9] + passanger[8] < 5 ) begin
                    nextCollect[4] <= passanger[5];
                    nextCollect[3] <= passanger[4];
                    if( 2*passanger[9] + passanger[8] + 2*passanger[5] + passanger[4] + 2*passanger[1] + passanger[0] < 5 ) begin
                        nextCollect[1] <= passanger[1];
                        nextCollect[0] <= passanger[0];
                    end
                end
                else if( 2*passanger[1] + passanger[0] + 2*passanger[9] + passanger[8] < 5 ) begin
                    nextCollect[1] <= passanger[1];
                    nextCollect[0] <= passanger[0];
                end
                else if( 2*passanger[1] + passanger[0] + 2*passanger[5] + passanger[4] > 4 && 2*passanger[1]+passanger[0] + 2*passanger[5]+passanger[4] + 2*passanger[9] + passanger[8] < 9 ) begin
                    if( passanger[9:8] == 2'b01) begin
                        nextCollect[4] <= 1;
                        nextCollect[3] <= 1;
                    end
                    else if( passanger[9:8] == 2'b10 ) begin
                        nextCollect[4] <= 1;
                    end
                    else if( passanger[9:8] == 2'b11 ) begin
                        nextCollect[3] <= 1;
                    end
                end
            end
            else if( 8*passanger[7] + 4*passanger[6] + 2*passanger[5] + passanger[4] > 3 ) begin
                nextCollect <= 9'b000000000;
                nextCollect[5:3] <= 3'b100;
            end
            else if( 8*passanger[7] + 4*passanger[6] + 2*passanger[5] + passanger[4] > 0 ) begin
                nextCollect <= 9'b000000000;
                nextCollect[4] <= passanger[5];
                nextCollect[3] <= passanger[4];
                if( 2*passanger[5] + passanger[4] + 2*passanger[1] + passanger[0] < 5 ) begin
                    nextCollect[1] <= passanger[1];
                    nextCollect[0] <= passanger[0];
                end
            end
            else if( 8*passanger[3] + 4*passanger[2] + 2*passanger[1] + passanger[0] > 3 ) begin
                nextCollect <= 9'b000000000;
                nextCollect[2:0] <= 3'b100;
            end
            else if( 8*passanger[3] + 4*passanger[2] + 2*passanger[1] + passanger[0] > 0 ) begin
                nextCollect <= 9'b000000000;
                nextCollect[1] <= passanger[1];
                nextCollect[0] <= passanger[0];
            end 
        end
        else begin
            if( direction == 2'b00 ) begin
                if( state == 2'b00 ) begin
                    nextCollect <= collect;
                end
                else if( state == 2'b01 ) begin
                    nextCollect <= collect;
                    nextCollect[2:0] <= 3'b000;
                end
                else if( state == 2'b10 ) begin
                    nextCollect <= collect;
                    nextCollect[5:3] <= 3'b000;
                end
                else if( state == 2'b11 ) begin
                    nextCollect <= collect;
                    nextCollect[8:6] <= 3'b000;
                end
            end
            else begin
                nextCollect <= collect;
            end
        end
    end
    
endmodule
