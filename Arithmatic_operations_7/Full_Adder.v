`timescale 1ns/1ps
module full_adder(
    input a, b, cin,      // 1-bit inputs
    output sum, cout       // Outputs
);
    // Compact implementation (recommended)
    assign {cout, sum} = a + b + cin;
    
    /* Alternative implementation using basic gates
    wire s1, c1, c2;
    xor(s1, a, b);        // First XOR for sum intermediate
    xor(sum, s1, cin);    // Final sum
    and(c1, a, b);        // First AND for carry
    and(c2, s1, cin);     // Second AND for carry
    or(cout, c1, c2);     // Final carry-out
    */
endmodule