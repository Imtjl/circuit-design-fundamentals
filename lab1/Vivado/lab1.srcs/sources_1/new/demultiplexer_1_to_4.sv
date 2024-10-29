`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 01:40:06 PM
// Design Name: 
// Module Name: demultiplexer_1_to_4
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


module demultiplexer_1_to_4(
    input logic y,
    input logic [1:0] s,
    output logic [3:0] z
    );

    // first lvl
    wire not_s1, not_s0, not_y;

    nor (not_s0, s[0], s[0]);
    nor (not_s1, s[1], s[1]);
    nor (not_y, y, y);
    
    // second lvl
    wire x1, x2, x3, x4;
    nor(x1, s[0], s[1]);
    nor(x2, not_s0, s[1]);
    nor(x3, s[0], not_s1);
    nor(x4, not_s0, not_s1);
    
    // third lvl
    wire not_x1, not_x2, not_x3, not_x4;
    nor (not_x1, x1, x1);
    nor (not_x2, x2, x2);
    nor (not_x3, x3, x3);
    nor (not_x4, x4, x4);
    
    // fourth lvl
    nor (z[0], not_x1, not_y);
    nor (z[1], not_x2, not_y);
    nor (z[2], not_x3, not_y);
    nor (z[3], not_x4, not_y);
endmodule
