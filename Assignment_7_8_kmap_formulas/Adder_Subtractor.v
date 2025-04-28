`timescale 1ns / 1ps
module Adder_Subtractor(
    input [3:0] A,B,
    input M,
    output [3:0]sum,
    output carryOut
    );
    wire [3:0]B_xor_M;
    wire [3:0]carry;
    assign B_xor_M = B^{4{M}};
    Full_adder FA1(.A(A[0]),.B(B_xor_M[0]),.Cin(M),.Sum(sum[0]),.Cout(carry[0]));
    Full_adder FA2(.A(A[1]),.B(B_xor_M[1]),.Cin(carry[0]),.Sum(sum[1]),.Cout(carry[1]));
    Full_adder FA3(.A(A[2]),.B(B_xor_M[2]),.Cin(carry[1]),.Sum(sum[2]),.Cout(carry[2]));
    Full_adder FA4(.A(A[3]),.B(B_xor_M[3]),.Cin(carry[2]),.Sum(sum[3]),.Cout(carry[3]));
    
    assign carryOut=carry[3];
endmodule