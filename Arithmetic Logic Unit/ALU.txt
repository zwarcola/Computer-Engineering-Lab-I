`timescale 1ns / 1ps

module ALU(
    input [63:0] A,
    input [63:0] B,
    input [3:0] control,
    output reg [63:0] Sum,
    output reg active
    );
    
    always@(*)
        begin
            case (control)
                4'b0000: Sum = A & B;
                4'b0001: Sum = A | B;
                4'b0010: Sum = A + B;
                4'b0110: Sum = A - B;
                4'b0111: Sum = B; 
                4'b1100: Sum = ~(A | B);         
            endcase
        end
    always@(*)
            begin
                case (Sum)
                    4'b0000: active = 1'b0;
                    default: active = 1'b1;
                endcase
            end
endmodule
