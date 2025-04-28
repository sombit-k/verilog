`timescale 1ns / 1ps

module tb_incrementor();

    // Inputs
    reg [3:0] A;
    
    // Outputs
    wire [3:0] sum;
    wire carryOut;

    // Instantiate the Incrementor module
    Incrementor uut (
        .A(A),
        .sum(sum),
        .carryOut(carryOut)
    );

    // Stimulus (test cases)
    initial begin
        // Initialize Inputs
        A = 4'b0000;
        
       
        #100 A = 4'b0000;   // 0 + 1 = 1
        #100 A = 4'b0001;   // 1 + 1 = 2
        #100 A = 4'b0011;   // 3 + 1 = 4
        #100 A = 4'b0111;   // 7 + 1 = 8
        #100 A = 4'b1010;   // 10 + 1 = 11
        #100; 
    end

endmodule