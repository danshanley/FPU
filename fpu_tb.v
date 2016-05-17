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
 reg [31:0] correct;
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
 a = 32'b00111111011110011000101110001111;
b = 32'b00111110111000001000101010101010;
correct = 32'b00111111101101001110100001110010;
#400
if (correct - out > 1) $display ("Output: %b Correct: %b", out, correct);

a = 32'b00111110010010110001000010100000;
b = 32'b00111110111001001110100001101001;
correct = 32'b00111111001001010011100001011101;
#400
if (correct - out > 1) $display ("Output: %b Correct: %b", out, correct);

a = 32'b00111111011101110010110000101001;
b = 32'b00111110111001010001001001100011;
correct = 32'b00111111101101001101101010101101;
#400
if (correct - out > 1) $display ("Output: %b Correct: %b", out, correct);

a = 32'b00111110110100001101001101101100;
b = 32'b00111110111000111110000111001001;
correct = 32'b00111111010110100101101010011011;
#400
if (correct - out > 1) $display ("Output: %b Correct: %b", out, correct);

a = 32'b00111101011000110011001010111010;
b = 32'b00111111011000110011001110100111;
correct = 32'b00111111011100010110011011010011;
#400
if (correct - out > 1) $display ("Output: %b Correct: %b", out, correct);

a = 32'b00111110101011110111000111000011;
b = 32'b00111111010000110100100010110110;
correct = 32'b00111111100011011000000011001100;
#400
if (correct - out > 1) $display ("Output: %b Correct: %b", out, correct);

a = 32'b00111000100011011000110101110000;
b = 32'b00111110110011011111000011010000;
correct = 32'b00111110110011011111100110101001;
#400
if (correct - out > 1) $display ("Output: %b Correct: %b", out, correct);

a = 32'b00111111011011010011010100111101;
b = 32'b00111110101111010000011001101000;
correct = 32'b00111111101001011101110000111000;
#400
if (correct - out > 1) $display ("Output: %b Correct: %b", out, correct);

a = 32'b00111111001001101110100111111000;
b = 32'b00111110110011000101000000010001;
correct = 32'b00111111100001101000100100000000;
#400
if (correct - out > 1) $display ("Output: %b Correct: %b", out, correct);

a = 32'b00111010010111101000011001100111;
b = 32'b00111110000001001111010010101010;
correct = 32'b00111110000001011101001100110000;
#400
if (correct - out > 1) $display ("Output: %b Correct: %b", out, correct);
 $finish;
 // stop the simulation
 end

endmodule
