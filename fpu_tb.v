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
a = 32'b10101001011100101010101100011000;
b = 32'b01001110000010000000001000110010;
correct = 32'b10011010111001000110000100011100;
#400 //-5.38832e-14 * 5.70461e+08 = -9.44555e-23
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001100000110111000001000011111;
b = 32'b11100011000110100011001000110001;
correct = 32'b00101000100000010001011011011100;
#400 //-4.07656e+07 * -2.84442e+21 = 1.43318e-14
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010010001010000100000111011110;
b = 32'b11101111110000110110001111001101;
correct = 32'b10100001110111000111001101101110;
#400 //1.80665e+11 * -1.2094e+29 = -1.49383e-18
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111011100010101011011001011001;
b = 32'b11000011000101001001100000011000;
correct = 32'b01110111111011101111100110111000;
#400 //-1.44047e+36 * -148.594 = 9.694e+33
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111111010100010100110110100100;
b = 32'b10110000001011010100111000110011;
correct = 32'b01001110100110101001011001011000;
#400 //-0.817591 * -6.30482e-10 = 1.29677e+09
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110001110010110010011001001101;
b = 32'b10011011110101101011011000110000;
correct = 32'b11010101011100100011011011110000;
#400 //5.91243e-09 * -3.55211e-22 = -1.66449e+13
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100100110010010011111101101011;
b = 32'b01011010101001110110110100111100;
correct = 32'b11001001100110011101101101001101;
#400 //-2.96989e+22 * 2.35632e+16 = -1.26039e+06
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101011111011000101000011101101;
b = 32'b10011000011001100100100101110100;
correct = 32'b01010011000000110101100111101000;
#400 //-1.67913e-12 * -2.97639e-24 = 5.64149e+11
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