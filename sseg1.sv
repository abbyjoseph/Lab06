`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abigail Joseph
// 
// Create Date: 10/01/2020 01:14:50 PM
// Design Name: 
// Module Name: sseg1
// Project Name: Lab 6
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


module sseg1(
    input [3:0] A,
    input [3:0] B,
    input sel,
    output [1:0] seg_un,
    output dp,
    output seg_L,
    output seg_R,
    output [6:0] seg
    );
    
    wire[3:0] num;
    
    mux2_4b my_mux2_4b(
    .in0(A),
    .in1(B),
    .sel(sel),
    .out(num)
    );
    
    sseg_decoder my_sseg_decoder(
    .num(num),
    .sseg(seg)
    );
    
assign seg_L = ~sel;
assign seg_R= sel;

assign dp = 1;
assign seg_un = 2'b11;

    
endmodule
