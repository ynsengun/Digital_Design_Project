`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.12.2018 19:34:53
// Design Name: 
// Module Name: outputLogic
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


module outputLogic(
    input reg[1:0] state,
    input reg[2:0] elevator,
    input reg[11:0] passanger,
    output logic[0:7][7:0] image_red,
    output logic[0:7][7:0] image_blue
    );
    
    //elevator
    always @(*) begin
        if(state == 2'b00) begin
            image_blue[0] = 8'b00000000;
            image_blue[1] = 8'b00000000;
            image_blue[2] = 8'b00000000;
            image_blue[3] = 8'b00000000;
            image_blue[4] = 8'b00000000;
            image_blue[5] = 8'b00000000;
            image_blue[6] = 8'b00000000;
            image_blue[7] = 8'b00000000;
            image_red[0] = 8'b00000000;
            image_red[1] = 8'b00000000;
            //image_blue[2][0]=0; image_blue[2][1]=0; image_blue[3][0]=0; image_blue[3][1]=0; image_blue[4][0]=0; image_blue[4][1]=0;
            //image_blue[5][0]=0; image_blue[5][1]=0; image_blue[6][0]=0; image_blue[6][1]=0; image_blue[7][0]=0; image_blue[7][1]=0;
            image_red[2][0]=0; image_red[2][1]=0; image_red[3][0]=0; image_red[3][1]=0; image_red[4][0]=0; image_red[4][1]=0;
            image_red[5][0]=0; image_red[5][1]=0; image_red[6][0]=0; image_red[6][1]=0; image_red[7][0]=0; image_red[7][1]=0; 
            if( elevator == 3'b000) begin
                image_blue[0][0] = 1;
                image_blue[1][0] = 1;
                image_blue[0][1] = 1;
                image_blue[1][1] = 1;
            end
            else if( elevator == 3'b001) begin
                image_blue[0][0] = 1;
                image_blue[1][0] = 1;
                image_red[0][1] = 1;
                image_blue[1][1] = 1;
            end
            else if( elevator == 3'b010) begin
                image_blue[0][0] = 1;
                image_blue[1][0] = 1;
                image_red[0][1] = 1;
                image_red[1][1] = 1;
            end
            else if( elevator == 3'b011) begin
                image_red[0][0] = 1;
                image_blue[1][0] = 1;
                image_red[0][1] = 1;
                image_red[1][1] = 1;
            end
            else if( elevator == 3'b100) begin
                image_red[0][0] = 1;
                image_red[1][0] = 1;
                image_red[0][1] = 1;
                image_red[1][1] = 1;
            end
        end
        else if( state == 2'b01 ) begin
            image_blue[0] = 8'b00000000;
            image_blue[1] = 8'b00000000;
            image_red[0] = 8'b00000000;
            image_red[1] = 8'b00000000;
            image_blue[2][0]=0; image_blue[2][1]=0; image_blue[3][0]=0; image_blue[3][1]=0; image_blue[4][0]=0; image_blue[4][1]=0;
            image_blue[5][0]=0; image_blue[5][1]=0; image_blue[6][0]=0; image_blue[6][1]=0; image_blue[7][0]=0; image_blue[7][1]=0;
            image_red[2][0]=0; image_red[2][1]=0; image_red[3][0]=0; image_red[3][1]=0; image_red[4][0]=0; image_red[4][1]=0;
            image_red[5][0]=0; image_red[5][1]=0; image_red[6][0]=0; image_red[6][1]=0; image_red[7][0]=0; image_red[7][1]=0; 
            if( elevator == 3'b000) begin
                image_blue[0][2] = 1;
                image_blue[1][2] = 1;
                image_blue[0][3] = 1;
                image_blue[1][3] = 1;
            end
            else if( elevator == 3'b001) begin
                image_blue[0][2] = 1;
                image_blue[1][2] = 1;
                image_red[0][3] = 1;
                image_blue[1][3] = 1;
            end
            else if( elevator == 3'b010) begin
                image_blue[0][2] = 1;
                image_blue[1][2] = 1;
                image_red[0][3] = 1;
                image_red[1][3] = 1;
            end
            else if( elevator == 3'b011) begin
                image_red[0][2] = 1;
                image_blue[1][2] = 1;
                image_red[0][3] = 1;
                image_red[1][3] = 1;
            end
            else if( elevator == 3'b100) begin
                image_red[0][2] = 1;
                image_red[1][2] = 1;
                image_red[0][3] = 1;
                image_red[1][3] = 1;
            end
        end
        else if( state == 2'b10 ) begin
            image_blue[0] = 8'b00000000;
            image_blue[1] = 8'b00000000;
            image_red[0] = 8'b00000000;
            image_red[1] = 8'b00000000;
            image_blue[2][0]=0; image_blue[2][1]=0; image_blue[3][0]=0; image_blue[3][1]=0; image_blue[4][0]=0; image_blue[4][1]=0;
            image_blue[5][0]=0; image_blue[5][1]=0; image_blue[6][0]=0; image_blue[6][1]=0; image_blue[7][0]=0; image_blue[7][1]=0;
            image_red[2][0]=0; image_red[2][1]=0; image_red[3][0]=0; image_red[3][1]=0; image_red[4][0]=0; image_red[4][1]=0;
            image_red[5][0]=0; image_red[5][1]=0; image_red[6][0]=0; image_red[6][1]=0; image_red[7][0]=0; image_red[7][1]=0; 
            if( elevator == 3'b000) begin
                image_blue[0][4] = 1;
                image_blue[1][4] = 1;
                image_blue[0][5] = 1;
                image_blue[1][5] = 1;
            end
            else if( elevator == 3'b001) begin
                image_blue[0][4] = 1;
                image_blue[1][4] = 1;
                image_red[0][5] = 1;
                image_blue[1][5] = 1;
            end
            else if( elevator == 3'b010) begin
                image_blue[0][4] = 1;
                image_blue[1][4] = 1;
                image_red[0][5] = 1;
                image_red[1][5] = 1;
            end
            else if( elevator == 3'b011) begin
                image_red[0][4] = 1;
                image_blue[1][4] = 1;
                image_red[0][5] = 1;
                image_red[1][5] = 1;
            end
            else if( elevator == 3'b100) begin
                image_red[0][4] = 1;
                image_red[1][4] = 1;
                image_red[0][5] = 1;
                image_red[1][5] = 1;
            end
        end
        else if( state == 2'b11 ) begin
            image_blue[0] = 8'b00000000;
            image_blue[1] = 8'b00000000;
            image_red[0] = 8'b00000000;
            image_red[1] = 8'b00000000;
            image_blue[2][0]=0; image_blue[2][1]=0; image_blue[3][0]=0; image_blue[3][1]=0; image_blue[4][0]=0; image_blue[4][1]=0;
            image_blue[5][0]=0; image_blue[5][1]=0; image_blue[6][0]=0; image_blue[6][1]=0; image_blue[7][0]=0; image_blue[7][1]=0;
            image_red[2][0]=0; image_red[2][1]=0; image_red[3][0]=0; image_red[3][1]=0; image_red[4][0]=0; image_red[4][1]=0;
            image_red[5][0]=0; image_red[5][1]=0; image_red[6][0]=0; image_red[6][1]=0; image_red[7][0]=0; image_red[7][1]=0; 
            if( elevator == 3'b000) begin
                image_blue[0][6] = 1;
                image_blue[1][6] = 1;
                image_blue[0][7] = 1;
                image_blue[1][7] = 1;
            end
            else if( elevator == 3'b001) begin
                image_blue[0][6] = 1;
                image_blue[1][6] = 1;
                image_red[0][7] = 1;
                image_blue[1][7] = 1;
            end
            else if( elevator == 3'b010) begin
                image_blue[0][6] = 1;
                image_blue[1][6] = 1;
                image_red[0][7] = 1;
                image_red[1][7] = 1;
            end
            else if( elevator == 3'b011) begin
                image_red[0][6] = 1;
                image_blue[1][6] = 1;
                image_red[0][7] = 1;
                image_red[1][7] = 1;
            end
            else if( elevator == 3'b100) begin
                image_red[0][6] = 1;
                image_red[1][6] = 1;
                image_red[0][7] = 1;
                image_red[1][7] = 1;
            end
        end
    end
    
    //first floor
    always @(*) begin
        if( passanger[3:0] == 4'b0000 ) begin
            image_red[2][2] = 0; image_red[2][3] = 0; image_red[3][2] = 0; image_red[3][3] = 0; image_red[4][2] = 0; image_red[4][3] = 0;
            image_red[5][2] = 0; image_red[5][3] = 0; image_red[6][2] = 0; image_red[6][3] = 0; image_red[7][2] = 0; image_red[7][3] = 0;
        end
        else if( passanger[3:0] == 4'b0001 ) begin
                    image_red[2][2] = 0; image_red[2][3] = 0; image_red[3][2] = 0; image_red[3][3] = 0; image_red[4][2] = 0; image_red[4][3] = 0;
                    image_red[5][2] = 0; image_red[5][3] = 0; image_red[6][2] = 0; image_red[6][3] = 0; image_red[7][2] = 0; image_red[7][3] = 0;
            image_red[2][2] = 1;
        end
        else if( passanger[3:0] == 4'b0010 ) begin
                    image_red[2][2] = 0; image_red[2][3] = 0; image_red[3][2] = 0; image_red[3][3] = 0; image_red[4][2] = 0; image_red[4][3] = 0;
                    image_red[5][2] = 0; image_red[5][3] = 0; image_red[6][2] = 0; image_red[6][3] = 0; image_red[7][2] = 0; image_red[7][3] = 0;
            image_red[2][2] = 1;
            image_red[2][3] = 1;
        end
        else if( passanger[3:0] == 4'b0011) begin
                    image_red[2][2] = 0; image_red[2][3] = 0; image_red[3][2] = 0; image_red[3][3] = 0; image_red[4][2] = 0; image_red[4][3] = 0;
                    image_red[5][2] = 0; image_red[5][3] = 0; image_red[6][2] = 0; image_red[6][3] = 0; image_red[7][2] = 0; image_red[7][3] = 0;
            image_red[2][2] = 1;
            image_red[2][3] = 1;
            image_red[3][2] = 1;
        end
        else if( passanger[3:0] == 4'b0100 ) begin
                    image_red[2][2] = 0; image_red[2][3] = 0; image_red[3][2] = 0; image_red[3][3] = 0; image_red[4][2] = 0; image_red[4][3] = 0;
                    image_red[5][2] = 0; image_red[5][3] = 0; image_red[6][2] = 0; image_red[6][3] = 0; image_red[7][2] = 0; image_red[7][3] = 0;
            image_red[2][2] = 1;
            image_red[2][3] = 1;
            image_red[3][2] = 1;
            image_red[3][3] = 1;
        end
        else if( passanger[3:0] == 4'b0101 ) begin
                    image_red[2][2] = 0; image_red[2][3] = 0; image_red[3][2] = 0; image_red[3][3] = 0; image_red[4][2] = 0; image_red[4][3] = 0;
                    image_red[5][2] = 0; image_red[5][3] = 0; image_red[6][2] = 0; image_red[6][3] = 0; image_red[7][2] = 0; image_red[7][3] = 0;
            image_red[2][2] = 1;
            image_red[2][3] = 1;
            image_red[3][2] = 1;
            image_red[3][3] = 1;
            image_red[4][2] = 1;
        end
        else if( passanger[3:0] == 4'b0110 ) begin
                    image_red[2][2] = 0; image_red[2][3] = 0; image_red[3][2] = 0; image_red[3][3] = 0; image_red[4][2] = 0; image_red[4][3] = 0;
                    image_red[5][2] = 0; image_red[5][3] = 0; image_red[6][2] = 0; image_red[6][3] = 0; image_red[7][2] = 0; image_red[7][3] = 0;
            image_red[2][2] = 1;
            image_red[2][3] = 1;
            image_red[3][2] = 1;
            image_red[3][3] = 1;
            image_red[4][2] = 1;
            image_red[4][3] = 1;
        end
        else if( passanger[3:0] == 4'b0111 ) begin
                    image_red[2][2] = 0; image_red[2][3] = 0; image_red[3][2] = 0; image_red[3][3] = 0; image_red[4][2] = 0; image_red[4][3] = 0;
                    image_red[5][2] = 0; image_red[5][3] = 0; image_red[6][2] = 0; image_red[6][3] = 0; image_red[7][2] = 0; image_red[7][3] = 0;
            image_red[2][2] = 1;
            image_red[2][3] = 1;
            image_red[3][2] = 1;
            image_red[3][3] = 1;
            image_red[4][2] = 1;
            image_red[4][3] = 1;
            image_red[5][2] = 1;
        end
        else if( passanger[3:0] == 4'b1000 ) begin
                    image_red[2][2] = 0; image_red[2][3] = 0; image_red[3][2] = 0; image_red[3][3] = 0; image_red[4][2] = 0; image_red[4][3] = 0;
                    image_red[5][2] = 0; image_red[5][3] = 0; image_red[6][2] = 0; image_red[6][3] = 0; image_red[7][2] = 0; image_red[7][3] = 0;
            image_red[2][2] = 1;
            image_red[2][3] = 1;
            image_red[3][2] = 1;
            image_red[3][3] = 1;
            image_red[4][2] = 1;
            image_red[4][3] = 1;
            image_red[5][2] = 1;
            image_red[5][3] = 1;
        end
        else if( passanger[3:0] == 4'b1001 ) begin
                    image_red[2][2] = 0; image_red[2][3] = 0; image_red[3][2] = 0; image_red[3][3] = 0; image_red[4][2] = 0; image_red[4][3] = 0;
                    image_red[5][2] = 0; image_red[5][3] = 0; image_red[6][2] = 0; image_red[6][3] = 0; image_red[7][2] = 0; image_red[7][3] = 0;
            image_red[2][2] = 1;
            image_red[2][3] = 1;
            image_red[3][2] = 1;
            image_red[3][3] = 1;
            image_red[4][2] = 1;
            image_red[4][3] = 1;
            image_red[5][2] = 1;
            image_red[5][3] = 1;
            image_red[6][2] = 1;
        end
        else if( passanger[3:0] == 4'b1010 ) begin
                    image_red[2][2] = 0; image_red[2][3] = 0; image_red[3][2] = 0; image_red[3][3] = 0; image_red[4][2] = 0; image_red[4][3] = 0;
                    image_red[5][2] = 0; image_red[5][3] = 0; image_red[6][2] = 0; image_red[6][3] = 0; image_red[7][2] = 0; image_red[7][3] = 0;
            image_red[2][2] = 1;
            image_red[2][3] = 1;
            image_red[3][2] = 1;
            image_red[3][3] = 1;
            image_red[4][2] = 1;
            image_red[4][3] = 1;
            image_red[5][2] = 1;
            image_red[5][3] = 1;
            image_red[6][2] = 1;
            image_red[6][3] = 1;
        end
        else if( passanger[3:0] == 4'b1011 ) begin
                    image_red[2][2] = 0; image_red[2][3] = 0; image_red[3][2] = 0; image_red[3][3] = 0; image_red[4][2] = 0; image_red[4][3] = 0;
                    image_red[5][2] = 0; image_red[5][3] = 0; image_red[6][2] = 0; image_red[6][3] = 0; image_red[7][2] = 0; image_red[7][3] = 0;
            image_red[2][2] = 1;
            image_red[2][3] = 1;
            image_red[3][2] = 1;
            image_red[3][3] = 1;
            image_red[4][2] = 1;
            image_red[4][3] = 1;
            image_red[5][2] = 1;
            image_red[5][3] = 1;
            image_red[6][2] = 1;
            image_red[6][3] = 1;
            image_red[7][2] = 1;
        end
        else if( passanger[3:0] == 4'b1100 ) begin
                    image_red[2][2] = 0; image_red[2][3] = 0; image_red[3][2] = 0; image_red[3][3] = 0; image_red[4][2] = 0; image_red[4][3] = 0;
                    image_red[5][2] = 0; image_red[5][3] = 0; image_red[6][2] = 0; image_red[6][3] = 0; image_red[7][2] = 0; image_red[7][3] = 0;
            image_red[2][2] = 1;
            image_red[2][3] = 1;
            image_red[3][2] = 1;
            image_red[3][3] = 1;
            image_red[4][2] = 1;
            image_red[4][3] = 1;
            image_red[5][2] = 1;
            image_red[5][3] = 1;
            image_red[6][2] = 1;
            image_red[6][3] = 1;
            image_red[7][2] = 1;
            image_red[7][3] = 1;
        end
    end
    
    //second floor
    always @(*) begin
        if( passanger[7:4] == 4'b0000 ) begin
            image_red[2][4] = 0;
            image_red[2][5] = 0;
            image_red[3][4] = 0;
            image_red[3][5] = 0;
            image_red[4][4] = 0;
            image_red[4][5] = 0;
            image_red[5][4] = 0;
            image_red[5][5] = 0;
            image_red[6][4] = 0;
            image_red[6][5] = 0;
            image_red[7][4] = 0;
            image_red[7][5] = 0;
        end
        else if( passanger[7:4] == 4'b0001 ) begin
            image_red[2][4] = 1;
            image_red[2][5] = 0;
            image_red[3][4] = 0;
            image_red[3][5] = 0;
            image_red[4][4] = 0;
            image_red[4][5] = 0;
            image_red[5][4] = 0;
            image_red[5][5] = 0;
            image_red[6][4] = 0;
            image_red[6][5] = 0;
            image_red[7][4] = 0;
            image_red[7][5] = 0;
        end
        else if( passanger[7:4] == 4'b0010 ) begin
                    image_red[2][4] = 1;
                    image_red[2][5] = 1;
                    image_red[3][4] = 0;
                    image_red[3][5] = 0;
                    image_red[4][4] = 0;
                    image_red[4][5] = 0;
                    image_red[5][4] = 0;
                    image_red[5][5] = 0;
                    image_red[6][4] = 0;
                    image_red[6][5] = 0;
                    image_red[7][4] = 0;
                    image_red[7][5] = 0;
                end
        else if( passanger[7:4] == 4'b0011 ) begin
                            image_red[2][4] = 1;
                            image_red[2][5] = 1;
                            image_red[3][4] = 1;
                            image_red[3][5] = 0;
                            image_red[4][4] = 0;
                            image_red[4][5] = 0;
                            image_red[5][4] = 0;
                            image_red[5][5] = 0;
                            image_red[6][4] = 0;
                            image_red[6][5] = 0;
                            image_red[7][4] = 0;
                            image_red[7][5] = 0;
                        end
        else if( passanger[7:4] == 4'b0100 ) begin
                                    image_red[2][4] = 1;
                                    image_red[2][5] = 1;
                                    image_red[3][4] = 1;
                                    image_red[3][5] = 1;
                                    image_red[4][4] = 0;
                                    image_red[4][5] = 0;
                                    image_red[5][4] = 0;
                                    image_red[5][5] = 0;
                                    image_red[6][4] = 0;
                                    image_red[6][5] = 0;
                                    image_red[7][4] = 0;
                                    image_red[7][5] = 0;
                                end
         else if( passanger[7:4] == 4'b0101 ) begin
                                                image_red[2][4] = 1;
                                                image_red[2][5] = 1;
                                                image_red[3][4] = 1;
                                                image_red[3][5] = 1;
                                                image_red[4][4] = 1;
                                                image_red[4][5] = 0;
                                                image_red[5][4] = 0;
                                                image_red[5][5] = 0;
                                                image_red[6][4] = 0;
                                                image_red[6][5] = 0;
                                                image_red[7][4] = 0;
                                                image_red[7][5] = 0;
                                            end  
         else if( passanger[7:4] == 4'b0110 ) begin
                                                        image_red[2][4] = 1;
                                                        image_red[2][5] = 1;
                                                        image_red[3][4] = 1;
                                                        image_red[3][5] = 1;
                                                        image_red[4][4] = 1;
                                                        image_red[4][5] = 1;
                                                        image_red[5][4] = 0;
                                                        image_red[5][5] = 0;
                                                        image_red[6][4] = 0;
                                                        image_red[6][5] = 0;
                                                        image_red[7][4] = 0;
                                                        image_red[7][5] = 0;
                                                    end
        else if( passanger[7:4] == 4'b0111 ) begin
                                                                image_red[2][4] = 1;
                                                                image_red[2][5] = 1;
                                                                image_red[3][4] = 1;
                                                                image_red[3][5] = 1;
                                                                image_red[4][4] = 1;
                                                                image_red[4][5] = 1;
                                                                image_red[5][4] = 1;
                                                                image_red[5][5] = 0;
                                                                image_red[6][4] = 0;
                                                                image_red[6][5] = 0;
                                                                image_red[7][4] = 0;
                                                                image_red[7][5] = 0;
                                                            end
        else if( passanger[7:4] == 4'b1000 ) begin
                                                                        image_red[2][4] = 1;
                                                                        image_red[2][5] = 1;
                                                                        image_red[3][4] = 1;
                                                                        image_red[3][5] = 1;
                                                                        image_red[4][4] = 1;
                                                                        image_red[4][5] = 1;
                                                                        image_red[5][4] = 1;
                                                                        image_red[5][5] = 1;
                                                                        image_red[6][4] = 0;
                                                                        image_red[6][5] = 0;
                                                                        image_red[7][4] = 0;
                                                                        image_red[7][5] = 0;
                                                                    end
        else if( passanger[7:4] == 4'b1001 ) begin
                                                                                image_red[2][4] = 1;
                                                                                image_red[2][5] = 1;
                                                                                image_red[3][4] = 1;
                                                                                image_red[3][5] = 1;
                                                                                image_red[4][4] = 1;
                                                                                image_red[4][5] = 1;
                                                                                image_red[5][4] = 1;
                                                                                image_red[5][5] = 1;
                                                                                image_red[6][4] = 1;
                                                                                image_red[6][5] = 0;
                                                                                image_red[7][4] = 0;
                                                                                image_red[7][5] = 0;
                                                                            end
        else if( passanger[7:4] == 4'b1010 ) begin
                                                                                        image_red[2][4] = 1;
                                                                                        image_red[2][5] = 1;
                                                                                        image_red[3][4] = 1;
                                                                                        image_red[3][5] = 1;
                                                                                        image_red[4][4] = 1;
                                                                                        image_red[4][5] = 1;
                                                                                        image_red[5][4] = 1;
                                                                                        image_red[5][5] = 1;
                                                                                        image_red[6][4] = 1;
                                                                                        image_red[6][5] = 1;
                                                                                        image_red[7][4] = 0;
                                                                                        image_red[7][5] = 0;
                                                                                    end
        else if( passanger[7:4] == 4'b1011 ) begin
                                                                                                image_red[2][4] = 1;
                                                                                                image_red[2][5] = 1;
                                                                                                image_red[3][4] = 1;
                                                                                                image_red[3][5] = 1;
                                                                                                image_red[4][4] = 1;
                                                                                                image_red[4][5] = 1;
                                                                                                image_red[5][4] = 1;
                                                                                                image_red[5][5] = 1;
                                                                                                image_red[6][4] = 1;
                                                                                                image_red[6][5] = 1;
                                                                                                image_red[7][4] = 1;
                                                                                                image_red[7][5] = 0;
                                                                                            end
        else if( passanger[7:4] == 4'b1100 ) begin
                                                                                                        image_red[2][4] = 1;
                                                                                                        image_red[2][5] = 1;
                                                                                                        image_red[3][4] = 1;
                                                                                                        image_red[3][5] = 1;
                                                                                                        image_red[4][4] = 1;
                                                                                                        image_red[4][5] = 1;
                                                                                                        image_red[5][4] = 1;
                                                                                                        image_red[5][5] = 1;
                                                                                                        image_red[6][4] = 1;
                                                                                                        image_red[6][5] = 1;
                                                                                                        image_red[7][4] = 1;
                                                                                                        image_red[7][5] = 1;
                                                                                                    end
    end
    
    //third floor
    always @(*) begin
        if( passanger[11:8] == 4'b0000 ) begin
        image_red[2][6] = 0;
        image_red[2][7] = 0;
        image_red[3][6] = 0;
        image_red[3][7] = 0;
        image_red[4][6] = 0;
        image_red[4][7] = 0;
        image_red[5][6] = 0;
        image_red[5][7] = 0;
        image_red[6][6] = 0;
        image_red[6][7] = 0;
        image_red[7][6] = 0;
        image_red[7][7] = 0;
        end
        else if( passanger[11:8] == 4'b0001 ) begin
            image_red[2][6] = 1;
            image_red[2][7] = 0;
            image_red[3][6] = 0;
            image_red[3][7] = 0;
            image_red[4][6] = 0;
            image_red[4][7] = 0;
            image_red[5][6] = 0;
            image_red[5][7] = 0;
            image_red[6][6] = 0;
            image_red[6][7] = 0;
            image_red[7][6] = 0;
            image_red[7][7] = 0;
        end
        else if( passanger[11:8] == 4'b0010 ) begin
                    image_red[2][6] = 1;
                    image_red[2][7] = 1;
                    image_red[3][6] = 0;
                    image_red[3][7] = 0;
                    image_red[4][6] = 0;
                    image_red[4][7] = 0;
                    image_red[5][6] = 0;
                    image_red[5][7] = 0;
                    image_red[6][6] = 0;
                    image_red[6][7] = 0;
                    image_red[7][6] = 0;
                    image_red[7][7] = 0;
                end
        else if( passanger[11:8] == 4'b0011 ) begin
                            image_red[2][6] = 1;
                            image_red[2][7] = 1;
                            image_red[3][6] = 1;
                            image_red[3][7] = 0;
                            image_red[4][6] = 0;
                            image_red[4][7] = 0;
                            image_red[5][6] = 0;
                            image_red[5][7] = 0;
                            image_red[6][6] = 0;
                            image_red[6][7] = 0;
                            image_red[7][6] = 0;
                            image_red[7][7] = 0;
                        end
        else if( passanger[11:8] == 4'b0100 ) begin
                                    image_red[2][6] = 1;
                                    image_red[2][7] = 1;
                                    image_red[3][6] = 1;
                                    image_red[3][7] = 1;
                                    image_red[4][6] = 0;
                                    image_red[4][7] = 0;
                                    image_red[5][6] = 0;
                                    image_red[5][7] = 0;
                                    image_red[6][6] = 0;
                                    image_red[6][7] = 0;
                                    image_red[7][6] = 0;
                                    image_red[7][7] = 0;
                                end
        else if( passanger[11:8] == 4'b0101 ) begin
                                            image_red[2][6] = 1;
                                            image_red[2][7] = 1;
                                            image_red[3][6] = 1;
                                            image_red[3][7] = 1;
                                            image_red[4][6] = 1;
                                            image_red[4][7] = 0;
                                            image_red[5][6] = 0;
                                            image_red[5][7] = 0;
                                            image_red[6][6] = 0;
                                            image_red[6][7] = 0;
                                            image_red[7][6] = 0;
                                            image_red[7][7] = 0;
                                        end
        else if( passanger[11:8] == 4'b0110 ) begin
                                                    image_red[2][6] = 1;
                                                    image_red[2][7] = 1;
                                                    image_red[3][6] = 1;
                                                    image_red[3][7] = 1;
                                                    image_red[4][6] = 1;
                                                    image_red[4][7] = 1;
                                                    image_red[5][6] = 0;
                                                    image_red[5][7] = 0;
                                                    image_red[6][6] = 0;
                                                    image_red[6][7] = 0;
                                                    image_red[7][6] = 0;
                                                    image_red[7][7] = 0;
                                                end
        else if( passanger[11:8] == 4'b0111 ) begin
                                                            image_red[2][6] = 1;
                                                            image_red[2][7] = 1;
                                                            image_red[3][6] = 1;
                                                            image_red[3][7] = 1;
                                                            image_red[4][6] = 1;
                                                            image_red[4][7] = 1;
                                                            image_red[5][6] = 1;
                                                            image_red[5][7] = 0;
                                                            image_red[6][6] = 0;
                                                            image_red[6][7] = 0;
                                                            image_red[7][6] = 0;
                                                            image_red[7][7] = 0;
                                                        end
        else if( passanger[11:8] == 4'b1000 ) begin
                                                                    image_red[2][6] = 1;
                                                                    image_red[2][7] = 1;
                                                                    image_red[3][6] = 1;
                                                                    image_red[3][7] = 1;
                                                                    image_red[4][6] = 1;
                                                                    image_red[4][7] = 1;
                                                                    image_red[5][6] = 1;
                                                                    image_red[5][7] = 1;
                                                                    image_red[6][6] = 0;
                                                                    image_red[6][7] = 0;
                                                                    image_red[7][6] = 0;
                                                                    image_red[7][7] = 0;
                                                                end
        else if( passanger[11:8] == 4'b1001 ) begin
                                                                            image_red[2][6] = 1;
                                                                            image_red[2][7] = 1;
                                                                            image_red[3][6] = 1;
                                                                            image_red[3][7] = 1;
                                                                            image_red[4][6] = 1;
                                                                            image_red[4][7] = 1;
                                                                            image_red[5][6] = 1;
                                                                            image_red[5][7] = 1;
                                                                            image_red[6][6] = 1;
                                                                            image_red[6][7] = 0;
                                                                            image_red[7][6] = 0;
                                                                            image_red[7][7] = 0;
                                                                        end
        else if( passanger[11:8] == 4'b1010 ) begin
                                                                                    image_red[2][6] = 1;
                                                                                    image_red[2][7] = 1;
                                                                                    image_red[3][6] = 1;
                                                                                    image_red[3][7] = 1;
                                                                                    image_red[4][6] = 1;
                                                                                    image_red[4][7] = 1;
                                                                                    image_red[5][6] = 1;
                                                                                    image_red[5][7] = 1;
                                                                                    image_red[6][6] = 1;
                                                                                    image_red[6][7] = 1;
                                                                                    image_red[7][6] = 0;
                                                                                    image_red[7][7] = 0;
                                                                                end
        else if( passanger[11:8] == 4'b1011 ) begin
                                                                                            image_red[2][6] = 1;
                                                                                            image_red[2][7] = 1;
                                                                                            image_red[3][6] = 1;
                                                                                            image_red[3][7] = 1;
                                                                                            image_red[4][6] = 1;
                                                                                            image_red[4][7] = 1;
                                                                                            image_red[5][6] = 1;
                                                                                            image_red[5][7] = 1;
                                                                                            image_red[6][6] = 1;
                                                                                            image_red[6][7] = 1;
                                                                                            image_red[7][6] = 1;
                                                                                            image_red[7][7] = 0;
                                                                                        end
        else if( passanger[11:8] == 4'b1100 ) begin
                                                                                                    image_red[2][6] = 1;
                                                                                                    image_red[2][7] = 1;
                                                                                                    image_red[3][6] = 1;
                                                                                                    image_red[3][7] = 1;
                                                                                                    image_red[4][6] = 1;
                                                                                                    image_red[4][7] = 1;
                                                                                                    image_red[5][6] = 1;
                                                                                                    image_red[5][7] = 1;
                                                                                                    image_red[6][6] = 1;
                                                                                                    image_red[6][7] = 1;
                                                                                                    image_red[7][6] = 1;
                                                                                                    image_red[7][7] = 1;
                                                                                                end
    end
    
endmodule
