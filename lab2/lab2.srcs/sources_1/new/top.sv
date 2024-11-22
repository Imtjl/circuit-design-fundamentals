`timescale 1ns / 1ps

typedef struct {
    bit [3:0] stack_mem [0:7];    // Stack memory with 8 elements
    bit [2:0] sp;                 // Stack pointer (0 to 7)
    bit full;
    bit empty;
} lifo_t;

// ----------------------------------------------------

module top(
    input wire [15:0] SW,
    input wire CLK100MHZ,
    input wire BTNL, // PUSH
    input wire BTNC, // Reset (rst)
    input wire BTNR, // POP
    output wire [7:0] AN,
    output wire CA, CB, CC, CD, CE, CF, CG, DP,
    output wire [15:0] LED,
    output wire LED16_R, LED16_G, LED16_B
);

    wire clk_1khz, clk_1hz;

    // Frequency Divider for 1kHz clock
    freq_divider #(.DIVIDER(50000)) divider_1khz (
        .rst(BTNC),
        .clk_in(CLK100MHZ),
        .clk_out(clk_1khz)
    );

    reg push_reg, pop_reg;
    wire push_edge, pop_edge;

    debounce push_debounce (
        .clk(CLK100MHZ),
        .btn_in(BTNL),
        .btn_out(push_reg)
    );

    debounce pop_debounce (
        .clk(CLK100MHZ),
        .btn_in(BTNR),
        .btn_out(pop_reg)
    );

    // Edge detection for push and pop buttons
    edge_detector push_edge_det (
        .clk(CLK100MHZ),
        .signal_in(push_reg),
        .pulse_out(push_edge)
    );

    edge_detector pop_edge_det (
        .clk(CLK100MHZ),
        .signal_in(pop_reg),
        .pulse_out(pop_edge)
    );

    lifo_t lifo_state;
    lifo lifo_module (
        .clk(CLK100MHZ),
        .rst(BTNC),
        .push(push_edge),
        .pop(pop_edge),
        .data_in(SW[3:0]),
        .data_out(LED[3:0]),
        .lifo_state(lifo_state)
    );

    display display_module (
        .clk_1khz(clk_1khz),
        .anodes(AN),
        .cathodes({CA, CB, CC, CD, CE, CF, CG, DP}),
        .lifo_state(lifo_state)
    );

    // Assign full and empty flags to RGB LEDs
    assign LED16_R = lifo_state.full;     // Red LED indicates full
    assign LED16_G = lifo_state.empty;    // Green LED indicates empty
    assign LED16_B = 1'b0;                // Blue LED off
endmodule

// --------------------------------------------

module display (
    input wire clk_1khz,          // 1kHz clock signal
    output reg [7:0] anodes,      // Anode control signals (active low)
    output reg [7:0] cathodes,    // Cathode control signals (CA to CG and DP)
    input lifo_t lifo_state       // LIFO state struct
);

    reg [2:0] digit_select = 0;   // Digit select counter
    reg [3:0] current_digit;      // Current digit to display
    reg [6:0] segment_pattern;    // 7-segment pattern for current digit
    integer i;

    // Digit select counter increment
    always_ff @(posedge clk_1khz) begin
        digit_select <= digit_select + 1;
    end

    // Combinational logic for display
    always_comb begin
        anodes = 8'b11111111; // inactive
        anodes[digit_select] = 1'b0; // activate first one

        current_digit = lifo_state.stack_mem[digit_select];
        case (current_digit)
            4'h0: segment_pattern = 7'b0000010;
            4'h1: segment_pattern = 7'b1001111;
            4'h2: segment_pattern = 7'b0010010;
            4'h3: segment_pattern = 7'b0000110;
            4'h4: segment_pattern = 7'b1001100;
            4'h5: segment_pattern = 7'b0100100;
            4'h6: segment_pattern = 7'b0100000;
            4'h7: segment_pattern = 7'b0001111;
            4'h8: segment_pattern = 7'b0000000;
            4'h9: segment_pattern = 7'b0001100;
            4'hA: segment_pattern = 7'b0001000;
            4'hB: segment_pattern = 7'b1100000;
            4'hC: segment_pattern = 7'b0110001;
            4'hD: segment_pattern = 7'b1000010;
            4'hE: segment_pattern = 7'b0110000;
            4'hF: segment_pattern = 7'b0111000;
            default: segment_pattern = 7'b1111111;
        endcase

        cathodes[6:0] = segment_pattern[6:0];
        if (digit_select == lifo_state.sp) begin
            cathodes[7] = 1'b0; // DP on
        end else begin
            cathodes[7] = 1'b1; // DP off
        end
    end
endmodule

// --------------------------------------------

module freq_divider #(
    parameter DIVIDER = 50000
)(
    input wire rst,
    input wire clk_in,
    output reg clk_out = 0
);

    reg [31:0] counter = 0;

    always @(posedge clk_in) begin
        if (rst) begin
            counter <= 0;
            clk_out <= 0;
        end else if (counter == DIVIDER - 1) begin
            counter <= 0;
            clk_out <= ~clk_out;
        end else begin
            counter <= counter + 1;
        end
    end
endmodule

// -------------------------------------------------

module lifo(
    input logic clk,
    input logic rst,
    input logic push,
    input logic pop,
    input logic [3:0] data_in,      // SW 0-3
    output logic [3:0] data_out,    // Top of the stack
    output lifo_t lifo_state        // Current state of the stack
);
    lifo_t stack;  // Ascending stack

    // Initialize memory
    initial begin
        stack.sp = 0;
        stack.full = 0;
        stack.empty = 1;
        for (int i = 0; i < 8; i++) begin
            stack.stack_mem[i] = 4'b0;
        end
    end

    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            // Reset stack
            stack.sp <= 0;
            stack.full <= 0;
            stack.empty <= 1;
            for (int i = 0; i < 8; i++) begin
                stack.stack_mem[i] <= 4'b0;
            end
            data_out <= 4'b0;
        end else begin
            // Push operation
            if (push && !stack.full) begin
                stack.stack_mem[stack.sp] <= data_in;
                if (stack.sp != 7) stack.sp <= stack.sp + 1;
                stack.empty <= 0;
                if (stack.sp == 7) stack.full <= 1;
                data_out <= data_in;
            end
            // Pop operation
            else if (pop && !stack.empty) begin
                data_out <= stack.stack_mem[stack.sp - 1];
                stack.stack_mem[stack.sp - 1] <= 4'b0;
                if (stack.sp != 0) stack.sp <= stack.sp - 1;
                stack.full <= 0;
                if (stack.sp == 0) stack.empty <= 1;
            end else begin
                data_out <= 4'b0;
            end
        end
    end
    assign lifo_state = stack;
endmodule

// ----------------------------------------

module debounce (
    input wire clk,
    input wire btn_in,
    output reg btn_out
);
    reg [15:0] counter;
    reg btn_sync_0, btn_sync_1;

    always @(posedge clk) begin
        btn_sync_0 <= btn_in;
        btn_sync_1 <= btn_sync_0;

        if (btn_sync_1 == btn_out)
            counter <= 0;
        else begin
            counter <= counter + 1;
            if (counter == 16'hFFFF)
                btn_out <= btn_sync_1;
        end
    end
endmodule

// -----------------------------------------

module edge_detector (
    input wire clk,
    input wire signal_in,
    output reg pulse_out
);
    reg signal_in_d;

    always @(posedge clk) begin
        signal_in_d <= signal_in;
        pulse_out <= signal_in & ~signal_in_d;
    end
endmodule
