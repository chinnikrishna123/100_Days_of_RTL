`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2024 11:16:37 PM
// Design Name: 
// Module Name: clock_divider_tb
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


module clock_divider_tb;

reg clk = 0, rst;
wire clk_div_2,clk_div_4,clk_div_8,
clk_div_16,clk_div_32,clk_div_64,clk_div_128,clk_div_256;


clock_divider dut (
    .clk(clk),
    .rst(rst),
    .clk_div_2(clk_div_2),
    .clk_div_4(clk_div_4),
    .clk_div_8(clk_div_8),
    .clk_div_16(clk_div_16),
    .clk_div_32(clk_div_32),
    .clk_div_64(clk_div_64),
    .clk_div_128(clk_div_128),
    .clk_div_256(clk_div_256)
);

always #5 clk = ~clk;

initial begin
    rst = 1'b1;
    #10 rst = 1'b0;
    #50 rst = 1'b1;
    #100 $finish;
end

endmodule
