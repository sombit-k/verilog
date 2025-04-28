`timescale 1ns / 1ps

module tb_full_adder;
reg A, B, Cin;
wire Sum, Cout;

Full_adder uut (A,B,Cin,Sum,Cout);
initial begin
for(integer i=0;i<8;i=i+1)
begin
{A,B,Cin}=i;#100;
end
end
endmodule
