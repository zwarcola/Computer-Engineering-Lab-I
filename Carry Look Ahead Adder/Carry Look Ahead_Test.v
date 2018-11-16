`timescale 1ns / 1ps

module testbench2();

wire [1:0] A;
wire [1:0] B;
wire Cin;
wire [1:0] S;
wire Cout;

two_bit_look_ahead test(
    .A(A),
    .B(B),
    .Cin(Cin),
    .S(S),
    .Cout(Cout)
);

assign A = 1;
assign B = 1;
assign Cin = 0;

endmodule
