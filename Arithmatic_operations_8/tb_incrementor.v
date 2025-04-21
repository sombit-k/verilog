`timescale 1ns/1ps
module tb_incrementor;
    reg [3:0] in;
    wire [3:0] out;
    wire overflow;
    
    incrementor uut(in, out, overflow);
    
    initial begin
        
        // Test all edge cases
        in = 4'b0000; #10;  // 0 → 1
        in = 4'b0101; #10;  // 5 → 6
        in = 4'b1110; #10;  // 14 → 15
        in = 4'b1111; #10;  // 15 → 0 (overflow)
        #10 ;
    end
endmodule