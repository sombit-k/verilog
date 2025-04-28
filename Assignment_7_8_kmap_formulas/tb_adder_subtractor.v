`timescale 1ns / 1ps
module tb_adder_subtractor;

reg [3:0] A;
reg [3:0] B;
reg M;
wire [3:0] sum;
wire carryOut;

Adder_Subtractor uut(A, B, M, sum, carryOut);

initial begin
    A = 4'b1000;
    B = 4'b0001;
    M = 0; #100;
    
    A = 4'b0100;
    B = 4'b1001;
    M = 0; #100;
    
    A = 4'b0110;
    B = 4'b0011;
    M = 0; #100;
    
    
    A = 4'b1000;
    B = 4'b0101;
    M = 1; #100;
    
    A = 4'b0111;
    B = 4'b0010;
    M = 1; #100;
    
    A = 4'b1011;
    B = 4'b0100;
    M = 1; #100;
    
end

endmodule