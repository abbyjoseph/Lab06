`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abigail Joseph
// 
// Create Date: 10/01/2020 11:34:34 AM
// Design Name: 
// Module Name: mux2_4b
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


module mux2_4b(
    input [3:0] in0,
    input [3:0] in1,
    input sel,
    output [3:0] out
    );
    assign out = sel ? in1 : in0 ;
    
endmodule
