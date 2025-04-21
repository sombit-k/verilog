`timescale 1ns/1ps
module tb_adder_subtractor;
    reg [3:0] a, b;
    reg mode;
    wire [3:0] result;
    wire overflow, carry_out;
    
    adder_subtractor uut(a, b, mode, result, overflow, carry_out);
    
    initial begin
        mode = 0;
        a = 4'b0101; b = 4'b0011; #10;  // 5 + 3 = 8
        a = 4'b1100; b = 4'b1100; #10;  // -4 + -4 = -8 (no overflow)
        a = 4'b0111; b = 4'b0111; #10;  // 7 + 7 = 14 (overflow in signed)
        
        // Subtraction tests
        mode = 1;
        a = 4'b1000; b = 4'b0001; #10;  // -8 - 1 = -9 (overflow in signed)
        a = 4'b0101; b = 4'b0011; #10;  // 5 - 3 = 2
        a = 4'b0011; b = 4'b0101; #10;  // 3 - 5 = -2
        #10 ;
    end
endmodule