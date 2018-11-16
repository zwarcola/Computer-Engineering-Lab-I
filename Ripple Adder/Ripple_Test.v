`timescale 1ns / 1ps

module testbench();  

wire [63:0] A;
wire [63:0] B; 
wire [63:0] Sum; 
wire Carry;
    
ripple_adder test
(
    .A(A),
    .B(B),
    .Sum(Sum),
    .Carry(Carry)
    
);

assign A = 1000;
assign B = 2000;

endmodule
