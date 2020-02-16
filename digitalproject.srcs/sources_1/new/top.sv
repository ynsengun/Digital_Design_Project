`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.12.2018 12:46:05
// Design Name: 
// Module Name: top
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

module ClockDivider(
 input clk_in,
 input [1:0]direction,
 input executed,
 output reg clk_out
 );

logic [30:0] count = {31{1'b0}};
//logic clk_NoBuf;
always@ (posedge clk_in) begin
    if( executed == 1'b0 ) begin
        if( count > 31'b0000101111101011110000100000000 ) begin //1*10^8
            count <= 31'b0;
            clk_out <= 1;
        end
        else begin
            count <= count + 1;
            clk_out <= 0;
        end
    end
    else if( direction == 2'b00 ) begin
        if( count > 31'b0001011111010111100001000000000 ) begin //2*10^8
            count <= 31'b0;
            clk_out <= 1;
        end
        else begin
            count <= count + 1;
            clk_out <= 0;
        end
    end
    else begin
        if( count > 31'b0010001111000011010001100000000 ) begin //3*10^8
            count <= 31'b0;
            clk_out <= 1;
        end
        else begin
            count <= count + 1;
            clk_out <= 0;
        end
    end
end
endmodule

module ClockDividerCount(
 input clk_in,
 output reg clk_out
 );

logic [30:0] count = {31{1'b0}};
//logic clk_NoBuf;
always@ (posedge clk_in) begin
    if( count > 31'b0000101111101011110000100000000 ) begin //1*10^8
        count <= 31'b0;
        clk_out <= 1;
    end
    else begin
        count <= count + 1;
        clk_out <= 0;
    end
end
endmodule

module ClockDividerDirection(
 input clk_in,
 output clk_out
 );

logic [25:0] count = {26{1'b0}};
logic clk_NoBuf;
always@ (posedge clk_in) begin
count <= count + 1;
end
// you can modify 25 to have different clock rate
assign clk_NoBuf = count[23];
BUFG BUFG_inst (
 .I(clk_NoBuf), // 1-bit input: Clock input
 .O(clk_out) // 1-bit output: Clock output
);
endmodule

module top(
    input clk_in,
    input reset,
    input execute,
    input [2:0] add,
    input [2:0] subt,
    output reg[1:0] state,
    output reg[11:0] passanger,
    
    output reset_out, //shift register's reset
    output OE,     //output enable, active low 
    output SH_CP,  //pulse to the shift register
    output ST_CP,  //pulse to store shift register
    output DS,     //shift register's serial input data
    output [7:0] col_select, // active column, active high
    
    //7-segment signals
    output a, b, c, d, e, f, g, dp,
    output [3:0] an
    );
    
    reg [1:0] nextState;
    reg [11:0] nextPassanger;
    reg [8:0] collect,nextCollect;
    reg [2:0] elevator,nextElevator;
    reg [1:0] direction,nextDirection;
    reg executed;
    //logic [3:0] p1,p2,p3;
    logic [3:0] in0;
    logic [3:0] in1;
    logic [3:0] in2;
    logic [3:0] in3;
    logic clk_out;
    logic clk_count;
    logic clk_direction;
    logic [0:7] [7:0] image_red;
    logic [0:7] [7:0]  image_green;
    logic [0:7] [7:0]  image_blue;
    logic [2:0] col_num;
    //assign passanger = 12'b100000010100;
    //assign p3 = passanger[11:8];
    //assign p2 = passanger[7:4];
    //assign p1 = passanger[3:0];
    
    ClockDivider clk( clk_in , direction , executed , clk_out );
    
    ClockDividerCount clock_count( clk_in , clk_count );
    ClockDividerDirection clock_direction( clk_in , clk_direction );
    
    display_8x8 display_8x8_0(
        .clk(clk_in),
        
        // RGB data for display current column
        .red_vect_in(image_red[col_num]),
        .green_vect_in(image_green[col_num]),
        .blue_vect_in(image_blue[col_num]),
        
        .col_data_capture(), // unused
        .col_num(col_num),
        
        // FPGA pins for display
        .reset_out(reset_out),
        .OE(OE),
        .SH_CP(SH_CP),
        .ST_CP(ST_CP),
        .DS(DS),
        .col_select(col_select)   
    );
    
    
    /*
    always_ff @( posedge execute ) begin
        if( execute) begin
            executed <= 1'b1;
        end
    end
    */
    
    always_ff @( posedge clk_count , posedge reset ) begin
        if(reset) begin
            in0 <= 4'b0000;
            in1 <= 4'b0000;
            in2 <= 4'b0000;
            //in3 <= 4'b0000;
        end
        else if( executed && ( passanger != 12'b000000000000 || elevator != 3'b000 ) )begin
            if( 8*in0[3] + 4*in0[2] + 2*in0[1] + in0[0] == 9 && 8*in1[3] + 4*in1[2] + 2*in1[1] + in1[0] == 9 ) begin
                in0 <= 4'b0000;
                in1 <= 4'b0000;
                in2 <= in2 + 1;
            end
            else if( 8*in0[3] + 4*in0[2] + 2*in0[1] + in0[0] == 9 ) begin
                in0 <= 4'b0000;
                in1 <= in1 + 1;
            end
            else begin
                in0 <= in0 + 1;
            end
        end
    end
    
    always_ff @( posedge clk_direction , posedge reset ) begin
        if( reset || direction == 2'b00 ) begin
            in3 <= 4'b1010;
        end
        else if( direction == 2'b01 ) begin
            if( in3 == 4'b1111 ) begin
                in3 <= 4'b1010;
            end
            else begin
                in3 <= in3 + 1;
            end
        end
        else if( direction == 2'b10 ) begin
            if( in3 == 4'b1010 ) begin
                in3 <= 4'b1111;
            end
            else begin
                in3 <= in3 - 1;
            end
        end
    end
    
    //always_ff @( posedge clk_count)
    
    //register
    always_ff @( posedge clk_out , posedge reset , posedge execute ) begin
        if( reset ) begin
            collect <= 9'b000000000;
            state <= 2'b00;
            elevator <= 3'b000;
            direction <= 2'b00;
            executed <= 1'b0;
            passanger <= 12'b000000000000;
            //count <= 3'b000;
            /*
            image_red[0] <= 8'b00000000;
            image_red[1] <= 8'b00000000;
            image_red[2] <= 8'b00000000;
            image_red[3] <= 8'b00000000;
            image_red[4] <= 8'b00000000;
            image_red[5] <= 8'b00000000;
            image_red[6] <= 8'b00000000;
            image_red[7] <= 8'b00000000;
            image_blue[0] <= 8'b00000000;
            image_blue[1] <= 8'b00000000;
            image_blue[2] <= 8'b00000000;
            image_blue[3] <= 8'b00000000;
            image_blue[4] <= 8'b00000000;
            image_blue[5] <= 8'b00000000;
            image_blue[6] <= 8'b00000000;
            image_blue[7] <= 8'b00000000;
            */
        end
        else if( execute ) begin
            executed <= 1'b1;
        end
        else if( executed == 1'b1 ) begin
            //count <= count + 1;
            /*
            if( passanger != 12'b000000000000 || elevator != 3'b000 ) begin
                if( 8*in0[3] + 4*in0[2] + 2*in0[1] + in0[0] == 9 && 8*in1[3] + 4*in1[2] + 2*in1[1] + in1[0] == 9 ) begin
                    in0 <= 4'b0000;
                    in1 <= 4'b0000;
                    in2 <= in2 + 1;
                end
                else if( 8*in0[3] + 4*in0[2] + 2*in0[1] + in0[0] == 9 ) begin
                    in0 <= 4'b0000;
                    in1 <= in1 + 1;
                end
                else begin
                    in0 <= in0 + 1;
                end
            end
            */
            //if(direction == 2'b00 && count > 3'b010 || count > 3'b011 ) begin
                collect <= nextCollect;
                state <= nextState;
                passanger <= nextPassanger;
                elevator <= nextElevator;
                direction <= nextDirection;
                //count <= 3'b000;
            //end
        end
        
        else begin
            if( add[0] && 8*passanger[3] + 4*passanger[2] + 2*passanger[1] + passanger[0] < 12 ) begin
                passanger[3:0] <= passanger[3:0] + 1;
            end
            else if( subt[0] && passanger[3] + passanger[2] + passanger[1] + passanger[0] > 0 ) begin
                passanger[3:0] <= passanger[3:0] - 1;
            end
            if( add[1] && 8*passanger[7] + 4*passanger[6] + 2*passanger[5] + passanger[4] < 12 ) begin
                passanger[7:4] <= passanger[7:4] + 1;
            end
            else if( subt[1] && passanger[7] + passanger[6] + passanger[5] + passanger[4] > 0 ) begin
                passanger[7:4] <= passanger[7:4] - 1;
            end
            if( add[2] && 8*passanger[11] + 4*passanger[10] + 2*passanger[9] + passanger[8] < 12 ) begin
                passanger[11:8] <= passanger[11:8] + 1;
            end
            else if( subt[2] && passanger[11] + passanger[10] + passanger[9] + passanger[8] > 0 ) begin
                passanger[11:8] <= passanger[11:8] - 1;
            end
        end
        
    end
    
    //next state logics
    nextCollectLogic ccc( state , passanger , direction , collect , nextCollect);
    nextStateLogic sss( direction , state , nextState );
    nextDirectionLogic ddd( state , collect , passanger , direction , nextDirection );
    nextElevatorLogic eee( state , collect, direction , elevator , nextElevator );
    nextPassangerLogic ppp( state , collect , direction , passanger , nextPassanger );
    outputLogic ooo( state , elevator , passanger , image_red , image_blue );
    
    SevSeg_4digit SevSeg_4digit_inst0(
        .clk(clk_in),
        .in3(in3), .in2(in2), .in1(in1), .in0(in0), //user inputs for each digit (hexadecimal)
        .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .dp(dp), // just connect them to FPGA pins (individual LEDs).
        .an(an)   // just connect them to FPGA pins (enable vector for 4 digits active low) 
    );
    
    
endmodule
