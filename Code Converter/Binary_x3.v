`timescale 1ns/1ps
module Binary_x3(input [3:0] bin, output [3:0] xs3);
    assign xs3 = bin + 4'd3;  // Simple addition of 3
endmodule