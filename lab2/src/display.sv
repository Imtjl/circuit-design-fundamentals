
// take lifo_t state
// dusplay it's state on:
// - 7 segment displays
//   - number (0-7 anodes - stack mem)
//   - dot (stack pointer)
// - RGB led (full/empty flags)
module life_display(
    input wire clk,
    input lifo_t lifo_state,
    output reg [7:0] AN,
    output wire CA, CB, CC, CD, CE, CF, CG, DP

)
