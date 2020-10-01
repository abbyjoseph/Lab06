`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/01/2020 11:46:32 AM
// Design Name: 
// Module Name: mux2_4b_test
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


module mux2_4b_test();

reg[3:0] in0_t,in1_t;
reg sel_t;

wire[3:0] out_t;

mux2_4b dut(
    .in0(in0_t),
    .in1(in1_t),
    .sel(sel_t),
    .out(out_t)
   );
   
initial begin
    sel_t=0; in0_t=4'b0010; in1_t=4'b1001; #10
    sel_t=1; in0_t=4'b0010; in1_t=4'b1001; #10
    sel_t=0; in0_t=4'b0001; in1_t=4'b0100; #10
    sel_t=1; in0_t=4'b0001; in1_t=4'b0100; #10

    $finish;
end

endmodule
