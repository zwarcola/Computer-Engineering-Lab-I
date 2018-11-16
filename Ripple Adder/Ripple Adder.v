`timescale 1ns / 1ps

module ripple_adder
(
    input[63:0] A,
    input [63:0] B,
    output [63:0] Sum,
    output Carry
);

wire C0, C1, C2, C3, C4, C5, C6, C7, C8, C9, C10, C11, C12, C13, C14, C15, C16, C17, C18, C19, C20, C21, C22,
     C23, C24, C25, C26, C27, C28, C29, C30, C31, C32, C33, C34, C35, C36, C37, C38, C39, C40, C41, C42, C43,
     C44, C45, C46, C47, C48, C49, C50, C51, C52, C53, C54, C55, C56, C57, C58, C59, C60, C61, C62, C63;

assign C0 = 1'b0;

    full_adder Add0(A[0], B[0], C0, Sum[0], C1);
    full_adder Add1(A[1], B[1], C1, Sum[1], C2);
    full_adder Add2(A[2], B[2], C2, Sum[2], C3);
    full_adder Add3(A[3], B[3], C3, Sum[3], C4);
    full_adder Add4(A[4], B[4], C4, Sum[4], C5);
    full_adder Add5(A[5], B[5], C5, Sum[5], C6);
    full_adder Add6(A[6], B[6], C6, Sum[6], C7);
    full_adder Add7(A[7], B[7], C7, Sum[7], C8);
    full_adder Add8(A[8], B[8], C8, Sum[8], C9);
    full_adder Add9(A[9], B[9], C9, Sum[9], C10);
    full_adder Add10(A[10], B[10], C10, Sum[10], C11);
    full_adder Add11(A[11], B[11], C11, Sum[11], C12);
    full_adder Add12(A[12], B[12], C12, Sum[12], C13);
    full_adder Add13(A[13], B[13], C13, Sum[13], C14);
    full_adder Add14(A[14], B[14], C14, Sum[14], C15);
    full_adder Add15(A[15], B[15], C15, Sum[15], C16);
    full_adder Add16(A[16], B[16], C16, Sum[16], C17);
    full_adder Add17(A[17], B[17], C17, Sum[17], C18);
    full_adder Add18(A[18], B[18], C18, Sum[18], C19);
    full_adder Add19(A[19], B[19], C19, Sum[19], C20);
    full_adder Add20(A[20], B[20], C20, Sum[20], C21);
    full_adder Add21(A[21], B[21], C21, Sum[21], C22);
    full_adder Add22(A[22], B[22], C22, Sum[22], C23);
    full_adder Add23(A[23], B[23], C23, Sum[23], C24);
    full_adder Add24(A[24], B[24], C24, Sum[24], C25);
    full_adder Add25(A[25], B[25], C25, Sum[25], C26);
    full_adder Add26(A[26], B[26], C26, Sum[26], C27);
    full_adder Add27(A[27], B[27], C27, Sum[27], C28);
    full_adder Add28(A[28], B[28], C28, Sum[28], C29);
    full_adder Add29(A[29], B[29], C29, Sum[29], C30);
    full_adder Add30(A[30], B[30], C30, Sum[30], C31);
    full_adder Add31(A[31], B[31], C31, Sum[31], C32);
    full_adder Add32(A[32], B[32], C32, Sum[32], C33);
    full_adder Add33(A[33], B[33], C33, Sum[33], C34);
    full_adder Add34(A[34], B[34], C34, Sum[34], C35);
    full_adder Add35(A[35], B[35], C35, Sum[35], C36);
    full_adder Add36(A[36], B[36], C36, Sum[36], C37);
    full_adder Add37(A[37], B[37], C37, Sum[37], C38);
    full_adder Add38(A[38], B[38], C38, Sum[38], C39);
    full_adder Add39(A[39], B[39], C39, Sum[39], C40);
    full_adder Add40(A[40], B[40], C40, Sum[40], C41);
    full_adder Add41(A[41], B[41], C41, Sum[41], C42);
    full_adder Add42(A[42], B[42], C42, Sum[42], C43);
    full_adder Add43(A[43], B[43], C43, Sum[43], C44);
    full_adder Add44(A[44], B[44], C44, Sum[44], C45);
    full_adder Add45(A[45], B[45], C45, Sum[45], C46);
    full_adder Add46(A[46], B[46], C46, Sum[46], C47);
    full_adder Add47(A[47], B[47], C47, Sum[47], C48);
    full_adder Add48(A[48], B[48], C48, Sum[48], C49);
    full_adder Add49(A[49], B[49], C49, Sum[49], C50);
    full_adder Add50(A[50], B[50], C50, Sum[50], C51);
    full_adder Add51(A[51], B[51], C51, Sum[51], C52);
    full_adder Add52(A[52], B[52], C52, Sum[52], C53);
    full_adder Add53(A[53], B[53], C53, Sum[53], C54);
    full_adder Add54(A[54], B[54], C54, Sum[54], C55);
    full_adder Add55(A[55], B[55], C55, Sum[55], C56);
    full_adder Add56(A[56], B[56], C56, Sum[56], C57);
    full_adder Add57(A[57], B[57], C57, Sum[57], C58);
    full_adder Add58(A[58], B[58], C58, Sum[58], C59);
    full_adder Add59(A[59], B[59], C59, Sum[59], C60);
    full_adder Add60(A[60], B[60], C60, Sum[60], C61);
    full_adder Add61(A[61], B[61], C61, Sum[61], C62);
    full_adder Add62(A[62], B[62], C62, Sum[62], C63);
    full_adder Add63(A[63], B[63], C63, Sum[63], Carry);
endmodule

