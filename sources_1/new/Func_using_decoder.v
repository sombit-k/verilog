`timescale 1ns / 1ps

module Decoder(input [2:0]in,output [7:0]out);
    assign out= (in==3'b000) ? 8'b00000001:
                (in==3'b001) ? 8'b00000010:
                (in==3'b010) ? 8'b00000100:
                (in==3'b011) ? 8'b00001000:
                (in==3'b100) ? 8'b00010000:
                (in==3'b101) ? 8'b00100000:
                (in==3'b110) ? 8'b01000000:
                (in==3'b111) ? 8'b10000000:
                8'b00000000;
endmodule


module Func_using_decoder(input [2:0]inp,output f1, output f2, output f3);
wire [7:0] op;
Decoder dec(.in(inp),.out(op));
assign f1=~(~op[2]&~op[4]&~op[7]);
assign f2=~(~op[0]&~op[3]);
assign f3=~(~op[2]&~op[3]&~op[4]&~op[7]);
endmodule  
