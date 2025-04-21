`timescale 1ns/1ps
module tb_full_adder;
    reg a, b, cin;
    wire sum, cout;
    
    full_adder uut(a, b, cin, sum, cout);
    
    initial begin
        for (integer i=0; i<8; i=i+1) 
        begin
            {a, b, cin} = i;
            #50;
        end
        #10;
    end
endmodule