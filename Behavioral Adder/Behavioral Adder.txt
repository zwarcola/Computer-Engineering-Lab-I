`timescale 1ns / 1ps

module Behavioral(

  input [63:0] A,
  input [63:0] B,
  output [63:0] C    
);
    
  assign C = (A + B);
  
endmodule