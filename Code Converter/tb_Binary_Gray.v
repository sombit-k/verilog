`timescale 1ns/1ps
module tb_Binary_Gray;
    reg [3:0] bin;
    wire [3:0] gray;
    
    Binary_Gray uut(bin, gray);
    
    initial begin
        for (integer i=0; i<16; i=i+1)
        begin
        bin = i;#50;
        end
    end
endmodule