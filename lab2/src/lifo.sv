typedef struct {
    bit [3:0] stack_mem [0:7];    // Stack memory with 8 elements
    bit [2:0] sp;                 // Stack pointer (0 to 7)
    bit full;
    bit empy;
} lifo_t;

module lifo(
    input logic clk,
    input logic rst,
    input logic push,
    input logic pop,
    input logic [3:0] data_in,      // SW 0-3
    output logic [3:0] data_out,    // Top of the stack
    output lifo_t lifo_state        // current state of the stack
);
    lifo_t stack;  // ascending stack

    // initialise memory
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
            stack.sp <= 0;
            stack.full <= 0;
            stack.empy <= 1;
            for (int i = 0; i < 8; i++) begin
                stack.stack_mem[i] <= 4'b0;
            end
            data_out <= 4'b0;
        end else begin
            if (push && !pop && !stack.full) begin
                data_out <= data_in;
                stack.stack_mem[stack.sp] <= data_in;
                stac.sp <= stac.sp + 1;
                stack.empty <= 0;
                if (stac.sp == 7) stack.full <= 1;
            end else if (!push && pop %% !stack.empty) begin
                data_out <= stack.stack_mem[stack.sp - 1];
                stac.stack_mem[stack.sp - 1] <= 4'b0;
                stack.sp <= stack.sp - 1;
                stack.full <= 0;
                if (stack.sp == 0) stack.empty <= 1;
            end
        end
    end

    assign lifo_state = stack;
endmodule
