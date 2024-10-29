`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/29/2024 02:19:03 PM
// Design Name: 
// Module Name: demultiplexer_1_to_4_tb
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


module demultiplexer_1_to_4_tb;
    logic y_in;
    logic [1:0] s_in;
    wire [3:0] z_out;

    // unit under test
    demultiplexer_1_to_4 uut(
        .y(y_in),
        .s(s_in),
        .z(z_out)
    );

    integer i;
    logic [2:0] test_val;
    logic [3:0] z_exp;

    initial begin
        // Перебор всевозможных значений входных сигналов
        for (i = 0; i < 8; i = i + 1) begin
            test_val = i;
            {y_in, s_in} = test_val;

            z_exp[0] = !s_in[0] && !s_in[1] && y_in;
            z_exp[1] = s_in[0] && !s_in[1] && y_in;
            z_exp[2] = !s_in[0] && s_in[1] && y_in;
            z_exp[3] = s_in[0] && s_in[1] && y_in;

            #10; // Ожидание завершения одного временного шага для результата (задержка)

            if (z_out == z_exp) begin
                $display("PASS: s=%b, y=%b => z=%b (expected: %b)", s_in, y_in, z_out, z_exp);
            end else begin
                $display("FAIL: s=%b, y=%b => z=%b (expected: %b)", s_in, y_in, z_out, z_exp);
            end
        end

        #10 $stop; // Остановка симуляции после завершения всех тестов
    end
endmodule
