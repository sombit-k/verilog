`timescale 1ns/1ps
module tb_half_adder;
    reg a, b;
    wire sum, carry;
    
    Half_adder uut(a, b, sum, carry);
    
    initial begin
        a=0; b=0; #50;
        a=0; b=1; #50;
        a=1; b=0; #50;
        a=1; b=1; #50;
        #10 ;
    end
endmodule