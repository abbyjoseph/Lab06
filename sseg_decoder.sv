`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abigail Joseph
// 
// Create Date: 10/01/2020 12:18:39 PM
// Design Name: 
// Module Name: sseg_decoder
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


module sseg_decoder(
    input [3:0] num,
    output reg [6:0] sseg
    );
 
 always @*
    case(num) // single giant mux
    4'h0: sseg = 7'b1000000;   
    4'h1: sseg = 7'b1111001;
    4'h2: sseg = 7'b0100100;   
    4'h3: sseg = 7'b0110000;
    4'h4: sseg = 7'b0011001;   
    4'h5: sseg = 7'b0010010;
    4'h6: sseg = 7'b0000010;   
    4'h7: sseg = 7'b1111000;
    4'h8: sseg = 7'b0000000;   
    4'h9: sseg = 7'b0010000;
    4'hA: sseg = 7'b0001000;
    4'hB: sseg = 7'b0000011;   
    4'hC: sseg = 7'b0101011;
    4'hD: sseg = 7'b0100001;   
    4'hE: sseg = 7'b0000110;
    default: sseg = 7'b0001110;   // in the case of an open/short/anything that's not an option
    
    endcase
    
endmodule
