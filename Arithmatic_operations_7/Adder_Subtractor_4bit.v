`timescale 1ns/1ps
module adder_subtractor(
    input [3:0] a, b,     // 4-bit inputs
    input mode,           // 0: add, 1: subtract
    output [3:0] result,  // 4-bit result
    output overflow,      // Overflow flag
    output carry_out      // Carry/borrow out
);
    wire [3:0] b_operand = mode ? ~b : b;  // 2's complement when subtracting
    assign {carry_out, result} = a + b_operand + mode;  // Single operation
    
    // Overflow detection (for signed arithmetic)
    assign overflow = (a[3] == b_operand[3]) && (result[3] != a[3]);
endmodule