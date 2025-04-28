`timescale 1ns / 1ps

module Incrementor(
    input [3:0] A,       // 4-bit input
    output [3:0] sum,    // 4-bit incremented output
    output carryOut      // Carry out (useful for overflow detection)
);
    wire [3:0] carry;    // Internal carry wires

    // Increment by 1: B = 0001, M = 0 (like Adder_Subtractor with B=1 and M=0)
    Full_adder FA1(.A(A[0]), .B(1'b1), .Cin(1'b0), .Sum(sum[0]), .Cout(carry[0]));
    Full_adder FA2(.A(A[1]), .B(1'b0), .Cin(carry[0]), .Sum(sum[1]), .Cout(carry[1]));
    Full_adder FA3(.A(A[2]), .B(1'b0), .Cin(carry[1]), .Sum(sum[2]), .Cout(carry[2]));
    Full_adder FA4(.A(A[3]), .B(1'b0), .Cin(carry[2]), .Sum(sum[3]), .Cout(carry[3]));
    
    assign carryOut = carry[3];  // Overflow detection
endmodule