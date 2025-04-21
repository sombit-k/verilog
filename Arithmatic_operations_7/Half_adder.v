`timescale 1ns/1ps
module Half_adder(
    input  a, b,       // 1-bit inputs
    output sum, carry  // Outputs
);
    assign {carry, sum} = a + b;  // Single-line implementation
//  assign sum = a ^ b;
//  assign carry = a&b; 
endmodule
