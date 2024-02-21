`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/20/2024 11:15:45 PM
// Design Name: 
// Module Name: clock_divider
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


module clock_divider(clk,rst,clk_div_2,clk_div_4,clk_div_8,
clk_div_16,clk_div_32,clk_div_64,clk_div_128,clk_div_256);

input clk,rst;
output reg clk_div_2,clk_div_4,clk_div_8,
clk_div_16,clk_div_32,clk_div_64,clk_div_128,clk_div_256;

reg [7:0]count;

always @(posedge clk, negedge rst)
begin
    if(!rst)
        begin
        count <= 8'b00000000;
        clk_div_2 <= 1'b0;
        clk_div_4 <= 1'b0;
        clk_div_8 <= 1'b0;
        clk_div_16 <= 1'b0;
        clk_div_32 <= 1'b0;
        clk_div_64 <= 1'b0;
        clk_div_128 <= 1'b0;
        clk_div_256 <= 1'b0;
        end
    else
        begin
        count <= count+1'b1;
        clk_div_2 <= count[0];
        clk_div_4 <= count[1];
        clk_div_8 <= count[2];
        clk_div_16 <= count[3];
        clk_div_32 <= count[4];
        clk_div_64 <= count[5];
        clk_div_128 <= count[6];
        clk_div_256 <= count[7];       
        end
 end           
endmodule
