`timescale 1ns/1ps
module x3_Binary(input [3:0] xs3, output [3:0] bin);
    assign bin = xs3 - 4'd3;  // Simply subtract 3
endmodule
