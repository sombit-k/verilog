`timescale 1ns / 1ps

module tb_decrementor();

    // Inputs
    reg [3:0] A;
    
    // Outputs
    wire [3:0] diff;
    wire borrowOut;

    // Instantiate Decrementor
    Decrementor uut (
        .A(A),
        .diff(diff),
        .borrowOut(borrowOut)
    );

    // Stimulus
    initial begin
       A = 4'b0000;
        #100 A = 4'b0001;   // 1 - 1 = 0
        #100 A = 4'b0010;   // 2 - 1 = 1
        #100 A = 4'b1000;   // 8 - 1 = 7
        #100 A = 4'b1111;   // 15 - 1 = 14
        #100;
    end

endmodule