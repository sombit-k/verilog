`timescale 1ns/1ps
module tb_Binary_BCD;
    reg [3:0] bin;
    wire [7:0] bcd;
    
    Binary_BCD uut(bin, bcd);
    
    initial begin
    for (integer i=0; i<16; i=i+1)
    begin 
        bin=i;#50;
    end
    bin=0;#50;//dont write this in manual
    end
endmodule