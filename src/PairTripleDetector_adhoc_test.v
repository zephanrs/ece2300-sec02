//========================================================================
// PairTripleDetector_adhoc_test
//========================================================================

module Top();

  logic dut_in0;
  logic dut_in1;
  logic dut_in2;
  logic dut_out;

  PairTripleDetector dut
  (
    .in0 (dut_in0),
    .in1 (dut_in1),
    .in2 (dut_in2),
    .out (dut_out)
  );

  initial begin
    $dumpfile("PairTripleDetector_test.vcd");
    $dumpvars;

    dut_in0 = 0;
    dut_in1 = 0;
    dut_in2 = 0;
    #10;
    $display( "%x %x %x > %x", dut_in0, dut_in1, dut_in2, dut_out );

    dut_in0 = 0;
    dut_in1 = 1;
    dut_in2 = 1;
    #10;
    $display( "%x %x %x > %x", dut_in0, dut_in1, dut_in2, dut_out );

    dut_in0 = 0;
    dut_in1 = 1;
    dut_in2 = 0;
    #10;
    $display( "%x %x %x > %x", dut_in0, dut_in1, dut_in2, dut_out );

    dut_in0 = 1;
    dut_in1 = 1;
    dut_in2 = 1;
    #10;
    $display( "%x %x %x > %x", dut_in0, dut_in1, dut_in2, dut_out );

  end

endmodule

