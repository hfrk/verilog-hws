// DEMUX12_4bit.v
// Ananda Hafidh R K
// 19/439605/TK/48335

module DEMUX12_4bit (X, S, A, B);
  input  [3:0] X;
  input        S;
  output [3:0] A;
  output [3:0] B;

  reg    [3:0] A;
  reg    [3:0] B;

  always @(S) begin
    case(S)
    1'b0:
      begin
        A = X;
        B = 4'b000;
      end
    1'b1:
      begin
        A = 4'b000;
        B = X;
      end
    endcase
  end
endmodule
