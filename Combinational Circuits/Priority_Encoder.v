`timescale 1ns / 1ps

module Priority_Encoder(input [3:0] in,output reg [1:0] out);

always@(*)
begin
    casex(in)
        4'b1xxx:begin out=2'b11; end
        4'b01xx:begin out=2'b10; end
        4'b001x:begin out=2'b01; end
        default:begin out=2'b00; end
    endcase
end

endmodule