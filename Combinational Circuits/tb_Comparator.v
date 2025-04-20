`timescale 1ns / 1ps
module tb_Comparator;
reg [3:0] a;
reg [3:0] b;
wire g,l,e;
Magnitude_comparator uut(.A(a),.B(b),.AgtB(g),.AltB(l),.AetB(e));
initial begin
a=14;b=13;#100;
a=10;b=11;#100;
a=15;b=15;#100;
a=15;b=1;#100;

end
endmodule
