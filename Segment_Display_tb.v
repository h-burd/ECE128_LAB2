`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 01:49:45 PM
// Design Name: 
// Module Name: Segment_Display_tb
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


module Segment_Display_tb();

    wire [6:0] segt;
    reg [3:0] bcdt;
    
    Segment_Display uut (bcdt, segt);
    
    initial begin 
        #10 bcdt = 4'b0000;
        #20 bcdt = 4'b0001;
        #10 bcdt = 4'b0010;
        #10 bcdt = 4'b0011;
        #10 bcdt = 4'b0100;
        #10 bcdt = 4'b0101;
        #10 bcdt = 4'b0110;
        #10 bcdt = 4'b0111;
        #10 bcdt = 4'b1000;
        #10 bcdt = 4'b1001;
        #10 $stop;
    end

endmodule
