`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2024 01:43:47 PM
// Design Name: 
// Module Name: Mux_4to1_structural
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


module Mux_4to1_structural(o, a, b, c, d, s);
input [1:0] a, b, c, d, s;
output [1:0] o;
assign o[0] = (~s[0] & ~s[1] & a[0]) | (~s[0] & s[1] & b[0]) | (s[0] & ~s[1] & c[0]) | (s[0] & s[1] & d[0]);
assign o[1] = (~s[0] & ~s[1] & a[1]) | (~s[0] & s[1] & b[1]) | (s[0] & ~s[1] & c[1]) | (s[0] & s[1] & d[1]);
endmodule

