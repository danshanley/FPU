//-----------------------------------------------------------
// File: fpu_tb.v
// FPU Test Bench
//-----------------------------------------------------------
`timescale 1 ns/100 ps
module fpu_tb ();
 //----------------------------------------------------------
 // inputs to the DUT are reg type
 reg clock;
 reg [31:0] a, b;
 reg [1:0] op;
 reg [31:0] correct;
 //----------------------------------------------------------
 // outputs from the DUT are wire type
 wire [31:0] out;
 wire [49:0] pro;
 //----------------------------------------------------------
 // instantiate the Device Under Test (DUT)
 // using named instantiation
 fpu U1 (
          .clk(clock),
          .A(a),
          .B(b),
          .opcode(op),
          .O(out)
        );
 //----------------------------------------------------------
 // create a 10Mhz clock
 always
 #100 clock = ~clock; // every 100 nanoseconds invert
 //----------------------------------------------------------
 // initial blocks are sequential and start at time 0
 initial
 begin
 $dumpfile("fpu_tb.vcd");
 $dumpvars(0,clock, a, b, op, out);
 clock = 0;op = 2'b10;
a = 32'b01010110101010100001110011111110;
b = 32'b01100001101101001101011000001101;
correct = 32'b00110100011100001101000111111000;
#400 //9.35207e+13 * 4.1698e+20 = 2.24281e-07
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100111110100110110110100110010;
b = 32'b10011001011011010111111000110100;
correct = 32'b11001101111000111110011011111101;
#400 //5.86827e-15 * -1.22781e-23 = -4.77946e+08
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101110111101000001110011011000;
b = 32'b00111101100101111101110000011010;
correct = 32'b01110000110011011100001000100110;
#400 //3.77746e+28 * 0.0741503 = 5.09433e+29
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111111011011000011001111111110;
b = 32'b11011001010110110101110101000110;
correct = 32'b00100101100010011101001101010010;
#400 //-0.922668 * -3.8591e+15 = 2.39089e-16
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
$display ("Done.");
$finish;
 // stop the simulation
 end

endmodule