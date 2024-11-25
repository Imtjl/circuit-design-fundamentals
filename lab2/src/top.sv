`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/08/2024 06:18:12 PM
// Design Name: 
// Module Name: top
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


module top(
    input wire [15:0] SW,
    input wire CLK100MHZ,
    output wire clk_1khz,
    output wire [7:0] AN,
    output wire CA, CB, CC, CD, CE, CF, CG, DP,
    output wire LED16_R, LED16_G, LED16_B
);

    freq_divider #(.DIVIDER(50000)) divider (
        .clk_in(CLK100MHZ),
        .clk_out(clk_1khz)
        );
    
    //assign LED = SW;
    assign CA = SW[0];
    assign CB = SW[1];
    assign CC = SW[2];
    assign CD = SW[3];
    assign CE = SW[4];
    assign CF = SW[5];
    assign CG = SW[6];
    assign DP = SW[7];
    
    assign AN = 8'b00000100;
    
endmodule

module freq_divider #(
    parameter DIVIDER = 50000
)(
    input wire clk_in,
    output reg clk_out = 0
    );

    reg [31:0] counter = 0;

    always @(posedge clk_in) begin
        if (counter == DIVIDER - 1) begin
            counter <= 0;
            clk_out <= ~clk_out;
        end else begin
            counter <= counter + 1;
        end
    end
endmodule
