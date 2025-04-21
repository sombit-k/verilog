`timescale 1ns/1ps
module incrementor(
    input [3:0] in,       // 4-bit input
    output [3:0] out,     // 4-bit output (in + 1)
    output overflow       // High when incrementing from 1111 to 0000
);
    assign {overflow, out} = in + 1'b1;  // Single operation
endmodule


//`timescale 1ns/1ps
//module incrementor(
//    input [3:0] in,
//    output [3:0] out,
//    output overflow
//);
//    // Half adder chain implementation
//    assign out[0] = ~in[0];
//    assign out[1] = in[1] ^ in[0];
//    assign out[2] = in[2] ^ (in[1] & in[0]);
//    assign out[3] = in[3] ^ (in[2] & in[1] & in[0]);
//    assign overflow = &in;  // AND of all bits (true when all 1's)
//endmodule