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
    output wire [7:0] AN,
    output logic CA, CB, CC, CD, CE, CF, CG, DP,
    input wire BTNL
);

    wire clk_1khz, clk_125hz;
    reg [2:0] counter = 0;

    freq_divider #(.DIVIDER(50000)) divider_1khz (
        .rst(BTNL),
        .clk_in(CLK100MHZ),
        .clk_out(clk_1khz)
    );
        
    freq_divider #(.DIVIDER(2)) divider_125hz (
        .rst(BTNL),
        .clk_in(clk_1khz),
        .clk_out(clk_125hz)
    );
        
    always @(posedge clk_125hz or posedge BTNL) begin
        if (BTNL) begin
            counter <= 0;
        end else if (counter == 7) begin
            counter <= 0;
        end else begin
            counter <= counter + 1;
        end
    end
   
    assign AN = 8'b00000000;
   
    always @(*) begin
        case (counter)
            3'b000: begin
                CA = SW[0];
                CB = SW[1];
                CC = SW[2];
                CD = SW[3];
                CE = SW[4];
                CF = SW[5];
                CG = SW[6];
                DP = SW[7];
            end
            3'b001: begin // Display "1"
                CA = 1;
                CB = 0;
                CC = 0;
                CD = 1;
                CE = 1;
                CF = 1;
                CG = 1;
            end
            default: begin
                // Leave segments off for other counter values
                CA = 1;
                CB = 1;
                CC = 1;
                CD = 1;
                CE = 1;
                CF = 1;
                CG = 1;
            end
        endcase
    end
        
endmodule

module freq_divider #(
    parameter DIVIDER = 50000
)(
    input wire rst,
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
