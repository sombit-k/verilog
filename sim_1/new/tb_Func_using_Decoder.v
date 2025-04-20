`timescale 1ns / 1ps
module tb_Func_using_Decoder;
    reg [2:0] i;
    wire o1,o2,o3;
    Func_using_decoder uut(.inp(i),.f1(o1),.f2(o2),.f3(o3));
    initial begin
    for(i=0;i<8;i=i+1)
        begin
            #50;
        end
    end
endmodule
