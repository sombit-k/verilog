`timescale 1ns/1ps
module tb_Binary_x3;
    reg [3:0] bin;
    wire [3:0] xs3;
    
    Binary_x3 uut(bin, xs3);
    
    initial begin
        for (integer i=0; i<16; i=i+1) 
        begin
            bin = i;
            #50;
        end
        #10;
    end
endmodule