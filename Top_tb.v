`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/10/2024 02:33:16 PM
// Design Name: 
// Module Name: Top_tb
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


module Top_tb();
    reg [1:0] s, i0, i1, i2, i3;
    wire [6:0] seg;

    Top uut (i0, i1, i2, i3, s, seg);
    
    initial begin 
    #10 i0=2'b10;i1=2'b00;i2=2'b00;i3=2'b00;s=2'b00;
	#10 i0=2'b00;i1=2'b01;i2=2'b00;i3=2'b00;s=2'b01;
	#10 i0=2'b00;i1=2'b00;i3=2'b10;i3=2'b00;s=2'b10;
	#10 i0=2'b00;i1=2'b00;i3=2'b00;i3=2'b11;s=2'b11;
	#10 $stop;
    end 

endmodule
