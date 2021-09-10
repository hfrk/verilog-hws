// FA_4bit_testbench.v
// Ananda Hafidh R K
// 19/439605/TK/48335

`include "FA_4bit.v"

`timescale 1ns/100ps

module FA_4bit_testbench ();
  reg [3:0] A, B;
  wire [3:0] SUM;
  wire c_out;
  integer a, b;

  localparam period = 20;

  FA_4bit uut (.A(A), .B(B), .SUM(SUM), .c_out(c_out));

  initial
    begin
      $dumpfile("FA_4bit_testbench.vcd");
      $dumpvars();
      $monitor("A=0x0%h, B=0x0%h, sum=0x0%h, c_out=%b", A, B, SUM, c_out);

      for (a = 0;a < 16;a += 1) begin
        /* uncomment for full (256 pairs) testbench */
        //for (b = 0;b < 16;b += 1) begin /****/
          A = a;
          B = a;
          //B = b; /****/
          #period;
        //end /****/
      end
    end
endmodule
