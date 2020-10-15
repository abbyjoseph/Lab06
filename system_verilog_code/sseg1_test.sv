`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/09/2020 04:47:34 PM
// Design Name: 
// Module Name: sseg1_test
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


module sseg1_test();



    reg [3:0] A_t; //switches
    reg [3:0] B_t;//switches
    reg sel_t;   //select
    wire [1:0] seg_un_t;
    wire dp_t, seg_L_t, seg_R_t;
    wire [6:0] seg_t;


sseg1 dut(
    .A(A_t),
    .B(B_t),
    .sel(sel_t),
    .seg_un(seg_un_t),
    .dp(dp_t),
    .seg_L(seg_L_t),
    .seg_R(seg_R_t),
    .seg(seg_t)
    );

initial begin

 sel_t = 1'b0; A_t = 4'b0000; B_t = 4'b0000; #10
 
 //Test case 1
 A_t = 4'b1000; B_t = 4'b0011;
 sel_t = 1'b0; #10
 sel_t = 1'b1; #10
 
 //Test case 2
 A_t = 4'b0010; B_t = 4'b1000;
 sel_t = 1'b0; #10
 sel_t = 1'b1; #10
 
 
    
    
$finish;    
end

endmodule
