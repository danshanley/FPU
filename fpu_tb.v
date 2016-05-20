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
a = 32'b11000111111110100101000110000101;
b = 32'b00001101111101111100101001110000;
correct = 32'b11111001100000010100111001000011;
#400 //-128163.0 * 1.52713e-30 = -8.39242e+34
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b10110010101000011000101100101000;
b = 32'b10111111000001110000110001011001;
correct = 32'b00110011000110010001110011001111;
#400 //-1.88061e-08 * -0.527532 = 3.56493e-08
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b01110010001000011111011000000111;
b = 32'b00110011101100000100011011011110;
correct = 32'b01111101111010110011010110110010;
#400 //3.20797e+30 * 8.20853e-08 = 3.90809e+37
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b11000010000010010001011000111011;
b = 32'b01111001111110001100100111100101;
correct = 32'b10000111100011010000111101110111;
#400 //-34.2717 * 1.61473e+35 = -2.12244e-34
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b10110011110001001001100111100100;
b = 32'b01101111001101000001010000000100;
correct = 32'b10000100000010111011111010011011;
#400 //-9.15495e-08 * 5.57315e+28 = -1.64269e-36
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b10000100000011111011001111010000;
b = 32'b10011111011001011001101110100110;
correct = 32'b00100100001000000011100001010111;
#400 //-1.68921e-36 * -4.86214e-20 = 3.47422e-17
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b01101010010010111010000100110001;
b = 32'b10110100101100010011111000000100;
correct = 32'b11110101000100110000111001101100;
#400 //6.15433e+25 * -3.30139e-07 = -1.86416e+32
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b11010110110011010000011110000111;
b = 32'b01111100000001100101001111101000;
correct = 32'b10011010010000110101111100000001;
#400 //-1.12716e+14 * 2.78988e+36 = -4.04018e-23
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b01001011101001111010001010111000;
b = 32'b00011000100000000110110000001110;
correct = 32'b01110010101001110001010110101011;
#400 //2.19723e+07 * 3.31963e-24 = 6.6189e+30
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b10000111110001111110000000100011;
b = 32'b00010101000111010001010011111100;
correct = 32'b10110010001000101101111011101110;
#400 //-3.00739e-34 * 3.17225e-26 = -9.48033e-09
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b11101011100101000010111011010110;
b = 32'b01110111011011011010111101101110;
correct = 32'b10110011100111111001100111100011;
#400 //-3.58284e+26 * 4.82083e+33 = -7.43201e-08
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b00001000001110001011101110100101;
b = 32'b10001010000100111000111111100010;
correct = 32'b10111101101000000011111001000110;
#400 //5.55911e-34 * -7.10485e-33 = -0.0782438
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b11011110011101001101110101000010;
b = 32'b00101001011001001010100011001110;
correct = 32'b11110100100010010001001000111101;
#400 //-4.41108e+18 * 5.07726e-14 = -8.68792e+31
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b00000010001110010111111010110111;
b = 32'b00100000110000110011111011110000;
correct = 32'b00100000111100110011011100001001;
#400 //1.3628e-37 * 3.30759e-19 = 4.12022e-19
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b01100111000110101001010010101110;
b = 32'b00111110000000101110100001001110;
correct = 32'b01101000100101110010010111000110;
#400 //7.29987e+23 * 0.127839 = 5.71019e+24
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b01001100101000111100101011011100;
b = 32'b00100010001000111111110111011010;
correct = 32'b01101001111111111011000001100110;
#400 //8.58744e+07 * 2.2225e-18 = 3.86386e+25
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b01000100101001000001101001001011;
b = 32'b11010110001101010110100110011100;
correct = 32'b10101101111001111001001011000001;
#400 //1312.82 * -4.98663e+13 = -2.63268e-11
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b11001011101110011111011011100011;
b = 32'b10111101111101011010100010001100;
correct = 32'b01001101010000011100101100000101;
#400 //-2.43747e+07 * -0.11995 = 2.03207e+08
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b00110110001111000010011001011011;
b = 32'b01011011100101101101100001010101;
correct = 32'b00011010000111111010011110110011;
#400 //2.80365e-06 * 8.49182e+16 = 3.30159e-23
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b01100110010010010010011100111101;
b = 32'b11101101001110010001111011100000;
correct = 32'b10111000100010110001010111101101;
#400 //2.3748e+23 * -3.58075e+27 = -6.63212e-05
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b01000111001000010110011000100101;
b = 32'b10011111110011110011000010000001;
correct = 32'b11100110110001110110110000001010;
#400 //41318.1 * -8.77482e-20 = -4.70872e+23
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b11001101011101010111101010000100;
b = 32'b01001101101011000100111001011110;
correct = 32'b10111111001101100101101101110000;
#400 //-2.57403e+08 * 3.61352e+08 = -0.712333
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b01101101111010001001011111100100;
b = 32'b10111110101011000001110000010101;
correct = 32'b11101110101011001111101101111101;
#400 //8.99802e+27 * -0.336152 = -2.67677e+28
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b10100001110100101011000110111000;
b = 32'b01001001000011011010000100001010;
correct = 32'b10011000001111100110101101000010;
#400 //-1.42772e-18 * 580113.0 = -2.46111e-24
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b11001100111001011011011110001110;
b = 32'b00110101111100011110111010111101;
correct = 32'b11010110011100110001001011111100;
#400 //-1.20438e+08 * 1.80254e-06 = -6.68157e+13
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b11101100010111100101000100000010;
b = 32'b11010101001000011001111100001010;
correct = 32'b01010110101100000001000110101111;
#400 //-1.07506e+27 * -1.11065e+13 = 9.6795e+13
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b10100111111100001100011110011111;
b = 32'b10011010110001001011101111101101;
correct = 32'b01001100100111001010100000111110;
#400 //-6.68298e-15 * -8.13673e-23 = 8.21335e+07
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b10100100001111001100010011010000;
b = 32'b00000111111111101000100001100001;
correct = 32'b11011011101111011101101101100010;
#400 //-4.09327e-17 * 3.82978e-34 = -1.0688e+17
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b00101111001110001001010011100001;
b = 32'b10010100000010001001111110011101;
correct = 32'b11011010101011001110111001010111;
#400 //1.67876e-10 * -6.89772e-27 = -2.43379e+16
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b00001010100011010001111111100111;
b = 32'b00000100100011001001000110010101;
correct = 32'b01000101100000001000000110011000;
#400 //1.35898e-32 * 3.30475e-36 = 4112.2
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b01100010100001101101101001100001;
b = 32'b01000110100010000001010001110101;
correct = 32'b01011011011111011011000100100100;
#400 //1.2438e+21 * 17418.2 = 7.14079e+16
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b00101001011101111000111100101001;
b = 32'b11011011011000010110010111111011;
correct = 32'b10001101100011001001010110110100;
#400 //5.49692e-14 * -6.3444e+16 = -8.66421e-31
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b00110101101011011111010010111111;
b = 32'b11101011101101110101000000010110;
correct = 32'b10001001011100101110111011011100;
#400 //1.29607e-06 * -4.43223e+26 = -2.9242e-33
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b11011100100000101001101001001011;
b = 32'b01101010010011111011100100000110;
correct = 32'b10110001101000001111010011010011;
#400 //-2.94091e+17 * 6.27803e+25 = -4.68445e-09
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b10101000000011111000000011001010;
b = 32'b00110100011101111001001110000000;
correct = 32'b10110011000101000110001011000100;
#400 //-7.96602e-15 * 2.30573e-07 = -3.45488e-08
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b01110111110010101100000111011010;
b = 32'b11111011110110110000100000011100;
correct = 32'b10111011011011001111101010001111;
#400 //8.22481e+33 * -2.27455e+36 = -0.00361601
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b01000011001100010001010110100010;
b = 32'b11100100000010111010000001010111;
correct = 32'b10011110101000100101011011010001;
#400 //177.085 * -1.03026e+22 = -1.71883e-20
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b10011001001111111100111100011101;
b = 32'b00100010001001011100101011111110;
correct = 32'b10110110100101000001010111101110;
#400 //-9.91629e-24 * 2.24691e-18 = -4.4133e-06
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b10010011110011000100100101001011;
b = 32'b11010001001011010101111100010100;
correct = 32'b00000010000101101101001100001111;
#400 //-5.15691e-27 * -4.6539e+10 = 1.10808e-37
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b10010110110101001000010101101100;
b = 32'b10010000001100010001010000100101;
correct = 32'b01000110000110011001111010001101;
#400 //-3.43346e-25 * -3.49226e-29 = 9831.64
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b10011100011110101110110110110111;
b = 32'b01010000011000111100100101010010;
correct = 32'b10001011100011010000000100011000;
#400 //-8.30253e-22 * 1.52865e+10 = -5.43129e-32
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b11000001000101010110111000101111;
b = 32'b11110110101011001000010110010110;
correct = 32'b00001001110111011011110000111111;
#400 //-9.3394 * -1.74958e+33 = 5.33808e-33
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b01111111111100101111010111110111;
b = 32'b00000101000111101000110111011011;
correct = 32'b01111111111100101111010111110111;
#400 //nan * 7.45518e-36 = nan
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b11000010110001010101010010101101;
b = 32'b01101110100110111101111010111111;
correct = 32'b10010011101000100000110000100000;
#400 //-98.6654 * 2.41197e+28 = -4.09065e-27
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b00011010101000111010001101111010;
b = 32'b10110111011111001001100101100000;
correct = 32'b10100010101001011101011101111100;
#400 //6.76793e-23 * -1.50561e-05 = -4.49515e-18
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b00101011100111111101011101010001;
b = 32'b00100110111010110000100001100011;
correct = 32'b01000100001011100001100110111001;
#400 //1.13574e-12 * 1.63087e-15 = 696.402
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b10111011110110000011001101001110;
b = 32'b10100011111110010100110000100001;
correct = 32'b01010111010111100000001101100000;
#400 //-0.00659791 * -2.70289e-17 = 2.44106e+14
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b10111000101110010001011010101100;
b = 32'b00001010000100011001110000101111;
correct = 32'b11101110001000101011010000110110;
#400 //-8.82571e-05 * 7.01087e-33 = -1.25886e+28
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b01000111001100001011101111100001;
b = 32'b10010000001110000100100111011001;
correct = 32'b11110110011101011000000101111001;
#400 //45243.9 * -3.63445e-29 = -1.24486e+33
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b11001000000110010110010011000100;
b = 32'b01010011010000011010010010101100;
correct = 32'b10110100010010101100101000001011;
#400 //-157075.0 * 8.31691e+11 = -1.88862e-07
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b11101110011010010011110100110011;
b = 32'b00111101011111101101000010101110;
correct = 32'b11110000011010100101001011010110;
#400 //-1.8046e+28 * 0.0622107 = -2.90079e+29
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b10100101010111101110110100011000;
b = 32'b10110010110101000100010111001100;
correct = 32'b00110010000001100110110010001110;
#400 //-1.93358e-16 * -2.47118e-08 = 7.82451e-09
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b00101001110011101101000110001000;
b = 32'b10110000111001101000111111110111;
correct = 32'b10111000011001011010001011110001;
#400 //9.18459e-14 * -1.67756e-09 = -5.47496e-05
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b01011010110011001010011110011011;
b = 32'b11111111001100101101100101011010;
correct = 32'b10011011000100100111100000000011;
#400 //2.88026e+16 * -2.37731e+38 = -1.21156e-22
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b10000111101010101101101010011101;
b = 32'b00010101110010001011110110000000;
correct = 32'b10110001010110011110001011111010;
#400 //-2.57072e-34 * 8.10783e-26 = -3.17067e-09
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b00111011000001110001000101000110;
b = 32'b01011010100100001110010010010111;
correct = 32'b00011111111011101010001111100010;
#400 //0.00206097 * 2.03919e+16 = 1.01068e-19
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b00001001000001111110110010111100;
b = 32'b00101000101110111010010111001010;
correct = 32'b00011111101110010110111111000101;
#400 //1.63613e-33 * 2.08331e-14 = 7.85355e-20
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b10001111001011111110000100101111;
b = 32'b00111000011001101111000110011111;
correct = 32'b10010110010000101111011000101101;
#400 //-8.67153e-30 * 5.50613e-05 = -1.57489e-25
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b11011111110011010100010000101001;
b = 32'b10110011100001100111001011001110;
correct = 32'b01101011110000110110101111010100;
#400 //-2.9582e+19 * -6.26074e-08 = 4.72499e+26
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b11010011110101101111000000100101;
b = 32'b11111100100101000101010000001101;
correct = 32'b00010110101110010111101100011101;
#400 //-1.8463e+12 * -6.16132e+36 = 2.99661e-25
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b10010000011001001111110111110011;
b = 32'b10011010010011011010010001100001;
correct = 32'b00110101100011101000100010101111;
#400 //-4.51607e-29 * -4.25258e-23 = 1.06196e-06
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b00011111110010101010001111100011;
b = 32'b10101010100101101011011011110111;
correct = 32'b10110100101011000001100110000001;
#400 //8.58215e-20 * -2.67723e-13 = -3.20561e-07
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b10011110100110111011011100111111;
b = 32'b00100110100110110000101010001010;
correct = 32'b10110111100000001000111010010110;
#400 //-1.64871e-20 * 1.07581e-15 = -1.53252e-05
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b11010110101110110010100101000111;
b = 32'b11011110011001011110010111000110;
correct = 32'b00110111110100000110100101010011;
#400 //-1.02893e+14 * -4.14147e+18 = 2.48446e-05
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b00100110000111110101101111101101;
b = 32'b01011101010110011001111000100000;
correct = 32'b00001000001110110111011101001111;
#400 //5.52888e-16 * 9.80063e+17 = 5.64135e-34
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b10010110001101010111111011110001;
b = 32'b10100101001110111011001011111011;
correct = 32'b00110000011101111000101000011001;
#400 //-1.46611e-25 * -1.62803e-16 = 9.00543e-10
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b10000101101111101010110011010001;
b = 32'b00101010010011001110110000011100;
correct = 32'b10011010111011100011001110011011;
#400 //-1.7931e-35 * 1.82008e-13 = -9.85179e-23
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b00100101010000001011111110001000;
b = 32'b10001001100111011001010101011101;
correct = 32'b11011011000111001001000000101100;
#400 //1.67182e-16 * -3.79368e-33 = -4.40686e+16
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b01101011001001010101110111000101;
b = 32'b11000010011111000010010001000001;
correct = 32'b11101000001001111110010110010100;
#400 //1.99916e+26 * -63.0354 = -3.17148e+24
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b00111110011110101000010110110101;
b = 32'b01010001100010110010111101011110;
correct = 32'b00101100011001100110001111011110;
#400 //0.244651 * 7.47244e+10 = 3.27404e-12
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b00010100100011110000101110111110;
b = 32'b00010001000011101100110100101111;
correct = 32'b01000011000000000011100000010011;
#400 //1.44439e-26 * 1.12651e-28 = 128.219
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b10001100001101110011101001000101;
b = 32'b10000100001011101110101001101011;
correct = 32'b01000111100001100001010100011111;
#400 //-1.41153e-31 * -2.05612e-36 = 68650.2
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b11100000101110000000111000010010;
b = 32'b01110111011011110101110110100000;
correct = 32'b10101000110001001101100001110100;
#400 //-1.061e+20 * 4.85491e+33 = -2.18542e-14
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b11001100110110010101101010011111;
b = 32'b01110011100111010101010011001010;
correct = 32'b10011000101100001101010100101111;
#400 //-1.13956e+08 * 2.49301e+31 = -4.57102e-24
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b01100101110101010010110100100011;
b = 32'b01010100010001111110001101100001;
correct = 32'b01010001000010001000001001011000;
#400 //1.25837e+23 * 3.43405e+12 = 3.66439e+10
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
a = 32'b11110011110011101111101110000110;
b = 32'b11010101110010001000101001001000;
correct = 32'b01011101100001000001110010101100;
#400 //-3.27977e+31 * -2.7562e+13 = 1.18996e+18
if (correct[31:12] != out[31:12]) begin
$display ("A      : %b %b %b %h", a[31], a[30:23], a[22:0], a);
$display ("B      : %b %b %b %h", b[31], b[30:23], b[22:0], b);
$display ("Output : %b %b %b %h", out[31], out[30:23], out[22:0], out);
$display ("Correct: %b %b %b %h",correct[31], correct[30:23], correct[22:0], correct); $display();end
$display ("Done.");
$finish;
 // stop the simulation
 end

endmodule