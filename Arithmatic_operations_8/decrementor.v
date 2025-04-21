`timescale 1ns/1ps
module decrementor(
    input [3:0] in,       // 4-bit input
    output [3:0] out,     // 4-bit output (in - 1)
    output underflow      // High when decrementing 0000 to 1111
);
    assign {underflow, out} = in - 1'b1;  // Single operation handles both
endmodule