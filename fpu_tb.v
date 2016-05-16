//-------------------------------------------------
// File: fpu_tb.v
// FPU Test Bench
//-----------------------------------------------------------
`timescale 1 ns/100 ps
module fpu_tb ();
 //---------------------------------------------------------
 // inputs to the DUT are reg type
 reg clock;
 reg [31:0] a, b;
 reg [1:0] op;
 //--------------------------------------------------------
 // outputs from the DUT are wire type
 wire [31:0] out;
 //---------------------------------------------------------
 // instantiate the Device Under Test (DUT)
 // using named instantiation
 fpu U1 (
          .clk(clock),
          .A(a),
          .B(b),
          .opcode(op),
          .outp(out)
        );
 //----------------------------------------------------------
 // create a 10Mhz clock
 always
 #50 clock = ~clock; // every 50 nanoseconds invert
 //-----------------------------------------------------------
 // initial blocks are sequential and start at time 0
 initial
 begin
 $dumpfile("test.vcd");
 $dumpvars(0,clock, a, b, op, out);
 $display($time, " << Starting the Simulation >>");
 clock = 0;
 // at time 0
 a  = 32'h40000000;
 b  = 32'h40400000;
 op = 2'b00;
 #500
 if (out != 32'h40a00100) $display ("Error");
 #500
 $display($time, " << Simulation Complete >>");
 $finish;
 // stop the simulation
 end

 //--------------------------------------------------------------
 // This initial block runs concurrently with the other
 // blocks in the design and starts at time 0
 initial begin
 // $monitor will print whenever a signal changes
 // in the design
 $monitor($time, " clock=%b, a=%h, b=%h, op=%h, out=%h", clock, a, b, op, out);
 end
endmodule
