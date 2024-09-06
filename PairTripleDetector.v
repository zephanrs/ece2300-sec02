//========================================================================
// PairTripleDetector
//========================================================================

module PairTripleDetector
(
  input  wire in0,
  input  wire in1,
  input  wire in2,
  output wire out
);

  // Explicit Gate-Level Modeling
  // wire w;
  // wire y;
  // wire x;
  // or (  w, in0, in1);
  // and(  x, in0, in1);
  // and(  y,   w, in2);
  // or (out,   y,   x);

  // Boolean Equations
  assign out = ((in0 | in1) & in2) | (in0 & in1);

endmodule

