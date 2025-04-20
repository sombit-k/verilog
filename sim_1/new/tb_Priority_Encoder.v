`timescale 1ns / 1ps

module tb_Priority_Encoder;
reg [3:0]i;
wire [1:0]o;

Priority_Encoder uut(.in(i),.out(o));
initial begin
    for(i=0;i<16;i=i+1)
    begin
        #50;
    end
end
endmodule
