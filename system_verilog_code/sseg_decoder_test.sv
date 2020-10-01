`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Abigail Joseph
// 
// Create Date: 10/01/2020 12:33:26 PM
// Design Name: 
// Module Name: sseg_decoder_test
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


module sseg_decoder_test();

    reg [3:0] num_t;
    wire[6:0] sseg_t;

sseg_decoder dut(
    .num(num_t),
    .sseg(sseg_t)
    );
    
integer i;

initial begin
    for (i=0; i<=4'b1111; i=i+1) begin
        num_t = i;
        #10;
    end
    $finish;
end


endmodule
