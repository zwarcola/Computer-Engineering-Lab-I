`timescale 1ns / 1ps

module Carry_Look_Ahead(

    input [63:0] A,
    input [63:0] B,
    output [63:0] SUM,
    output CARRY   
     
    );
    
  wire c1, c2, c3, c4, c5, c6, c7, c8, c9, c10, c11, c12, c13, c14, c15, c16, c17, c18, c19, c20, c21, c22, c23, c24, c25, c26, c27, c28, c29, c30, c31, c32;
    
  assign c1 = 1'b0;

  two_bit_look_ahead look1 (A[1:0], B[1:0], c1, SUM[1:0], c2);
  two_bit_look_ahead look2 (A[3:2], B[3:2], c2, SUM[3:2], c3);
  two_bit_look_ahead look3 (A[5:4], B[5:4], c3, SUM[5:4], c4);
  two_bit_look_ahead look4 (A[7:6], B[7:6], c4, SUM[7:6], c5);
  two_bit_look_ahead look5(A[9:8], B[9:8], c5, SUM[9:8], c6);
  two_bit_look_ahead look6 (A[11:10], B[11:10], c6, SUM[11:10], c7);
  two_bit_look_ahead look7 (A[13:12], B[13:12], c7, SUM[13:12], c8);
  two_bit_look_ahead look8 (A[15:14], B[15:14], c8, SUM[15:14], c9);
  two_bit_look_ahead look9 (A[17:16], B[17:16], c9, SUM[17:16], c10);
  two_bit_look_ahead look10 (A[19:18], B[19:18], c10, SUM[19:18], c11);
  two_bit_look_ahead look11 (A[21:20], B[21:20], c11, SUM[21:20], c12);
  two_bit_look_ahead look12 (A[23:22], B[23:22], c12, SUM[23:22], c13);
  two_bit_look_ahead look13 (A[25:24], B[25:24], c13, SUM[25:24], c14);
  two_bit_look_ahead look14 (A[27:26], B[27:26], c14, SUM[27:26], c15);
  two_bit_look_ahead look15 (A[29:28], B[29:28], c15, SUM[29:28], c16);
  two_bit_look_ahead look16 (A[31:30], B[31:30], c16, SUM[31:30], c17);
  two_bit_look_ahead look17 (A[33:32], B[33:32], c17, SUM[33:32], c18);
  two_bit_look_ahead look18 (A[35:34], B[35:34], c18, SUM[35:34], c19);
  two_bit_look_ahead look19 (A[37:36], B[37:36], c19, SUM[37:36], c20);
  two_bit_look_ahead look20 (A[39:38], B[39:38], c20, SUM[39:38], c21);
  two_bit_look_ahead look21 (A[41:40], B[41:40], c21, SUM[41:40], c22);
  two_bit_look_ahead look22 (A[43:42], B[43:42], c22, SUM[43:42], c23);
  two_bit_look_ahead look23 (A[45:44], B[45:44], c23, SUM[45:44], c24);
  two_bit_look_ahead look24 (A[47:46], B[47:46], c24, SUM[47:46], c25);
  two_bit_look_ahead look25 (A[49:48], B[49:48], c25, SUM[49:48], c26);
  two_bit_look_ahead look26 (A[51:50], B[51:50], c26, SUM[51:50], c27);
  two_bit_look_ahead look27 (A[53:52], B[53:52], c27, SUM[53:52], c28);
  two_bit_look_ahead look28 (A[55:54], B[55:54], c28, SUM[55:54], c29);
  two_bit_look_ahead look29 (A[57:56], B[57:56], c29, SUM[57:56], c30);
  two_bit_look_ahead look30 (A[59:58], B[59:58], c30, SUM[59:58], c31);
  two_bit_look_ahead look31 (A[61:60], B[61:60], c31, SUM[61:60], c32);
  two_bit_look_ahead look32 (A[63:62], B[63:62], c32, SUM[63:62], CARRY);
    
endmodule

module two_bit_look_ahead(
    
    input [1:0] A,
    input [1:0] B,
    input Cin,
    output [1:0] S,
    output Cout
    
    );

    wire p1, p2, g1, g2, c1, c2, temp1, temp2, temp3, temp4, temp5;
    
    xor XOR1(p1, A[0], B[0]);
    and AND1(g1, A[0], B[0]);
    xor XOR2(S[0], p1, c1);
    and AND2(temp1, p1, Cin);
    or OR1(c1, g1, temp1);
    
    and AND3(temp2, p1, Cin);
    and AND4(temp3, p2, temp2);
    and AND5(temp4, p2, g1);
    or OR2(temp5, temp3, temp4);
    or OR3(Cout, temp5, g2);
    
endmodule
