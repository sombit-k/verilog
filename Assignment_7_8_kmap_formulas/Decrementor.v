`timescale 1ns / 1ps

module Decrementor(
    input [3:0] A,       // 4-bit input
    output [3:0] diff,   // 4-bit result (A - 1)
    output borrowOut     // Borrow out (underflow flag)
);
    wire [3:0] borrow;   // Internal borrow wires

    // Subtract 1: Equivalent to adding -1 (2's complement: 1111) with Cin=1
    Full_adder FA1(.A(A[0]), .B(1'b1), .Cin(1'b0), .Sum(diff[0]), .Cout(borrow[0])); // LSB: A[0] + 1 + 1 (Cin)
    Full_adder FA2(.A(A[1]), .B(1'b1), .Cin(borrow[0]), .Sum(diff[1]), .Cout(borrow[1]));
    Full_adder FA3(.A(A[2]), .B(1'b1), .Cin(borrow[1]), .Sum(diff[2]), .Cout(borrow[2]));
    Full_adder FA4(.A(A[3]), .B(1'b1), .Cin(borrow[2]), .Sum(diff[3]), .Cout(borrow[3]));
    
    assign borrowOut = borrow[3];  // Underflow (e.g., 0000 - 1 = 1111)
endmodule