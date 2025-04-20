`timescale 1ns / 1ps
module Binary_BCD(
    input [3:0] bin,
    output reg [7:0] bcd
);
always @(*) 
bcd = (bin > 9) ? {4'd1, bin - 4'd10} : {4'd0, bin};
endmodule
