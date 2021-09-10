// FA_4bit.v
// Ananda Hafidh R K
// 19/439605/TK/48335

module FA (a, b, c_in, sum, c_out);
  input a, b, c_in;
  output sum, c_out;
  wire s1, c1, c2;

  assign s1 = a ^ b;
  assign c1 = a & b;
  assign c2 = s1 & c_in;
  assign sum = s1 ^ c_in;
  assign c_out = c1 | c2;
endmodule

module FA_4bit (A, B, SUM, c_out);
  input [3:0] A, B;
  output [3:0] SUM; 
  output c_out;
  wire c1, c2, c3;

  logic c_in = 0; // ground

  FA FA1(A[0], B[0], c_in, SUM[0], c1);
  FA FA2(A[1], B[1], c1, SUM[1], c2);
  FA FA3(A[2], B[2], c2, SUM[2], c3);
  FA FA4(A[3], B[3], c3, SUM[3], c_out);
endmodule
