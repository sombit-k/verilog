`timescale 1ns/1ps
module Gray_Binary(input [3:0] gray, output [3:0] bin);
    assign bin = {gray[3], gray[2]^bin[3], gray[1]^bin[2], gray[0]^bin[1]};
endmodule