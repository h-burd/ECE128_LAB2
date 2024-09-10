`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 02:15:37 PM
// Design Name: 
// Module Name: Top
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


module Top(i0, i1, i2, i3, s, seg);
    input[1:0] s, i0, i1, i2, i3;
    output[6:0] seg;

    wire[1:0] yt;
    wire[3:0] ytt;
    
    Mux_4to1_structural uut(yt, i0, i1, i2, i3, s);
    
    assign ytt = {2'b0, yt};
    
    Segment_Display uut2 (ytt, seg);


endmodule
