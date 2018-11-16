`timescale 1ns / 1ps

module test();

wire [3:0] control;
wire [63:0] A;
wire [63:0] B;
wire [63:0] Sum;
wire active;
    
ALU test
(
    .control(control),
    .A(A),
    .B(B),
    .Sum(Sum),
    .active(active)
);

assign control = 4'b0000; //Control will signal A AND B, change this number to change control operation
assign A = 1000;
assign B = 2000;

endmodule
