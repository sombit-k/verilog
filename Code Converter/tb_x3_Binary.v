`timescale 1ns/1ps
module tb_x3_Binary;
    reg [3:0] xs3;
    wire [3:0] bin;
    
    x3_Binary uut(xs3, bin);
    
    initial begin
        // Test valid XS-3 range (3-18, but 4-bit wraps at 15)
        for (integer i=3; i<19; i=i+1) 
        begin
            xs3 = i % 16; // Handle 4-bit overflow
            #50;
        end
        #10;
    end
endmodule