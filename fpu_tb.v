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
          .outp(out)
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
 clock = 0;op = 2'b00;
a = 32'b10010000101000010101001111101100;
b = 32'b10010010101100100100100100011111;
correct = 32'b10010010101111000101111001011110;
#400 //-6.36326e-29 * -1.12514e-27 = -1.18877e-27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000101001001001100010000100111;
b = 32'b00011110010101111101010011010001;
correct = 32'b00011110010101111101010011010001;
#400 //7.74727e-36 * 1.1426e-20 = 1.1426e-20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001010110111010101111111110001;
b = 32'b00011101111010110101101100000100;
correct = 32'b00011101111010110101101100000100;
#400 //-2.13176e-32 * 6.22981e-21 = 6.22981e-21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100100001101000101000010011111;
b = 32'b01110100100110000101100110011000;
correct = 32'b01110100100110000101100110011000;
#400 //3.90996e-17 * 9.65633e+31 = 9.65633e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110101110000111101110100101110;
b = 32'b00000000110100010000100011101011;
correct = 32'b10110101110000111101110100101110;
#400 //-1.4593e-06 * 1.91968e-38 = -1.4593e-06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111101010001111101100100100010;
b = 32'b10010100000100100000011011110101;
correct = 32'b11111101010001111101100100100010;
#400 //-1.66027e+37 * -7.37249e-27 = -1.66027e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011110101000101111101011001000;
b = 32'b00001011101011001011010001001001;
correct = 32'b10011110101000101111101011001000;
#400 //-1.72561e-20 * 6.65233e-32 = -1.72561e-20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100011001001011110100101101000;
b = 32'b01001111110110100101010010100001;
correct = 32'b01001111110110100101010010100001;
#400 //8.99409e-18 * 7.32596e+09 = 7.32596e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110010101110010010111010010100;
b = 32'b11101110111101100100101011011001;
correct = 32'b11101110111101100100101011011001;
#400 //-2.1558e-08 * -3.81119e+28 = -3.81119e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001000101010001010110100100101;
b = 32'b01101000001100110010001101001011;
correct = 32'b01101000001100110010001101001011;
#400 //1.01518e-33 * 3.38382e+24 = 3.38382e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111111101001000101101101000000;
b = 32'b01001100110010000001001011111110;
correct = 32'b01001100110010000001001011111110;
#400 //1.28403 * 1.04896e+08 = 1.04896e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110000110001110100100011100101;
b = 32'b01100000101000111001110110010001;
correct = 32'b01100000101000111001110110010001;
#400 //1.44999e-09 * 9.43179e+19 = 9.43179e+19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010000110100001111001001001100;
b = 32'b11001111011000110010011101110010;
correct = 32'b11010000111011010101011100111010;
#400 //-2.80443e+10 * -3.81101e+09 = -3.18553e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111101011011000110011001100001;
b = 32'b01010100001100010010111110111010;
correct = 32'b01010100001100010010111110111010;
#400 //0.0577148 * 3.04404e+12 = 3.04404e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011000111011011010001000100100;
b = 32'b11000101100101111101110111100011;
correct = 32'b01011000111011011010001000100100;
#400 //2.09025e+15 * -4859.74 = 2.09025e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000101101110001001010011100111;
b = 32'b00010111000110110111101110100000;
correct = 32'b00010111000110110111101110100000;
#400 //1.7358e-35 * 5.02392e-25 = 5.02392e-25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011000111011010010001000011000;
b = 32'b01101000111110110011110010100011;
correct = 32'b01101000111110110011110010100011;
#400 //-6.12975e-24 * 9.49146e+24 = 9.49146e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100001000111011011001101010010;
b = 32'b01110010001011100100110111101100;
correct = 32'b01110010001011100100110111101100;
#400 //1.81816e+20 * 3.45245e+30 = 3.45245e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100001011101010011101111101100;
b = 32'b11001111100000101100011010001000;
correct = 32'b11001111100000101100011010001000;
#400 //8.30885e-19 * -4.3881e+09 = -4.3881e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001000010010011011001011110001;
b = 32'b10011100000100100100011001101001;
correct = 32'b10011100000100100100011001101001;
#400 //-6.06966e-34 * -4.83984e-22 = -4.83984e-22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110001101110011100100100100010;
b = 32'b01011110000101110111010111010111;
correct = 32'b01110001101110011100100100100010;
#400 //1.83993e+30 * 2.72847e+18 = 1.83993e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101000000001100000001011000010;
b = 32'b00110001000110011101011101010011;
correct = 32'b01101000000001100000001011000010;
#400 //2.53139e+24 * 2.23868e-09 = 2.53139e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011011110001010010111001010110;
b = 32'b11100111111100000010101111011100;
correct = 32'b11100111111100000010101111011100;
#400 //3.26209e-22 * -2.26835e+24 = -2.26835e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101011001001001110111111100010;
b = 32'b10010010101101001111110011001101;
correct = 32'b00101011001001001110111111100010;
#400 //5.85974e-13 * -1.14219e-27 = 5.85974e-13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000000110111110011100100100101;
b = 32'b01101010011011111111001010011101;
correct = 32'b01101010011011111111001010011101;
#400 //2.04998e-38 * 7.25197e+25 = 7.25197e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110111111111011110000011100101;
b = 32'b01000001011011000001110011001110;
correct = 32'b01000001011011000001110011101110;
#400 //3.02647e-05 * 14.757 = 14.7571
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111011000110000000111110011011;
b = 32'b10011111111010011111010010111110;
correct = 32'b10111011000110000000111110011011;
#400 //-0.00232027 * -9.90842e-20 = -0.00232027
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111011001010000111101110011010;
b = 32'b11011000010101000010000010110100;
correct = 32'b11011000010101000010000010110100;
#400 //-0.00257084 * -9.32948e+14 = -9.32948e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111101100110011110101100100111;
b = 32'b11110011000110001010000010111001;
correct = 32'b01111101100110011110101100100010;
#400 //2.55741e+37 * -1.20924e+31 = 2.55741e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010101111001000101011010011010;
b = 32'b00000110100010000100100111101011;
correct = 32'b10010101111001000101011010011010;
#400 //-9.22251e-26 * 5.12661e-35 = -9.22251e-26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011100001000100100001011000101;
b = 32'b01010011000011111000011010100010;
correct = 32'b01011100001000100100001011101001;
#400 //1.82689e+17 * 6.16439e+11 = 1.8269e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111111000100011010101000010010;
b = 32'b10011000100011100000111110101100;
correct = 32'b00111111000100011010101000010010;
#400 //0.569001 * -3.6722e-24 = 0.569001
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001100101111100100000111000000;
b = 32'b11010001010011110010010011010010;
correct = 32'b11010001010011110010010011010010;
#400 //-2.93137e-31 * -5.56047e+10 = -5.56047e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100100001101101110010011001011;
b = 32'b11011110011111011100100110101011;
correct = 32'b11011110011111011100100110101011;
#400 //3.96588e-17 * -4.57183e+18 = -4.57183e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010101010110100100100111000001;
b = 32'b00101111101110110101011000010010;
correct = 32'b01010101010110100100100111000001;
#400 //1.50006e+13 * 3.40763e-10 = 1.50006e+13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110100100000101110001110111010;
b = 32'b11111101001010111010010111010000;
correct = 32'b11111101001010111010011000010001;
#400 //-8.29611e+31 * -1.42599e+37 = -1.426e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001110110101011001001000010111;
b = 32'b01101100110110111011101101101111;
correct = 32'b01101100110110111011101101101111;
#400 //-5.26492e-30 * 2.12512e+27 = 2.12512e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000000100000010010111011100100;
b = 32'b00000101110101110100010010111001;
correct = 32'b01000000100000010010111011100100;
#400 //4.03697 * 2.02437e-35 = 4.03697
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100011001001001001100011100000;
b = 32'b10001111010101000110110101001000;
correct = 32'b01100011001001001001100011100000;
#400 //3.03628e+21 * -1.04735e-29 = 3.03628e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001011000000100000110100001001;
b = 32'b11100000110000110011000011110001;
correct = 32'b11100000110000110011000011110001;
#400 //-2.50469e-32 * -1.1252e+20 = -1.1252e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001011101101011110010010100000;
b = 32'b11110100011011001110000110001010;
correct = 32'b11110100011011001110000110001010;
#400 //-7.00627e-32 * -7.50706e+31 = -7.50706e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010000000000111001100100101001;
b = 32'b00001100011010101101001000110101;
correct = 32'b11010000000000111001100100101001;
#400 //-8.83141e+09 * 1.809e-31 = -8.83141e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011011001110110111100000011001;
b = 32'b10111001111000101010001101101010;
correct = 32'b01011011001110110111100000011001;
#400 //5.27679e+16 * -0.000432278 = 5.27679e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101100011001000000110100011001;
b = 32'b11001101110010001010000111110110;
correct = 32'b11001101110010001010000111110110;
#400 //3.2408e-12 * -4.20757e+08 = -4.20757e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001101000111100101010101011100;
b = 32'b01011010010100110100100011100111;
correct = 32'b01011010010100110100100011100111;
#400 //-1.66025e+08 * 1.48678e+16 = 1.48678e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110100100100001111000000000111;
b = 32'b00011010010101010101001010101010;
correct = 32'b01110100100100001111000000000111;
#400 //9.18651e+31 * 4.41141e-23 = 9.18651e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010001001110101101100101110101;
b = 32'b11111110111001001110101110001100;
correct = 32'b11111110111001001110101110001100;
#400 //-5.0157e+10 * -1.52144e+38 = -1.52144e+38
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011111101111101010111011101100;
b = 32'b00001001001110000001101111111001;
correct = 32'b11011111101111101010111011101100;
#400 //-2.74804e+19 * 2.21613e-33 = -2.74804e+19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101111011010001110001000111110;
b = 32'b01011100000010001010000011110110;
correct = 32'b11101111011010001110001000111110;
#400 //-7.2074e+28 * 1.5383e+17 = -7.2074e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101110101101000011110111001000;
b = 32'b10111101100110100101111110011110;
correct = 32'b11101110101101000011110111001000;
#400 //-2.7891e+28 * -0.0753777 = -2.7891e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111100000111011000000110000000;
b = 32'b11001111101110001000011010000011;
correct = 32'b01111100000111011000000110000000;
#400 //3.27127e+36 * -6.19165e+09 = 3.27127e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000010100001011110000111100110;
b = 32'b01100010111111101110111111101010;
correct = 32'b01100010111111101110111111101010;
#400 //1.96723e-37 * 2.35138e+21 = 2.35138e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100111001001100010000000001001;
b = 32'b01111001100101011110000010000111;
correct = 32'b01111001100101011110000010000111;
#400 //-7.84504e+23 * 9.72758e+34 = 9.72758e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000101110011101110110000101111;
b = 32'b10100101111010111101100010101111;
correct = 32'b10100101111010111101100010101111;
#400 //1.94589e-35 * -4.09128e-16 = -4.09128e-16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001100000111110111101110101011;
b = 32'b01001100110100011101011101000011;
correct = 32'b01001101000100001100101010001100;
#400 //4.18075e+07 * 1.10017e+08 = 1.51825e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111100110100011101100110001001;
b = 32'b01111110110001001100000110011011;
correct = 32'b01111110110001001100000110011011;
#400 //-0.0256164 * 1.30767e+38 = 1.30767e+38
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101011011011111011000111101011;
b = 32'b00010110010101011001010110011110;
correct = 32'b11101011011011111011000111101011;
#400 //-2.89773e+26 * 1.72532e-25 = -2.89773e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010100101110011110010110011010;
b = 32'b01101001101101101111100100110011;
correct = 32'b01101001101101101111100100110011;
#400 //-1.87708e-26 * 2.76502e+25 = 2.76502e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111001110011000111000011101111;
b = 32'b01100010111010110001001011100010;
correct = 32'b01100010111010110001001011100010;
#400 //0.000389941 * 2.16817e+21 = 2.16817e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011010001011001100011000010000;
b = 32'b01000100000001000001100101101100;
correct = 32'b11011010001011001100011000010000;
#400 //-1.21579e+16 * 528.397 = -1.21579e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111110011101111001111000000001;
b = 32'b10011011111101010100001111000101;
correct = 32'b01111110011101111001111000000001;
#400 //8.22849e+37 * -4.05756e-22 = 8.22849e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010100101011010110100000001000;
b = 32'b10001001001111000000110111001100;
correct = 32'b11010100101011010110100000001000;
#400 //-5.9582e+12 * -2.26362e-33 = -5.9582e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011010101100001010101001001100;
b = 32'b11010000000010100011000011100101;
correct = 32'b11011010101100001010101001010000;
#400 //-2.48634e+16 * -9.27384e+09 = -2.48634e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000011110000111001011110011010;
b = 32'b11101010010101001000010110101110;
correct = 32'b11101010010101001000010110101110;
#400 //391.184 * -6.42309e+25 = -6.42309e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000010010111100110001111111010;
b = 32'b11011001100000111011110001011110;
correct = 32'b11011001100000111011110001011110;
#400 //1.63387e-37 * -4.63504e+15 = -4.63504e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001101000110010001010000111011;
b = 32'b11001111001011010010000000011101;
correct = 32'b11001111001011010010000000011101;
#400 //-4.71711e-31 * -2.90456e+09 = -2.90456e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011011011100011000110011011110;
b = 32'b00010010011010010101001101111111;
correct = 32'b01011011011100011000110011011110;
#400 //6.79904e+16 * 7.36248e-28 = 6.79904e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000111001010100110001001100111;
b = 32'b01011000010110000111000000010010;
correct = 32'b01011000010110000111000000010010;
#400 //-1.28183e-34 * 9.51903e+14 = 9.51903e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111010000011001100111110111001;
b = 32'b10011110111110001001111000000111;
correct = 32'b10111010000011001100111110111001;
#400 //-0.000537153 * -2.63234e-20 = -0.000537153
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111001100100111101010110011100;
b = 32'b01110011101011111100001010011001;
correct = 32'b11111001100100111100101010100000;
#400 //-9.595e+34 * 2.78503e+31 = -9.59222e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110110101100000000010000000101;
b = 32'b10010010110100011011011000101111;
correct = 32'b11110110101100000000010000000101;
#400 //-1.78501e+33 * -1.32347e-27 = -1.78501e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100111001111111111010111100001;
b = 32'b11110010010010110110011101000100;
correct = 32'b11110010010010110110011101000100;
#400 //2.66399e-15 * -4.02882e+30 = -4.02882e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000000001101000101000110111000;
b = 32'b10011010111101000100110011101111;
correct = 32'b01000000001101000101000110111000;
#400 //2.81749 * -1.0104e-22 = 2.81749
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111010111010001010101100011011;
b = 32'b11010111101010111110111110110101;
correct = 32'b01111010111010001010101100011011;
#400 //6.04042e+35 * -3.78092e+14 = 6.04042e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110011101000001101100111100101;
b = 32'b01111001000011110010101000100000;
correct = 32'b01111001000011110001011000000101;
#400 //-2.54879e+31 * 4.64596e+34 = 4.64341e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001010101100010000111000101000;
b = 32'b11011100000101110000110010010001;
correct = 32'b11011100000101110000110010010001;
#400 //1.70498e-32 * -1.70066e+17 = -1.70066e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111000111110110100010111001010;
b = 32'b11011011111100010100111011011000;
correct = 32'b11011011111100010100111011011000;
#400 //-0.000119816 * -1.35844e+17 = -1.35844e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000001010101110010001011011000;
b = 32'b01011000010000101101110000000000;
correct = 32'b01011000010000101101110000000000;
#400 //13.446 * 8.57001e+14 = 8.57001e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101100001001010110110010101010;
b = 32'b11111101111000100011000000101110;
correct = 32'b11111101111000100011000000101110;
#400 //7.99944e+26 * -3.7582e+37 = -3.7582e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110111111010111010001100001110;
b = 32'b10000011101010101010010011111110;
correct = 32'b00110111111010111010001100001110;
#400 //2.80901e-05 * -1.00296e-36 = 2.80901e-05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011000001100111000101111111000;
b = 32'b01011001000011010110110010010111;
correct = 32'b01011001000011010110110010010111;
#400 //-2.32059e-24 * 2.48796e+15 = 2.48796e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111101110100100010101100011010;
b = 32'b10010110101010101011110100000011;
correct = 32'b10111101110100100010101100011010;
#400 //-0.102621 * -2.75843e-25 = -0.102621
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010100100010110011011101101111;
b = 32'b10010111110010101111000011111000;
correct = 32'b11010100100010110011011101101111;
#400 //-4.78344e+12 * -1.31148e-24 = -4.78344e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110011101100000011111010000101;
b = 32'b00010100101001101101100100110110;
correct = 32'b01110011101100000011111010000101;
#400 //2.7927e+31 * 1.68474e-26 = 2.7927e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110101111000010000101001101110;
b = 32'b01110000000000100001011000110000;
correct = 32'b01110101111000010001101010110001;
#400 //5.70546e+32 * 1.61039e+29 = 5.70707e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000000000101000101001000100100;
b = 32'b11101010001111111100100100011110;
correct = 32'b11101010001111111100100100011110;
#400 //-2.31751 * -5.79636e+25 = -5.79636e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000101111000000111000011110010;
b = 32'b10110001101111101100110000111000;
correct = 32'b10110001101111101100110000111000;
#400 //2.11063e-35 * -5.55294e-09 = -5.55294e-09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101011011000001000010011000111;
b = 32'b01111101110000100110010010111000;
correct = 32'b01111101110000100110010010111000;
#400 //7.97651e-13 * 3.22991e+37 = 3.22991e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001010001101101100101001100010;
b = 32'b00011000010100110111011011111110;
correct = 32'b11001010001101101100101001100010;
#400 //-2.99484e+06 * 2.73312e-24 = -2.99484e+06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101100000011110010010000001001;
b = 32'b01001110011001110001001000111101;
correct = 32'b01001110011001110001001000111101;
#400 //-2.03415e-12 * 9.69183e+08 = 9.69183e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100100010001001111110001110000;
b = 32'b11010110110101010010000011010001;
correct = 32'b01100100010001001111110001110000;
#400 //1.4535e+22 * -1.17168e+14 = 1.4535e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100000110000000011110100101100;
b = 32'b11000001111010110010011101110101;
correct = 32'b11000001111010110010011101110101;
#400 //-3.25665e-19 * -29.3943 = -29.3943
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100011100010110101010101111100;
b = 32'b10110000011001110010101110110101;
correct = 32'b10110000011001110010101110110101;
#400 //1.51066e-17 * -8.40994e-10 = -8.40994e-10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001111110101001000111011101111;
b = 32'b11100111101100010110101100111001;
correct = 32'b11100111101100010110101100111001;
#400 //7.13227e+09 * -1.67567e+24 = -1.67567e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001101110010101110101111101011;
b = 32'b11101110101011101101100110100001;
correct = 32'b11101110101011101101100110100001;
#400 //-4.25557e+08 * -2.70567e+28 = -2.70567e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111101100001010100100111111011;
b = 32'b11001001111101110001011010110000;
correct = 32'b01111101100001010100100111111011;
#400 //2.21464e+37 * -2.02415e+06 = 2.21464e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011101111100000011001000011100;
b = 32'b01011101100010100110101110111111;
correct = 32'b01011101100010100110101110111111;
#400 //6.35793e-21 * 1.24678e+18 = 1.24678e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000000001010010101001110101101;
b = 32'b11100001100000000110110101111111;
correct = 32'b11100001100000000110110101111111;
#400 //2.64573 * -2.96134e+20 = -2.96134e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011000101101111001100011110011;
b = 32'b00010101000011100000000111001110;
correct = 32'b10011000101101100111110011101111;
#400 //-4.74588e-24 * 2.86781e-26 = -4.7172e-24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011100100001000001000001111000;
b = 32'b10010010110000101111010000001001;
correct = 32'b10011100100001000001000010000100;
#400 //-8.73928e-22 * -1.23033e-27 = -8.7393e-22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110110100000100101010011110100;
b = 32'b10011000000010000010000101110000;
correct = 32'b10110110100000100101010011110100;
#400 //-3.88419e-06 * -1.75945e-24 = -3.88419e-06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100001101011010101100000110101;
b = 32'b10101111111000100011000100110011;
correct = 32'b11100001101011010101100000110101;
#400 //-3.99705e+20 * -4.11441e-10 = -3.99705e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001100001111111000001010010001;
b = 32'b11100111110010101110011010001000;
correct = 32'b11100111110010101110011010001000;
#400 //1.47534e-31 * -1.91634e+24 = -1.91634e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111010001010111000111110111011;
b = 32'b01110111101000111010001010000100;
correct = 32'b01110111101000111010001010000100;
#400 //0.000654455 * 6.63782e+33 = 6.63782e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001010111000101100101010001001;
b = 32'b00001011101110000000010110111101;
correct = 32'b01001010111000101100101010001001;
#400 //7.43149e+06 * 7.08829e-32 = 7.43149e+06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110111101100000111101000110010;
b = 32'b00101000011100001110110110000011;
correct = 32'b00110111101100000111101000110010;
#400 //2.10377e-05 * 1.33742e-14 = 2.10377e-05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011000010000101011111001001111;
b = 32'b11000111000110111000011011011110;
correct = 32'b11000111000110111000011011011110;
#400 //2.517e-24 * -39814.9 = -39814.9
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110110110010100111110001010000;
b = 32'b01010011111000110100110100001111;
correct = 32'b11110110110010100111110001010000;
#400 //-2.05345e+33 * 1.9525e+12 = -2.05345e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110111111100001101100111000110;
b = 32'b10100111100101100011001101101101;
correct = 32'b00110111111100001101100111000110;
#400 //2.87116e-05 * -4.16891e-15 = 2.87116e-05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100010001110101101011110010011;
b = 32'b01100011101000110010101001110011;
correct = 32'b01100011101000110010101001110011;
#400 //-2.53218e-18 * 6.01976e+21 = 6.01976e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100110000010010000001110101010;
b = 32'b01010100011111000100011010010010;
correct = 32'b01010100011111000100011010010010;
#400 //4.75364e-16 * 4.33406e+12 = 4.33406e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010100111100010001010100001110;
b = 32'b10111111000110101111001010011100;
correct = 32'b11010100111100010001010100001110;
#400 //-8.28352e+12 * -0.605264 = -8.28352e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110010001001011010111001010110;
b = 32'b00000010000101101101110000001010;
correct = 32'b10110010001001011010111001010110;
#400 //-9.6439e-09 * 1.10834e-37 = -9.6439e-09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000010110101011100110101100011;
b = 32'b01100010011000100101101101010111;
correct = 32'b01100010011000100101101101010111;
#400 //-3.14154e-37 * 1.04389e+21 = 1.04389e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110001000001001111000010110111;
b = 32'b11010000101100101111111100101110;
correct = 32'b11110001000001001111000010110111;
#400 //-6.58288e+29 * -2.40245e+10 = -6.58288e+29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011000101100111111011100111011;
b = 32'b00001110101010011011010011000001;
correct = 32'b01011000101100111111011100111011;
#400 //1.583e+15 * 4.18358e-30 = 1.583e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001011010110010000111100111100;
b = 32'b00100100010110111111000100010011;
correct = 32'b11001011010110010000111100111100;
#400 //-1.42252e+07 * 4.76923e-17 = -1.42252e+07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111011010111001110010001101011;
b = 32'b01111010100110001000010010101010;
correct = 32'b01111010100110001000010010101010;
#400 //0.00337055 * 3.9596e+35 = 3.9596e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101010101011010001001011100111;
b = 32'b01001010101000010001001011110000;
correct = 32'b11101010101011010001001011100111;
#400 //-1.04617e+26 * 5.27807e+06 = -1.04617e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011100011011111100001010101101;
b = 32'b00100110010110110000101000100011;
correct = 32'b00100110010110110000101000110010;
#400 //7.93301e-22 * 7.59946e-16 = 7.59947e-16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101110111100110011100111011000;
b = 32'b01011010101001011101100101010001;
correct = 32'b01011010101001011101100101010001;
#400 //-1.10606e-10 * 2.33412e+16 = 2.33412e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111100111111110111001011001011;
b = 32'b01101001000110110100110111111011;
correct = 32'b01101001000110110100110111111011;
#400 //0.0311827 * 1.17345e+25 = 1.17345e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001000100111110011011111001101;
b = 32'b10100011011111101100011110011101;
correct = 32'b10100011011111101100011110011101;
#400 //-9.58258e-34 * -1.38116e-17 = -1.38116e-17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110101001111110010011100011110;
b = 32'b01110010001111110010000101111001;
correct = 32'b11110101001111000010101010011000;
#400 //-2.42315e+32 * 3.78573e+30 = -2.38529e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010010111011001001000001100111;
b = 32'b01101100011101100010011110101101;
correct = 32'b01101100011101100010011110101101;
#400 //-5.08017e+11 * 1.19033e+27 = 1.19033e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011110000110011100011000010010;
b = 32'b01011010111100011110111100110010;
correct = 32'b11011110000101111110001000110100;
#400 //-2.77014e+18 * 3.40492e+16 = -2.73609e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111010011100110011101101110100;
b = 32'b11101100110001011100011001010101;
correct = 32'b01111010011100110011101101110100;
#400 //3.15733e+35 * -1.91276e+27 = 3.15733e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110100000011011010100010100100;
b = 32'b11010100011000011000011110010000;
correct = 32'b11110100000011011010100010100100;
#400 //-4.48935e+31 * -3.87457e+12 = -4.48935e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111001111010101010010011001010;
b = 32'b10011111110000110111000010101000;
correct = 32'b01111001111010101010010011001010;
#400 //1.52292e+35 * -8.27721e-20 = 1.52292e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011110001111010100110111111101;
b = 32'b10110100000000001011111100001001;
correct = 32'b10110100000000001011111100001001;
#400 //1.00217e-20 * -1.19904e-07 = -1.19904e-07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011000000011110111111000001110;
b = 32'b01111010111100111101101101100010;
correct = 32'b01111010111100111101101101100010;
#400 //-1.8546e-24 * 6.33089e+35 = 6.33089e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110011100110011110011000110100;
b = 32'b11101100101011100011110101010011;
correct = 32'b11101100101011100011110101010011;
#400 //7.16649e-08 * -1.68514e+27 = -1.68514e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111001000100010100000000001001;
b = 32'b11111101010000111100010010011111;
correct = 32'b11111101010001000101010111011111;
#400 //-4.71364e+34 * -1.62638e+37 = -1.63109e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000111000010111101001100010110;
b = 32'b01101010111101000101101111001101;
correct = 32'b01101010111101000101101111001101;
#400 //-1.05192e-34 * 1.47706e+26 = 1.47706e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011101010010011111111100101100;
b = 32'b00111101111010000110010111010111;
correct = 32'b00111101111010000110010111010111;
#400 //2.6734e-21 * 0.113475 = 0.113475
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010011001101010101101110111001;
b = 32'b00110000101111001101100111111101;
correct = 32'b00110000101111001101100111111101;
#400 //-2.28906e-27 * 1.37408e-09 = 1.37408e-09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100101101101101100011110111110;
b = 32'b11000010000110100000011000000001;
correct = 32'b11100101101101101100011110111110;
#400 //-1.07894e+23 * -38.5059 = -1.07894e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110000101011100000100111001000;
b = 32'b11101001000011010101000100011010;
correct = 32'b11110000101011100000101011100011;
#400 //-4.30898e+29 * -1.06776e+25 = -4.30908e+29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100100011001101011000111101000;
b = 32'b00100100010100101010110100010100;
correct = 32'b01100100011001101011000111101000;
#400 //1.70223e+22 * 4.56831e-17 = 1.70223e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000010011100101000011111100011;
b = 32'b10111000011001101001100000101010;
correct = 32'b11000010011100101000011111110001;
#400 //-60.6327 * -5.4978e-05 = -60.6328
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100110100001011111001011001110;
b = 32'b10111001100010000000101000011100;
correct = 32'b11100110100001011111001011001110;
#400 //-3.16277e+23 * -0.000259475 = -3.16277e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001001100011001010100000110100;
b = 32'b00100000101011111110111000101011;
correct = 32'b00100000101011111110111000101011;
#400 //3.3862e-33 * 2.98038e-19 = 2.98038e-19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001101111111011010001101110100;
b = 32'b00101000001000100011111000010111;
correct = 32'b01001101111111011010001101110100;
#400 //5.31918e+08 * 9.00627e-15 = 5.31918e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001101100001010101011010000000;
b = 32'b00000011000100011010100110110001;
correct = 32'b01001101100001010101011010000000;
#400 //2.7963e+08 * 4.28065e-37 = 2.7963e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101011100111111001111101100100;
b = 32'b10101110100010101011111111110101;
correct = 32'b10101110100010000100000101110111;
#400 //1.13419e-12 * -6.30961e-11 = -6.19619e-11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001111101111001100000101010001;
b = 32'b01101110000011110111110000111011;
correct = 32'b01101110000011110111110000111011;
#400 //-1.86127e-29 * 1.11016e+28 = 1.11016e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010101110110001011001110000000;
b = 32'b01111101111110101000011000001100;
correct = 32'b01111101111110101000011000001100;
#400 //-8.75249e-26 * 4.16254e+37 = 4.16254e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011111000100001001110010110111;
b = 32'b00111101111111111110010101111001;
correct = 32'b01011111000100001001110010110111;
#400 //1.04204e+19 * 0.124949 = 1.04204e+19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000110010111010000110101100101;
b = 32'b01101010111010001101110101111001;
correct = 32'b01101010111010001101110101111001;
#400 //-4.15753e-35 * 1.40758e+26 = 1.40758e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011011011101100000000101011101;
b = 32'b00011111010010100111111101001010;
correct = 32'b00011111010010110111010101001011;
#400 //2.03491e-22 * 4.28805e-20 = 4.30839e-20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101011111111100111000000100010;
b = 32'b10100011100100000001101100000000;
correct = 32'b00101011111111100110111110010010;
#400 //1.80789e-12 * -1.56239e-17 = 1.80788e-12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100101011101010011101001111111;
b = 32'b01110000000100011000110001110000;
correct = 32'b01110000000100011000110001110100;
#400 //7.23787e+22 * 1.8018e+29 = 1.8018e+29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101101100100010100001100110110;
b = 32'b01001111010001110100111010001100;
correct = 32'b01001111010001110100111010001100;
#400 //-1.65144e-11 * 3.34381e+09 = 3.34381e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101110110111010111000010100110;
b = 32'b00010111001000111100100100111111;
correct = 32'b01101110110111010111000010100110;
#400 //3.42662e+28 * 5.29221e-25 = 3.42662e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010110001101010100101111001000;
b = 32'b11100011101100100110000010000010;
correct = 32'b11100011101100100110000010000010;
#400 //1.4645e-25 * -6.58095e+21 = -6.58095e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110001010101101010001101000010;
b = 32'b01100100010111010101001001101000;
correct = 32'b11110001010101101010001101000010;
#400 //-1.06283e+30 * 1.63307e+22 = -1.06283e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001101010010110010000001111100;
b = 32'b01001110111100011101100111110110;
correct = 32'b01001110110110000111010111100110;
#400 //-2.12994e+08 * 2.0288e+09 = 1.8158e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111111000010101110100010010111;
b = 32'b00010100110110111111001000111010;
correct = 32'b11111111000010101110100010010111;
#400 //-1.84641e+38 * 2.22089e-26 = -1.84641e+38
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011110010010101110000111000100;
b = 32'b10001001001111000100010111111000;
correct = 32'b00011110010010101110000111000100;
#400 //1.07405e-20 * -2.26626e-33 = 1.07405e-20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110011111000101010110011010111;
b = 32'b10101010100100110000011011111110;
correct = 32'b10110011111000101010110011111100;
#400 //-1.05554e-07 * -2.61173e-13 = -1.05554e-07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011111110110110011111110000110;
b = 32'b11111101001010001101111111001101;
correct = 32'b11111101001010001101111111001101;
#400 //-9.28552e-20 * -1.40295e+37 = -1.40295e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000000100111001110111010101101;
b = 32'b01101000110011001110010110111001;
correct = 32'b01101000110011001110010110111001;
#400 //-4.90414 * 7.7408e+24 = 7.7408e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011111011000011100001110111000;
b = 32'b10101010001110010000011111111100;
correct = 32'b10101010001110010000100000000000;
#400 //-4.78075e-20 * -1.64341e-13 = -1.64341e-13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011110000110001110000101011101;
b = 32'b00010110111011100011110110000111;
correct = 32'b00011110000110001110001100111001;
#400 //8.09342e-21 * 3.84898e-25 = 8.0938e-21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110111101101100110001000101001;
b = 32'b01001010110010001110010101111000;
correct = 32'b01110111101101100110001000101001;
#400 //7.39835e+33 * 6.58297e+06 = 7.39835e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100101110000010100001101010111;
b = 32'b01000111010100001001011101100011;
correct = 32'b01000111010100001001011101100011;
#400 //3.35258e-16 * 53399.4 = 53399.4
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001001000000000001010000101100;
b = 32'b11000000110101011001100111101010;
correct = 32'b01001001000000000001001111000001;
#400 //524611.0 * -6.67504 = 524604.0
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010011100000011001001110010101;
b = 32'b01000001110000010001111010001000;
correct = 32'b01000001110000010001111010001000;
#400 //3.27097e-27 * 24.1399 = 24.1399
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011100101001110100000011101110;
b = 32'b01111000001101001000010001110111;
correct = 32'b01111000001101001000010001110111;
#400 //1.10679e-21 * 1.46453e+34 = 1.46453e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101101110000010010001100010011;
b = 32'b11001101110101011111011110011011;
correct = 32'b11001101110101011111011110011011;
#400 //2.19571e-11 * -4.48722e+08 = -4.48722e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111011111000001001101111110111;
b = 32'b01101001101011001010111111100000;
correct = 32'b11111011111000001001101111110111;
#400 //-2.33248e+36 * 2.60957e+25 = -2.33248e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100110100100111011100111100100;
b = 32'b00110111001110111100000110010101;
correct = 32'b00110111001110111100000110010101;
#400 //-1.02506e-15 * 1.11911e-05 = 1.11911e-05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111111100111010101000010111011;
b = 32'b00011101000010010010100001101101;
correct = 32'b00111111100111010101000010111011;
#400 //1.22903 * 1.81527e-21 = 1.22903
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110011110010110001000000001101;
b = 32'b11100010110000110001110110111000;
correct = 32'b01110011110010110001000000001101;
#400 //3.21766e+31 * -1.79963e+21 = 3.21766e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100111010000000010000000111001;
b = 32'b00111011000011000001001010001010;
correct = 32'b01100111010000000010000000111001;
#400 //9.07289e+23 * 0.00213734 = 9.07289e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010101111101101110110001100001;
b = 32'b01101001101011001111110011110000;
correct = 32'b01101001101011001111110011110000;
#400 //-9.97315e-26 * 2.61412e+25 = 2.61412e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000111111101011010011000101011;
b = 32'b10010010100101100010100011000110;
correct = 32'b10010010100101100010100011001010;
#400 //-3.69612e-34 * -9.47638e-28 = -9.47639e-28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101000000101010110111111000111;
b = 32'b01011010011011100011001000000101;
correct = 32'b01011010011011100011001000000101;
#400 //8.2954e-15 * 1.67615e+16 = 1.67615e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000010000010011001100011100010;
b = 32'b00001000110111111000011111001110;
correct = 32'b01000010000010011001100011100010;
#400 //34.3993 * 1.34533e-33 = 34.3993
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001011101011101110000111100111;
b = 32'b01011110011001000101100110010100;
correct = 32'b01011110011001000101100110010100;
#400 //6.73623e-32 * 4.11359e+18 = 4.11359e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010110001001110000001111010000;
b = 32'b00101010011100110000011001100110;
correct = 32'b00101010011100110000011001100110;
#400 //-1.34914e-25 * 2.1585e-13 = 2.1585e-13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111110101111110000110010011101;
b = 32'b00100100111111001111001100101001;
correct = 32'b11111110101111110000110010011101;
#400 //-1.26974e+38 * 1.097e-16 = -1.26974e+38
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100100110100011010010111110001;
b = 32'b11110100010110001111001010001001;
correct = 32'b11110100010110001111001010001001;
#400 //-3.09386e+22 * -6.87534e+31 = -6.87534e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011000110000111111100010010100;
b = 32'b11110011100010011111100010001110;
correct = 32'b11110011100010011111100010001110;
#400 //5.06573e-24 * -2.18624e+31 = -2.18624e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100100011100110010000000010111;
b = 32'b10101010010010011001110110101100;
correct = 32'b01100100011100110010000000010111;
#400 //1.79395e+22 * -1.79071e-13 = 1.79395e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110111110100000100111111111001;
b = 32'b10010100110011100100100100110000;
correct = 32'b01110111110100000100111111111001;
#400 //8.45015e+33 * -2.08296e-26 = 8.45015e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110010001101101001000101010101;
b = 32'b00001110011011001111100110110111;
correct = 32'b11110010001101101001000101010101;
#400 //-3.61613e+30 * 2.92095e-30 = -3.61613e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000111111011001011000010101111;
b = 32'b00011010100110110100110000001101;
correct = 32'b00011010100110110100110000001101;
#400 //3.56132e-34 * 6.42294e-23 = 6.42294e-23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000101110100101110000001001110;
b = 32'b00110001111011101100001001110101;
correct = 32'b11000101110100101110000001001110;
#400 //-6748.04 * 6.94882e-09 = -6748.04
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000011000011110110111111111010;
b = 32'b11010000100110001001100101110101;
correct = 32'b11010000100110001001100101110101;
#400 //-143.437 * -2.04816e+10 = -2.04816e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100100111010001110010000100100;
b = 32'b11010001101100000100101001011100;
correct = 32'b11100100111010001110010000100100;
#400 //-3.43687e+22 * -9.46452e+10 = -3.43687e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000000011011010011110111110111;
b = 32'b01001110111000011011101010010010;
correct = 32'b01001110111000011011101010010010;
#400 //-1.00323e-38 * 1.89355e+09 = 1.89355e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110111011111111101100100100010;
b = 32'b11011111011101001010111001101110;
correct = 32'b01110111011111111101100100100010;
#400 //5.18922e+33 * -1.76312e+19 = 5.18922e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101011100000001111010101101101;
b = 32'b00110011011100100001001000100100;
correct = 32'b01101011100000001111010101101101;
#400 //3.11803e+26 * 5.63615e-08 = 3.11803e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110111100101001001011000111100;
b = 32'b01011110000100010101001000101001;
correct = 32'b01110111100101001001011000111100;
#400 //6.0274e+33 * 2.61787e+18 = 6.0274e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010100011111110001111100110101;
b = 32'b01110001000011001111110110101010;
correct = 32'b01110001000011001111110110101010;
#400 //-1.28804e-26 * 6.98153e+29 = 6.98153e+29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100100000100101110001011110101;
b = 32'b00101010101101111010101010001110;
correct = 32'b11100100000100101110001011110101;
#400 //-1.08383e+22 * 3.26257e-13 = -1.08383e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011110111001101110000101101111;
b = 32'b00000000010010101111010101000010;
correct = 32'b10011110111001101110000101101111;
#400 //-2.44454e-20 * 6.88381e-39 = -2.44454e-20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101000111011010101100010001010;
b = 32'b01100011010011011011100100001000;
correct = 32'b01101000111011010111001001000001;
#400 //8.96667e+24 * 3.79492e+21 = 8.97047e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010101110110001000011000010110;
b = 32'b10101001000111011100101001001001;
correct = 32'b10101001000111011100101001001001;
#400 //-8.74533e-26 * -3.50365e-14 = -3.50365e-14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111101010010001000101001001111;
b = 32'b10111110111010101100110111011011;
correct = 32'b10111111000000011110111110010010;
#400 //-0.04896 * -0.458602 = -0.507562
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110100100001101011001111010101;
b = 32'b01011100111001010000010100000100;
correct = 32'b01011100111001010000010100000100;
#400 //2.50903e-07 * 5.15706e+17 = 5.15706e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001110110110010111001000100100;
b = 32'b01111001111010111101100110000100;
correct = 32'b01111001111010111101100110000100;
#400 //1.82407e+09 * 1.53075e+35 = 1.53075e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111010110011001111010110011010;
b = 32'b00000001001100111111101011111010;
correct = 32'b10111010110011001111010110011010;
#400 //-0.00156372 * 3.30572e-38 = -0.00156372
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001011011101110101000110110011;
b = 32'b11111100000001111110100001000011;
correct = 32'b11111100000001111110100001000011;
#400 //4.76319e-32 * -2.82268e+36 = -2.82268e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111000110101000010011000000111;
b = 32'b00000011000011011100011110100000;
correct = 32'b00111000110101000010011000000111;
#400 //0.00010116 * 4.16653e-37 = 0.00010116
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111110100100101001101100010000;
b = 32'b10000010100001011001100010111111;
correct = 32'b11111110100100101001101100010000;
#400 //-9.74362e+37 * -1.96303e-37 = -9.74362e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100000111110011110011001101110;
b = 32'b00110011000110000111100101100111;
correct = 32'b00110011000110000111100101100111;
#400 //-4.23347e-19 * 3.55007e-08 = 3.55007e-08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001011001100011110011001011100;
b = 32'b10100011001100000010000001111010;
correct = 32'b01001011001100011110011001011100;
#400 //1.16588e+07 * -9.54786e-18 = 1.16588e+07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110010101011000000111001011101;
b = 32'b00000100110000001001100000010011;
correct = 32'b11110010101011000000111001011101;
#400 //-6.81584e+30 * 4.52786e-36 = -6.81584e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101001011111111100010100011101;
b = 32'b01000000100101000101011110001010;
correct = 32'b01000000100101000101011110001010;
#400 //-5.67923e-14 * 4.63569 = 4.63569
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001101111110100010111110010010;
b = 32'b00111100101101000100010001111101;
correct = 32'b00111100101101000100010001111101;
#400 //1.54189e-30 * 0.0220053 = 0.0220053
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000110110111010011110110100111;
b = 32'b00101000000010000010100110110010;
correct = 32'b00101000000010000010100110110010;
#400 //-8.32216e-35 * 7.55856e-15 = 7.55856e-15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010011011111000111110000011010;
b = 32'b00100100100100101010000011111111;
correct = 32'b11010011011111000111110000011010;
#400 //-1.08441e+12 * 6.35901e-17 = -1.08441e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101001010001110100001110010101;
b = 32'b01000110000011000100111101100110;
correct = 32'b01000110000011000100111101100110;
#400 //4.42455e-14 * 8979.85 = 8979.85
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100010111010011011000111101010;
b = 32'b11110010010100101111011111010001;
correct = 32'b11110010010100101111011111010001;
#400 //6.33432e-18 * -4.17865e+30 = -4.17865e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111011111011001110001010000100;
b = 32'b11110001000001100000011100100000;
correct = 32'b01111011111011001110001010000000;
#400 //2.45995e+36 * -6.63674e+29 = 2.45995e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111011111001110101011001101100;
b = 32'b11011111111110100010001010110101;
correct = 32'b01111011111001110101011001101100;
#400 //2.40235e+36 * -3.60483e+19 = 2.40235e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101000100011100000011111101010;
b = 32'b00100101011110110000000011010011;
correct = 32'b00101000100011111111110111101100;
#400 //1.57686e-14 * 2.17711e-16 = 1.59863e-14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000010001101110111010000111100;
b = 32'b01001000101100101001010101100011;
correct = 32'b01001000101100101001010101100011;
#400 //1.34781e-37 * 365739.0 = 365739.0
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110011010100111111111101001110;
b = 32'b11001011110000111100001110000110;
correct = 32'b11110011010100111111111101001110;
#400 //-1.67962e+31 * -2.56591e+07 = -1.67962e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001111000000000001001010111101;
b = 32'b10011000001011011011011000000111;
correct = 32'b11001111000000000001001010111101;
#400 //-2.14871e+09 * -2.24516e-24 = -2.14871e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000011001110100011110110000101;
b = 32'b11000101110000111001101101000000;
correct = 32'b11000101110000111001101101000000;
#400 //5.47311e-37 * -6259.41 = -6259.41
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000010100000111100000001001101;
b = 32'b00101010001010111011000100100010;
correct = 32'b00101010001010111011000100100010;
#400 //1.93591e-37 * 1.52493e-13 = 1.52493e-13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000010011111011011011100111011;
b = 32'b11000110001111010110100011100110;
correct = 32'b11000110001111010110100011100110;
#400 //-1.86401e-37 * -12122.2 = -12122.2
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001011011000000000110000111001;
b = 32'b10111011110000000101110001011011;
correct = 32'b10111011110000000101110001011011;
#400 //-4.315e-32 * -0.00587038 = -0.00587038
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100000011100001111101011010010;
b = 32'b01111001001010101100011011100001;
correct = 32'b01111001001010101100011011100001;
#400 //-2.04118e-19 * 5.54203e+34 = 5.54203e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011000011011100000100100000110;
b = 32'b01001110111110010101011001100010;
correct = 32'b11011000011011100000100011100111;
#400 //-1.04689e+15 * 2.09159e+09 = -1.04689e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111000010101110011010010010011;
b = 32'b10111110101011011000011110101011;
correct = 32'b10111110101011011000000011110001;
#400 //5.1309e-05 * -0.338926 = -0.338874
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000110000000111010001000101100;
b = 32'b00001111100011111111111110101000;
correct = 32'b00001111100011111111111110011000;
#400 //-2.47575e-35 * 1.41994e-29 = 1.41993e-29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001010110010110100000001101011;
b = 32'b11000011001111101010000100100001;
correct = 32'b11000011001111101010000100100001;
#400 //-1.95724e-32 * -190.629 = -190.629
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010111000110011110111100100000;
b = 32'b11000001101010111011101001010000;
correct = 32'b11010111000110011110111100100000;
#400 //-1.69252e+14 * -21.466 = -1.69252e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001001001010011110111010100111;
b = 32'b01010000010101100111000011011010;
correct = 32'b01010000010101100110111000110010;
#400 //-696042.0 * 1.43909e+10 = 1.43902e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110111101001011001010101001111;
b = 32'b11000111100101101010000100010100;
correct = 32'b11000111100101101010000100010100;
#400 //-1.97391e-05 * -77122.2 = -77122.2
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001111010101011011000111011100;
b = 32'b10110111101011011111001110010100;
correct = 32'b01001111010101011011000111011100;
#400 //3.5852e+09 * -2.07366e-05 = 3.5852e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010010111001111000010011011100;
b = 32'b01011111101000010110100111101100;
correct = 32'b01011111101000010110100111101100;
#400 //4.97183e+11 * 2.32622e+19 = 2.32622e+19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100000011001100101010010101111;
b = 32'b01011100011000010011110010111101;
correct = 32'b01011100011000010011110010111101;
#400 //-1.95098e-19 * 2.53595e+17 = 2.53595e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101011010010011111011110111101;
b = 32'b01011110001010001010001000000011;
correct = 32'b01011110001010001010001000000011;
#400 //-7.17534e-13 * 3.03782e+18 = 3.03782e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100011001100110101111110100000;
b = 32'b01101110000101101010110010001101;
correct = 32'b01101110000101101010110010001101;
#400 //-9.72386e-18 * 1.16578e+28 = 1.16578e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000111111011101010010000111001;
b = 32'b00000101011001011001101011000001;
correct = 32'b10000111111001110111011101100011;
#400 //-3.59068e-34 * 1.0796e-35 = -3.48272e-34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000001010010110101000110000011;
b = 32'b00010101110000100011000000101101;
correct = 32'b00010101110000100011000000101101;
#400 //3.73437e-38 * 7.8432e-26 = 7.8432e-26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101010010110010001110101010111;
b = 32'b01110101010000111100001000100111;
correct = 32'b01110101010000111100001000100111;
#400 //-1.92837e-13 * 2.48153e+32 = 2.48153e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101100011010000110111001011111;
b = 32'b01111100001000011001000011001000;
correct = 32'b01111100001000011001000011001000;
#400 //-3.30305e-12 * 3.35559e+36 = 3.35559e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001001001011101101111011111001;
b = 32'b01001001001101100011000011100001;
correct = 32'b01001001001101100011000011100001;
#400 //2.10493e-33 * 746254.0 = 746254.0
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111010000011000000001011000011;
b = 32'b11111011010010111010011101001100;
correct = 32'b11111011010010111010011101001100;
#400 //-0.000534099 * -1.05743e+36 = -1.05743e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001110001101011100000101101011;
b = 32'b00000100011100001001001110011111;
correct = 32'b00001110001101011100000101111010;
#400 //2.24031e-30 * 2.82796e-36 = 2.24031e-30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010001111100111011000110111110;
b = 32'b11110101110000010111111101010001;
correct = 32'b11110101110000010111111101010001;
#400 //-1.30832e+11 * -4.90574e+32 = -4.90574e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000011011000110101111000100100;
b = 32'b10100010000111101010000110010011;
correct = 32'b11000011011000110101111000100100;
#400 //-227.368 * -2.14985e-18 = -227.368
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111100011000101010001011101010;
b = 32'b10110111110001011011000111100101;
correct = 32'b01111100011000101010001011101010;
#400 //4.70705e+36 * -2.35671e-05 = 4.70705e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110001001110110011011000111011;
b = 32'b01110100001011110100111011100001;
correct = 32'b01110100001011110100111011100001;
#400 //2.72429e-09 * 5.55574e+31 = 5.55574e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000100101110101001010110010110;
b = 32'b10011011001111110000001000110101;
correct = 32'b10011011001111110000001000110101;
#400 //-4.38658e-36 * -1.57999e-22 = -1.57999e-22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000110011111100110011111001010;
b = 32'b10001000111101001110100010001100;
correct = 32'b11000110011111100110011111001010;
#400 //-16281.9 * -1.47399e-33 = -16281.9
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010011111101001110110111111010;
b = 32'b00011100000010111010001011000001;
correct = 32'b11010011111101001110110111111010;
#400 //-2.10393e+12 * 4.62016e-22 = -2.10393e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000010100101100010001010111000;
b = 32'b10001001010110111011111001000111;
correct = 32'b01000010100101100010001010111000;
#400 //75.0678 * -2.64506e-33 = 75.0678
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100101110000010111101110100101;
b = 32'b01000110000111111000101101110100;
correct = 32'b01100101110000010111101110100101;
#400 //1.14212e+23 * 10210.9 = 1.14212e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011110000011011011010010101110;
b = 32'b01000100000010100011111000111101;
correct = 32'b01000100000010100011111000111101;
#400 //7.50184e-21 * 552.972 = 552.972
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100101000111010001000101010001;
b = 32'b10111010101011101000100001101101;
correct = 32'b10111010101011101000100001101101;
#400 //-1.36234e-16 * -0.00133158 = -0.00133158
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011010011100000011101110111100;
b = 32'b00000101101101101001101001111010;
correct = 32'b10011010011100000011101110111100;
#400 //-4.96791e-23 * 1.71719e-35 = -4.96791e-23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010010100010100101001000101000;
b = 32'b01110011101010100010110100110011;
correct = 32'b01110011101010100010110100110011;
#400 //8.72928e-28 * 2.69656e+31 = 2.69656e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101111100110011111010101000101;
b = 32'b11100011001001011001010001110100;
correct = 32'b11101111100110011111010101000101;
#400 //-9.52954e+28 * -3.05441e+21 = -9.52954e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101100001011101101000110010000;
b = 32'b10110111101111010101100000011000;
correct = 32'b10110111101111010101100000011001;
#400 //-2.48432e-12 * -2.25716e-05 = -2.25716e-05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010001110001000011110001001111;
b = 32'b11110110110011001010011110000011;
correct = 32'b11110110110011001010011110000011;
#400 //-3.09605e-28 * -2.07544e+33 = -2.07544e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011000110100111001110001000011;
b = 32'b00111110000100101110000000101100;
correct = 32'b00111110000100101110000000101100;
#400 //-5.47e-24 * 0.143433 = 0.143433
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010111110111001010000101000011;
b = 32'b11011011001001010010111111001000;
correct = 32'b11011011001000110111011010000101;
#400 //4.8517e+14 * -4.64959e+16 = -4.60107e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100001100011101101101010011111;
b = 32'b01111010001110000110101111110101;
correct = 32'b01111010001110000110101111110101;
#400 //3.29399e+20 * 2.39393e+35 = 2.39393e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011100110100000100100000100111;
b = 32'b11010110001101001111010011100100;
correct = 32'b01011100110100000100001001111111;
#400 //4.69009e+17 * -4.9741e+13 = 4.68959e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100100011001111100011101111010;
b = 32'b10010100110000101111101010110000;
correct = 32'b10100100011001111100011101111010;
#400 //-5.02591e-17 * -1.96879e-26 = -5.02591e-17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101101001000000100011011001101;
b = 32'b10101100100101010001011001011010;
correct = 32'b11101101001000000100011011001101;
#400 //-3.1002e+27 * -4.23732e-12 = -3.1002e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010110110001010001100101110111;
b = 32'b00100110000000011010001011100100;
correct = 32'b00100110000000011010001011100100;
#400 //3.18431e-25 * 4.49766e-16 = 4.49766e-16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010100111110111010001111000001;
b = 32'b01111010101101001010000010101101;
correct = 32'b01111010101101001010000010101101;
#400 //-8.64627e+12 * 4.68936e+35 = 4.68936e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111100100010011010111001100101;
b = 32'b11010110101010111100110010110111;
correct = 32'b11010110101010111100110010110111;
#400 //-0.0168068 * -9.44479e+13 = -9.44479e+13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011000000000011000010011010110;
b = 32'b00011000110000000011101000101100;
correct = 32'b01011000000000011000010011010110;
#400 //5.6963e+14 * 4.96896e-24 = 5.6963e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110110010011011100101000010010;
b = 32'b00011110001111010101001000011100;
correct = 32'b11110110010011011100101000010010;
#400 //-1.04348e+33 * 1.00226e-20 = -1.04348e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010010111001101101111001111110;
b = 32'b10000001000101001001010110011000;
correct = 32'b00010010111001101101111001111110;
#400 //1.45699e-27 * -2.72906e-38 = 1.45699e-27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010110010000100011000000001101;
b = 32'b01111001011001001010110101110111;
correct = 32'b01111001011001001010110101110111;
#400 //1.56864e-25 * 7.42101e+34 = 7.42101e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011110001111101001101010111100;
b = 32'b01000000100100001010111000001111;
correct = 32'b01011110001111101001101010111100;
#400 //3.43362e+18 * 4.52125 = 3.43362e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110101000001000001010000010011;
b = 32'b11000101110101000101111011100101;
correct = 32'b11110101000001000001010000010011;
#400 //-1.67429e+32 * -6795.86 = -1.67429e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010101110000110100011010001101;
b = 32'b01010111011111001100111101101011;
correct = 32'b01010111011111001100111101101011;
#400 //-7.88712e-26 * 2.77968e+14 = 2.77968e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000000000001010001011001111001;
b = 32'b01010101011110000011000110001011;
correct = 32'b01010101011110000011000110001011;
#400 //4.67239e-40 * 1.70557e+13 = 1.70557e+13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010100001101110001011101011100;
b = 32'b11111111010010011110100000110011;
correct = 32'b11111111010010011110100000110011;
#400 //9.24375e-27 * -2.6838e+38 = -2.6838e+38
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001010100011101101100010100111;
b = 32'b01101010001100010110000110100000;
correct = 32'b01101010001100010110000110100000;
#400 //-1.37556e-32 * 5.36102e+25 = 5.36102e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000111111101110001011110100110;
b = 32'b01111101110000000101001000010110;
correct = 32'b01111101110000000101001000010110;
#400 //-126511.0 * 3.19547e+37 = 3.19547e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101001010011000110111111000101;
b = 32'b00111010101010001001011010011100;
correct = 32'b00111010101010001001011010011100;
#400 //-4.5394e-14 * 0.00128623 = 0.00128623
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110000101001000100101111111011;
b = 32'b10110111111110100010010011001011;
correct = 32'b10110111111110100010011101011100;
#400 //-1.19542e-09 * -2.98195e-05 = -2.98207e-05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111011010111001010001001011101;
b = 32'b11111010110000110000111101110010;
correct = 32'b01111010111101100011010101001000;
#400 //1.1456e+36 * -5.06406e+35 = 6.39193e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011101101011011101010010110110;
b = 32'b01010010101100101111101000111010;
correct = 32'b01010010101100101111101000111010;
#400 //-4.60127e-21 * 3.84351e+11 = 3.84351e+11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100111001100100001001011010101;
b = 32'b10101000100100000001010111000110;
correct = 32'b01100111001100100001001011010101;
#400 //8.40929e+23 * -1.59967e-14 = 8.40929e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000010011101100000011010010000;
b = 32'b11010100011110010011100110010100;
correct = 32'b11010100011110010011100110010100;
#400 //-1.80751e-37 * -4.28165e+12 = -4.28165e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000010000010101001110010110101;
b = 32'b00110101010001011110010011011011;
correct = 32'b11000010000010101001110010110101;
#400 //-34.653 * 7.37212e-07 = -34.653
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000100010111011001010010001001;
b = 32'b00000001011101111011101100010100;
correct = 32'b00000100011000010111001101110101;
#400 //2.60466e-36 * 4.5501e-38 = 2.65016e-36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111010000000001011110001000111;
b = 32'b00010011001001011111100000011001;
correct = 32'b11111010000000001011110001000111;
#400 //-1.67108e+35 * 2.09482e-27 = -1.67108e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011111011010000001000001101111;
b = 32'b11111001001111101000011101011111;
correct = 32'b11111001001111101000011101011111;
#400 //1.6722e+19 * -6.18301e+34 = -6.18301e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111110011011010101111010011100;
b = 32'b10000010001110001111010110101000;
correct = 32'b11111110011011010101111010011100;
#400 //-7.88796e+37 * -1.35887e-37 = -7.88796e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111011111010010001001001111000;
b = 32'b10000001010010000111011101000101;
correct = 32'b01111011111010010001001001111000;
#400 //2.42036e+36 * -3.68198e-38 = 2.42036e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001011001100010100010100001010;
b = 32'b10111111000000001001001111000110;
correct = 32'b10111111000000001001001111000110;
#400 //3.41409e-32 * -0.502255 = -0.502255
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100010111101100011011001010111;
b = 32'b11111001001010000000111001011001;
correct = 32'b11111001001010000000111001011001;
#400 //2.27091e+21 * -5.45373e+34 = -5.45373e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110100111011111100101101101011;
b = 32'b11101110000011001000000110000110;
correct = 32'b01110100111011111100011100000111;
#400 //1.51988e+32 * -1.08711e+28 = 1.51977e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010000111010010111010000011001;
b = 32'b10100000000101011010001001101100;
correct = 32'b11010000111010010111010000011001;
#400 //-3.13336e+10 * -1.26745e-19 = -3.13336e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011111100101101000100110001110;
b = 32'b10000010000010011000111011011011;
correct = 32'b11011111100101101000100110001110;
#400 //-2.16947e+19 * -1.01062e-37 = -2.16947e+19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001000000010010100101110101100;
b = 32'b11111011111010011011101110101000;
correct = 32'b11111011111010011011101110101000;
#400 //-140591.0 * -2.42722e+36 = -2.42722e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111111111001011100111111111111;
b = 32'b11011110011101010110001011101011;
correct = 32'b11011110011101010110001011101011;
#400 //1.79541 * -4.42049e+18 = -4.42049e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111100011111111111101001100011;
b = 32'b00010100001010100111111011111101;
correct = 32'b01111100011111111111101001100011;
#400 //5.31646e+36 * 8.60785e-27 = 5.31646e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101100010101010110100000101111;
b = 32'b00000000100101111110111010101110;
correct = 32'b01101100010101010110100000101111;
#400 //1.03197e+27 * 1.39528e-38 = 1.03197e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000100000100110110110100010110;
b = 32'b10010101011100010001100000101011;
correct = 32'b10010101011100010001100000101011;
#400 //-1.73299e-36 * -4.86886e-26 = -4.86886e-26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110100110110000111000111111011;
b = 32'b00001001101000011110011111100110;
correct = 32'b11110100110110000111000111111011;
#400 //-1.37188e+32 * 3.89774e-33 = -1.37188e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011111011000100001001110111101;
b = 32'b00110101111000011110111110000111;
correct = 32'b11011111011000100001001110111101;
#400 //-1.62906e+19 * 1.68335e-06 = -1.62906e+19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111000101100100011100000001010;
b = 32'b10010000100110010011011111111011;
correct = 32'b01111000101100100011100000001010;
#400 //2.89177e+34 * -6.04341e-29 = 2.89177e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001110001100011010011011101011;
b = 32'b00101111001100001000000001100010;
correct = 32'b01001110001100011010011011101011;
#400 //7.45127e+08 * 1.60527e-10 = 7.45127e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000111110110101010111111000001;
b = 32'b10001111100110011100110011000111;
correct = 32'b10001111100110011100101111101100;
#400 //3.29043e-34 * -1.51658e-29 = -1.51655e-29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000101111101110111010111101011;
b = 32'b01001001101110010000111100000110;
correct = 32'b01001001101110000001011110010000;
#400 //-7918.74 * 1.516e+06 = 1.50808e+06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000100001010011000101111001110;
b = 32'b11111100000000110110001000011010;
correct = 32'b11111100000000110110001000011010;
#400 //678.184 * -2.72872e+36 = -2.72872e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111001011111010000000011010100;
b = 32'b10101001001110111011001000011001;
correct = 32'b00111001011111010000000011010100;
#400 //0.000241283 * -4.16768e-14 = 0.000241283
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110011000100001010000100100001;
b = 32'b01011100011101010101110100100011;
correct = 32'b01011100011101010101110100100011;
#400 //-3.36742e-08 * 2.76255e+17 = 2.76255e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111000110000000101111111101110;
b = 32'b00000110111110101111011100000011;
correct = 32'b00111000110000000101111111101110;
#400 //9.17314e-05 * 9.44025e-35 = 9.17314e-05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011011010100111110111001111111;
b = 32'b10101011010100100111001110100000;
correct = 32'b10101011010100100111001110100000;
#400 //-1.75306e-22 * -7.47674e-13 = -7.47674e-13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110111111011000110101110101010;
b = 32'b11000101100010110010010110110010;
correct = 32'b11110111111011000110101110101010;
#400 //-9.59036e+33 * -4452.71 = -9.59036e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011000000111100111011111011101;
b = 32'b11000110010111101010000100110101;
correct = 32'b11000110010111101010000100110101;
#400 //2.04815e-24 * -14248.3 = -14248.3
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001100001001011001001000000001;
b = 32'b00100100100000100010000000001001;
correct = 32'b00100100100000100010000000001001;
#400 //1.27551e-31 * 5.64328e-17 = 5.64328e-17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101110111100000010011101011001;
b = 32'b11001010110111101100101010100000;
correct = 32'b11001010110111101100101010100000;
#400 //-1.09209e-10 * -7.30043e+06 = -7.30043e+06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100000110100101000000011110110;
b = 32'b00010000110100111101001010110000;
correct = 32'b01100000110100101000000011110110;
#400 //1.21347e+20 * 8.35494e-29 = 1.21347e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101110011001010110001011001001;
b = 32'b01110001011010101011100111000110;
correct = 32'b01110001011011100100111101010001;
#400 //1.77479e+28 * 1.16231e+30 = 1.18005e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000101000111010001011011111000;
b = 32'b11110010101101000111100110011010;
correct = 32'b11110010101101000111100110011010;
#400 //7.38632e-36 * -7.14935e+30 = -7.14935e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100010110101011100110111001111;
b = 32'b00111000000110100101101011110111;
correct = 32'b00111000000110100101101011110111;
#400 //-5.79517e-18 * 3.68012e-05 = 3.68012e-05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001001110100111101100111111111;
b = 32'b10110100110111101100111011101000;
correct = 32'b10110100110111101100111011101000;
#400 //-5.10014e-33 * -4.15013e-07 = -4.15013e-07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000110000000001100010111110011;
b = 32'b00100000101000000100101001101001;
correct = 32'b11000110000000001100010111110011;
#400 //-8241.49 * 2.71543e-19 = -8241.49
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000110010100111110101110110101;
b = 32'b10110100011010011100111000001111;
correct = 32'b11000110010100111110101110110101;
#400 //-13562.9 * -2.17748e-07 = -13562.9
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000101010010110000110011110000;
b = 32'b11111010010110000011011100001100;
correct = 32'b11111010010110000011011100001100;
#400 //3248.81 * -2.80663e+35 = -2.80663e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001010000100110110110111111011;
b = 32'b11111110111001011100001100010111;
correct = 32'b11111110111001011100001100010111;
#400 //-7.09848e-33 * -1.52703e+38 = -1.52703e+38
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100011011111110001000100001010;
b = 32'b10001011000111000110111110101010;
correct = 32'b00100011011111110001000100001010;
#400 //1.38272e-17 * -3.01285e-32 = 1.38272e-17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011100111001011000111011001101;
b = 32'b00101001011000111011110000110111;
correct = 32'b00101001011000111011110000110111;
#400 //1.51909e-21 * 5.05674e-14 = 5.05674e-14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011001101011001010101001001111;
b = 32'b00010010010000011011100111001001;
correct = 32'b00011001101011001010101111010010;
#400 //1.78532e-23 * 6.11291e-28 = 1.78538e-23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100111000100010011011001000001;
b = 32'b10110100110100100111001100111101;
correct = 32'b11100111000100010011011001000001;
#400 //-6.85744e+23 * -3.91994e-07 = -6.85744e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010010101011000001000110000100;
b = 32'b01011010011011011111100011111010;
correct = 32'b01011010011011011111011110100010;
#400 //-3.69514e+11 * 1.67458e+16 = 1.67455e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110011110100100001110110000001;
b = 32'b10111101100100111100101000100110;
correct = 32'b10111101100100111100101000110011;
#400 //-9.78425e-08 * -0.0721629 = -0.072163
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111110000001110101000000110010;
b = 32'b00110100000010110111111111100010;
correct = 32'b00111110000001110101000000111011;
#400 //0.132142 * 1.29919e-07 = 0.132142
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001010101110101011101000001100;
b = 32'b01000100011100110011011000011111;
correct = 32'b01000100011100110011011000011111;
#400 //1.79811e-32 * 972.846 = 972.846
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011111011011110011001101011001;
b = 32'b11101000111010000110101001110011;
correct = 32'b11101000111010000110101001110011;
#400 //5.06527e-20 * -8.78042e+24 = -8.78042e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101100010111011001111111100101;
b = 32'b10110000000000111110000111100111;
correct = 32'b11101100010111011001111111100101;
#400 //-1.07171e+27 * -4.79785e-10 = -1.07171e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001000110110011001100101100010;
b = 32'b01011001011100111001110100111001;
correct = 32'b01011001011100111001110100111001;
#400 //-445643.0 * 4.28571e+15 = 4.28571e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010011101101110111010101010101;
b = 32'b10111101111101110110111001011101;
correct = 32'b10111101111101110110111001011101;
#400 //-4.63114e-27 * -0.120816 = -0.120816
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100110000011011000010110111010;
b = 32'b10010001010010011101010111011100;
correct = 32'b00100110000011011000010110111010;
#400 //4.91004e-16 * -1.5922e-28 = 4.91004e-16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000110101101000101110110101000;
b = 32'b11001100011001010111100101110111;
correct = 32'b11001100011001010111100101110111;
#400 //-6.78461e-35 * -6.01554e+07 = -6.01554e+07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010100101011101111100110001100;
b = 32'b01100101110010011100010011110111;
correct = 32'b01100101110010011100010011110111;
#400 //-6.01209e+12 * 1.19104e+23 = 1.19104e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100010101010100111000010001010;
b = 32'b01110100011110111110101001111000;
correct = 32'b01110100011110111110101001111000;
#400 //4.61977e-18 * 7.98353e+31 = 7.98353e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101111001001001010110011111000;
b = 32'b10001001001010101101000100100001;
correct = 32'b01101111001001001010110011111000;
#400 //5.09646e+28 * -2.05613e-33 = 5.09646e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101011110101010110001111001001;
b = 32'b11100001011011110010101000000011;
correct = 32'b01101011110101010110001111000010;
#400 //5.15945e+26 * -2.75737e+20 = 5.15945e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010000011111000010111000001100;
b = 32'b00100101100101000011011101100010;
correct = 32'b01010000011111000010111000001100;
#400 //1.69235e+10 * 2.57114e-16 = 1.69235e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100001111000111001010110011010;
b = 32'b11101101010110111111101011111101;
correct = 32'b11101101010110111111101011111111;
#400 //-5.24774e+20 * -4.25504e+27 = -4.25504e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001100111101000010101010010110;
b = 32'b11100000111101010111011110111111;
correct = 32'b11100000111101010111011110111111;
#400 //-3.76198e-31 * -1.41503e+20 = -1.41503e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100011111000110000100101010001;
b = 32'b11000000010111110100000001010100;
correct = 32'b11000000010111110100000001010100;
#400 //-2.46153e-17 * -3.4883 = -3.4883
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000110001101101111110010001101;
b = 32'b10000001010101010001101101000011;
correct = 32'b10000110001101110011000111010100;
#400 //-3.44159e-35 * -3.91415e-38 = -3.44551e-35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100000101110011000001011100001;
b = 32'b10010111101101100000001111011110;
correct = 32'b01100000101110011000001011100001;
#400 //1.0694e+20 * -1.17625e-24 = 1.0694e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111010110101010010100111100001;
b = 32'b10010011111111001100010101110111;
correct = 32'b01111010110101010010100111100001;
#400 //5.53404e+35 * -6.38085e-27 = 5.53404e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010111101111101001001011011010;
b = 32'b01101100101111001001110011101110;
correct = 32'b01101100101111001001110011101110;
#400 //-1.23155e-24 * 1.82415e+27 = 1.82415e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100100010100011101000001100100;
b = 32'b11001000000001001111000011100010;
correct = 32'b01100100010100011101000001100100;
#400 //1.54815e+22 * -136132.0 = 1.54815e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000010010110011000010111100101;
b = 32'b10101000011101110001110000000000;
correct = 32'b10101000011101110001110000000000;
#400 //-1.59811e-37 * -1.37173e-14 = -1.37173e-14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000111000101001101111100000001;
b = 32'b00000101000100001110111111100011;
correct = 32'b00000111000111011110110111111111;
#400 //1.11998e-34 * 6.81491e-36 = 1.18813e-34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001111000101000000010100010100;
b = 32'b00100011110110110100110110001111;
correct = 32'b00100011110110110100110110001111;
#400 //7.29794e-30 * 2.37769e-17 = 2.37769e-17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010101010001111010010011000011;
b = 32'b10000001101101111010000110101010;
correct = 32'b01010101010001111010010011000011;
#400 //1.37194e+13 * -6.74556e-38 = 1.37194e+13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000111111010000111100111011011;
b = 32'b10101100101110001000110100010110;
correct = 32'b10101100101110001000110100010110;
#400 //-3.49791e-34 * -5.24526e-12 = -5.24526e-12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001001101101110100100011000110;
b = 32'b11111011100011110101000010111100;
correct = 32'b11111011100011110101000010111100;
#400 //-4.41241e-33 * -1.48827e+36 = -1.48827e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100010111101010100010110111101;
b = 32'b11001101100110111111101100111110;
correct = 32'b01100010111101010100010110111101;
#400 //2.26224e+21 * -3.27117e+08 = 2.26224e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100011101111111110101111100100;
b = 32'b00100101001001100111110010110010;
correct = 32'b00100101001111100111101000101110;
#400 //2.08082e-17 * 1.44405e-16 = 1.65213e-16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010110000010111010011111010000;
b = 32'b11111000010100000111101001000101;
correct = 32'b11111000010100000111101001000101;
#400 //3.83882e+13 * -1.69137e+34 = -1.69137e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110010000011100111011010111011;
b = 32'b11111101011101000010111000010111;
correct = 32'b11111101011101000010111000010111;
#400 //8.29248e-09 * -2.02857e+37 = -2.02857e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110111010000111101011001010100;
b = 32'b01100110110100001111001011111001;
correct = 32'b01100110110100001111001011111001;
#400 //-1.16728e-05 * 4.93367e+23 = 4.93367e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011111010001010100010111100111;
b = 32'b01101100110000111011000000001110;
correct = 32'b01101100110000111011000000001110;
#400 //-1.4215e+19 * 1.89258e+27 = 1.89258e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000110001001000000101010011001;
b = 32'b01011000010010111110000100000011;
correct = 32'b01011000010010111110000100000011;
#400 //3.08528e-35 * 8.96669e+14 = 8.96669e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010011010111010001001100111101;
b = 32'b01111101001110100111111011100011;
correct = 32'b01111101001110100111111011100011;
#400 //-2.79036e-27 * 1.54935e+37 = 1.54935e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101000101001111001110001001000;
b = 32'b10001111001001001101000010001101;
correct = 32'b11101000101001111001110001001000;
#400 //-6.33214e+24 * -8.12599e-30 = -6.33214e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101100110110110011000100111010;
b = 32'b01110111100001010001010100010011;
correct = 32'b01110111100001010001010100010011;
#400 //-6.22982e-12 * 5.39846e+33 = 5.39846e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100111010011100000011100100110;
b = 32'b11011100011001001011101111110010;
correct = 32'b11011100011001001011101111110010;
#400 //-2.85921e-15 * -2.57532e+17 = -2.57532e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000011010110010111111010010010;
b = 32'b11110101010110100110101100010100;
correct = 32'b11110101010110100110101100010100;
#400 //217.494 * -2.76878e+32 = -2.76878e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000010000011110111110010100111;
b = 32'b00111001011111011111110011011110;
correct = 32'b00111001011111011111110011011110;
#400 //1.05418e-37 * 0.000242222 = 0.000242222
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101100101010111100100101010100;
b = 32'b11001110110100101011010010110111;
correct = 32'b11101100101010111100100101010100;
#400 //-1.66142e+27 * -1.76753e+09 = -1.66142e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111001010100010011111001110111;
b = 32'b11011111010101000011100010101000;
correct = 32'b11011111010101000011100010101000;
#400 //0.000199551 * -1.52922e+19 = -1.52922e+19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110011101010100101111001101010;
b = 32'b10111010111101000001100100111000;
correct = 32'b10111010111101000001011010001111;
#400 //7.93342e-08 * -0.00186232 = -0.00186224
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001010100111100011010010000101;
b = 32'b00000011000101011101001010111011;
correct = 32'b01001010100111100011010010000101;
#400 //5.18407e+06 * 4.40291e-37 = 5.18407e+06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110111101100001101001011110000;
b = 32'b01110101011001111110100100100000;
correct = 32'b01110111101110000001001000111001;
#400 //7.17283e+33 * 2.93982e+32 = 7.46681e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110011001010110010011101000101;
b = 32'b01101011001010001000011111010001;
correct = 32'b11110011001010110010011010011100;
#400 //-1.35602e+31 * 2.03741e+26 = -1.356e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010000101110101010011110001110;
b = 32'b00100010000000001011110010100001;
correct = 32'b01010000101110101010011110001110;
#400 //2.50523e+10 * 1.74471e-18 = 2.50523e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000010111010011010001110011000;
b = 32'b00100010101010101001010100000100;
correct = 32'b01000010111010011010001110011000;
#400 //116.82 * 4.62364e-18 = 116.82
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110100101000100011100011000011;
b = 32'b01010001011000100101001011000110;
correct = 32'b01010001011000100101001011000110;
#400 //3.02162e-07 * 6.07532e+10 = 6.07532e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100111100110010010100000010100;
b = 32'b00100010011001110101110011000000;
correct = 32'b00100111100110010100010100000000;
#400 //4.25095e-15 * 3.13554e-18 = 4.25408e-15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011101000010000111110011100110;
b = 32'b01100110001011100100100101001000;
correct = 32'b01100110001011100100100100100110;
#400 //-6.14687e+17 * 2.05761e+23 = 2.0576e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001100100000011011111001111001;
b = 32'b11000111101000111111011010011100;
correct = 32'b01001100100000011001010101111011;
#400 //6.80232e+07 * -83949.2 = 6.79393e+07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100101111111110010100110110000;
b = 32'b10000110110111110101100101100101;
correct = 32'b10100101111111110010100110110000;
#400 //-4.42637e-16 * -8.40146e-35 = -4.42637e-16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010010111110111111011010011000;
b = 32'b10000101010101000101111101110111;
correct = 32'b10010010111110111111011010011000;
#400 //-1.59011e-27 * -9.98573e-36 = -1.59011e-27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000001101011101101110001101011;
b = 32'b00010111111110010001001110011111;
correct = 32'b11000001101011101101110001101011;
#400 //-21.8576 * 1.60962e-24 = -21.8576
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000000101011000000100010110001;
b = 32'b01101100010001011101001100010110;
correct = 32'b01101100010001011101001100010110;
#400 //-1.57988e-38 * 9.56621e+26 = 9.56621e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110110001110001001100000000110;
b = 32'b10001111011111000101010010100001;
correct = 32'b10110110001110001001100000000110;
#400 //-2.75066e-06 * -1.24409e-29 = -2.75066e-06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101011110010110001001001011111;
b = 32'b10001110110100010010010110001101;
correct = 32'b11101011110010110001001001011111;
#400 //-4.90997e+26 * -5.15586e-30 = -4.90997e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110001100001010000110010000010;
b = 32'b01110011110101010010000111101100;
correct = 32'b01110011110011001101000100100100;
#400 //-1.31765e+30 * 3.37722e+31 = 3.24545e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111110110100001001111010000011;
b = 32'b01101000110110011001001110111001;
correct = 32'b01101000110110011001001110111001;
#400 //0.407459 * 8.21983e+24 = 8.21983e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100100001010110011110010110100;
b = 32'b10001101001101000001110011011010;
correct = 32'b01100100001010110011110010110100;
#400 //1.26351e+22 * -5.55015e-31 = 1.26351e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000100010101111001100010000010;
b = 32'b00000110000001000000101010001101;
correct = 32'b00000110000100011000010000010101;
#400 //2.53432e-36 * 2.48342e-35 = 2.73685e-35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001000000111111001101101101000;
b = 32'b10000011111110100110001111011101;
correct = 32'b11001000000111111001101101101000;
#400 //-163438.0 * -1.47166e-36 = -163438.0
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001111011110110101110110111101;
b = 32'b11101100011000000010001001001101;
correct = 32'b11101100011000000010001001001101;
#400 //-4.21722e+09 * -1.08385e+27 = -1.08385e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101100000110101100110100110110;
b = 32'b01010011011101000011100000100000;
correct = 32'b01101100000110101100110100110110;
#400 //7.48575e+26 * 1.04891e+12 = 7.48575e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111000100011010011010001010010;
b = 32'b01011001111100000010000010001100;
correct = 32'b11111000100011010011010001010010;
#400 //-2.29117e+34 * 8.44872e+15 = -2.29117e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100100011000010011101011010101;
b = 32'b01110111011111110100001100001110;
correct = 32'b01110111011111110100001100001110;
#400 //-1.6619e+22 * 5.17733e+33 = 5.17733e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111011111111010110111101100000;
b = 32'b10101100100011001010001111101001;
correct = 32'b11111011111111010110111101100000;
#400 //-2.63182e+36 * -3.99724e-12 = -2.63182e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101000110010000100101011001000;
b = 32'b10101011000110110100010101111111;
correct = 32'b10101011000101010000001100101001;
#400 //2.22369e-14 * -5.51635e-13 = -5.29398e-13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010100100100011110110110110001;
b = 32'b10111110010111000001010000010100;
correct = 32'b10111110010111000001010000010100;
#400 //-1.4735e-26 * -0.21492 = -0.21492
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010011101001011000110110011001;
b = 32'b10001111010101001000110000000000;
correct = 32'b10010011101001011111011111011111;
#400 //-4.17915e-27 * -1.04794e-29 = -4.18963e-27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000000000100100010011000000100;
b = 32'b11111111011100101111101111011001;
correct = 32'b11111111011100101111101111011001;
#400 //1.66668e-39 * -3.22981e+38 = -3.22981e+38
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100001000011100011101101010110;
b = 32'b01100000001011100111010011111110;
correct = 32'b01100000001011100111010011111110;
#400 //4.819e-19 * 5.02838e+19 = 5.02838e+19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001110011011100000100011001011;
b = 32'b10000000101010001101110011101010;
correct = 32'b00001110011011100000100011001011;
#400 //2.934e-30 * -1.55076e-38 = 2.934e-30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000110010111011100010011000111;
b = 32'b00111111000111010001010000000011;
correct = 32'b01000110010111011100011100111011;
#400 //14193.2 * 0.613587 = 14193.8
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011111000110101001010000111010;
b = 32'b01000100010111000001100010111111;
correct = 32'b01000100010111000001100010111111;
#400 //-3.27334e-20 * 880.387 = 880.387
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100000111100101011111001010011;
b = 32'b10111010110100111001011100100011;
correct = 32'b10111010110100111001011100100011;
#400 //4.11223e-19 * -0.00161431 = -0.00161431
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111011100100000001100001101101;
b = 32'b11100000001111110100100001100010;
correct = 32'b01111011100100000001100001101101;
#400 //1.49637e+36 * -5.51335e+19 = 1.49637e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000011001111011111100100011000;
b = 32'b00101100011111111110001100000011;
correct = 32'b00101100011111111110001100000011;
#400 //-5.58281e-37 * 3.63637e-12 = 3.63637e-12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010101011011010010100010010110;
b = 32'b01100110010110101110100100100010;
correct = 32'b01100110010110101110100100100010;
#400 //-4.78938e-26 * 2.58444e+23 = 2.58444e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011001010110001011010010101101;
b = 32'b10110111010101010011100101101001;
correct = 32'b01011001010110001011010010101101;
#400 //3.81233e+15 * -1.27092e-05 = 3.81233e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011111101001110010001101011100;
b = 32'b00111001011100011001100111101101;
correct = 32'b11011111101001110010001101011100;
#400 //-2.40871e+19 * 0.000230409 = -2.40871e+19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110001100100001101001111011111;
b = 32'b01010011000000000010100000101000;
correct = 32'b01110001100100001101001111011111;
#400 //1.4343e+30 * 5.5043e+11 = 1.4343e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111000101001001011000001111001;
b = 32'b01100111101000001111010011010010;
correct = 32'b11111000101001001011000001111001;
#400 //-2.67224e+34 * 1.52019e+24 = -2.67224e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001011101010000010010010001011;
b = 32'b10001111011110011100010000111001;
correct = 32'b01001011101010000010010010001011;
#400 //2.20388e+07 * -1.23144e-29 = 2.20388e+07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010000011111010011010001011010;
b = 32'b11000010101010001010000010010011;
correct = 32'b11010000011111010011010001011010;
#400 //-1.69923e+10 * -84.3136 = -1.69923e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110101111101101000101011011011;
b = 32'b01001101100100111101111110000010;
correct = 32'b01001101100100111101111110000010;
#400 //-1.83688e-06 * 3.10112e+08 = 3.10112e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001010010101001100101011100001;
b = 32'b01001101101110000100011000011110;
correct = 32'b01001101101101101001110010001000;
#400 //-3.48639e+06 * 3.8645e+08 = 3.82964e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001110000001110100101110011110;
b = 32'b01011011001100111101101100101011;
correct = 32'b01011011001100111101101100101011;
#400 //-1.66764e-30 * 5.0625e+16 = 5.0625e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000110110001100001110110110011;
b = 32'b10000001100010010100001010000000;
correct = 32'b10000110110001100100000000000100;
#400 //-7.4523e-35 * -5.04213e-38 = -7.45734e-35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100011111010111100011001001100;
b = 32'b00100111011001010100110001100101;
correct = 32'b11100011111010111100011001001100;
#400 //-8.69855e+21 * 3.18215e-15 = -8.69855e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101100101000101100101100010011;
b = 32'b01111011001011100001100011110101;
correct = 32'b01111011001011100001100011110101;
#400 //4.62686e-12 * 9.03966e+35 = 9.03966e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101011110111111001101000001011;
b = 32'b01000110011001000010100111001100;
correct = 32'b01101011110111111001101000001011;
#400 //5.40636e+26 * 14602.4 = 5.40636e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001100000111001011101001000011;
b = 32'b00101001011110010011111011111111;
correct = 32'b01001100000111001011101001000011;
#400 //4.10852e+07 * 5.53437e-14 = 4.10852e+07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000010000000100011101111011110;
b = 32'b00011100011010101000000010100001;
correct = 32'b11000010000000100011101111011110;
#400 //-32.5585 * 7.75904e-22 = -32.5585
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110101101110101110001011011001;
b = 32'b01101010110110000011000101101111;
correct = 32'b01101010110110000011000101101111;
#400 //-1.39241e-06 * 1.30681e+26 = 1.30681e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111101100100111101000001010010;
b = 32'b10010100110100110000010010011110;
correct = 32'b00111101100100111101000001010010;
#400 //0.0721747 * -2.13074e-26 = 0.0721747
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011101001100110011001010110011;
b = 32'b10000011000001100011111011111111;
correct = 32'b00011101001100110011001010110011;
#400 //2.37167e-21 * -3.94514e-37 = 2.37167e-21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110011011100000110111001010001;
b = 32'b11111110100010110110000010011110;
correct = 32'b11111110100010110110000010011110;
#400 //-5.59797e-08 * -9.26322e+37 = -9.26322e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011111000110000000101011111111;
b = 32'b01111000010101000001000110011011;
correct = 32'b01111000010101000001000110011011;
#400 //3.21963e-20 * 1.72051e+34 = 1.72051e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101110010010111110100011010001;
b = 32'b10000100100101000101100110111101;
correct = 32'b01101110010010111110100011010001;
#400 //1.57767e+28 * -3.4877e-36 = 1.57767e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010101111101100011111111100110;
b = 32'b11001001111111000110001000011101;
correct = 32'b11001001111111000110001000011101;
#400 //-9.94594e-26 * -2.06752e+06 = -2.06752e+06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111000010000100111011010110100;
b = 32'b10101101100001001001110110110000;
correct = 32'b01111000010000100111011010110100;
#400 //1.57768e+34 * -1.50767e-11 = 1.57768e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010011110011100100101111101011;
b = 32'b00011000110011111001011011010111;
correct = 32'b01010011110011100100101111101011;
#400 //1.77207e+12 * 5.36606e-24 = 1.77207e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111000111011001011000011001110;
b = 32'b00010010100100011000101000110010;
correct = 32'b10111000111011001011000011001110;
#400 //-0.000112863 * 9.18485e-28 = -0.000112863
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000110001101101100001000011111;
b = 32'b00001101111111001001010011001100;
correct = 32'b00001101111111001001001101011110;
#400 //-3.4373e-35 * 1.55665e-30 = 1.55662e-30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000011011011101100000110010001;
b = 32'b00100011011110101001100000001001;
correct = 32'b00100011011110101001100000001001;
#400 //-7.01641e-37 * 1.35847e-17 = 1.35847e-17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001111100110100000110001111000;
b = 32'b11010111011111110111100001000100;
correct = 32'b11010111011111110111011100010000;
#400 //5.16902e+09 * -2.80892e+14 = -2.80887e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010000100011101011010101101100;
b = 32'b10100110000000110001000111110110;
correct = 32'b11010000100011101011010101101100;
#400 //-1.9154e+10 * -4.54741e-16 = -1.9154e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111101010101111011101001111100;
b = 32'b00011110001111101001110001000000;
correct = 32'b10111101010101111011101001111100;
#400 //-0.0526681 * 1.00908e-20 = -0.0526681
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100011100010011110110000000000;
b = 32'b10111100011011010101110001011111;
correct = 32'b01100011100010011110110000000000;
#400 //5.08842e+21 * -0.0144874 = 5.08842e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111000000110110001101010101000;
b = 32'b10001100101100100011010010100111;
correct = 32'b11111000000110110001101010101000;
#400 //-1.25835e+34 * -2.74569e-31 = -1.25835e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000000000111011101010110101110;
b = 32'b01011000011101101000100011000000;
correct = 32'b01011000011101101000100011000000;
#400 //-2.73988e-39 * 1.08427e+15 = 1.08427e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000011101101000100000000110111;
b = 32'b00010111010001101010110100100100;
correct = 32'b01000011101101000100000000110111;
#400 //360.502 * 6.41958e-25 = 360.502
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110111011010010110001000101100;
b = 32'b00101000111001001100111000100000;
correct = 32'b11110111011010010110001000101100;
#400 //-4.73358e+33 * 2.54025e-14 = -4.73358e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111011111011000001000000011100;
b = 32'b11110010010101110110111100000100;
correct = 32'b11110010010101110110111100000100;
#400 //-0.00720407 * -4.2671e+30 = -4.2671e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111010001010000110111101101001;
b = 32'b01011010010001011011110110011001;
correct = 32'b01011010010001011011110110011001;
#400 //0.000642529 * 1.39148e+16 = 1.39148e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011101010010001101111110001000;
b = 32'b10000010000000100010011010111000;
correct = 32'b11011101010010001101111110001000;
#400 //-9.04652e+17 * -9.562e-38 = -9.04652e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110010011011100101011110110111;
b = 32'b00110101101110001111100011111101;
correct = 32'b00110101101110101101010110101100;
#400 //1.38734e-08 * 1.37815e-06 = 1.39203e-06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101111010100010111101100101111;
b = 32'b10010110000111111001111111011011;
correct = 32'b11101111010100010111101100101111;
#400 //-6.48313e+28 * -1.28944e-25 = -6.48313e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100110110100101111010000001000;
b = 32'b10100000010101000110100101001100;
correct = 32'b11100110110100101111010000001000;
#400 //-4.98099e+23 * -1.79919e-19 = -4.98099e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100100011101110000101011111000;
b = 32'b10010000111010111110110010111011;
correct = 32'b00100100011101110000101011111000;
#400 //5.35689e-17 * -9.30559e-29 = 5.35689e-17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111100100100010000101000100111;
b = 32'b10000111110111100011101100001011;
correct = 32'b01111100100100010000101000100111;
#400 //6.02471e+36 * -3.34375e-34 = 6.02471e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001110111110111100110011100011;
b = 32'b11010110001111000010011110110010;
correct = 32'b11010110001111000010010110111010;
#400 //2.11225e+09 * -5.17197e+13 = -5.17176e+13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111110111100101011010000000000;
b = 32'b01010110100011101011010000011001;
correct = 32'b11111110111100101011010000000000;
#400 //-1.61304e+38 * 7.84521e+13 = -1.61304e+38
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011111011111100000001101001110;
b = 32'b00110011111111010111000010110100;
correct = 32'b01011111011111100000001101001110;
#400 //1.83036e+19 * 1.18017e-07 = 1.83036e+19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010100010011100100010000110110;
b = 32'b10000010000101000000010110101101;
correct = 32'b00010100010011100100010000110110;
#400 //1.04138e-26 * -1.0875e-37 = 1.04138e-26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111000100011100100000010010010;
b = 32'b01010001001001110101111100101011;
correct = 32'b01111000100011100100000010010010;
#400 //2.30817e+34 * 4.49285e+10 = 2.30817e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010110110000001111111001011000;
b = 32'b00010010011110100110000101010011;
correct = 32'b10010110110000001000000100100111;
#400 //-3.11798e-25 * 7.90061e-28 = -3.11008e-25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110100010010000001011000010111;
b = 32'b10010001001011100000011001000001;
correct = 32'b11110100010010000001011000010111;
#400 //-6.34099e+31 * -1.37281e-28 = -6.34099e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111100111101100000101100010000;
b = 32'b01101000000000010110011010010110;
correct = 32'b01111100111101100000101100010000;
#400 //1.02202e+37 * 2.44431e+24 = 1.02202e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110101111101111110010101110011;
b = 32'b10010001000101100101111011010111;
correct = 32'b00110101111101111110010101110011;
#400 //1.84697e-06 * -1.18621e-28 = 1.84697e-06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100111111011111001010100000011;
b = 32'b00001100010110011100111110110010;
correct = 32'b10100111111011111001010100000011;
#400 //-6.64974e-15 * 1.67796e-31 = -6.64974e-15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000101011011110100000010100010;
b = 32'b00010001011101110100101010100001;
correct = 32'b00010001011101110100101010100000;
#400 //-1.12496e-35 * 1.95079e-28 = 1.95079e-28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110101110101011011001001010001;
b = 32'b11101010000100000111001110010000;
correct = 32'b11101010000100000111001110010000;
#400 //-1.59216e-06 * -4.36578e+25 = -4.36578e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010100011010001001101001101111;
b = 32'b10100010010110001010011001111101;
correct = 32'b01010100011010001001101001101111;
#400 //3.99609e+12 * -2.93616e-18 = 3.99609e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001001011110101000110011101001;
b = 32'b10001101101100000001110011100000;
correct = 32'b01001001011110101000110011101001;
#400 //1.02625e+06 * -1.08538e-30 = 1.02625e+06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111110010010001010100010110100;
b = 32'b10010000110001110000000001111000;
correct = 32'b01111110010010001010100010110100;
#400 //6.66804e+37 * -7.84924e-29 = 6.66804e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101011101010110101111111010000;
b = 32'b00001101110010010000011111101000;
correct = 32'b11101011101010110101111111010000;
#400 //-4.14358e+26 * 1.23895e-30 = -4.14358e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010000111010010111011110110000;
b = 32'b01001000001111101110101100110010;
correct = 32'b01001000001111101110101100110010;
#400 //-9.20867e-29 * 195501.0 = 195501.0
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100110000000111101110101010100;
b = 32'b00001011011000011101001100111001;
correct = 32'b10100110000000111101110101010100;
#400 //-4.57497e-16 * 4.34923e-32 = -4.57497e-16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101110000110010001000111100010;
b = 32'b10010001101001001010110001110010;
correct = 32'b11101110000110010001000111100010;
#400 //-1.18432e+28 * -2.59809e-28 = -1.18432e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110100100101111001100010011011;
b = 32'b01001100011001101001000100100101;
correct = 32'b01001100011001101001000100100101;
#400 //2.8237e-07 * 6.04417e+07 = 6.04417e+07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011110011110110011011100100100;
b = 32'b01011111110001000101011010000000;
correct = 32'b01011111110001000101011010000000;
#400 //1.32992e-20 * 2.82953e+19 = 2.82953e+19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100000010111011001100100101100;
b = 32'b00011111110011011101010011000011;
correct = 32'b10011111111011010101110110010101;
#400 //-1.87701e-19 * 8.71729e-20 = -1.00528e-19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011011001100000001001100110000;
b = 32'b11001101000110110010101101001011;
correct = 32'b11011011001100000001001100110000;
#400 //-4.95607e+16 * -1.62707e+08 = -4.95607e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011111111001011001100000000011;
b = 32'b10011111101001010001101000110111;
correct = 32'b00011111000000001111101110011000;
#400 //9.72368e-20 * -6.99236e-20 = 2.73132e-20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111101010100101101101111011101;
b = 32'b01111011010100010100000001101100;
correct = 32'b01111011010100010100000001101100;
#400 //-0.0514792 * 1.0865e+36 = 1.0865e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100011000100010011111001010010;
b = 32'b11001010000010100011110111111001;
correct = 32'b11001010000010100011110111111001;
#400 //7.87366e-18 * -2.26496e+06 = -2.26496e+06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100000111011101110001101011101;
b = 32'b10101111111111101111001111010000;
correct = 32'b01100000111011101110001101011101;
#400 //1.3771e+20 * -4.63756e-10 = 1.3771e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110110110010110110010100000001;
b = 32'b00001101111100100110100001110000;
correct = 32'b00110110110010110110010100000001;
#400 //6.06163e-06 * 1.49395e-30 = 6.06163e-06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011000101111111101001101100001;
b = 32'b11111010000100101100010110000011;
correct = 32'b11111010000100101100010110000011;
#400 //1.68732e+15 * -1.9052e+35 = -1.9052e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011110101001101100101101011111;
b = 32'b10000110001111110010000100101010;
correct = 32'b00011110101001101100101101011111;
#400 //1.766e-20 * -3.59475e-35 = 1.766e-20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001111111100101111111110001110;
b = 32'b00000100101100100010000110001001;
correct = 32'b10001111111100101111111110001011;
#400 //-2.39615e-29 * 4.18784e-36 = -2.39615e-29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011101101011000111111101011010;
b = 32'b00011000000011011111010100111000;
correct = 32'b10011101101011000110110110011011;
#400 //-4.56597e-21 * 1.83476e-24 = -4.56414e-21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011011000101001000110000110000;
b = 32'b00001010110100110001001010001010;
correct = 32'b10011011000101001000110000110000;
#400 //-1.22876e-22 * 2.03255e-32 = -1.22876e-22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111111000111001101100110110001;
b = 32'b10011000010111100011111010000011;
correct = 32'b00111111000111001101100110110001;
#400 //0.612697 * -2.87244e-24 = 0.612697
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001111110111010100010111011010;
b = 32'b01100110110011101000001100011111;
correct = 32'b01100110110011101000001100011111;
#400 //-2.18192e-29 * 4.87613e+23 = 4.87613e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110100110111101111101001000000;
b = 32'b01111110000010001010010011100110;
correct = 32'b01111110000010001010010011100110;
#400 //4.15328e-07 * 4.54078e+37 = 4.54078e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011000100110000111100000000000;
b = 32'b10111110001001110011100010001110;
correct = 32'b10111110001001110011100010001110;
#400 //-3.94122e-24 * -0.163302 = -0.163302
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011001011011110010010011010011;
b = 32'b11101001110101011100001101100100;
correct = 32'b11101001110101011100001101100100;
#400 //4.20706e+15 * -3.2303e+25 = -3.2303e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010001010001110000100011010100;
b = 32'b11100110100000101000001101010000;
correct = 32'b11100110100000101000001101010000;
#400 //-1.57011e-28 * -3.08165e+23 = -3.08165e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111001001000100001100000001100;
b = 32'b10011100100010000100100110100111;
correct = 32'b10111001001000100001100000001100;
#400 //-0.000154585 * -9.01876e-22 = -0.000154585
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001110100100011110011010111001;
b = 32'b11110001111101000001011110111101;
correct = 32'b11110001111101000001011110111101;
#400 //3.59674e-30 * -2.41738e+30 = -2.41738e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001011100001101010110001100010;
b = 32'b01000011011010011110000001000011;
correct = 32'b11001011100001101010101111101101;
#400 //-1.76519e+07 * 233.876 = -1.76517e+07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011100010011101110010100100100;
b = 32'b00011110000110111100000111110001;
correct = 32'b00011110001010001011000001000011;
#400 //6.84558e-22 * 8.24574e-21 = 8.9303e-21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011110000001010011000111111001;
b = 32'b11100111111010001111001010101111;
correct = 32'b11100111111010001111001010101111;
#400 //-7.0513e-21 * -2.20013e+24 = -2.20013e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000101110111010011111101000101;
b = 32'b10000011100001101011011011011010;
correct = 32'b01000101110111010011111101000101;
#400 //7079.91 * -7.91779e-37 = 7079.91
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110111100000110001111011110000;
b = 32'b01100011110011010011100011101110;
correct = 32'b01100011110011010011100011101110;
#400 //-1.56308e-05 * 7.57137e+21 = 7.57137e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010111111010100111101000110000;
b = 32'b11001000110000111111111001101100;
correct = 32'b11001000110000111111111001101100;
#400 //-1.51527e-24 * -401395.0 = -401395.0
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101110111011010011000000011010;
b = 32'b11100101001100110101111101000100;
correct = 32'b01101110111011010011000000000100;
#400 //3.6703e+28 * -5.29413e+22 = 3.6703e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101011110100111110110000001100;
b = 32'b11100111000011011101000010100101;
correct = 32'b11100111000011011101000010100101;
#400 //-1.5058e-12 * -6.69702e+23 = -6.69702e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000111101001001100100100000010;
b = 32'b10100000011100001101000101011011;
correct = 32'b01000111101001001100100100000010;
#400 //84370.0 * -2.03981e-19 = 84370.0
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000111110010111100111111100010;
b = 32'b00100111110001101010011110101000;
correct = 32'b00100111110001101010011110101000;
#400 //3.06662e-34 * 5.51378e-15 = 5.51378e-15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011101110110010101010100001010;
b = 32'b00000100110000111100101000100101;
correct = 32'b01011101110110010101010100001010;
#400 //1.95755e+18 * 4.60299e-36 = 1.95755e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111011100111011110100110011010;
b = 32'b01010000011110111010111000110100;
correct = 32'b01010000011110111010111000110100;
#400 //0.00481911 * 1.689e+10 = 1.689e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101111010100001001110011111110;
b = 32'b01101100110000010001110110011101;
correct = 32'b01101111010101101010010111101011;
#400 //6.45627e+28 * 1.8677e+27 = 6.64304e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011000001010101111101000101100;
b = 32'b10101111011100000000010011010011;
correct = 32'b10101111011100000000010011010011;
#400 //2.20983e-24 * -2.18296e-10 = -2.18296e-10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011000000010111001101111010011;
b = 32'b11100100010001010010001001000101;
correct = 32'b11100100010001010010001001000100;
#400 //6.14006e+14 * -1.45459e+22 = -1.45459e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110001000001100010110010101000;
b = 32'b01100110101111101110001000100011;
correct = 32'b11110001000001100010110010100010;
#400 //-6.644e+29 * 4.50711e+23 = -6.64399e+29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011010001101101001001010000001;
b = 32'b10110001100000101001111110110010;
correct = 32'b01011010001101101001001010000001;
#400 //1.28474e+16 * -3.80165e-09 = 1.28474e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011100101011110010101000000010;
b = 32'b01000011100110101101001101110010;
correct = 32'b11011100101011110010101000000010;
#400 //-3.94434e+17 * 309.652 = -3.94434e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111110101110110011110111110110;
b = 32'b01001010010000010110000001101011;
correct = 32'b01001010010000010110000001101010;
#400 //-0.365707 * 3.16828e+06 = 3.16828e+06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110010000000110101011011100011;
b = 32'b11100001111010000011011000101011;
correct = 32'b11110010000000110101011011100011;
#400 //-2.60144e+30 * -5.35443e+20 = -2.60144e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001101011001111111011010011011;
b = 32'b01111000110010111100001000001101;
correct = 32'b01111000110010111100001000001101;
#400 //-2.43231e+08 * 3.30616e+34 = 3.30616e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100101101010010111100110001110;
b = 32'b00110100011011101011010000000110;
correct = 32'b01100101101010010111100110001110;
#400 //1.0004e+23 * 2.2231e-07 = 1.0004e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110000100010011110100001000110;
b = 32'b01111101111000110010000100001010;
correct = 32'b01111101111000110010000100001010;
#400 //-1.00341e-09 * 3.77383e+37 = 3.77383e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011110101110000000111000001010;
b = 32'b10010000110000101111000111001011;
correct = 32'b10011110101110000000111000001010;
#400 //-1.94876e-20 * -7.6892e-29 = -1.94876e-20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101100101111111110001110010000;
b = 32'b01111001010010000010010100000110;
correct = 32'b01111001010010000010010100000110;
#400 //1.85584e+27 * 6.49506e+34 = 6.49506e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101110010010011101001110010001;
b = 32'b01100110111111000011100101100110;
correct = 32'b01101110010010011101010110001001;
#400 //1.56156e+28 * 5.95548e+23 = 1.56162e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100110110010101101010111010101;
b = 32'b10010100110101001000001010110110;
correct = 32'b00100110110010101101010111010101;
#400 //1.40745e-15 * -2.14581e-26 = 1.40745e-15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110010000110100001011010001110;
b = 32'b00010010010011110101111010101001;
correct = 32'b01110010000110100001011010001110;
#400 //3.05203e+30 * 6.54344e-28 = 3.05203e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011000011010010010101110000000;
b = 32'b01011011110010101010110100100111;
correct = 32'b01011011110010101010110100100111;
#400 //3.01365e-24 * 1.14097e+17 = 1.14097e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010001011011010001001111000001;
b = 32'b01010011001101010011001101111011;
correct = 32'b01010011001101010011001101111011;
#400 //1.87021e-28 * 7.78253e+11 = 7.78253e+11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001010110111100101011001111001;
b = 32'b01100011101011011011010011101001;
correct = 32'b01100011101011011011010011101001;
#400 //-7.28556e+06 * 6.40865e+21 = 6.40865e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110101010001100111001111100110;
b = 32'b10010100110111111000010011101001;
correct = 32'b10110101010001100111001111100110;
#400 //-7.39294e-07 * -2.25697e-26 = -7.39294e-07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101000010001111100111111100001;
b = 32'b01110110011101000110101011111011;
correct = 32'b01110110011101000110101011111011;
#400 //-1.10918e-14 * 1.23935e+33 = 1.23935e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001100001011110100101111100101;
b = 32'b11101001100011111010111011010000;
correct = 32'b11101001100011111010111011010000;
#400 //4.59529e+07 * -2.17127e+25 = -2.17127e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010011011001010010011111001010;
b = 32'b11010110111011110011101011001110;
correct = 32'b11010110111011010111000001111110;
#400 //9.84215e+11 * -1.31518e+14 = -1.30534e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111100101001110100101111001100;
b = 32'b01111110100011111110000011100010;
correct = 32'b01111110100001010110110000100101;
#400 //-6.94921e+36 * 9.56236e+37 = 8.86744e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001101010010110110111001101000;
b = 32'b10100011011010110111111100101001;
correct = 32'b01001101010010110110111001101000;
#400 //2.13313e+08 * -1.27663e-17 = 2.13313e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010011111000011010011001100110;
b = 32'b00100110010000000000100000000101;
correct = 32'b00100110010000000000100000000101;
#400 //-5.69621e-27 * 6.66242e-16 = 6.66242e-16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110000110110001101000010011000;
b = 32'b10001000110010010110001110101111;
correct = 32'b01110000110110001101000010011000;
#400 //5.36807e+29 * -1.21207e-33 = 5.36807e+29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010111101001001010100111101110;
b = 32'b00001101101011011000110110111000;
correct = 32'b00010111101001001010100111111001;
#400 //1.06411e-24 * 1.06961e-30 = 1.06412e-24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000110101111001011000000101101;
b = 32'b01001100011001010000011111010001;
correct = 32'b01001100011001010001111101100111;
#400 //24152.1 * 6.0039e+07 = 6.00631e+07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100011100010100001001000001000;
b = 32'b10111011110001111000110001110010;
correct = 32'b10111011110001111000110001110010;
#400 //1.49696e-17 * -0.00608974 = -0.00608974
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000000001000011100111010110011;
b = 32'b00001011100101010101111001110010;
correct = 32'b00001011100101010101111001110011;
#400 //3.10472e-39 * 5.75348e-32 = 5.75348e-32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010001001111100110010011010110;
b = 32'b01111101100100001110010101111110;
correct = 32'b01111101100100001110010101111110;
#400 //1.50194e-28 * 2.40751e+37 = 2.40751e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011010110110110111001111110010;
b = 32'b00000001011110000011111010011011;
correct = 32'b10011010110110110111001111110010;
#400 //-9.07636e-23 * 4.55953e-38 = -9.07636e-23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100100100011000100100110110001;
b = 32'b01001001110100000000101111010000;
correct = 32'b01001001110100000000101111010000;
#400 //6.08402e-17 * 1.70431e+06 = 1.70431e+06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010101110010001111100001001010;
b = 32'b01011100011010110110000011011011;
correct = 32'b01011100011010110110000011011011;
#400 //8.11711e-26 * 2.65012e+17 = 2.65012e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010101000110100010000111111100;
b = 32'b11010111011100001001010111100111;
correct = 32'b11010111011100001001010111100111;
#400 //-3.11269e-26 * -2.64527e+14 = -2.64527e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100011001010000101110001110010;
b = 32'b10110011001101110001001110010101;
correct = 32'b01100011001010000101110001110010;
#400 //3.10571e+21 * -4.26258e-08 = 3.10571e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100101011001110101101001010010;
b = 32'b00101010110011011101000000010001;
correct = 32'b00101010110011011011001100100110;
#400 //-2.00667e-16 * 3.65597e-13 = 3.65396e-13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111111111010000000100010001100;
b = 32'b01011110011001010001001111101011;
correct = 32'b01111111111010000000100010001100;
#400 //nan * 4.1267e+18 = nan
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100010001011010011111111011011;
b = 32'b00000000011111110011101101011001;
correct = 32'b10100010001011010011111111011011;
#400 //-2.34797e-18 * 1.16844e-38 = -2.34797e-18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101010100001100001101110010000;
b = 32'b01010011100111110000100100100110;
correct = 32'b01101010100001100001101110010000;
#400 //8.10631e+25 * 1.36611e+12 = 8.10631e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011100011110100100101011100101;
b = 32'b01011101011111110101101011000011;
correct = 32'b01011101010000001100100000001010;
#400 //-2.81804e+17 * 1.15001e+18 = 8.6821e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110011011101001110111001001101;
b = 32'b01110000111110101111001000010110;
correct = 32'b01110011011111001100010111011110;
#400 //1.94054e+31 * 6.21311e+29 = 2.00267e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110011000100110010011110111111;
b = 32'b10000111010011110111001011111000;
correct = 32'b10110011000100110010011110111111;
#400 //-3.42623e-08 * -1.56067e-34 = -3.42623e-08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011111100110100000111001100001;
b = 32'b11000100000100110111000110101101;
correct = 32'b01011111100110100000111001100001;
#400 //2.22018e+19 * -589.776 = 2.22018e+19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011100010010001011111001001010;
b = 32'b01110111111101100110101110000010;
correct = 32'b01110111111101100110101110000010;
#400 //-6.64204e-22 * 9.99598e+33 = 9.99598e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101001110011101111100100001111;
b = 32'b11100100010111010000110001000100;
correct = 32'b11100100010111010000110001000100;
#400 //9.19144e-14 * -1.63105e+22 = -1.63105e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110100010111101000001011100100;
b = 32'b11000110110101110110011001000010;
correct = 32'b01110100010111101000001011100100;
#400 //7.05166e+31 * -27571.1 = 7.05166e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011001100110010010111010010110;
b = 32'b11010000101000010000111011101100;
correct = 32'b11010000101000010000111011101100;
#400 //-1.58386e-23 * -2.16169e+10 = -2.16169e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011100110111100101100110100100;
b = 32'b01110001000110110011000111100101;
correct = 32'b01110001000110110011000111100101;
#400 //-1.47139e-21 * 7.68488e+29 = 7.68488e+29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100000101100110000010011010000;
b = 32'b00010000111111011011110111100010;
correct = 32'b01100000101100110000010011010000;
#400 //1.03197e+20 * 1.00083e-28 = 1.03197e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111010110000101010100101000100;
b = 32'b11101001001000110001010011011101;
correct = 32'b11111010110000101010100101000100;
#400 //-5.05369e+35 * -1.23221e+25 = -5.05369e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101101101100101110101110000101;
b = 32'b01100100010001000100001001101001;
correct = 32'b01100100010001000100001001101001;
#400 //-2.03408e-11 * 1.44814e+22 = 1.44814e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111110100011010010011001101101;
b = 32'b01011000011101100011101100111100;
correct = 32'b01011000011101100011101100111100;
#400 //0.275684 * 1.08294e+15 = 1.08294e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101010010111000011011000110101;
b = 32'b11100001011110101001011000010100;
correct = 32'b11100001011110101001011000010100;
#400 //-1.95587e-13 * -2.88906e+20 = -2.88906e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100100001001100001011101111010;
b = 32'b01000100010111001001010010110111;
correct = 32'b11100100001001100001011101111010;
#400 //-1.22554e+22 * 882.324 = -1.22554e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111111110000011011011011001111;
b = 32'b01100011010110000110001011110101;
correct = 32'b01100011010110000110001011110101;
#400 //1.51339 * 3.99163e+21 = 3.99163e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000100000101011001010100001110;
b = 32'b10000001100001000100000100011001;
correct = 32'b10000100000110011011011100010111;
#400 //-1.75833e-36 * -4.85826e-38 = -1.80691e-36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011010111111111010000011011101;
b = 32'b10111111110110100010110110001100;
correct = 32'b10111111110110100010110110001100;
#400 //1.05725e-22 * -1.70451 = -1.70451
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111011101000111001011101110001;
b = 32'b11011101100110000001011111010111;
correct = 32'b01111011101000111001011101110001;
#400 //1.69883e+36 * -1.36993e+18 = 1.69883e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110010010101010001100110111101;
b = 32'b11101000000010001001001000000101;
correct = 32'b01110010010101010001100110110100;
#400 //4.22089e+30 * -2.57974e+24 = 4.22089e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011101101101001111100110010000;
b = 32'b01111010001011110001110000000000;
correct = 32'b01111010001011110001110000000000;
#400 //4.79036e-21 * 2.27305e+35 = 2.27305e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100000010010010001101010011100;
b = 32'b00101010110011111000000000100010;
correct = 32'b00101010110011111000000000011100;
#400 //-1.70342e-19 * 3.68595e-13 = 3.68595e-13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011000010100001011011111100010;
b = 32'b11111010000010000110010100011111;
correct = 32'b11111010000010000110010100011111;
#400 //2.69762e-24 * -1.77051e+35 = -1.77051e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000001011010001110111111111011;
b = 32'b11011011101100101100001010010110;
correct = 32'b11011011101100101100001010010110;
#400 //14.5586 * -1.00633e+17 = -1.00633e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100000001100101011000000010001;
b = 32'b11101101010011101000101000010001;
correct = 32'b11101101010011101000101000010001;
#400 //5.15032e+19 * -3.99505e+27 = -3.99505e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011100110011100001101100000101;
b = 32'b10101101011001110000001110101010;
correct = 32'b10101101011001110000001110101010;
#400 //-1.36389e-21 * -1.31316e-11 = -1.31316e-11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011000110010011010111001110001;
b = 32'b01010100000000011111010000110111;
correct = 32'b01010100000000011111010000110111;
#400 //5.21334e-24 * 2.23259e+12 = 2.23259e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011010000011100101000010110100;
b = 32'b01111111010101011001001111110001;
correct = 32'b01111111010101011001001111110001;
#400 //-1.00145e+16 * 2.83894e+38 = 2.83894e+38
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000100111001001110001001100101;
b = 32'b10101001001001011011111100010011;
correct = 32'b10101001001001011011111100010011;
#400 //5.38105e-36 * -3.68031e-14 = -3.68031e-14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011000001101101100000110100111;
b = 32'b01111001110001100001000101000001;
correct = 32'b01111001110001100001000101000001;
#400 //8.03771e+14 * 1.28553e+35 = 1.28553e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111101000111011010111110110010;
b = 32'b01100110011101011111101000011010;
correct = 32'b01100110011101011111101000011010;
#400 //0.0384976 * 2.90398e+23 = 2.90398e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011010100101110110000000011111;
b = 32'b11001100011110110011011010101100;
correct = 32'b11001100011110110011011010101100;
#400 //-6.26074e-23 * -6.58541e+07 = -6.58541e+07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011000000111000111110110110010;
b = 32'b10000000100100111001010011001010;
correct = 32'b11011000000111000111110110110010;
#400 //-6.88255e+14 * -1.35532e-38 = -6.88255e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100001100000100101000000111001;
b = 32'b11011100000110110001010101000000;
correct = 32'b01100001100000100011110011010110;
#400 //3.00482e+20 * -1.74608e+17 = 3.00308e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110010100111001001111001101111;
b = 32'b00101110011010000101011101010111;
correct = 32'b11110010100111001001111001101111;
#400 //-6.20431e+30 * 5.28283e-11 = -6.20431e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001000111011111010001110110010;
b = 32'b00011010111001111100001000001111;
correct = 32'b11001000111011111010001110110010;
#400 //-490782.0 * 9.58529e-23 = -490782.0
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011100001110000000110001010000;
b = 32'b10011111000100111011101100110001;
correct = 32'b10011111000101101001101101100010;
#400 //-6.08964e-22 * -3.12833e-20 = -3.18923e-20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110000010010101000101100001010;
b = 32'b10001101011100101010000001110011;
correct = 32'b11110000010010101000101100001010;
#400 //-2.50736e+29 * -7.47651e-31 = -2.50736e+29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100010001110001010000101001010;
b = 32'b10000101101100000001001100111111;
correct = 32'b00100010001110001010000101001010;
#400 //2.5022e-18 * -1.6558e-35 = 2.5022e-18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011001110111011111101101111000;
b = 32'b00111111101100000111100000011101;
correct = 32'b00111111101100000111100000011101;
#400 //2.29524e-23 * 1.37867 = 1.37867
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111001011000001110101111111011;
b = 32'b10100001111111000000101101100100;
correct = 32'b11111001011000001110101111111011;
#400 //-7.29913e+34 * -1.70792e-18 = -7.29913e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001101001100000111110011101111;
b = 32'b00010101010110111000101100100110;
correct = 32'b01001101001100000111110011101111;
#400 //1.85061e+08 * 4.43365e-26 = 1.85061e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010010100000101100010011001100;
b = 32'b10110011001011100001111110011111;
correct = 32'b11010010100000101100010011001100;
#400 //-2.80824e+11 * -4.05413e-08 = -2.80824e+11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111101001100110101000001011001;
b = 32'b11101100010111011010111001010010;
correct = 32'b11111101001100110101000001011001;
#400 //-1.48968e+37 * -1.07198e+27 = -1.48968e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011110011010110001111001010011;
b = 32'b00111010101100110000101001111100;
correct = 32'b00111010101100110000101001111100;
#400 //-1.24471e-20 * 0.00136597 = 0.00136597
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011100110100110100101111000011;
b = 32'b01001010000111001001001000111010;
correct = 32'b11011100110100110100101111000011;
#400 //-4.75796e+17 * 2.56526e+06 = -4.75796e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110110100010011000010010000001;
b = 32'b01010110101100001101001001010000;
correct = 32'b01110110100010011000010010000001;
#400 //1.39459e+33 * 9.72087e+13 = 1.39459e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000000011001000001001110111000;
b = 32'b01111001111101101000101110010000;
correct = 32'b01111001111101101000101110010000;
#400 //9.19062e-39 * 1.60017e+35 = 1.60017e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110111100001100000110010001110;
b = 32'b01101101101010000100110001001111;
correct = 32'b11110111100001100000110010000011;
#400 //-5.43768e+33 * 6.51072e+27 = -5.43767e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101110100110011110011011000010;
b = 32'b10011011100011010010101111010010;
correct = 32'b10101110100110011110011011000010;
#400 //-6.99863e-11 * -2.33548e-22 = -6.99863e-11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110111110101110011111001000011;
b = 32'b00011101101111010010110011010110;
correct = 32'b11110111110101110011111001000011;
#400 //-8.7313e+33 * 5.00742e-21 = -8.7313e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111010111011001011001111001011;
b = 32'b10001000011110101000111111000001;
correct = 32'b00111010111011001011001111001011;
#400 //0.0018059 * -7.54006e-34 = 0.0018059
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100100101001111000001111011101;
b = 32'b00110011000000100010000000001010;
correct = 32'b01100100101001111000001111011101;
#400 //2.47209e+22 * 3.02971e-08 = 2.47209e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010000000000011110010100010100;
b = 32'b00000100100000010100110101101100;
correct = 32'b01010000000000011110010100010100;
#400 //8.71709e+09 * 3.03989e-36 = 8.71709e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011001111100111110000010010010;
b = 32'b00011100111000100111100010011110;
correct = 32'b00011100111001100100100000100000;
#400 //2.52163e-23 * 1.49866e-21 = 1.52388e-21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100101001110000100111101011110;
b = 32'b01110110101000010010010001111011;
correct = 32'b01110110101000010010010001111011;
#400 //1.59863e-16 * 1.63418e+33 = 1.63418e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111011000101011100101010101110;
b = 32'b11010011000000001101001100011111;
correct = 32'b11111011000101011100101010101110;
#400 //-7.77763e+35 * -5.53298e+11 = -7.77763e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010010110100101011111011000101;
b = 32'b01110001010100110000010000011011;
correct = 32'b01110001010100110000010000011011;
#400 //1.32999e-27 * 1.0449e+30 = 1.0449e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011000011110101011111010011100;
b = 32'b11011111001101110111101101111110;
correct = 32'b11011111001101110111101101111110;
#400 //-3.2408e-24 * -1.32213e+19 = -1.32213e+19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001101111101011101100010001010;
b = 32'b11101100011110001111111001010111;
correct = 32'b11101100011110001111111001010111;
#400 //1.51514e-30 * -1.20406e+27 = -1.20406e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000010111110100001100110110010;
b = 32'b00100100110011101110000001110000;
correct = 32'b01000010111110100001100110110010;
#400 //125.05 * 8.97185e-17 = 125.05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000100000100011110011110101111;
b = 32'b00111100000100011101101000010101;
correct = 32'b00111100000100011101101000010101;
#400 //-1.71511e-36 * 0.00890209 = 0.00890209
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001001000111011010001000111110;
b = 32'b11100011001001010000010111000011;
correct = 32'b11100011001001010000010111000011;
#400 //-1.89745e-33 * -3.04413e+21 = -3.04413e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010110110100101100011100010111;
b = 32'b11110011010001010000100001110000;
correct = 32'b11110011010001010000100001110000;
#400 //-1.15876e+14 * -1.56106e+31 = -1.56106e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110100111001110100011110101100;
b = 32'b10001010011101010110011110110111;
correct = 32'b00110100111001110100011110101100;
#400 //4.30793e-07 * -1.18158e-32 = 4.30793e-07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000110000011100001110111001001;
b = 32'b00110001011001111111110000000001;
correct = 32'b01000110000011100001110111001001;
#400 //9095.45 * 3.37582e-09 = 9095.45
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110010001001010111111100000101;
b = 32'b10011011111110111000101010010100;
correct = 32'b10110010001001010111111100000101;
#400 //-9.63314e-09 * -4.1614e-22 = -9.63314e-09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010101011100100100000010101001;
b = 32'b01010100110111000010111110101101;
correct = 32'b01010100110111000010111110101101;
#400 //-4.89225e-26 * 7.56554e+12 = 7.56554e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010111010011011101001111110001;
b = 32'b11011000011110000110100101110000;
correct = 32'b11011000011110000110100101110000;
#400 //6.65066e-25 * -1.09253e+15 = -1.09253e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111111000110100010111101101010;
b = 32'b00011111110101110000001100011110;
correct = 32'b10111111000110100010111101101010;
#400 //-0.602286 * 9.10612e-20 = -0.602286
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001100101010110010010111101100;
b = 32'b10111000110111000011000100100100;
correct = 32'b10111000110111000011000100100100;
#400 //-2.63695e-31 * -0.000104996 = -0.000104996
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100100101101000100000101101111;
b = 32'b00100100111011100000001011010011;
correct = 32'b00100011111001110000010110010000;
#400 //-7.81734e-17 * 1.03221e-16 = 2.50474e-17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101010010001011111000100000001;
b = 32'b01011011101010101000111010101000;
correct = 32'b11101010010001011111000100000001;
#400 //-5.98241e+25 * 9.60152e+16 = -5.98241e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101110001011110100011000000111;
b = 32'b00001001000000001110010001100001;
correct = 32'b10101110001011110100011000000111;
#400 //-3.98526e-11 * 1.55148e-33 = -3.98526e-11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110000001100001111111010001000;
b = 32'b00001100011101110001011111101000;
correct = 32'b00110000001100001111111010001000;
#400 //6.43901e-10 * 1.90354e-31 = 6.43901e-10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000100101100100101101010101001;
b = 32'b10010001001111001011110000100010;
correct = 32'b10010001001111001011110000100010;
#400 //-4.19309e-36 * -1.48886e-28 = -1.48886e-28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011010011001011010000111000001;
b = 32'b10000110011001011011101010100111;
correct = 32'b10011010011001011010000111000001;
#400 //-4.74868e-23 * -4.32072e-35 = -4.74868e-23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100100100111010000011001110111;
b = 32'b11011001100000111000001011100001;
correct = 32'b11100100100111010000011001111001;
#400 //-2.31728e+22 * -4.62714e+15 = -2.31728e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011101011110100011111010001000;
b = 32'b01101101100111111110000110010111;
correct = 32'b01101101100111111110000110010111;
#400 //-1.127e+18 * 6.1851e+27 = 6.1851e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011011011010010110001111101111;
b = 32'b11000000111000001001110001000100;
correct = 32'b11000000111000001001110001000100;
#400 //-1.93056e-22 * -7.01908 = -7.01908
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010011011000001011000010011011;
b = 32'b01000110111001101010111100001111;
correct = 32'b01000110111001101010111100001111;
#400 //-2.83598e-27 * 29527.5 = 29527.5
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101100011110101111000100011001;
b = 32'b11011011100110101110101100000111;
correct = 32'b01101100011110101111000100011001;
#400 //1.21348e+27 * -8.72111e+16 = 1.21348e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100100010000110110000101101011;
b = 32'b01111111011110100100100000001010;
correct = 32'b01111111011110100100100000001010;
#400 //-4.23664e-17 * 3.32681e+38 = 3.32681e+38
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001011001001001100100010010010;
b = 32'b01000010101011000010100100010110;
correct = 32'b11001011001001001100100000111100;
#400 //-1.07992e+07 * 86.0802 = -1.07992e+07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100010110110110101100110000111;
b = 32'b11010011011101111111111101111010;
correct = 32'b01100010110110110101100110000111;
#400 //2.02314e+21 * -1.06514e+12 = 2.02314e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011010100001011001100011110001;
b = 32'b01010111100001110000011110011101;
correct = 32'b01011010100001111011010100001111;
#400 //1.88022e+16 * 2.96934e+14 = 1.90991e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111010010100100010110011010011;
b = 32'b10011001110110100010001110111011;
correct = 32'b00111010010100100010110011010011;
#400 //0.000801754 * -2.25551e-23 = 0.000801754
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101000010100011111001001100001;
b = 32'b00101010111000000110110000000011;
correct = 32'b00101010111001101111101110010110;
#400 //1.16544e-14 * 3.98653e-13 = 4.10308e-13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010111000011111000110100001110;
b = 32'b10100010000010111000111101000011;
correct = 32'b11010111000011111000110100001110;
#400 //-1.57836e+14 * -1.89139e-18 = -1.57836e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011000010010111111001001100010;
b = 32'b01101101010100010001111100000101;
correct = 32'b01101101010100010001111100000101;
#400 //-8.96968e+14 * 4.04499e+27 = 4.04499e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110101010010011100000011101001;
b = 32'b11110101010011101111011110000011;
correct = 32'b11110101110011000101110000110110;
#400 //-2.55753e+32 * -2.62362e+32 = -5.18115e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110100001001101000101100110010;
b = 32'b00011010001100100011110111000001;
correct = 32'b11110100001001101000101100110010;
#400 //-5.27798e+31 * 3.68594e-23 = -5.27798e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111010111011100011110101000100;
b = 32'b10101011001011011111100101101011;
correct = 32'b11111010111011100011110101000100;
#400 //-6.18505e+35 * -6.18081e-13 = -6.18505e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010100010011100010011001001100;
b = 32'b00010110101010000010100110010101;
correct = 32'b00010110101011101001101011000111;
#400 //1.04079e-26 * 2.71681e-25 = 2.82089e-25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110011011011100101101100101001;
b = 32'b11010101001010101011110010011000;
correct = 32'b11110011011011100101101100101001;
#400 //-1.88845e+31 * -1.17329e+13 = -1.88845e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101011100110110011110111110111;
b = 32'b01001001110111011000100001101011;
correct = 32'b01001001110111011000100001101011;
#400 //-1.10306e-12 * 1.8148e+06 = 1.8148e+06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110111110010101000100011001001;
b = 32'b10011000000010001101101110010010;
correct = 32'b01110111110010101000100011001001;
#400 //8.21577e+33 * -1.76884e-24 = 8.21577e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001010111111100011110011110111;
b = 32'b01000110000000011000001010001011;
correct = 32'b01000110000000011000001010001011;
#400 //2.44822e-32 * 8288.64 = 8288.64
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100001101111000011010000100011;
b = 32'b00100000111000000010111011001010;
correct = 32'b00100001111101000011111111010110;
#400 //1.27532e-18 * 3.7978e-19 = 1.6551e-18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111101001011001101011110010001;
b = 32'b10001110111101011001000011111000;
correct = 32'b00111101001011001101011110010001;
#400 //0.0421978 * -6.05368e-30 = 0.0421978
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100100110011000000101101010111;
b = 32'b00010010101001110001111111110001;
correct = 32'b11100100110011000000101101010111;
#400 //-3.01116e+22 * 1.05471e-27 = -3.01116e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001111100100101010100010101110;
b = 32'b10010011110100101101111101000111;
correct = 32'b01001111100100101010100010101110;
#400 //4.92106e+09 * -5.32316e-27 = 4.92106e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011101100111001110001010011110;
b = 32'b11100110000110000001010110101100;
correct = 32'b11100110000110000001010111111010;
#400 //-1.4131e+18 * -1.7955e+23 = -1.79551e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000110011111111001100100110100;
b = 32'b01001111110000111000001011110111;
correct = 32'b01001111110000111000001100010111;
#400 //16358.3 * 6.56028e+09 = 6.5603e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101001001101001011100000110010;
b = 32'b00010110001011001011110001001111;
correct = 32'b00101001001101001011100000110010;
#400 //4.01278e-14 * 1.39535e-25 = 4.01278e-14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011001111010010001011001111100;
b = 32'b11001001001110000000100111100100;
correct = 32'b01011001111010010001011001111100;
#400 //8.20105e+15 * -753822.0 = 8.20105e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110100001110100111100111110110;
b = 32'b00110000110110001011110100011011;
correct = 32'b01110100001110100111100111110110;
#400 //5.90967e+31 * 1.57698e-09 = 5.90967e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100010111001000110110101110000;
b = 32'b01010001110111000001110100010000;
correct = 32'b01010001110111000001110100010000;
#400 //6.19154e-18 * 1.18173e+11 = 1.18173e+11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110010100111110010010001111101;
b = 32'b01101000000111101010010101110110;
correct = 32'b01101000000111101010010101110110;
#400 //1.85266e-08 * 2.99674e+24 = 2.99674e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001111110110101111010010100101;
b = 32'b11110011111011110100011000011110;
correct = 32'b11110011111011110100011000011110;
#400 //7.34693e+09 * -3.79145e+31 = -3.79145e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010110010101010011010110100111;
b = 32'b01001001000100000001111011010001;
correct = 32'b01001001000100000001111011010001;
#400 //1.72229e-25 * 590317.0 = 590317.0
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101001100110110011111011010000;
b = 32'b01111110110100001110101101110111;
correct = 32'b01111110110100001110101101110111;
#400 //-6.89428e-14 * 1.38851e+38 = 1.38851e+38
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001101001000010001101110101110;
b = 32'b01110101100110001010010011101111;
correct = 32'b01110101100110001010010011101111;
#400 //-1.68934e+08 * 3.86999e+32 = 3.86999e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111100110001010110101101000001;
b = 32'b10101011001010101111100101001000;
correct = 32'b00111100110001010110101101000001;
#400 //0.024099 * -6.07421e-13 = 0.024099
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010101110100011101011010100110;
b = 32'b10111010111111011000001001001101;
correct = 32'b10111010111111011000001001001101;
#400 //-8.47531e-26 * -0.00193412 = -0.00193412
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000011101111100111010100011101;
b = 32'b11101011101101010010011010111110;
correct = 32'b11101011101101010010011010111110;
#400 //-380.915 * -4.37997e+26 = -4.37997e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111101001011101001001010011100;
b = 32'b11011100111001011001001011110111;
correct = 32'b01111101001011101001001010011100;
#400 //1.45029e+37 * -5.16955e+17 = 1.45029e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111101000010011110111011001000;
b = 32'b10100010001000010110000011001001;
correct = 32'b11111101000010011110111011001000;
#400 //-1.1459e+37 * -2.18708e-18 = -1.1459e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101110100001100001001011000010;
b = 32'b00011000011100001001110110111100;
correct = 32'b11101110100001100001001011000010;
#400 //-2.07468e+28 * 3.10989e-24 = -2.07468e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001100010111011000010010101011;
b = 32'b00100011001111100111100110111100;
correct = 32'b11001100010111011000010010101011;
#400 //-5.80697e+07 * 1.03257e-17 = -5.80697e+07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000010001100110101001000011110;
b = 32'b00001100001110010100111111110010;
correct = 32'b00001100001110010100111111100111;
#400 //-1.31744e-37 * 1.42759e-31 = 1.42759e-31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100100110011100110010111001010;
b = 32'b11110001001111111000111101110101;
correct = 32'b11110001001111111000111101110101;
#400 //-3.04589e+22 * -9.48561e+29 = -9.48561e+29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000111001101110001101000000110;
b = 32'b11011110101101011100111100000100;
correct = 32'b11011110101101011100111100000100;
#400 //-1.3775e-34 * -6.55035e+18 = -6.55035e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101010100100000000111000010101;
b = 32'b11100100011111111110011101100000;
correct = 32'b11101010100100000001011000010100;
#400 //-8.70759e+25 * -1.88824e+22 = -8.70948e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000100111101111111111000000111;
b = 32'b00110111110100101010110011001111;
correct = 32'b00110111110100101010110011001111;
#400 //5.83027e-36 * 2.51144e-05 = 2.51144e-05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101010110000101101100111010111;
b = 32'b01100101000001101010010001001110;
correct = 32'b01101010110000101110101010101100;
#400 //1.1778e+26 * 3.97392e+22 = 1.1782e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011110111111111010010101010110;
b = 32'b10000001100000101101111110110111;
correct = 32'b01011110111111111010010101010110;
#400 //9.21061e+18 * -4.80755e-38 = 9.21061e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110110010101101110101001001001;
b = 32'b00101101010100100001101100011110;
correct = 32'b11110110010101101110101001001001;
#400 //-1.08975e+33 * 1.19431e-11 = -1.08975e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110000111101111011000100111111;
b = 32'b01111101001001110010101001110000;
correct = 32'b01111101001001110010101001110000;
#400 //6.13257e+29 * 1.38876e+37 = 1.38876e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000000111001001111001011100011;
b = 32'b10010101000101011001101101110100;
correct = 32'b11000000111001001111001011100011;
#400 //-7.15465 * -3.02129e-26 = -7.15465
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100000111101000010011111110000;
b = 32'b10111100010000000010111101010000;
correct = 32'b01100000111101000010011111110000;
#400 //1.40746e+20 * -0.01173 = 1.40746e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110011001100001111000001011110;
b = 32'b11011110101000001101110001101010;
correct = 32'b01110011001100001111000001011110;
#400 //1.40185e+31 * -5.79563e+18 = 1.40185e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100110101010010000010101010010;
b = 32'b01010001111111011111010111101000;
correct = 32'b01010001111111011111010111101000;
#400 //1.17282e-15 * 1.36344e+11 = 1.36344e+11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111111100100011000010010100010;
b = 32'b00011001010011000100100001111111;
correct = 32'b00111111100100011000010010100010;
#400 //1.13686 * 1.05612e-23 = 1.13686
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010110000001011010100010111101;
b = 32'b01000011101000111111111001101111;
correct = 32'b01000011101000111111111001101111;
#400 //1.07969e-25 * 327.988 = 327.988
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100010000010110000110111011000;
b = 32'b11110100110111111001011101010000;
correct = 32'b11110100110111111001011101010000;
#400 //1.88453e-18 * -1.41718e+32 = -1.41718e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100101111101111000011001011111;
b = 32'b00110010000110000000010011100000;
correct = 32'b00110010000110000000010011100000;
#400 //-4.29387e-16 * 8.84867e-09 = 8.84867e-09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100111101011010000101111101101;
b = 32'b00010011110110111011010110100101;
correct = 32'b11100111101011010000101111101101;
#400 //-1.63438e+24 * 5.54625e-27 = -1.63438e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111110101001001010010010100110;
b = 32'b10110000100101001111010010001010;
correct = 32'b11111110101001001010010010100110;
#400 //-1.09424e+38 * -1.08379e-09 = -1.09424e+38
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001110110010001001110001011000;
b = 32'b00111001010000101110001001001011;
correct = 32'b01001110110010001001110001011000;
#400 //1.68284e+09 * 0.000185856 = 1.68284e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110011100001111101101010000001;
b = 32'b11110001101111110001100001101101;
correct = 32'b01110011011101111101000111110100;
#400 //2.15269e+31 * -1.89252e+30 = 1.96343e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000000000010011010101011101001;
b = 32'b00011111110000111101110110011100;
correct = 32'b00011111110000111101110110011100;
#400 //-8.8783e-40 * 8.29523e-20 = 8.29523e-20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110000100100100001011100010010;
b = 32'b11010011100100011010111110011100;
correct = 32'b01110000100100100001011100010010;
#400 //3.61702e+29 * -1.25143e+12 = 3.61702e+29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000111001010010010011001011011;
b = 32'b10111001011000110010110001000001;
correct = 32'b01000111001010010010011001011011;
#400 //43302.4 * -0.000216649 = 43302.4
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111101000110010100001001111011;
b = 32'b00111000000101100000110001010001;
correct = 32'b01111101000110010100001001111011;
#400 //1.27323e+37 * 3.57743e-05 = 1.27323e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100011011011010101000011001001;
b = 32'b10101001000001110101010000101110;
correct = 32'b10101001000001110100010101011001;
#400 //1.28649e-17 * -3.0049e-14 = -3.00362e-14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001110011000111001000011100111;
b = 32'b11100101011110001101001001001110;
correct = 32'b11100101011110001101001001001110;
#400 //9.54481e+08 * -7.34391e+22 = -7.34391e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001001111101111010001101001011;
b = 32'b10101011101101001011100011101000;
correct = 32'b11001001111101111010001101001011;
#400 //-2.02865e+06 * -1.28411e-12 = -2.02865e+06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100010101101100101010011101010;
b = 32'b00001000011010000000111101111100;
correct = 32'b01100010101101100101010011101010;
#400 //1.68171e+21 * 6.98332e-34 = 1.68171e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100100111110011011000001001011;
b = 32'b00000000101010111100010011111001;
correct = 32'b11100100111110011011000001001011;
#400 //-3.68475e+22 * 1.57745e-38 = -3.68475e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000110011011110000111000011000;
b = 32'b00001101000011000010100101001101;
correct = 32'b00001101000011000010010110010001;
#400 //-4.49613e-35 * 4.31905e-31 = 4.3186e-31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011111000011100000101110110000;
b = 32'b00001111100100100010101010010001;
correct = 32'b10011111000011100000101110110000;
#400 //-3.00793e-20 * 1.44131e-29 = -3.00793e-20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111111110110110000001000100000;
b = 32'b00110100110010001101010101100110;
correct = 32'b01111111110110110000001000100000;
#400 //nan * 3.74082e-07 = nan
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101101100101111101100110010011;
b = 32'b11001110000101111100110000110000;
correct = 32'b11001110000101111100110000110000;
#400 //-1.72633e-11 * -6.36685e+08 = -6.36685e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100101100101101010010100111100;
b = 32'b00101011110101001110110001011101;
correct = 32'b00101011110101001111010111000111;
#400 //2.61328e-16 * 1.51291e-12 = 1.51317e-12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001101110001010011110011001110;
b = 32'b10010011011101100111100111000110;
correct = 32'b10010011011101101001001001101110;
#400 //-1.21557e-30 * -3.11096e-27 = -3.11218e-27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010110000100110101111110000001;
b = 32'b11100101110110110000110011011011;
correct = 32'b11100101110110110000110011011011;
#400 //-1.19047e-25 * -1.29304e+23 = -1.29304e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011001111001010000111110011111;
b = 32'b10111100110100100111000111100101;
correct = 32'b11011001111001010000111110011111;
#400 //-8.05937e+15 * -0.0256891 = -8.05937e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010110001001100010101001100111;
b = 32'b10101010100010111110111100101101;
correct = 32'b10101010100010111110111100101101;
#400 //-1.34228e-25 * -2.48573e-13 = -2.48573e-13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100100110100001000111011110001;
b = 32'b01010011000011111000100000001111;
correct = 32'b01010011000011111000100000001111;
#400 //-9.04478e-17 * 6.16463e+11 = 6.16463e+11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110111101110010101000100111010;
b = 32'b10110001011110000000011110111001;
correct = 32'b10110111101110010101100011111010;
#400 //-2.20915e-05 * -3.60931e-09 = -2.20952e-05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110000111010101111110100110010;
b = 32'b10111000100011100000001110110001;
correct = 32'b01110000111010101111110100110010;
#400 //5.81805e+29 * -6.77178e-05 = 5.81805e+29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101100000001000110001011110001;
b = 32'b11011001010100011100111101110011;
correct = 32'b01101100000001000110001011110001;
#400 //6.40182e+26 * -3.69102e+15 = 6.40182e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101000110000010100101000000000;
b = 32'b10100101100100011001101100110110;
correct = 32'b01101000110000010100101000000000;
#400 //7.30225e+24 * -2.52587e-16 = 7.30225e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001111100011000000100100100111;
b = 32'b01101001100001111111101011100000;
correct = 32'b01101001100001111111101011100000;
#400 //4.69882e+09 * 2.05487e+25 = 2.05487e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101001110101111011010100000000;
b = 32'b01101100001001101001001011111101;
correct = 32'b01101100001011010101000010100101;
#400 //3.25967e+25 * 8.05503e+26 = 8.381e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001100000110100110110010001110;
b = 32'b10010101100011000111110111110100;
correct = 32'b10010101100011000111110111100001;
#400 //1.18964e-31 * -5.67443e-26 = -5.67442e-26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001100101111101010000100010000;
b = 32'b00100110010000101011111011010110;
correct = 32'b01001100101111101010000100010000;
#400 //9.99446e+07 * 6.75659e-16 = 9.99446e+07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011001101101000001011110101011;
b = 32'b11010011101101010001100100011100;
correct = 32'b11010011101101010001100100011100;
#400 //-1.86211e-23 * -1.55562e+12 = -1.55562e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010101000101001101000001110100;
b = 32'b10111011100110100010101100111010;
correct = 32'b01010101000101001101000001110100;
#400 //1.02264e+13 * -0.00470486 = 1.02264e+13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101110100000110100010111100010;
b = 32'b10010011010110101111110001010000;
correct = 32'b01101110100000110100010111100010;
#400 //2.03135e+28 * -2.76399e-27 = 2.03135e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000001111111011011000100111011;
b = 32'b10110100100100101011011010100010;
correct = 32'b11000001111111011011000100111011;
#400 //-31.7115 * -2.73275e-07 = -31.7115
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000111001101100000100101000001;
b = 32'b10011000101010111001000110111111;
correct = 32'b01000111001101100000100101000001;
#400 //46601.3 * -4.43496e-24 = 46601.3
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110111111100000001100110111011;
b = 32'b01100111011001111100011101110011;
correct = 32'b01100111011001111100011101110011;
#400 //-2.86222e-05 * 1.09455e+24 = 1.09455e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001011011011101001111011000010;
b = 32'b01010001011001100100101000000110;
correct = 32'b01010001011001100100101000000110;
#400 //-4.59566e-32 * 6.18178e+10 = 6.18178e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100001100011100100101000101100;
b = 32'b11110101011000110011101000111011;
correct = 32'b11110101011000110011101000111011;
#400 //-3.28098e+20 * -2.88045e+32 = -2.88045e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100111000011100100011000011000;
b = 32'b11110000110100110011000011000011;
correct = 32'b11110000110100110011000011000011;
#400 //-1.97445e-15 * -5.22882e+29 = -5.22882e+29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001010111101110010000001101000;
b = 32'b00111000000011001100001011110111;
correct = 32'b11001010111101110010000001101000;
#400 //-8.09784e+06 * 3.35602e-05 = -8.09784e+06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111111010001001011010110101111;
b = 32'b11011111010111011100110110100100;
correct = 32'b01111111010001001011010110101111;
#400 //2.61472e+38 * -1.59826e+19 = 2.61472e+38
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111000000111011000000100100101;
b = 32'b00000001000010101110001010101100;
correct = 32'b00111000000111011000000100100101;
#400 //3.7552e-05 * 2.55092e-38 = 3.7552e-05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000001000011000011110100111100;
b = 32'b01100000010100000100011110110010;
correct = 32'b01100000010100000100011110110010;
#400 //-2.57579e-38 * 6.00326e+19 = 6.00326e+19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111001110111101101101100011110;
b = 32'b00110100010110001011101000001110;
correct = 32'b11111001110111101101101100011110;
#400 //-1.44642e+35 * 2.01843e-07 = -1.44642e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000110101110000011100001111000;
b = 32'b00100111110111101001100010010100;
correct = 32'b01000110101110000011100001111000;
#400 //23580.2 * 6.17828e-15 = 23580.2
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100011000010100100011001010011;
b = 32'b00010101000000100001110100000111;
correct = 32'b10100011000010100100011001010011;
#400 //-7.49589e-18 * 2.62762e-26 = -7.49589e-18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000010111001110100001100010010;
b = 32'b00110110000110010110001001010110;
correct = 32'b00110110000110010110001001010110;
#400 //3.39809e-37 * 2.2856e-06 = 2.2856e-06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000111011100011111010111101010;
b = 32'b11010111011001110110011111011101;
correct = 32'b11010111011001110110011111011101;
#400 //-61941.9 * -2.54433e+14 = -2.54433e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100100111100001001111111100001;
b = 32'b01010101010101011000010110100111;
correct = 32'b01010101010101011000010110100111;
#400 //1.04354e-16 * 1.46731e+13 = 1.46731e+13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000000101100100010101000101110;
b = 32'b00001010100000100010000011001111;
correct = 32'b11000000101100100010101000101110;
#400 //-5.56765 * 1.25309e-32 = -5.56765
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101100011111000100100010110011;
b = 32'b11110001111000111100001010011011;
correct = 32'b11110001111000111010001100010010;
#400 //1.21997e+27 * -2.25563e+30 = -2.25441e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000110010110100101001110101111;
b = 32'b11011101111100000100111101110110;
correct = 32'b11011101111100000100111101110110;
#400 //13972.9 * -2.16452e+18 = -2.16452e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010011001001111100111001011011;
b = 32'b10110011001101000110010011001111;
correct = 32'b01010011001001111100111001011011;
#400 //7.20722e+11 * -4.20012e-08 = 7.20722e+11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111100000100100101001111010000;
b = 32'b01100000000001101101011011101000;
correct = 32'b01111100000100100101001111010000;
#400 //3.0391e+36 * 3.88648e+19 = 3.0391e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010001010001000000100101110111;
b = 32'b00101001011111111011101000100101;
correct = 32'b00101001011111111011101000100101;
#400 //-1.54646e-28 * 5.67828e-14 = 5.67828e-14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110001101011011000011111000000;
b = 32'b11111010111110101100000000100001;
correct = 32'b11111010111110101011111111110110;
#400 //1.71856e+30 * -6.50986e+35 = -6.50984e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100001001000000011010111110000;
b = 32'b00111111101111110110110010001001;
correct = 32'b11100001001000000011010111110000;
#400 //-1.8471e+20 * 1.4955 = -1.8471e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010000111111101110000110010010;
b = 32'b01101011010101100101101100100011;
correct = 32'b01101011010101100101101100100011;
#400 //-1.00533e-28 * 2.59141e+26 = 2.59141e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101010010000111001100010111100;
b = 32'b00010110001110010011011111001110;
correct = 32'b10101010010000111001100010111100;
#400 //-1.73725e-13 * 1.49618e-25 = -1.73725e-13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000001011010100100011011001111;
b = 32'b10101000101010100000000010010111;
correct = 32'b11000001011010100100011011001111;
#400 //-14.6423 * -1.8874e-14 = -14.6423
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010000100000010000111011110101;
b = 32'b00001010111101001101111011010111;
correct = 32'b11010000100000010000111011110101;
#400 //-1.73219e+10 * 2.35802e-32 = -1.73219e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001101100110001100001111010001;
b = 32'b10101100000100101100100101000011;
correct = 32'b11001101100110001100001111010001;
#400 //-3.20371e+08 * -2.08596e-12 = -3.20371e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000000111111111111011110100010;
b = 32'b11110001100000010011000101111001;
correct = 32'b11110001100000010011000101111001;
#400 //-2.35069e-38 * -1.27947e+30 = -1.27947e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001111000011111110110110011010;
b = 32'b10000110001111011111001100001101;
correct = 32'b00001111000011111110110101101011;
#400 //7.0962e-30 * -3.57255e-35 = 7.09617e-30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111000010000100101101111011100;
b = 32'b00100000011000100010100001000110;
correct = 32'b01111000010000100101101111011100;
#400 //1.57683e+34 * 1.91563e-19 = 1.57683e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000011000000000101000001100011;
b = 32'b10011111010100100111100010111011;
correct = 32'b10011111010100100111100010111011;
#400 //3.77081e-37 * -4.45691e-20 = -4.45691e-20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111001000011010010110111111101;
b = 32'b00111001001101011010111111001110;
correct = 32'b00111000001000100000011101000100;
#400 //-0.000134639 * 0.00017327 = 3.86306e-05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011011100010100000000001000100;
b = 32'b11100101100011010101010000000010;
correct = 32'b11100101100011010101010000000010;
#400 //2.28304e-22 * -8.34254e+22 = -8.34254e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011010100111001011111000000010;
b = 32'b10111110010100001011111001011111;
correct = 32'b10111110010100001011111001011111;
#400 //-6.48271e-23 * -0.203851 = -0.203851
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110111000111000101101111010110;
b = 32'b11100100010001111001011101000111;
correct = 32'b11100100010001111001011101000111;
#400 //-9.31971e-06 * -1.47272e+22 = -1.47272e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011010000001101100011001101001;
b = 32'b11010011110111110010010011010100;
correct = 32'b11010011110111110010010011010100;
#400 //2.78708e-23 * -1.91679e+12 = -1.91679e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011011100000111111101010110000;
b = 32'b11101100010101111010100010011101;
correct = 32'b11101100010101111010100010011101;
#400 //-2.18341e-22 * -1.04286e+27 = -1.04286e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101110000000001100111011010001;
b = 32'b10110011100100100111101010011101;
correct = 32'b10110011100100100110101010000011;
#400 //2.92875e-11 * -6.82096e-08 = -6.81803e-08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010010000010010010001000001101;
b = 32'b11100001110000011001000110011000;
correct = 32'b11100001110000011001000110011000;
#400 //-4.32715e-28 * -4.46339e+20 = -4.46339e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100000011011010000000111110101;
b = 32'b11000011100010001000110010101110;
correct = 32'b11000011100010001000110010101110;
#400 //-2.00753e-19 * -273.099 = -273.099
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111110011101011001001011010001;
b = 32'b10110000100001110111011110110001;
correct = 32'b01111110011101011001001011010001;
#400 //8.16058e+37 * -9.85656e-10 = 8.16058e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100100100100000001111100011011;
b = 32'b11110110111010110101100001100111;
correct = 32'b11110110111010110101100001100111;
#400 //2.12686e+22 * -2.38669e+33 = -2.38669e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101001111111001001010100100000;
b = 32'b00011010100110011101111010100100;
correct = 32'b11101001111111001001010100100000;
#400 //-3.81692e+25 * 6.3639e-23 = -3.81692e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111001111101111100011001010111;
b = 32'b00100100111100001011111010011111;
correct = 32'b00111001111101111100011001010111;
#400 //0.000472593 * 1.04406e-16 = 0.000472593
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111111000011000110101111110011;
b = 32'b11011110011100011100101001000100;
correct = 32'b01111111000011000110101111110011;
#400 //1.86652e+38 * -4.3557e+18 = 1.86652e+38
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000011101110000111100000111101;
b = 32'b01111000100110001110001110110111;
correct = 32'b01111000100110001110001110110111;
#400 //-368.939 * 2.48077e+34 = 2.48077e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100110001111001101101100110001;
b = 32'b01100010101111101010011100010110;
correct = 32'b01100010101111101010011100010110;
#400 //6.55227e-16 * 1.75846e+21 = 1.75846e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010110111110111100111100111111;
b = 32'b00001101010000100010111101001011;
correct = 32'b10010110111110111100111100100111;
#400 //-4.0682e-25 * 5.98378e-31 = -4.0682e-25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111010110101100100110101000110;
b = 32'b10110000111100011111001010110111;
correct = 32'b01111010110101100100110101000110;
#400 //5.56359e+35 * -1.7604e-09 = 5.56359e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000000110010001000011100111011;
b = 32'b00000110001011110010011001100101;
correct = 32'b01000000110010001000011100111011;
#400 //6.26651 * 3.2942e-35 = 6.26651
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110111111111001100000111110101;
b = 32'b01101101111101011000101011000100;
correct = 32'b01101101111101011000101011000100;
#400 //3.01311e-05 * 9.49895e+27 = 9.49895e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001111010001110011111011000001;
b = 32'b00000011011100010011011100111100;
correct = 32'b10001111010001110011111011000000;
#400 //-9.82354e-30 * 7.08869e-37 = -9.82354e-30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000011101111110110111111100111;
b = 32'b10011110001000011111101011101001;
correct = 32'b10011110001000011111101011101001;
#400 //1.12517e-36 * -8.57516e-21 = -8.57516e-21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110101111111011001110100111111;
b = 32'b00010100001110110101011001001011;
correct = 32'b11110101111111011001110100111111;
#400 //-6.42988e+32 * 9.45811e-27 = -6.42988e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000110100100101100100000111101;
b = 32'b10011111010011011110110111110100;
correct = 32'b10011111010011011110110111110100;
#400 //5.52133e-35 * -4.36073e-20 = -4.36073e-20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010101011111101100011010011010;
b = 32'b11101101011101111111100000111101;
correct = 32'b11101101011101111111100000111101;
#400 //-5.14516e-26 * -4.79643e+27 = -4.79643e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010111001101011011110101011101;
b = 32'b10010110101110100100011111001010;
correct = 32'b01010111001101011011110101011101;
#400 //1.99825e+14 * -3.00952e-25 = 1.99825e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000001100010111100101000011001;
b = 32'b01011100011100111000010000001101;
correct = 32'b01011100011100111000010000001101;
#400 //-17.4737 * 2.74174e+17 = 2.74174e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011110110000100001000100110111;
b = 32'b10010001010111001100101001101110;
correct = 32'b10011110110000100001000100110111;
#400 //-2.05477e-20 * -1.74173e-28 = -2.05477e-20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000100100000110010100011100100;
b = 32'b01000010010111000101100100110110;
correct = 32'b01000100100010100000101110101110;
#400 //1049.28 * 55.0871 = 1104.36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100100101011101110111010010101;
b = 32'b11111111001011111000010000011100;
correct = 32'b11111111001011111000010000011100;
#400 //-2.58154e+22 * -2.33301e+38 = -2.33301e+38
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010001100000010100100101000010;
b = 32'b01001001110101010101010010101111;
correct = 32'b01010001100000010100101000010111;
#400 //6.941e+10 * 1.74761e+06 = 6.94117e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110110000010001110101101000001;
b = 32'b00001011101001110110000001011001;
correct = 32'b11110110000010001110101101000001;
#400 //-6.94262e+32 * 6.4471e-32 = -6.94262e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010101000100011010110100100000;
b = 32'b11111100100100010111100110000011;
correct = 32'b11111100100100010111100110000011;
#400 //-1.00108e+13 * -6.04278e+36 = -6.04278e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101000011111100101110100110111;
b = 32'b00000010001111100100101101101000;
correct = 32'b01101000011111100101110100110111;
#400 //4.8048e+24 * 1.39806e-37 = 4.8048e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110001001111001101000110001100;
b = 32'b01000010100110000110011110011100;
correct = 32'b01000010100110000110011110011100;
#400 //-2.74767e-09 * 76.2024 = 76.2024
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110101010010111101000010001100;
b = 32'b01111000110011010001011001101101;
correct = 32'b01111000110011101010111000001110;
#400 //2.58366e+32 * 3.32774e+34 = 3.35357e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100111100111000111101101110110;
b = 32'b00101000011001011011101111110001;
correct = 32'b00101000000101110111111000110110;
#400 //-4.34326e-15 * 1.27528e-14 = 8.40955e-15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010111111101111101111011011000;
b = 32'b10001111010110010010000110011001;
correct = 32'b10010111111101111101111101000101;
#400 //-1.60183e-24 * -1.07054e-29 = -1.60184e-24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101000001111100100100100100011;
b = 32'b10110011100011101000010110111011;
correct = 32'b10110011100011101000010110111100;
#400 //-1.0563e-14 * -6.63672e-08 = -6.63672e-08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011010110011101100001111111111;
b = 32'b00110110011110000001011001100000;
correct = 32'b00110110011110000001011001100000;
#400 //8.55163e-23 * 3.69679e-06 = 3.69679e-06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010110110000111011010101101110;
b = 32'b00110111101010110101100111100001;
correct = 32'b00110111101010110101100111100001;
#400 //-3.16184e-25 * 2.04266e-05 = 2.04266e-05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110000110000101010001101110100;
b = 32'b11110100000011111000001011011100;
correct = 32'b11110100000100010000100000100011;
#400 //-4.81902e+29 * -4.54805e+31 = -4.59624e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010011000101111101100100010001;
b = 32'b00111100000001011101111110111100;
correct = 32'b00111100000001011101111110111100;
#400 //-1.91659e-27 * 0.00817102 = 0.00817102
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001111111100101111010011000010;
b = 32'b10011010000000101111100100000101;
correct = 32'b11001111111100101111010011000010;
#400 //-8.15225e+09 * -2.70845e-23 = -8.15225e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011011010110111111000101000011;
b = 32'b00111000110110110000101100110100;
correct = 32'b00111000110110110000101100110100;
#400 //1.81932e-22 * 0.000104448 = 0.000104448
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111010001000101111010011111011;
b = 32'b01000010111001010010001011101000;
correct = 32'b01111010001000101111010011111011;
#400 //2.1153e+35 * 114.568 = 2.1153e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011010001010110101111000111010;
b = 32'b00100101010101100100110111101000;
correct = 32'b00100101010101100100110111101011;
#400 //3.54381e-23 * 1.85879e-16 = 1.85879e-16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100011110101000110010110100101;
b = 32'b01110101010000110001110000001001;
correct = 32'b01110101010000110001110000001001;
#400 //-2.30281e-17 * 2.47331e+32 = 2.47331e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111010111101110100011100001101;
b = 32'b10110001010010101010010111000011;
correct = 32'b10111010111101110100011100100110;
#400 //-0.00188658 * -2.94891e-09 = -0.00188658
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011011111100100001101100011100;
b = 32'b10010010000001110001000100111011;
correct = 32'b10011011111100100001101100101101;
#400 //-4.00531e-22 * -4.26197e-28 = -4.00531e-22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110011111010100001011111110010;
b = 32'b00100000000011100011101110101100;
correct = 32'b00110011111010100001011111110010;
#400 //1.09008e-07 * 1.20476e-19 = 1.09008e-07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111001100110001011100110001011;
b = 32'b11110000100110101010000000010010;
correct = 32'b11110000100110101010000000010010;
#400 //-0.000291299 * -3.82834e+29 = -3.82834e+29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110111010011101101011111010011;
b = 32'b10011001001100010001101111111111;
correct = 32'b10110111010011101101011111010011;
#400 //-1.23288e-05 * -9.15634e-24 = -1.23288e-05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000010100010111110000111110000;
b = 32'b00111011111000110001000101000010;
correct = 32'b00111011111000110001000101000010;
#400 //2.05539e-37 * 0.00692955 = 0.00692955
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011010010010011000010001101111;
b = 32'b00101110111100111100100101100110;
correct = 32'b11011010010010011000010001101111;
#400 //-1.41805e+16 * 1.10861e-10 = -1.41805e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101101001110000111110001100100;
b = 32'b01001011101000011100110101001100;
correct = 32'b01001011101000011100110101001100;
#400 //-1.04868e-11 * 2.12077e+07 = 2.12077e+07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001110000011111110001100100001;
b = 32'b10001100111110010010010100110100;
correct = 32'b00001101111000010111110011110101;
#400 //1.77355e-30 * -3.83869e-31 = 1.38968e-30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001011111110000101010101011000;
b = 32'b10011010000111101111000101011001;
correct = 32'b10011010000111101111000101011001;
#400 //9.56545e-32 * -3.28686e-23 = -3.28686e-23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110101110000001011001010000010;
b = 32'b10010011101111000111000000010010;
correct = 32'b00110101110000001011001010000010;
#400 //1.43571e-06 * -4.75684e-27 = 1.43571e-06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101001010100000111101111001001;
b = 32'b10001111111001111000011001010110;
correct = 32'b00101001010100000111101111001001;
#400 //4.62926e-14 * -2.28301e-29 = 4.62926e-14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100011110110101110000111010110;
b = 32'b01000100010100101110000011110111;
correct = 32'b11100011110110101110000111010110;
#400 //-8.07533e+21 * 843.515 = -8.07533e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100000100110111000001001010111;
b = 32'b11110111101101101111111101000111;
correct = 32'b11110111101101101111111101000111;
#400 //8.96449e+19 * -7.42325e+33 = -7.42325e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001001101010101001001001000100;
b = 32'b11111001100010000110110101101000;
correct = 32'b11111001100010000110110101101000;
#400 //-1.39732e+06 * -8.85464e+34 = -8.85464e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000111110110110001011001101001;
b = 32'b11100111110001010111011010100000;
correct = 32'b11100111110001010111011010100000;
#400 //-112173.0 * -1.86499e+24 = -1.86499e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010001000101100100010011001000;
b = 32'b11010110101000110100001101100000;
correct = 32'b11010110101000110011000010010111;
#400 //4.03374e+10 * -8.97549e+13 = -8.97145e+13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001100001001110000101110010001;
b = 32'b10000011011001110000000101101011;
correct = 32'b00001100001001110000101101010111;
#400 //1.28687e-31 * -6.78864e-37 = 1.28686e-31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010111000001001110010111111001;
b = 32'b01100011101100101111111101010110;
correct = 32'b01100011101100101111111101010110;
#400 //4.29418e-25 * 6.60384e+21 = 6.60384e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110111000011000000110001001101;
b = 32'b10111111010101111000001011100001;
correct = 32'b10111111010101111000001001010101;
#400 //8.34751e-06 * -0.841841 = -0.841832
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111011111111110101100001111110;
b = 32'b00001111110001001110001111010101;
correct = 32'b11111011111111110101100001111110;
#400 //-2.65166e+36 * 1.94148e-29 = -2.65166e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011001001010100110001000101100;
b = 32'b00010111100100100110100100000100;
correct = 32'b10011001000110000001010100001100;
#400 //-8.80862e-24 * 9.46154e-25 = -7.86247e-24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101011101011000010110111001010;
b = 32'b00011001010110001010010001011000;
correct = 32'b01101011101011000010110111001010;
#400 //4.16303e+26 * 1.12001e-23 = 4.16303e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101110000001001110111000110011;
b = 32'b00100001110010011001011101010110;
correct = 32'b11101110000001001110111000110011;
#400 //-1.0285e+28 * 1.36603e-18 = -1.0285e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100010100001100001000000000101;
b = 32'b00111100000110001100001000011010;
correct = 32'b11100010100001100001000000000101;
#400 //-1.23651e+21 * 0.00932362 = -1.23651e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101001010110101110100011110000;
b = 32'b00100001010001111001111101100100;
correct = 32'b10101001010110101110100000101000;
#400 //-4.86078e-14 * 6.76348e-19 = -4.86071e-14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111010111110100000100000011110;
b = 32'b01110010101011000010000110111111;
correct = 32'b01110010101011000010000110111111;
#400 //0.00190759 * 6.81884e+30 = 6.81884e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101110001110111000010011101100;
b = 32'b01000100011100000010001010101111;
correct = 32'b01101110001110111000010011101100;
#400 //1.45086e+28 * 960.542 = 1.45086e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001110100110111011011110110110;
b = 32'b00001100110000110100101000111101;
correct = 32'b00001110101001111110110001011010;
#400 //3.83874e-30 * 3.00892e-31 = 4.13963e-30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001011011101010011011000100010;
b = 32'b10101011110100110110011011100000;
correct = 32'b10101011110100110110011011100000;
#400 //4.7226e-32 * -1.5021e-12 = -1.5021e-12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011010100101111100100000100000;
b = 32'b11010100000010111101010011100101;
correct = 32'b11010100000010111101010011100101;
#400 //6.27755e-23 * -2.40229e+12 = -2.40229e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110100001100010101000001111010;
b = 32'b00100100010100100100011011011110;
correct = 32'b01110100001100010101000001111010;
#400 //5.61932e+31 * 4.55965e-17 = 5.61932e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011010100101110010111101000110;
b = 32'b00100011111011000000101100000101;
correct = 32'b00100011111011000000101011011111;
#400 //-6.25285e-23 * 2.55918e-17 = 2.55918e-17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101001001001110110011110000111;
b = 32'b10000010001011101110100001001010;
correct = 32'b11101001001001110110011110000111;
#400 //-1.26487e+25 * -1.28502e-37 = -1.26487e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010000010100100010001000011100;
b = 32'b11101101001011010010100000001000;
correct = 32'b11101101001011010010100000001000;
#400 //-1.41018e+10 * -3.34933e+27 = -3.34933e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101101000001011111110101000001;
b = 32'b01100101101001000100101000111101;
correct = 32'b01100101101001000100101000111101;
#400 //-7.61641e-12 * 9.69797e+22 = 9.69797e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111111000111100111101010001010;
b = 32'b11010010000000000100010100101000;
correct = 32'b11010010000000000100010100101000;
#400 //0.619057 * -1.37729e+11 = -1.37729e+11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110100010000000000100110111011;
b = 32'b00101111010100100100011010010100;
correct = 32'b00110100010000000011111001001101;
#400 //1.78849e-07 * 1.91245e-10 = 1.79041e-07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011110011010011001111000000010;
b = 32'b10101111010100001011011111111001;
correct = 32'b11011110011010011001111000000010;
#400 //-4.20847e+18 * -1.89829e-10 = -4.20847e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011100111100000111110010110010;
b = 32'b00010010101110000011101100100111;
correct = 32'b00011100111100000111110010111110;
#400 //1.59141e-21 * 1.16266e-27 = 1.59141e-21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111010010101100000001001111111;
b = 32'b11101100111110110100100101010101;
correct = 32'b11111010010101100000001001111111;
#400 //-2.77801e+35 * -2.43029e+27 = -2.77801e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101010011111011111011111000010;
b = 32'b00111110111011101011000111110110;
correct = 32'b11101010011111011111011111000010;
#400 //-7.67571e+25 * 0.466201 = -7.67571e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101011101101011111101010101011;
b = 32'b11110011101001010010101110011101;
correct = 32'b11110011101001010010101110011101;
#400 //-1.29304e-12 * -2.61723e+31 = -2.61723e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100111100011101000110010001011;
b = 32'b01001100000111011101111000011110;
correct = 32'b01100111100011101000110010001011;
#400 //1.34634e+24 * 4.13841e+07 = 1.34634e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101000010011000010101110110011;
b = 32'b00110001101100101111100001100011;
correct = 32'b00110001101100101111100001001001;
#400 //-1.13338e-14 * 5.20872e-09 = 5.20871e-09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011110110001000011111100110001;
b = 32'b11000101010001100000010100111001;
correct = 32'b01011110110001000011111100110001;
#400 //7.07054e+18 * -3168.33 = 7.07054e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010010000101100110110110110101;
b = 32'b11100101111010000001100001000100;
correct = 32'b11100101111010000001100001000100;
#400 //4.74669e-28 * -1.37005e+23 = -1.37005e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111111011011011110011110111011;
b = 32'b01101011110001111011100111011001;
correct = 32'b01101011110001111011100111011001;
#400 //0.929317 * 4.82908e+26 = 4.82908e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111111111010011011101111000000;
b = 32'b10111110011010110000101101001100;
correct = 32'b11000000000000111000111010010101;
#400 //-1.82604 * -0.229535 = -2.05558
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110101101000000101000111000101;
b = 32'b10101000010101110100110110110101;
correct = 32'b00110101101000000101000111000101;
#400 //1.19447e-06 * -1.19517e-14 = 1.19447e-06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101001110000100101100001010111;
b = 32'b11011101001100010101101110011110;
correct = 32'b11011101001100010101101110011110;
#400 //8.63066e-14 * -7.98749e+17 = -7.98749e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011000011011110100000000110011;
b = 32'b11111010100110100011010110110100;
correct = 32'b11111010100110100011010110110100;
#400 //-1.05224e+15 * -4.00351e+35 = -4.00351e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001100011110001100101110000111;
b = 32'b11011110110000000100100111111000;
correct = 32'b11011110110000000100100111111000;
#400 //-6.52201e+07 * -6.92794e+18 = -6.92794e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000000000111001101000000000111;
b = 32'b00110010101010101101101000011000;
correct = 32'b00110010101010101101101000011000;
#400 //-2.64602e-39 * 1.98898e-08 = 1.98898e-08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011011101100111111101001001011;
b = 32'b10111101100000100110111111011110;
correct = 32'b11011011101100111111101001001011;
#400 //-1.01318e+17 * -0.0636899 = -1.01318e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111100011110001100111101100100;
b = 32'b01011001010110111100001010101011;
correct = 32'b01011001010110111100001010101011;
#400 //-0.0151862 * 3.86607e+15 = 3.86607e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000110000001000110001001111111;
b = 32'b11101001110100000111110010101011;
correct = 32'b11101001110100000111110010101011;
#400 //8472.62 * -3.15057e+25 = -3.15057e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100111101101110010001111101011;
b = 32'b10010000010100010100100110010000;
correct = 32'b10100111101101110010001111101011;
#400 //-5.08316e-15 * -4.12747e-29 = -5.08316e-15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100010110001011111011011010010;
b = 32'b00101011001000101100010111001100;
correct = 32'b00101011001000101100011000101111;
#400 //5.36583e-18 * 5.78285e-13 = 5.7829e-13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000111010100000001000010000000;
b = 32'b10001110010010100111101101111010;
correct = 32'b11000111010100000001000010000000;
#400 //-53264.5 * -2.49579e-30 = -53264.5
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101011011110111100000000110011;
b = 32'b01101101001011101011011010110100;
correct = 32'b01101101001011101011011010110100;
#400 //8.94398e-13 * 3.37945e+27 = 3.37945e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011000110101011011101101100110;
b = 32'b11110001101010000001001010001010;
correct = 32'b11110001101010000001001010001010;
#400 //-5.52484e-24 * -1.66451e+30 = -1.66451e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010100111001101111100101110101;
b = 32'b00101111101101100111110111111110;
correct = 32'b11010100111001101111100101110101;
#400 //-7.93622e+12 * 3.31951e-10 = -7.93622e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100011100001000111001001110111;
b = 32'b00001100010000000101111001110000;
correct = 32'b00100011100001000111001001110111;
#400 //1.43599e-17 * 1.48196e-31 = 1.43599e-17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011001010111000011000011110110;
b = 32'b11001101110011011001001000100111;
correct = 32'b01011001010111000011000011110100;
#400 //3.87365e+15 * -4.31113e+08 = 3.87364e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011110001000001010011010001110;
b = 32'b10101111111001000011101101111110;
correct = 32'b01011110001000001010011010001110;
#400 //2.89402e+18 * -4.15152e-10 = 2.89402e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011111001101001010010100111100;
b = 32'b00001000011100001011110011000010;
correct = 32'b10011111001101001010010100111100;
#400 //-3.82532e-20 * 7.24443e-34 = -3.82532e-20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011010111011101101011110111000;
b = 32'b10001010000001011000000110101101;
correct = 32'b01011010111011101101011110111000;
#400 //3.36141e+16 * -6.42811e-33 = 3.36141e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000101101000001000101111111011;
b = 32'b00011001111100101100001100010011;
correct = 32'b01000101101000001000101111111011;
#400 //5137.5 * 2.5101e-23 = 5137.5
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001011001111100011010100110111;
b = 32'b00001001111100101111010001101110;
correct = 32'b01001011001111100011010100110111;
#400 //1.24655e+07 * 5.84892e-33 = 1.24655e+07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000010011101100110011111111101;
b = 32'b00000110110000101010010111010100;
correct = 32'b11000010011101100110011111111101;
#400 //-61.6016 * 7.32184e-35 = -61.6016
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110001011000111100111001101100;
b = 32'b00000110001101010010000110111011;
correct = 32'b10110001011000111100111001101100;
#400 //-3.31502e-09 * 3.40671e-35 = -3.31502e-09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011011101011001110101100001011;
b = 32'b00111111110000101111101011100111;
correct = 32'b01011011101011001110101100001011;
#400 //9.73443e+16 * 1.52328 = 9.73443e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000111100111101100111110101010;
b = 32'b10010010101010000010011010111101;
correct = 32'b10010010101010000010011010111111;
#400 //-2.38953e-34 * -1.06118e-27 = -1.06118e-27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000000101111101001011010110011;
b = 32'b11100101011101011101000000000111;
correct = 32'b11100101011101011101000000000111;
#400 //1.75028e-38 * -7.25511e+22 = -7.25511e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110100111111101011011000110111;
b = 32'b01010010011101010011110100101110;
correct = 32'b01010010011101010011110100101110;
#400 //-4.74438e-07 * 2.63323e+11 = 2.63323e+11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000010001101010011100111101100;
b = 32'b11001011111101001000001101011010;
correct = 32'b11001011111101001000001101110001;
#400 //-45.3066 * -3.20488e+07 = -3.20489e+07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100000001011110011100011111101;
b = 32'b10001100001111111011111011100000;
correct = 32'b10100000001011110011100011111101;
#400 //-1.48419e-19 * -1.47715e-31 = -1.48419e-19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010000000110001011111110111101;
b = 32'b11001010101110010101100101000011;
correct = 32'b01010000000110001010100010010010;
#400 //1.02508e+10 * -6.07351e+06 = 1.02447e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100101000001101000000101011010;
b = 32'b00110000111000101111001110011100;
correct = 32'b00110000111000101111001110011101;
#400 //1.16665e-16 * 1.65129e-09 = 1.65129e-09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010111011011110110100111001111;
b = 32'b10111011011010010100010010100011;
correct = 32'b01010111011011110110100111001111;
#400 //2.63238e+14 * -0.00355939 = 2.63238e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110011010101110111001001100100;
b = 32'b01111100100011101101000011011001;
correct = 32'b01111100100011101101000011011001;
#400 //5.01626e-08 * 5.93234e+36 = 5.93234e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101100111001101011101011100101;
b = 32'b10100001011100000100110000111111;
correct = 32'b10101100111001101011101011100111;
#400 //-6.55774e-12 * -8.14161e-19 = -6.55774e-12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001110110111001011101110000001;
b = 32'b00111110011001101110100111011110;
correct = 32'b00111110011001101110100111011110;
#400 //5.44147e-30 * 0.225502 = 0.225502
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111011111111111110010001111001;
b = 32'b11100101010101001110011011000100;
correct = 32'b01111011111111111110010001111001;
#400 //2.65734e+36 * -6.28374e+22 = 2.65734e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111011101000000010011111101000;
b = 32'b00101010110001100010011000001001;
correct = 32'b11111011101000000010011111101000;
#400 //-1.66315e+36 * 3.51983e-13 = -1.66315e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101111100000110110010000010010;
b = 32'b11001111111000101001011101100010;
correct = 32'b01101111100000110110010000010010;
#400 //8.1327e+28 * -7.60314e+09 = 8.1327e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110011101000000000111010011011;
b = 32'b11101111001011010110101001101100;
correct = 32'b01110011100111111011011111100110;
#400 //2.53621e+31 * -5.36696e+28 = 2.53084e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101100110001011111011001011001;
b = 32'b10110100110101100011001010110000;
correct = 32'b11101100110001011111011001011001;
#400 //-1.91457e+27 * -3.98975e-07 = -1.91457e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010011001000001010010101110111;
b = 32'b00011100111111010010100111000000;
correct = 32'b00011100111111010010100110101100;
#400 //-2.02764e-27 * 1.67529e-21 = 1.67529e-21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011001100000111010000001001010;
b = 32'b00100100000001011111101100000101;
correct = 32'b00100100000001011111101100001001;
#400 //1.36098e-23 * 2.90524e-17 = 2.90524e-17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010010011110111011100010100011;
b = 32'b11110101001001010111101011100001;
correct = 32'b11110101001001010111101011100001;
#400 //-2.70284e+11 * -2.09771e+32 = -2.09771e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110011011111001010100101110000;
b = 32'b00110100100001010010101111001010;
correct = 32'b00110100101001001100000011111000;
#400 //5.88274e-08 * 2.4805e-07 = 3.06878e-07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111001100100000101000011111110;
b = 32'b01010101010010101001100010111011;
correct = 32'b11111001100100000101000011111110;
#400 //-9.36667e+34 * 1.39223e+13 = -9.36667e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001001010100110100010011010011;
b = 32'b10011110110011101010110111000000;
correct = 32'b11001001010100110100010011010011;
#400 //-865357.0 * -2.1883e-20 = -865357.0
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100111100110010100110111101010;
b = 32'b01000001010001011101100000010101;
correct = 32'b11100111100110010100110111101010;
#400 //-1.44792e+24 * 12.3653 = -1.44792e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100111010011000110100101111010;
b = 32'b01001011000101100000111011000011;
correct = 32'b01001011000101100000111011000011;
#400 //-2.83679e-15 * 9.83418e+06 = 9.83418e+06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111010111011110101010001011100;
b = 32'b10110111000101101001000001000011;
correct = 32'b01111010111011110101010001011100;
#400 //6.21335e+35 * -8.97429e-06 = 6.21335e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000000100000101010111000100111;
b = 32'b10110011011011000010000111111101;
correct = 32'b01000000100000101010111000100111;
#400 //4.08376 * -5.49789e-08 = 4.08376
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111111110100100011001110101011;
b = 32'b11000111010010110011101101001001;
correct = 32'b01111111110100100011001110101011;
#400 //nan * -52027.3 = nan
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101110001100100001100111111011;
b = 32'b01000110001101100111011000001011;
correct = 32'b01101110001100100001100111111011;
#400 //1.37799e+28 * 11677.5 = 1.37799e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101101110001101101100000010111;
b = 32'b00011111011011000011010001111100;
correct = 32'b00101101110001101101100000010111;
#400 //2.2606e-11 * 5.00184e-20 = 2.2606e-11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010010011111111100100111011101;
b = 32'b00010110111010010010110001010101;
correct = 32'b11010010011111111100100111011101;
#400 //-2.74651e+11 * 3.76712e-25 = -2.74651e+11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000100010011101000100010111110;
b = 32'b10000111101000011000111001100000;
correct = 32'b11000100010011101000100010111110;
#400 //-826.137 * -2.43083e-34 = -826.137
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001110111111001111100111000110;
b = 32'b11100011010110000101111000100001;
correct = 32'b11100011010110000101111000100001;
#400 //-2.12211e+09 * -3.99128e+21 = -3.99128e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000001011110110101011010111110;
b = 32'b00001010111101010011011000110010;
correct = 32'b00001010111101010011011001010001;
#400 //4.61637e-38 * 2.3613e-32 = 2.36131e-32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001011011010011001110101100110;
b = 32'b00101111010011110000000001001110;
correct = 32'b00101111010011110000000001001110;
#400 //4.49926e-32 * 1.88266e-10 = 1.88266e-10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011010111000100100111110011000;
b = 32'b10110110100100100110010001001110;
correct = 32'b11011010111000100100111110011000;
#400 //-3.18504e+16 * -4.36282e-06 = -3.18504e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000110010011110111011010110101;
b = 32'b10011011000110101000101100000011;
correct = 32'b11000110010011110111011010110101;
#400 //-13277.7 * -1.27835e-22 = -13277.7
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110001110100100001100100101001;
b = 32'b10000001010011010011101110011101;
correct = 32'b10110001110100100001100100101001;
#400 //-6.11466e-09 * -3.76953e-38 = -6.11466e-09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110011101101000010010100111010;
b = 32'b00010111011100101110110100010111;
correct = 32'b10110011101101000010010100111010;
#400 //-8.38867e-08 * 7.84937e-25 = -8.38867e-08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100010000111110000100111111001;
b = 32'b00110010111001111010010001110011;
correct = 32'b11100010000111110000100111111001;
#400 //-7.33438e+20 * 2.69667e-08 = -7.33438e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101100001011010100100101010011;
b = 32'b01110011111010011110110000100000;
correct = 32'b01110011111010011110110000100000;
#400 //-2.46255e-12 * 3.70665e+31 = 3.70665e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010001100001110101011101010111;
b = 32'b01100101110011111011101000110100;
correct = 32'b01100101110011111011101000110100;
#400 //-7.26607e+10 * 1.22621e+23 = 1.22621e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111100010001110010010110011010;
b = 32'b01011101011100100000110110110100;
correct = 32'b01011101011100100000110110110100;
#400 //-0.012155 * 1.09011e+18 = 1.09011e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100010101001100000000001110011;
b = 32'b11100100100111110011010110010011;
correct = 32'b11100100100111110011010110010011;
#400 //-4.49949e-18 * -2.34951e+22 = -2.34951e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101110110110110010111000110110;
b = 32'b01011001110110000011010110101010;
correct = 32'b11101110110110110010111000110110;
#400 //-3.39165e+28 * 7.6072e+15 = -3.39165e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101100011101111110111110000111;
b = 32'b11000100001101100111001010000101;
correct = 32'b01101100011101111110111110000111;
#400 //1.19894e+27 * -729.789 = 1.19894e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001100110010110110000101010001;
b = 32'b11111010001001100110111111100000;
correct = 32'b11111010001001100110111111100000;
#400 //-3.13357e-31 * -2.16048e+35 = -2.16048e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100010111101110010010111100011;
b = 32'b00001101101111111111010000010100;
correct = 32'b10100010111101110010010111100011;
#400 //-6.69896e-18 * 1.183e-30 = -6.69896e-18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100100111000010000101011001010;
b = 32'b00101000011000001011011010100111;
correct = 32'b01100100111000010000101011001010;
#400 //3.32104e+22 * 1.24741e-14 = 3.32104e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011011000110101000001011100011;
b = 32'b11111010001000101111011100011111;
correct = 32'b11111010001000101111011100011111;
#400 //1.27809e-22 * -2.11541e+35 = -2.11541e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101000101101100001011101101011;
b = 32'b10000010110111101101001111001001;
correct = 32'b01101000101101100001011101101011;
#400 //6.87922e+24 * -3.27415e-37 = 6.87922e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010000000000111000010010000111;
b = 32'b00111001000011000001000110111011;
correct = 32'b01010000000000111000010010000111;
#400 //8.826e+09 * 0.00013358 = 8.826e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001110010000010110100000110001;
b = 32'b01111011000010101010110010110011;
correct = 32'b01111011000010101010110010110011;
#400 //2.38393e-30 * 7.2004e+35 = 7.2004e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101001011111111010011010010101;
b = 32'b00100010011101101100110000110010;
correct = 32'b11101001011111111010011010010101;
#400 //-1.93164e+25 * 3.34473e-18 = -1.93164e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011101010001010001100000000111;
b = 32'b00100000000010000010100010000000;
correct = 32'b00100000000001010001010000100000;
#400 //-2.60852e-21 * 1.1533e-19 = 1.12722e-19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101100001110010010010100100000;
b = 32'b00111011111010111001100000001100;
correct = 32'b00111011111010111001100000001100;
#400 //2.63107e-12 * 0.00718976 = 0.00718976
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111011111001110000101111000100;
b = 32'b11110111011110001110011001011110;
correct = 32'b11110111011110001110011001011110;
#400 //-0.00705096 * -5.04829e+33 = -5.04829e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011100010100010011011110111001;
b = 32'b00110011001001010011101111101110;
correct = 32'b11011100010100010011011110111001;
#400 //-2.35558e+17 * 3.84716e-08 = -2.35558e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000010000001001111100001001001;
b = 32'b11110100101110001100010001011110;
correct = 32'b11110100101110001100010001011110;
#400 //-33.2425 * -1.1711e+32 = -1.1711e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000110001111011010100010000000;
b = 32'b00101010101111111011111000010110;
correct = 32'b00101010101111111011111000010110;
#400 //-3.56707e-35 * 3.40603e-13 = 3.40603e-13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111101000110100101000100010100;
b = 32'b01001011101100001100010010100100;
correct = 32'b11111101000110100101000100010100;
#400 //-1.28201e+37 * 2.31694e+07 = -1.28201e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011011011010000001010111110111;
b = 32'b10010111011110011100111001010100;
correct = 32'b11011011011010000001010111110111;
#400 //-6.53263e+16 * -8.07167e-25 = -6.53263e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111100110001011010110101100110;
b = 32'b00001010010101111110111100111000;
correct = 32'b00111100110001011010110101100110;
#400 //0.0241305 * 1.03969e-32 = 0.0241305
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010100001101110011110010011011;
b = 32'b10100010001011010101110101001111;
correct = 32'b10100010001011010101110101001111;
#400 //-9.25109e-27 * -2.34953e-18 = -2.34953e-18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101001000001010010100001010000;
b = 32'b11000100110110111111101001100101;
correct = 32'b11000100110110111111101001100101;
#400 //2.95669e-14 * -1759.82 = -1759.82
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010011100010000100000111000110;
b = 32'b00011011010110111000101001010000;
correct = 32'b00011011010110111000101101100001;
#400 //3.43961e-27 * 1.81599e-22 = 1.81603e-22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001110010110010011111111110010;
b = 32'b01000010111010110001110111000110;
correct = 32'b11001110010110010011111111110000;
#400 //-9.11212e+08 * 117.558 = -9.11212e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010101000110001101100101001101;
b = 32'b00101001001110100111011000001111;
correct = 32'b00101001001110100111011000001111;
#400 //3.08676e-26 * 4.14027e-14 = 4.14027e-14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100101100111111011001111100001;
b = 32'b11101101011110100010010110110110;
correct = 32'b11101101011110100010010110110110;
#400 //-2.7704e-16 * -4.83855e+27 = -4.83855e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111000101110001100111001100100;
b = 32'b01101110111010111110001000011110;
correct = 32'b01111000101110001100111001110011;
#400 //2.99865e+34 * 3.65012e+28 = 2.99866e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001101110100110000010010010011;
b = 32'b10111011100000010101001111110010;
correct = 32'b01001101110100110000010010010011;
#400 //4.42537e+08 * -0.00394677 = 4.42537e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001001001111011100101010001100;
b = 32'b00001001011101100000000000000000;
correct = 32'b00001001110110011110010101000110;
#400 //2.28453e-33 * 2.96112e-33 = 5.24565e-33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001011011000110100111100101100;
b = 32'b11101101110000100111000001100111;
correct = 32'b11101101110000100111000001100111;
#400 //4.37782e-32 * -7.522e+27 = -7.522e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000101000111001110101010110011;
b = 32'b01010111011001110011110011011001;
correct = 32'b01010111011001110011110011011001;
#400 //-2510.67 * 2.54249e+14 = 2.54249e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111110001111111000101010011110;
b = 32'b11000100101101110111100011010000;
correct = 32'b11000100101101110111001011010100;
#400 //0.187052 * -1467.78 = -1467.59
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110000101111010011111000111010;
b = 32'b10010100110010010010101101010101;
correct = 32'b01110000101111010011111000111010;
#400 //4.68543e+29 * -2.03129e-26 = 4.68543e+29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001010101010001000001001001001;
b = 32'b00110101000010111111000000110011;
correct = 32'b01001010101010001000001001001001;
#400 //5.5217e+06 * 5.21311e-07 = 5.5217e+06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001101000100001101011001111000;
b = 32'b11111101111011001111100000101011;
correct = 32'b11111101111011001111100000101011;
#400 //-1.51873e+08 * -3.93733e+37 = -3.93733e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001010101111101100011100100110;
b = 32'b11111010001100001001100010110011;
correct = 32'b11111010001100001001100010110011;
#400 //-6.25141e+06 * -2.29235e+35 = -2.29235e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000000110100000001000110010010;
b = 32'b11110111011001000001110100110111;
correct = 32'b11110111011001000001110100110111;
#400 //-6.50214 * -4.6267e+33 = -4.6267e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100011010100011110000001100000;
b = 32'b00100010000000100001011101100001;
correct = 32'b10100011001100010101101010001000;
#400 //-1.13774e-17 * 1.76307e-18 = -9.61436e-18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010111101100110011000110111010;
b = 32'b00110000000001010111111110010010;
correct = 32'b11010111101100110011000110111010;
#400 //-3.94052e+14 * 4.85664e-10 = -3.94052e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111011101100000101110011101110;
b = 32'b10100011101100111101111100110000;
correct = 32'b01111011101100000101110011101110;
#400 //1.83146e+36 * -1.95017e-17 = 1.83146e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001101001011110101010100001000;
b = 32'b00100101101001001111111101110010;
correct = 32'b00100101101001001111111101110010;
#400 //-5.40284e-31 * 2.86226e-16 = 2.86226e-16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010000101001110001100110010101;
b = 32'b10110111011100111011011110010000;
correct = 32'b01010000101001110001100110010101;
#400 //2.24278e+10 * -1.45267e-05 = 2.24278e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110010111110101010110110101011;
b = 32'b01000111000011101100101000001100;
correct = 32'b01110010111110101010110110101011;
#400 //9.93039e+30 * 36554.0 = 9.93039e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100001101101101111001110011011;
b = 32'b00001011000101000111001010101000;
correct = 32'b10100001101101101111001110011011;
#400 //-1.23973e-18 * 2.859e-32 = -1.23973e-18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110101000011011010000111001001;
b = 32'b01001101111001101010111100110010;
correct = 32'b11110101000011011010000111001001;
#400 //-1.7954e+32 * 4.8378e+08 = -1.7954e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111011101010100010001100110001;
b = 32'b10000100110110010001000100111010;
correct = 32'b00111011101010100010001100110001;
#400 //0.00519218 * -5.10323e-36 = 0.00519218
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011001111110001001010001001111;
b = 32'b00111101001100111010110111001010;
correct = 32'b00111101001100111010110111001010;
#400 //2.57025e-23 * 0.0438669 = 0.0438669
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111011101100101111000111100110;
b = 32'b00010111010101011001010111101101;
correct = 32'b01111011101100101111000111100110;
#400 //1.85827e+36 * 6.90132e-25 = 1.85827e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111101010001111101000110110010;
b = 32'b01000001101110101111001111111111;
correct = 32'b01111101010001111101000110110010;
#400 //1.66003e+37 * 23.3691 = 1.66003e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100110001111000110100010111111;
b = 32'b10011000010011010000010011110001;
correct = 32'b10100110001111000110100010111111;
#400 //-6.53676e-16 * -2.64981e-24 = -6.53676e-16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100000011111000101011001011000;
b = 32'b01001111010111100011000001111011;
correct = 32'b01001111010111100011000001111011;
#400 //-2.13738e-19 * 3.72772e+09 = 3.72772e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111001100101010100000111111011;
b = 32'b00011011110010010100000100011111;
correct = 32'b00111001100101010100000111111011;
#400 //0.000284687 * 3.32947e-22 = 0.000284687
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011000100000000110100010101000;
b = 32'b10010011000000100100100010001010;
correct = 32'b01011000100000000110100010101000;
#400 //1.1295e+15 * -1.64441e-27 = 1.1295e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101101001100110100100000001010;
b = 32'b00111111011100011110100011001111;
correct = 32'b00111111011100011110100011001111;
#400 //-1.0191e-11 * 0.944959 = 0.944959
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110010000111110100110001001000;
b = 32'b01101000111111010010100000010001;
correct = 32'b11110010000111110100110000101000;
#400 //-3.15522e+30 * 9.56398e+24 = -3.15521e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100100111000001000100110100100;
b = 32'b10011101000100000101111111010000;
correct = 32'b01100100111000001000100110100100;
#400 //3.31359e+22 * -1.91078e-21 = 3.31359e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000111111111101101001110010011;
b = 32'b11010011001011100110011101011011;
correct = 32'b11010011001011100110011101011011;
#400 //3.8342e-34 * -7.49058e+11 = -7.49058e+11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010011011110110011001000010111;
b = 32'b10100010101110010111001010001011;
correct = 32'b11010011011110110011001000010111;
#400 //-1.07888e+12 * -5.02656e-18 = -1.07888e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000001100000001000010010000000;
b = 32'b01010001110111110101001111110011;
correct = 32'b01010001110111110101001111110011;
#400 //4.72099e-38 * 1.19898e+11 = 1.19898e+11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001000100110011010000001101001;
b = 32'b11101100011100010010110101111111;
correct = 32'b11101100011100010010110101111111;
#400 //-314627.0 * -1.16626e+27 = -1.16626e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001100001001001010011100000000;
b = 32'b11101100001000010011000100100110;
correct = 32'b11101100001000010011000100100110;
#400 //-4.31626e+07 * -7.79477e+26 = -7.79477e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100001100111011101110100010011;
b = 32'b11000010110101110001011100101111;
correct = 32'b11000010110101110001011100101111;
#400 //1.06973e-18 * -107.545 = -107.545
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000000010110101110100100010110;
b = 32'b01001000110001010101100011100001;
correct = 32'b01001000110001010101100011100001;
#400 //-8.34881e-39 * 404167.0 = 404167.0
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011110011110000101011001010011;
b = 32'b01010000000110110001001111011110;
correct = 32'b01010000000110110001001111011110;
#400 //1.31469e-20 * 1.04071e+10 = 1.04071e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110101001000001001110011111111;
b = 32'b00101000010101101100000001100100;
correct = 32'b01110101001000001001110011111111;
#400 //2.03602e+32 * 1.19211e-14 = 2.03602e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000000010010110011010110110010;
b = 32'b01110101001111111110111001110000;
correct = 32'b01110101001111111110111001110000;
#400 //3.17515 * 2.43302e+32 = 2.43302e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011010011111100010000010101110;
b = 32'b10001011010001101010000000101110;
correct = 32'b01011010011111100010000010101110;
#400 //1.78826e+16 * -3.82539e-32 = 1.78826e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000001001011011111010001111001;
b = 32'b01100100010100100010100011110100;
correct = 32'b01100100010100100010100011110100;
#400 //10.8722 * 1.55071e+22 = 1.55071e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001000101111011110001110001011;
b = 32'b11101111111100111101111110000001;
correct = 32'b11101111111100111101111110000001;
#400 //388892.0 * -1.5095e+29 = -1.5095e+29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100100110111111000000100001110;
b = 32'b00101110111010111111000111111101;
correct = 32'b01100100110111111000000100001110;
#400 //3.29834e+22 * 1.07295e-10 = 3.29834e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011111010011010010100010100010;
b = 32'b10001100110011001100101010101110;
correct = 32'b11011111010011010010100010100010;
#400 //-1.47832e+19 * -3.15532e-31 = -1.47832e+19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100000010010110000001001100111;
b = 32'b11000000001110001100000010101101;
correct = 32'b11000000001110001100000010101101;
#400 //1.71956e-19 * -2.88676 = -2.88676
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100001010101101111011110101110;
b = 32'b01000000001011110001000010010110;
correct = 32'b11100001010101101111011110101110;
#400 //-2.47841e+20 * 2.73539 = -2.47841e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001111111001011101100100110110;
b = 32'b11001010110000001111110001010101;
correct = 32'b01001111111001011010100011110111;
#400 //7.71244e+09 * -6.32375e+06 = 7.70611e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010110110000011111111101011011;
b = 32'b11010001011001000111001110011110;
correct = 32'b11010001011001000111001110011110;
#400 //-3.1342e-25 * -6.13245e+10 = -6.13245e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110111010010110111100100011100;
b = 32'b11010010111110010111011010000001;
correct = 32'b11010010111110010111011010000001;
#400 //1.21279e-05 * -5.35718e+11 = -5.35718e+11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000110001011011000100100000101;
b = 32'b00011001011100100001011110011011;
correct = 32'b01000110001011011000100100000101;
#400 //11106.3 * 1.25159e-23 = 11106.3
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100101100011010010001011001100;
b = 32'b11101001001100101111001100111101;
correct = 32'b11101001001100101111001100111101;
#400 //-2.44832e-16 * -1.35211e+25 = -1.35211e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
$display ("Done.");
$finish;
 // stop the simulation
 end

endmodule