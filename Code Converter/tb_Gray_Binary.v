`timescale 1ns/1ps
module tb_Gray_Binary;
    reg [3:0] gray;
    wire [3:0] bin;
    
    Gray_Binary uut(gray, bin);
    
    initial begin
        for (integer i=0; i<16; i=i+1) 
        begin
            gray = i ^ (i >> 1);  // Generate Gray codes
            #50;
        end
        #10 ;
    end
endmodule