`timescale 1ns/1ps
module tb_decrementor;
    reg [3:0] in;
    wire [3:0] out;
    wire underflow;
    
    decrementor uut(in, out, underflow);
    
    initial begin
        in = 4'b0001; #10;  // 1 → 0
        in = 4'b0110; #10;  // 6 → 5
        in = 4'b0000; #10;  // 0 → 15 (underflow)
        in = 4'b1000; #10;  // -8 → -9 (no underflow in 2's complement)
        #10 ;
    end
endmodule