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
 #100 clock = ~clock; // every 100 nanoseconds invert
 //-----------------------------------------------------------
 // initial blocks are sequential and start at time 0
 initial
 begin
 $dumpfile("fpu_tb.vcd");
 $dumpvars(0,clock, a, b, op, out);
 clock = 0;
 op = 2'b00;
 // at time 0
 a = 32'b00111111010010011111110001000100;
 b = 32'b00111111010000111010100100011101;
 #1000
 if (out != 32'b00111111110001101101001010110000) $display ($time, " clock=%b, a=%b, b=%b, op=%b, out=%b", clock, a, b, op, out);
 a = 32'b00111110111001011100010101000110;
 b = 32'b00111111001100010000100111101010;
 #1000
 if (out != 32'b00111111100100011111011001000111) $display ($time, " clock=%b, a=%b, b=%b, op=%b, out=%b", clock, a, b, op, out);
 a = 32'b00111110100001010110010011011111;
 b = 32'b00111111001111111001101101101000;
 #1000
 if (out != 32'b00111111100000010010011011101100) $display ($time, " clock=%b, a=%b, b=%b, op=%b, out=%b", clock, a, b, op, out);
 a = 32'b00111100110100101111101110101011;
 b = 32'b00111110001100101010100110011011;
 #1000
 if (out != 32'b00111110010011010000100100010000) $display ($time, " clock=%b, a=%b, b=%b, op=%b, out=%b", clock, a, b, op, out);
 a = 32'b00111110010000000010010010110011;
 b = 32'b00111111001010011000010000011011;
 #1000
 if (out != 32'b00111111010110011000110101001000) $display ($time, " clock=%b, a=%b, b=%b, op=%b, out=%b", clock, a, b, op, out);
 a = 32'b00111111010100101100111000101111;
 b = 32'b00111111001100011010010001101110;
 #1000
 if (out != 32'b00111111110000100011100101001110) $display ($time, " clock=%b, a=%b, b=%b, op=%b, out=%b", clock, a, b, op, out);
 $finish;
 // stop the simulation
 end

endmodule
