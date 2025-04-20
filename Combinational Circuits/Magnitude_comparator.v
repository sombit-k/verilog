`timescale 1ns / 1ps
module Magnitude_comparator(
    input [3:0] A,
    input [3:0] B,
    output AgtB,
    output AltB,
    output AetB
);

assign AgtB = (A > B);
assign AltB = (A < B);
assign AetB = (A == B);

endmodule
