// DEMUX12_4bit_testbench.v
// Ananda Hafidh R K
// 19/439605/TK/48335

`include "DEMUX12_4bit.v"

`timescale 1ns/100ps

module DEMUX12_4bit_testbench();
  reg  [3:0] X;
  reg        S;
  wire [3:0] A;
  wire [3:0] B;

  integer x;
  localparam period = 20;
  
  DEMUX12_4bit uut (.X(X), .S(S), .A(A), .B(B));

  initial
    begin
      $monitor("X=0x%h, S=%b, A=0x%h, B=0x%h", X, S, A, B);
      for (x = 0; x < 16; x += 1) begin
        X = x;

        S = 0; #period;
        S = 1; #period;
      end
    end
endmodule
