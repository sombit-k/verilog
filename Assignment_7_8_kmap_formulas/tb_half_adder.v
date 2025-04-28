`timescale 1ns / 1ps
module tb_half_adder;
reg a,b;
wire sum,carry;

Half_adder uut(a,b,sum,carry);
initial begin
for(integer i=0;i<4;i=i+1)
    begin
        {a,b}=i;#100;
    end
end

endmodule
