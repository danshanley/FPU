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
 clock = 0;op = 2'b11;
a = 32'b01001011011000011010000101111101;
b = 32'b10001010000011100100001100110110;
correct = 32'b10010101111110101100010110100000;
#400 //1.47869e+07 * -6.84969e-33 = -1.01286e-25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111010111101001111010100111001;
b = 32'b11000010011011011000110011101110;
correct = 32'b00111101111000110100110111100000;
#400 //-0.00186888 * -59.3876 = 0.110988
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000100101011001111011011011101;
b = 32'b11000001001100011101110100101001;
correct = 32'b11000110011100000101100000110111;
#400 //1383.71 * -11.1165 = -15382.1
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101000101011111100110001101100;
b = 32'b11010101000100010100100110011101;
correct = 32'b01111110010001111000101010101101;
#400 //-6.64148e+24 * -9.98408e+12 = 6.63091e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011001111010101101100110110011;
b = 32'b00101100111101101000100110101000;
correct = 32'b00000111011000100010101101111011;
#400 //2.4283e-23 * 7.00702e-12 = 1.70151e-34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001111010110000101101100011000;
b = 32'b00110110010000011100100100011000;
correct = 32'b10000110001000111100011010100001;
#400 //-1.06672e-29 * 2.88763e-06 = -3.08028e-35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000101110100000001011001010001;
b = 32'b11011111101000000000001111011110;
correct = 32'b10100110000000100001000100010111;
#400 //1.95684e-35 * -2.30606e+19 = -4.5126e-16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011010001100001001000111011000;
b = 32'b01011100011011110110011011111011;
correct = 32'b10110111001001010001111100110000;
#400 //-3.65138e-23 * 2.69543e+17 = -9.84203e-06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000001011010101111000111001010;
b = 32'b01111110000010101000010000010110;
correct = 32'b10111111111111100011111100100000;
#400 //-4.31525e-38 * 4.60298e+37 = -1.9863
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010010111100010011111001001010;
b = 32'b00010100101110001010101010001011;
correct = 32'b10101000001011100000010101111100;
#400 //-5.18066e+11 * 1.86465e-26 = -9.66013e-15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100110110110011010011000111110;
b = 32'b11011101110010000111101100000101;
correct = 32'b01000101001010100111001001111000;
#400 //-1.51025e-15 * -1.80577e+18 = 2727.15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111100101000001100011000010100;
b = 32'b01101000100101011001100111000111;
correct = 32'b01100101101110111110011110111010;
#400 //0.0196257 * 5.65175e+24 = 1.1092e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111010011101010001001000001000;
b = 32'b10111001000010010110000010010011;
correct = 32'b10110100000000111000001100011010;
#400 //0.00093487 * -0.000131013 = -1.2248e-07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100101111001111101011111111001;
b = 32'b00011101000000010001111000010110;
correct = 32'b11000011011010011101111000100111;
#400 //-1.36856e+23 * 1.70886e-21 = -233.868
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100111101111111100101011011001;
b = 32'b10110100010000110101110011010000;
correct = 32'b11011100100100100101110100001100;
#400 //1.81143e+24 * -1.81946e-07 = -3.29581e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011111000010010001111100000111;
b = 32'b11101110111011001000000111011011;
correct = 32'b11001110011111010101110001010001;
#400 //2.90365e-20 * -3.65977e+28 = -1.06267e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110000100101000110100001000011;
b = 32'b00110000000010110100101101111010;
correct = 32'b10100001001000011000000010111011;
#400 //-1.07981e-09 * 5.06752e-10 = -5.47193e-19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111111001111001111111100010000;
b = 32'b00010110000100110011000101100111;
correct = 32'b00010101110110010101010111011110;
#400 //0.738267 * 1.18902e-25 = 8.77811e-26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101010101001111010000011000110;
b = 32'b00111010011000010101100110010100;
correct = 32'b01100101100100111000111011110110;
#400 //1.01325e+26 * 0.000859642 = 8.71031e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010011101000111010111100111011;
b = 32'b00110010011011001001010011010100;
correct = 32'b11000110100101110100010010110011;
#400 //-1.40604e+12 * 1.37708e-08 = -19362.3
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111011011011110110011000101000;
b = 32'b00100111000100101110100011111101;
correct = 32'b10100011000010010110001000100100;
#400 //-0.00365294 * 2.03879e-15 = -7.44757e-18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010010111011110011010110010011;
b = 32'b11101000100011000111000111111101;
correct = 32'b11111100000000110011101111001111;
#400 //5.13698e+11 * -5.30587e+24 = -2.72562e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111011000000111100011101000110;
b = 32'b10101000110111000111000011010100;
correct = 32'b11100100011000101111001010101001;
#400 //6.84233e+35 * -2.44738e-14 = -1.67458e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000011011001101110111011000000;
b = 32'b10101010100100101100101111011110;
correct = 32'b10101110100001000110110000010001;
#400 //230.933 * -2.60763e-13 = -6.02186e-11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011011100000101010001011000111;
b = 32'b10101101100110000111011011111000;
correct = 32'b11001001100110111001101010110111;
#400 //7.35414e+16 * -1.73332e-11 = -1.27471e+06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101111000101011111000101110011;
b = 32'b00010010010010001110100000101101;
correct = 32'b10000001111010110101100100111110;
#400 //-1.36373e-10 * 6.33951e-28 = -8.64534e-38
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110011000111001010011001110011;
b = 32'b01000011101011001111101001011111;
correct = 32'b10110111010100111011001000010100;
#400 //-3.6473e-08 * 345.956 = -1.2618e-05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110000010001000101111011010110;
b = 32'b11000000011000010110110000111110;
correct = 32'b00110001001011001110101001100010;
#400 //-7.14392e-10 * -3.52223 = 2.51625e-09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100011011110100010111100100000;
b = 32'b11001110110101010011000011010000;
correct = 32'b11110010110100000101100011101010;
#400 //4.61508e+21 * -1.78837e+09 = -8.25349e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011111010100011111000011011010;
b = 32'b10001101110011010110111111100000;
correct = 32'b00101101101010000111100110011110;
#400 //-1.51278e+19 * -1.2661e-30 = 1.91534e-11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101110011000101001111001100010;
b = 32'b00110011000110111011101111100000;
correct = 32'b10100010000010011101110000110101;
#400 //-5.15271e-11 * 3.62596e-08 = -1.86835e-18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101111100100001110000110100000;
b = 32'b10110011010110111000011110001111;
correct = 32'b11100011011110000111101101111000;
#400 //8.96772e+28 * -5.11132e-08 = -4.58369e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010001001111011111010000011001;
b = 32'b10101100001110010100000001100100;
correct = 32'b10111110000010010111010100101101;
#400 //5.09903e+10 * -2.63258e-12 = -0.134236
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001100110101100101101111010101;
b = 32'b11001111000001111000011100110000;
correct = 32'b00011100011000101111011101000000;
#400 //-3.30272e-31 * -2.27378e+09 = 7.50967e-22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011100100101010110100011111111;
b = 32'b01110001111100011100110000111110;
correct = 32'b01001111000011010001111100001100;
#400 //9.88713e-22 * 2.39465e+30 = 2.36762e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100100001110110000101100100100;
b = 32'b10101011111010110110101001100000;
correct = 32'b01010000101011000000000011110011;
#400 //-1.38014e+22 * -1.67273e-12 = 2.30859e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000110000000010010111000100010;
b = 32'b01100001101001111110101100000001;
correct = 32'b00101000001010010111011101011100;
#400 //2.42961e-35 * 3.87193e+20 = 9.40727e-15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111101110001110010010101101100;
b = 32'b10010000001010101011110001001111;
correct = 32'b00001110100001001101000101010111;
#400 //-0.0972393 * -3.36717e-29 = 3.27421e-30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000001110011111111010111100100;
b = 32'b01011101100010001000000011101101;
correct = 32'b10011111110111011100011010111001;
#400 //-7.63926e-38 * 1.22952e+18 = -9.39259e-20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001110010010011011110000001001;
b = 32'b11011000011010000010000000101010;
correct = 32'b00100111001101101110101111000001;
#400 //-2.48657e-30 * -1.0209e+15 = 2.53854e-15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000000100011111001101101001111;
b = 32'b01111000010010101101000011100101;
correct = 32'b10111001011000111000101101110110;
#400 //-1.31882e-38 * 1.64544e+34 = -0.000217004
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101001111010111111101100101000;
b = 32'b01000011011110101000010100100011;
correct = 32'b01101101111001101110110111111111;
#400 //3.56605e+25 * 250.52 = 8.93366e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100111011100110011000110011010;
b = 32'b00111011111111000010101110000101;
correct = 32'b00100011111011111000111000101011;
#400 //3.37499e-15 * 0.00769562 = 2.59726e-17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000110011011001101100010010101;
b = 32'b10111101001001110101000110011011;
correct = 32'b10000100000110101100110011001001;
#400 //4.45458e-35 * -0.0408493 = -1.81966e-36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100111101111011111101111010000;
b = 32'b11010101101000100110011000111010;
correct = 32'b00111101111100010000101001101110;
#400 //-5.27311e-15 * -2.232e+13 = 0.117696
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111100000100000110111001001101;
b = 32'b00000100000011100100001110101010;
correct = 32'b11000000101000001000011010110111;
#400 //-2.99971e+36 * 1.67231e-36 = -5.01644
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011110000010111010001010100001;
b = 32'b00001000010101000101001010010011;
correct = 32'b00100110111001111001111101101111;
#400 //2.51545e+18 * 6.38935e-34 = 1.60721e-15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101111110101111110010000000111;
b = 32'b00000001100111111001001001000100;
correct = 32'b10110010000001101001000111111010;
#400 //-1.3363e+29 * 5.86173e-38 = -7.83302e-09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100101010001110010000000100001;
b = 32'b11110010101001001000000011001000;
correct = 32'b11011000011111111110100110000010;
#400 //1.72714e-16 * -6.51664e+30 = -1.12551e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100100110010000010000110011011;
b = 32'b01111000001011011111001000001100;
correct = 32'b11011101100001111111101111101111;
#400 //-8.67931e-17 * 1.41121e+34 = -1.22484e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011010101000110010101101011000;
b = 32'b11110001000110101001000100000000;
correct = 32'b11001100010001010000100011111101;
#400 //6.74852e-23 * -7.65376e+29 = -5.16516e+07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110011110001111111100000100001;
b = 32'b10101110010011111101010110010011;
correct = 32'b10100010101000100101100001110111;
#400 //9.31179e-08 * -4.7256e-11 = -4.40039e-18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110010111001011001011011110001;
b = 32'b00010110100011000110010100100100;
correct = 32'b11001001111110111101001010000001;
#400 //-9.09498e+30 * 2.2682e-25 = -2.06293e+06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001100001100111010101101001000;
b = 32'b10100110101100010100110010010010;
correct = 32'b10110011011110001101111001010100;
#400 //4.70992e+07 * -1.23026e-15 = -5.79442e-08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011111101010000001100010100011;
b = 32'b01000110011001011010010111010000;
correct = 32'b01100110100101101100101011101010;
#400 //2.42252e+19 * 14697.5 = 3.56049e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010101011000011010100111010111;
b = 32'b10111001001110010111001110110100;
correct = 32'b00001111001000110111100110111010;
#400 //-4.55724e-26 * -0.000176861 = 8.05996e-30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001000101100010110011110110100;
b = 32'b10111110111100001111001011011010;
correct = 32'b10001000001001101111100110000100;
#400 //1.06772e-33 * -0.470603 = -5.02471e-34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000001011101111111101011100111;
b = 32'b10010100110011111111011111001111;
correct = 32'b00010110110010010111001111101100;
#400 //-15.4988 * -2.09994e-26 = 3.25465e-25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001111010011001101111011110000;
b = 32'b01101110100001100001000101101010;
correct = 32'b11111110010101101001010101000011;
#400 //-3.43716e+09 * 2.0746e+28 = -7.13075e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100110100100111101010000011011;
b = 32'b00001100001101111000001010111110;
correct = 32'b00110011010100111111000000111101;
#400 //3.4905e+23 * 1.41372e-31 = 4.93458e-08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111110110011001110110100000100;
b = 32'b00000100010001110110100010000100;
correct = 32'b01000011100111111001111111101000;
#400 //1.36197e+38 * 2.34403e-36 = 319.249
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101011001011000000100000010101;
b = 32'b00101001000010000110111100101010;
correct = 32'b11010100101101110101110111111110;
#400 //-2.07973e+26 * 3.02945e-14 = -6.30045e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011010110100011111000101001011;
b = 32'b11110100000110010001100000010011;
correct = 32'b01001111011110110001100111101000;
#400 //-8.68302e-23 * -4.85174e+31 = 4.21278e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110011001101110100100011100111;
b = 32'b00011100100110100011010110100011;
correct = 32'b00010000010111001101000010000100;
#400 //4.26743e-08 * 1.02047e-21 = 4.3548e-29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011110010001110100100001100000;
b = 32'b11110111100101100000001001011111;
correct = 32'b01010110011010011000110010000010;
#400 //-1.05499e-20 * -6.0851e+33 = 6.41974e+13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110110010001010011010110010101;
b = 32'b11011100011101011011110110001010;
correct = 32'b11010011001111010100111001001010;
#400 //2.93865e-06 * -2.76679e+17 = -8.13062e+11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010111001001101010100011100111;
b = 32'b11001100110110111010111010101100;
correct = 32'b01100100100011110000010000110100;
#400 //-1.83244e+14 * -1.15177e+08 = 2.11055e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100000000110100000000110100100;
b = 32'b00011001100010100010010101111100;
correct = 32'b10111010001001100011011011011110;
#400 //-4.43893e+19 * 1.4284e-23 = -0.000634057
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010111100001000001111001110000;
b = 32'b11000001100100000111111011010001;
correct = 32'b00011001100101010010010100100100;
#400 //-8.53798e-25 * -18.0619 = 1.54212e-23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010111011111111110110010110101;
b = 32'b11100111000011110010111110001001;
correct = 32'b10111111000011110010010010111111;
#400 //8.26937e-25 * -6.76175e+23 = -0.559154
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000000100100111100001000001001;
b = 32'b00000001001110100001101101011101;
correct = 32'b10000010010101101101010110001011;
#400 //-4.61744 * 3.41824e-38 = -1.57835e-37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100110010101001011001100100101;
b = 32'b10110110010100100101101101001010;
correct = 32'b01011101001011101100011011001110;
#400 //-2.51112e+23 * -3.13456e-06 = 7.87124e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011101001010101110110011101101;
b = 32'b11010001111000011001101110000010;
correct = 32'b01101111100101101010001000010001;
#400 //-7.6978e+17 * -1.21122e+11 = 9.32374e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111010100000100111111101100111;
b = 32'b00111110011000010111111110001000;
correct = 32'b10111001011001011110010111111000;
#400 //-0.000995618 * 0.220213 = -0.000219248
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110110101101010111110110110101;
b = 32'b00101001110000100100011010010101;
correct = 32'b01100001000010011011101101001101;
#400 //1.84054e+33 * 8.62757e-14 = 1.58794e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101110101110110011000100101000;
b = 32'b10111110010001111001011010011001;
correct = 32'b01101101100100011111000101010101;
#400 //-2.89666e+28 * -0.19491 = 5.64588e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001100111011000001001110110110;
b = 32'b10001001011000000100000010110000;
correct = 32'b00010110110011101100110011100110;
#400 //-1.23772e+08 * -2.69934e-33 = 3.34104e-25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111110000010101101101111101100;
b = 32'b00100011000100001101001101111000;
correct = 32'b11100001100111010001110011010010;
#400 //-4.61438e+37 * 7.85104e-18 = -3.62277e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100111101111000101001010001110;
b = 32'b00011000001000111000001110101101;
correct = 32'b11000000011100001001001011011100;
#400 //-1.77866e+24 * 2.11337e-24 = -3.75896
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110011010011100000000100111101;
b = 32'b00101110100010011110110011100011;
correct = 32'b01100010010111011111101010010011;
#400 //1.63214e+31 * 6.27212e-11 = 1.0237e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001111001001101001111011001011;
b = 32'b11110011011001011000100111101010;
correct = 32'b11000011000101010110010111001111;
#400 //8.21501e-30 * -1.81859e+31 = -149.398
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000101011001100100101110010000;
b = 32'b01011100101011001011100000101010;
correct = 32'b10100010100110110110000001110001;
#400 //-1.08284e-35 * 3.88929e+17 = -4.21149e-18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110011001000111111111100010100;
b = 32'b11110011001000110100000101001101;
correct = 32'b11100110110100010010101001111110;
#400 //3.81834e-08 * -1.29344e+31 = -4.93879e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010100000110000011010110111000;
b = 32'b00110100111111111101110000110000;
correct = 32'b10001001100110000010000001101101;
#400 //-7.68463e-27 * 4.76577e-07 = -3.66232e-33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000110101000111001000010111100;
b = 32'b01100110001011001001110001011111;
correct = 32'b00101101010111001001001001001110;
#400 //6.15265e-35 * 2.03783e+23 = 1.2538e-11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011100011100001110001101001010;
b = 32'b00111011110100111110111001100100;
correct = 32'b01011000110001110110101110100111;
#400 //2.71216e+17 * 0.00646763 = 1.75412e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111010010100011010111000001101;
b = 32'b10010010010010100100100101101010;
correct = 32'b10001101001001011010111101111000;
#400 //0.000799865 * -6.38305e-28 = -5.10558e-31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110110001000101001011010001000;
b = 32'b00011000100001010000000111111110;
correct = 32'b11001111001010001111001011110001;
#400 //-8.24419e+32 * 3.43817e-24 = -2.83449e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011110110000010110010010010110;
b = 32'b11101100000100000100101000101100;
correct = 32'b01001011010110100000000100111001;
#400 //-2.04763e-20 * -6.97742e+26 = 1.42872e+07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011010000100011110111110010000;
b = 32'b10110100001101100111101000010000;
correct = 32'b11001110110100000000101111001011;
#400 //1.02693e+16 * -1.69945e-07 = -1.74522e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101000110101010110100111101010;
b = 32'b01111000100000110100001000011000;
correct = 32'b01100001110110101101100010011000;
#400 //2.36937e-14 * 2.12979e+34 = 5.04625e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000010100000010100010010010100;
b = 32'b11011110111011101101101111110010;
correct = 32'b11100001111100010011100110100011;
#400 //64.6339 * -8.60581e+18 = -5.56227e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100110000110100100111000001000;
b = 32'b11101110100111001000101000111000;
correct = 32'b11010101001111001011010110111001;
#400 //5.35352e-16 * -2.42234e+28 = -1.2968e+13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010011111101100110110001101101;
b = 32'b00101001010100100000111000101111;
correct = 32'b00111101110010100011001010011001;
#400 //2.11676e+12 * 4.66417e-14 = 0.0987293
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101100001000011001010101111100;
b = 32'b00010000111011110010011111010000;
correct = 32'b10111101100101101111001110110000;
#400 //-7.81372e+26 * 9.43302e-29 = -0.073707
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110010010010111101110111101001;
b = 32'b01010111011011111011000011011000;
correct = 32'b01001010001111101110000100000001;
#400 //1.18666e-08 * 2.63543e+14 = 3.12736e+06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010000010001100111101110101111;
b = 32'b10000110000101101111010111100000;
correct = 32'b10010110111010100001011000110101;
#400 //1.332e+10 * -2.83925e-35 = -3.78188e-25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100101111100110001001001100100;
b = 32'b10010100010010001001101011000000;
correct = 32'b00111010101111100111100101001101;
#400 //-1.43484e+23 * -1.01279e-26 = 0.0014532
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001000010111111110110100000000;
b = 32'b01010010110111001100001000101101;
correct = 32'b11011011110000010001100110000101;
#400 //-229300.0 * 4.74075e+11 = -1.08705e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101110110111011011101001001010;
b = 32'b00110111100001000010111110000001;
correct = 32'b10100110111001001111101001100110;
#400 //-1.0083e-10 * 1.57577e-05 = -1.58885e-15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000110011001110011111011101011;
b = 32'b11000010000011010100111011010111;
correct = 32'b00001000111111110100100110111110;
#400 //-4.34925e-35 * -35.327 = 1.53646e-33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000011011110110000010110001000;
b = 32'b10100101101010100001111001110101;
correct = 32'b10101001101001101100111110001010;
#400 //251.022 * -2.95109e-16 = -7.40788e-14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111111111100001010000000011101;
b = 32'b01110110101101011101100000010011;
correct = 32'b01111111111100001010000000011101;
#400 //nan * 1.84412e+33 = nan
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110111100100111010011111101101;
b = 32'b00000100101110000011001101101010;
correct = 32'b10111100110101000111110010110100;
#400 //-5.98964e+33 * 4.33054e-36 = -0.0259384
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011101101000101100011010110100;
b = 32'b01010101011011001100001111111001;
correct = 32'b01110011100101101000101111001010;
#400 //1.46616e+18 * 1.62704e+13 = 2.3855e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001010101100011000011010100000;
b = 32'b10010110001010101010001001001111;
correct = 32'b00100001011011001010011111101000;
#400 //-5.81717e+06 * -1.37837e-25 = 8.01821e-19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010111100110011110111100010111;
b = 32'b11000000000100000011000000010100;
correct = 32'b00011000001011010110011011001100;
#400 //-9.94775e-25 * -2.25293 = 2.24116e-24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011010000000110111110100100101;
b = 32'b10101000100011111001100001010101;
correct = 32'b11000011000100111000001001001011;
#400 //9.2527e+15 * -1.59423e-14 = -147.509
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011010111001101111100001001010;
b = 32'b00100011000010001000000010110100;
correct = 32'b00111110011101100101000000001100;
#400 //3.25061e+16 * 7.39983e-18 = 0.24054
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101100110001101110011110000010;
b = 32'b01001110110011010010010000100000;
correct = 32'b10111100000111110110001101110101;
#400 //-5.6532e-12 * 1.72085e+09 = -0.0097283
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111001100011110001011000001110;
b = 32'b10111000010101011101101101011001;
correct = 32'b00110010011011110000111111100111;
#400 //-0.000272915 * -5.09874e-05 = 1.39152e-08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011101100111000011100100110111;
b = 32'b00111001111111000001110010000100;
correct = 32'b01011000000110011101100110111001;
#400 //1.40714e+18 * 0.000480864 = 6.76642e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110100111001100000111010010111;
b = 32'b00100101110111001010010011001100;
correct = 32'b11011011010001100100100010100010;
#400 //-1.45816e+32 * 3.82756e-16 = -5.58119e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001010100110110110110111001001;
b = 32'b10100000000101000100000011101000;
correct = 32'b00101011001101000000010111000001;
#400 //-5.09309e+06 * -1.25576e-19 = 6.39568e-13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110000101011010111111100010001;
b = 32'b01110111000111111001101000111010;
correct = 32'b01101000010110000101010011100011;
#400 //1.26235e-09 * 3.23712e+33 = 4.08639e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010000100100110100001100110000;
b = 32'b01101010100000110110011111011001;
correct = 32'b11111011100101110010111000111101;
#400 //-1.97652e+10 * 7.94298e+25 = -1.56995e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101111011011000001000110010010;
b = 32'b11001101110011110101010110001000;
correct = 32'b00111101101111110011000100010100;
#400 //-2.14703e-10 * -4.34811e+08 = 0.0933553
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000000100001100110110111011111;
b = 32'b10110011011001001010001011100000;
correct = 32'b10110100011100000001111011000100;
#400 //4.20091 * -5.32335e-08 = -2.23629e-07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110000010010011100110001010011;
b = 32'b00100001001111101100010111101000;
correct = 32'b01010010000101100110000110100111;
#400 //2.49814e+29 * 6.46364e-19 = 1.61471e+11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011110111101101001011110101111;
b = 32'b11010100101001111000110011010110;
correct = 32'b01110100001000010110010010011100;
#400 //-8.88443e+18 * -5.75698e+12 = 5.11475e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000110100100001010000100011111;
b = 32'b01101001011110101010000110010100;
correct = 32'b11110000100011011001100010100001;
#400 //-18512.6 * 1.89372e+25 = -3.50575e+29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000001110001000010001011101001;
b = 32'b01010111111110110100110111110100;
correct = 32'b11011010010000001000100111110100;
#400 //-24.517 * 5.52624e+14 = -1.35487e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111100101011101100011111001111;
b = 32'b00101011000000011111111000111001;
correct = 32'b01101000001100011000000010000001;
#400 //7.2601e+36 * 4.61828e-13 = 3.35292e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100010110010100000110010100000;
b = 32'b01000100011101111100110100011011;
correct = 32'b10100111110000111001010000010000;
#400 //-5.47656e-18 * 991.205 = -5.42839e-15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111011000010100100000110101101;
b = 32'b00011000000001011100111111001010;
correct = 32'b11010011100100001000100010101110;
#400 //-7.17869e+35 * 1.72948e-24 = -1.24154e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101010000000010000100011001101;
b = 32'b01110101001101101000011010110001;
correct = 32'b11011111101110000000000001001011;
#400 //-1.14606e-13 * 2.31379e+32 = -2.65174e+19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000010110010011110010011001100;
b = 32'b11111001111001101111000000100101;
correct = 32'b11111101001101100010000011110011;
#400 //100.947 * -1.49887e+35 = -1.51307e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110011001010100110110101011111;
b = 32'b00000101010001111000100111100001;
correct = 32'b00111001000001001101011011001111;
#400 //1.35026e+31 * 9.38226e-36 = 0.000126685
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001110011100110110001100101110;
b = 32'b11100101100000101110110101101011;
correct = 32'b00110100011110001111010000101100;
#400 //-2.99998e-30 * -7.72859e+22 = 2.31856e-07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001100001010101011101010101100;
b = 32'b01101011111100001000010101110011;
correct = 32'b00111000101000000110100000000001;
#400 //1.31525e-31 * 5.81545e+26 = 7.64877e-05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001001000010011010101010000100;
b = 32'b00110110010010110001100010010100;
correct = 32'b10111111110110100110111011011100;
#400 //-563880.0 * 3.02637e-06 = -1.70651
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100000010101111101000000001011;
b = 32'b10011010101111111000101010001000;
correct = 32'b10111011101000010111100100000001;
#400 //6.22038e+19 * -7.92196e-23 = -0.00492775
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101011111110110111110001010111;
b = 32'b10101101011000111000111110011001;
correct = 32'b11011001110111111000110001010010;
#400 //6.08055e+26 * -1.29353e-11 = -7.8654e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101111111011010000011001111010;
b = 32'b10110111111011011101101100011111;
correct = 32'b00101000010111000011100111100000;
#400 //-4.31147e-10 * -2.83546e-05 = 1.2225e-14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011110011100000000101001100110;
b = 32'b10011100101110101101010011110111;
correct = 32'b10111011101011110010111100111110;
#400 //4.32419e+18 * -1.23635e-21 = -0.00534621
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000101010100000100101001100001;
b = 32'b11011101011010101011101011011110;
correct = 32'b11100011001111101111110000000111;
#400 //3332.65 * -1.05713e+18 = -3.52304e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100100010100001000001011101101;
b = 32'b00100101011101101101101101111101;
correct = 32'b10001010010010010001000010010110;
#400 //-4.52137e-17 * 2.14115e-16 = -9.68092e-33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110010110100000101000001100001;
b = 32'b11011010011011000110001111110011;
correct = 32'b11001101110000000101101101101110;
#400 //2.42509e-08 * -1.66345e+16 = -4.03402e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000100011001101000100010010100;
b = 32'b01011110011010100011010000111100;
correct = 32'b11100011010100101110011111100001;
#400 //-922.134 * 4.21904e+18 = -3.89052e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100110011001101011000110001101;
b = 32'b00100001010001111111010101100000;
correct = 32'b01001000001101000011000100100011;
#400 //2.72355e+23 * 6.77486e-19 = 184517.0
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100101111101110110101001101111;
b = 32'b00100011000010111111000110101100;
correct = 32'b00001001100001110100000001011100;
#400 //4.29198e-16 * 7.58638e-18 = 3.25606e-33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101101100111111110101000011011;
b = 32'b11110011110111000111110000100101;
correct = 32'b11100010000010011011101010111100;
#400 //1.81802e-11 * -3.49372e+31 = -6.35165e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110000111111011100100001001010;
b = 32'b01000101000011001010001100001010;
correct = 32'b00110110100010110110101100101001;
#400 //1.84651e-09 * 2250.19 = 4.155e-06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011000010111101011010110010110;
b = 32'b11010101001011000111001101000111;
correct = 32'b00101110000101100000011001001010;
#400 //-2.87845e-24 * -1.18507e+13 = 3.41116e-11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100110000100000101000111101000;
b = 32'b01101010111101111011100100110011;
correct = 32'b01010001100010111010011101101111;
#400 //5.0071e-16 * 1.4974e+26 = 7.49762e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001111101111001111111000111000;
b = 32'b01100101011110100000010100010100;
correct = 32'b01110101101110001001010000000010;
#400 //6.34155e+09 * 7.37928e+22 = 4.67961e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110001100011011000101000101000;
b = 32'b00010000101111101100001000010000;
correct = 32'b01000010110100101110111110101010;
#400 //1.40174e+30 * 7.52408e-29 = 105.468
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010111010100010101110101111010;
b = 32'b01011110000010001010001101110010;
correct = 32'b11110101110111110111111010101001;
#400 //-2.30199e+14 * 2.46146e+18 = -5.66627e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011000010001000011100011010100;
b = 32'b00111110011100111001011100100111;
correct = 32'b11010111001110101011010111001101;
#400 //-8.62993e+14 * 0.237881 = -2.0529e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111010011010100011100010010110;
b = 32'b00111100101111110010110000000010;
correct = 32'b11110111101011101110100001111011;
#400 //-3.04036e+35 * 0.0233364 = -7.09512e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111000101111111100101111110010;
b = 32'b10010001111100001101010111001111;
correct = 32'b11001011001101000110111101100011;
#400 //3.11208e+34 * -3.79971e-28 = -1.1825e+07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010100110011010101110100010101;
b = 32'b01011101110010110110000001101110;
correct = 32'b01110011001000110010011000101011;
#400 //7.05624e+12 * 1.83185e+18 = 1.2926e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001011101011010010110000001011;
b = 32'b11010001011010001101011010001011;
correct = 32'b10011101100111011000000100001011;
#400 //6.67034e-32 * -6.2502e+10 = -4.1691e-21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010001010101111010010001110101;
b = 32'b11011011110001110000110001010110;
correct = 32'b10101101101001111010101100111011;
#400 //1.70112e-28 * -1.12054e+17 = -1.90617e-11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010110011101011011001010000010;
b = 32'b11011110001101000111110000011010;
correct = 32'b00110101001011010011100010011111;
#400 //-1.98473e-25 * -3.25132e+18 = 6.45299e-07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011010001100000011010011110110;
b = 32'b00100001101000110001000101111110;
correct = 32'b10111100011000000111101110000110;
#400 //-1.23995e+16 * 1.10499e-18 = -0.0137013
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010010101101001111101001010100;
b = 32'b11001101100100100010001101001001;
correct = 32'b01100000110011101001111101101011;
#400 //-3.88647e+11 * -3.06473e+08 = 1.1911e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010011111001110100111000011100;
b = 32'b10101110000110100011101000101010;
correct = 32'b10000010100010110101100110001010;
#400 //5.83896e-27 * -3.50672e-11 = -2.04756e-37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010111000100011011011000110001;
b = 32'b00000101001110011111101111011010;
correct = 32'b10011100110100111011100000000110;
#400 //-1.60212e+14 * 8.74492e-36 = -1.40104e-21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111011001111000110100010000100;
b = 32'b01011100100011001111011100010111;
correct = 32'b11011000010011110111111000000100;
#400 //-0.00287488 * 3.17425e+17 = -9.12561e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001001011011110010100110110101;
b = 32'b01001000111111001100010110110000;
correct = 32'b11010010111011000010010110111110;
#400 //-979611.0 * 517678.0 = -5.07123e+11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010000010000010010101011100110;
b = 32'b01011111011001001011110111100000;
correct = 32'b11110000001011001001100101111011;
#400 //-1.29633e+10 * 1.64826e+19 = -2.13668e+29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010110001001010010000111010011;
b = 32'b11011000111011011000000101000111;
correct = 32'b11101111100110010011001110110100;
#400 //4.53912e+13 * -2.08912e+15 = -9.48274e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111011110001011000100100111000;
b = 32'b00000010101100001101101111000111;
correct = 32'b10111111000010000111011111101100;
#400 //-2.05133e+36 * 2.5987e-37 = -0.53308
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011011101111111101110111011110;
b = 32'b00101000110011000000101100010101;
correct = 32'b10000101000110001110110100011011;
#400 //-3.17417e-22 * 2.26534e-14 = -7.19056e-36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110011100111110110100000011100;
b = 32'b10111011011110011110000101011010;
correct = 32'b01101111100110111001100010010110;
#400 //-2.5259e+31 * -0.00381287 = 9.63093e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011110000111001001011111011100;
b = 32'b10110010010110011111101001001011;
correct = 32'b10010001000001010101010111010100;
#400 //8.28998e-21 * -1.2688e-08 = -1.05183e-28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100100110010010110011111010101;
b = 32'b10011001001101001111000001001001;
correct = 32'b00111110100011100101101000001101;
#400 //-2.97222e+22 * -9.35431e-24 = 0.278031
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011111100000011011110101010101;
b = 32'b10100101011001101111111100001011;
correct = 32'b10000101011010100010001010110111;
#400 //5.49468e-20 * -2.00357e-16 = -1.1009e-35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011000111001011101100100011011;
b = 32'b11011010000110001101001001101011;
correct = 32'b00110011100010010011010111010100;
#400 //-5.94143e-24 * -1.07539e+16 = 6.38935e-08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001100010011110000000110101111;
b = 32'b00110011111111011001101111010001;
correct = 32'b11000000110011010001001010101001;
#400 //-5.42655e+07 * 1.18096e-07 = -6.40853
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010001110110001100101001001011;
b = 32'b10011011111110110000101110111101;
correct = 32'b10101110010101001001100001001000;
#400 //1.16388e+11 * -4.15321e-22 = -4.83385e-11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000000010110010010100000010111;
b = 32'b01110000110010010101100010000111;
correct = 32'b00110001100011000011111010011110;
#400 //8.18774e-39 * 4.98508e+29 = 4.08166e-09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010101111010000111000011001111;
b = 32'b01000011111000101110011110001001;
correct = 32'b00011010010011100000010111010001;
#400 //9.3882e-26 * 453.809 = 4.26045e-23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010110000011101000110101001000;
b = 32'b10000011000001100011101110101110;
correct = 32'b00011001100101010111111001011110;
#400 //-3.91844e+13 * -3.94476e-37 = 1.54573e-23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100101100010100000111101111000;
b = 32'b01001001010100110010010110111101;
correct = 32'b10101111011000111011111000110100;
#400 //-2.39497e-16 * 864860.0 = -2.07131e-10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110000010011110111001100101110;
b = 32'b01010101111100111101000100110000;
correct = 32'b11000110110001011001001111011001;
#400 //-7.54698e-10 * 3.351e+13 = -25289.9
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101000110110111011001001100110;
b = 32'b00111000010001011010011001000110;
correct = 32'b01100001101010011001111011111010;
#400 //8.29991e+24 * 4.71233e-05 = 3.91119e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111000101111100011001100111000;
b = 32'b10001111110000001100000100011000;
correct = 32'b11001001000011110011010111100000;
#400 //3.08617e+34 * -1.9007e-29 = -586590.0
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000110000110100011100001000100;
b = 32'b11011010011110111001100011101110;
correct = 32'b10100001000101111001000101001011;
#400 //2.90055e-35 * -1.77046e+16 = -5.13531e-19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100010100101100101111101100000;
b = 32'b00110000110000000001011011100110;
correct = 32'b10010011111000011010100111110111;
#400 //-4.07586e-18 * 1.39763e-09 = -5.69656e-27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110011101011111001100100000010;
b = 32'b01000000110100001110010011000010;
correct = 32'b10110101000011110100100100111011;
#400 //-8.1769e-08 * 6.52792 = -5.33782e-07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110010011011011111001110100001;
b = 32'b00111111010010111001100100010011;
correct = 32'b01110010001111010011111001111001;
#400 //4.71312e+30 * 0.795304 = 3.74836e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000001011001010011110010000011;
b = 32'b00010101111100000000111100110100;
correct = 32'b00010111110101101111011001011000;
#400 //14.3273 * 9.69592e-26 = 1.38916e-24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000011010011111001011011100100;
b = 32'b11110010110111011010001001110100;
correct = 32'b10110110101100111011100011111110;
#400 //6.1005e-37 * -8.77985e+30 = -5.35615e-06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010011111100110101101011110110;
b = 32'b10000110011110011101110100001011;
correct = 32'b00011010111011011000010110011001;
#400 //-2.09041e+12 * -4.69941e-35 = 9.82367e-23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001110011010100011101011010101;
b = 32'b11110101101000001111100101010100;
correct = 32'b01000100100100110100100011100101;
#400 //-2.88711e-30 * -4.08117e+32 = 1178.28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111001011101101001101000011000;
b = 32'b10010111011011111011110000101111;
correct = 32'b00010001011001101110111100100011;
#400 //-0.000235178 * -7.74626e-25 = 1.82175e-28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100100101110010101001011100001;
b = 32'b10000110101100111111101011100110;
correct = 32'b00101100000000100100101010010101;
#400 //-2.7349e+22 * -6.7701e-35 = 1.85155e-12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011011001010111001010011011001;
b = 32'b00011101000001011111001001001111;
correct = 32'b10111000101100111000110101111001;
#400 //-4.82959e+16 * 1.77277e-21 = -8.56174e-05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011101001110101111101101110000;
b = 32'b01010110000010000011100110001010;
correct = 32'b01110011110001101111111100110101;
#400 //8.42093e+17 * 3.74452e+13 = 3.15323e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101000111111100001000011010111;
b = 32'b11111101110000000011011010110101;
correct = 32'b11100111001111101100001011101100;
#400 //2.8207e-14 * -3.1937e+37 = -9.00845e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111010101111101101100100101100;
b = 32'b10111110101010111100011100001100;
correct = 32'b00111010000000000000111101110100;
#400 //-0.00145606 * -0.335503 = 0.000488512
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000000000101011101110110001000;
b = 32'b11100000011001000001010101000000;
correct = 32'b11100001000001011000010110111110;
#400 //2.34165 * -6.57405e+19 = -1.53941e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110001011001010100010010010011;
b = 32'b01011101011100111011001010101001;
correct = 32'b11001111010110100100000000011001;
#400 //-3.33629e-09 * 1.09752e+18 = -3.66163e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111011111000000001000100010101;
b = 32'b10100011110110011111110001010101;
correct = 32'b00100000001111101100101101010110;
#400 //-0.00683797 * -2.36341e-17 = 1.61609e-19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011110000000101101001011010011;
b = 32'b01101001100001110000000110100111;
correct = 32'b01001000000010011111110000001011;
#400 //6.92574e-21 * 2.04016e+25 = 141296.0
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100110011011000110011111000111;
b = 32'b00111100100111111001110101101001;
correct = 32'b11100011100100110110010111010001;
#400 //-2.79098e+23 * 0.0194842 = -5.43802e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001011000111101010111111011000;
b = 32'b11001001101100101001010000111100;
correct = 32'b11010101010111010110010001001110;
#400 //1.03997e+07 * -1.46292e+06 = -1.52139e+13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100000010000011011010101100011;
b = 32'b01000000010010011110101111111011;
correct = 32'b00100001000110001100100111111010;
#400 //1.64078e-19 * 3.15503 = 5.17669e-19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110111001000111001010111001110;
b = 32'b10110110110001101111100001111001;
correct = 32'b11101110011111100100100101001000;
#400 //3.3179e+33 * -5.92979e-06 = -1.96744e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010011100100111000110010011101;
b = 32'b10101110010000101100000111010110;
correct = 32'b11000010011000001000000010001111;
#400 //1.26744e+12 * -4.42827e-11 = -56.1255
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001111111110100110000001110000;
b = 32'b10010111101011110011101010001000;
correct = 32'b00101000001010110110000100101011;
#400 //-8.40125e+09 * -1.13239e-24 = 9.51348e-15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000111001110011001110111111100;
b = 32'b11000110100010101101000000100000;
correct = 32'b10001110010010010100110000100011;
#400 //1.39643e-34 * -17768.1 = -2.48118e-30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000100101010111110110010010100;
b = 32'b11001001011110000110111111101111;
correct = 32'b10001110101001101101100001011011;
#400 //4.04192e-36 * -1.0176e+06 = -4.11305e-30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111110101001000011001100011100;
b = 32'b00000010001111011101110001010010;
correct = 32'b00000001011100111000111000011000;
#400 //0.320702 * 1.39488e-37 = 4.4734e-38
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111010111001111011111101100111;
b = 32'b01100001101010111111101011000110;
correct = 32'b01011101000110111010111111011110;
#400 //0.00176809 * 3.96558e+20 = 7.01152e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111100101000010111110010111010;
b = 32'b00010101100000111011001001010111;
correct = 32'b00010010101001100010011010100110;
#400 //0.0197128 * 5.31918e-26 = 1.04856e-27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011001000100100011010110101101;
b = 32'b00010101100110111011100111010001;
correct = 32'b10101111001100011110000101000000;
#400 //-2.57215e+15 * 6.28972e-26 = -1.61781e-10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011010101001110011011101000111;
b = 32'b00101111011011000000101010011000;
correct = 32'b11001010100110100010110111100001;
#400 //-2.35335e+16 * 2.14678e-10 = -5.05214e+06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010110011001001101000111010101;
b = 32'b10111011111000111011001100101000;
correct = 32'b01010010110010111000011000110010;
#400 //-6.28975e+13 * -0.00694885 = 4.37065e+11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100111001111101010100011101000;
b = 32'b00000011000000110111000111100000;
correct = 32'b10101010110000111100101001111100;
#400 //-9.00365e+23 * 3.86282e-37 = -3.47795e-13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001011001000101100110100001011;
b = 32'b01001101101101100010100100101001;
correct = 32'b10011001011001111010111111100101;
#400 //-3.13543e-32 * 3.82019e+08 = -1.19779e-23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010010100101010011010111011101;
b = 32'b10001010101101110101001101010100;
correct = 32'b10011101110101011011010000100101;
#400 //3.20427e+11 * -1.76536e-32 = -5.65669e-21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001111001010000111110010000100;
b = 32'b11101101100011110110001000010010;
correct = 32'b11111101001111001011110000110010;
#400 //2.82673e+09 * -5.54686e+27 = -1.56795e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011001101101111000000100111111;
b = 32'b11010001010100111011010111011001;
correct = 32'b00101011100101111100000111100001;
#400 //-1.8974e-23 * -5.68306e+10 = 1.0783e-12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010111000101100101011100111101;
b = 32'b11010101001110100100010011011001;
correct = 32'b00101100110110101100011110100010;
#400 //-4.85777e-25 * -1.28003e+13 = 6.2181e-12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101100001011110011101000010100;
b = 32'b00111101110010111001000101101000;
correct = 32'b11101010100010110101011010010101;
#400 //-8.47345e+26 * 0.0993984 = -8.42248e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111100101000011010100000010101;
b = 32'b10011111101000111110110001100011;
correct = 32'b01011100110011110000011010010110;
#400 //-6.71495e+36 * -6.94243e-20 = 4.6618e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100100001011110111011010101011;
b = 32'b00100001001011011010100101111100;
correct = 32'b01000101111011100000111010111000;
#400 //1.29469e+22 * 5.8839e-19 = 7617.84
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100011110001111000011010010110;
b = 32'b01001100100010000100010001110111;
correct = 32'b10110000110101000110100110111000;
#400 //-2.16326e-17 * 7.14434e+07 = -1.54551e-09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111001110101011000011011011111;
b = 32'b00100011011110101011011011111011;
correct = 32'b11011101110100010001111001010101;
#400 //-1.38587e+35 * 1.35913e-17 = -1.88357e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101010110110011101000110110100;
b = 32'b10111010111011010010011010101101;
correct = 32'b11100110010010011100100000001100;
#400 //1.31664e+26 * -0.00180932 = -2.38221e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011110110010010100001010001011;
b = 32'b01011101000011000110011001100100;
correct = 32'b01111100010111001100000111000110;
#400 //7.25115e+18 * 6.32305e+17 = 4.58494e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100100011011000111110010111101;
b = 32'b01111110110111100110001100001111;
correct = 32'b11100011110011010110111110101110;
#400 //-5.128e-17 * 1.47801e+38 = -7.57926e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011000101101011100011110111100;
b = 32'b00000101010101010110111000111100;
correct = 32'b00011110100101111000110101110110;
#400 //1.59896e+15 * 1.00355e-35 = 1.60463e-20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000110001010010100101110100010;
b = 32'b01111010001101100111010010000100;
correct = 32'b11000000111100010101000110100101;
#400 //-3.18409e-35 * 2.3684e+35 = -7.54122
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101110110011100010101000101111;
b = 32'b11001011010010001011001000010000;
correct = 32'b00111010101000011010000001011011;
#400 //-9.37529e-11 * -1.31528e+07 = 0.00123311
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100000110101110111100111111111;
b = 32'b00111001010001011000000101010100;
correct = 32'b01011010101001100011110110111100;
#400 //1.24214e+20 * 0.000188356 = 2.33964e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001101001010010010010110000101;
b = 32'b11000111001001011101110101110010;
correct = 32'b00010100110110110010111011111111;
#400 //-5.21223e-31 * -42461.4 = 2.21319e-26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010111110010000101101011011001;
b = 32'b01111100001110110001011101111011;
correct = 32'b11010100100100100110110010111101;
#400 //-1.29476e-24 * 3.88574e+36 = -5.03112e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101000000001001001101110011111;
b = 32'b11001100101101001100000100111111;
correct = 32'b01110101001110110100001100001100;
#400 //-2.50489e+24 * -9.47676e+07 = 2.37383e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001111111101101100011101111110;
b = 32'b01100110001010110110101111110111;
correct = 32'b11110110101001010011111101010101;
#400 //-8.28054e+09 * 2.02379e+23 = -1.67581e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101010101000011110011000010011;
b = 32'b11100001101010100110011010111101;
correct = 32'b11001100110101111000011110000100;
#400 //2.8759e-13 * -3.92919e+20 = -1.12999e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111010110101011011100101100111;
b = 32'b00010000001000010111111001100101;
correct = 32'b10001011100001101101001100011111;
#400 //-0.00163059 * 3.1849e-29 = -5.19326e-32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101011001101010010000001011011;
b = 32'b01001110010111110100100001111010;
correct = 32'b01111010000111011111101001110111;
#400 //2.18968e+26 * 9.36517e+08 = 2.05068e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000010101000011100111011110010;
b = 32'b11000000001000011100111001001010;
correct = 32'b00000011010011001000101100010011;
#400 //-2.37756e-37 * -2.52822 = 6.01099e-37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111001100101100101101101001010;
b = 32'b10001101100001111010100110011010;
correct = 32'b10000111100111110101101110000001;
#400 //0.000286782 * -8.36085e-31 = -2.39774e-34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111110100100110111000000110011;
b = 32'b10010001011011101000100011110111;
correct = 32'b10010000100010010110000100110001;
#400 //0.287965 * -1.88171e-28 = -5.41867e-29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111101101011011001101101000000;
b = 32'b10010000011100100001001110001010;
correct = 32'b00001110101001000010101000000011;
#400 //-0.0847688 * -4.77411e-29 = 4.04696e-30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010010011100111001011000000000;
b = 32'b11100011010011111001011011000001;
correct = 32'b10110110010001011000010110111100;
#400 //7.68622e-28 * -3.82934e+21 = -2.94331e-06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101000010110001001100110000110;
b = 32'b11010000010110000000111101011010;
correct = 32'b01111001001101101100111010000110;
#400 //-4.09145e+24 * -1.44995e+10 = 5.93242e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010101100010110000011001100011;
b = 32'b00010000010101000100111110000011;
correct = 32'b10100110011001101001100011110000;
#400 //-1.91074e+13 * 4.18709e-29 = -8.00045e-16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000101101001011000000100110010;
b = 32'b01010011001001011000001001100100;
correct = 32'b11011001010101100000000100100011;
#400 //-5296.15 * 7.10857e+11 = -3.76481e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000010111000001111001010000110;
b = 32'b01100110110001000001111111100011;
correct = 32'b01101010001011000101010110110011;
#400 //112.474 * 4.63086e+23 = 5.2085e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101111101100010011011111111110;
b = 32'b11011010010011110100101010010100;
correct = 32'b01001010100011110111111111100111;
#400 //-3.22359e-10 * -1.45868e+16 = 4.7022e+06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101011010111111101111111101010;
b = 32'b10110010001001100111101110001000;
correct = 32'b01011110000100011001011100111001;
#400 //-2.70648e+26 * -9.69056e-09 = 2.62273e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001100011100010011111000000111;
b = 32'b00101000001110001111100001101111;
correct = 32'b00110101001011100100111010110010;
#400 //6.32402e+07 * 1.02679e-14 = 6.49346e-07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001111110100101011011100111111;
b = 32'b00001111110100010101001101110100;
correct = 32'b10100000001011000100110001001011;
#400 //-7.07045e+09 * 2.06411e-29 = -1.45942e-19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100101001000101011010000001010;
b = 32'b10101111010110000001110101101011;
correct = 32'b11010101000010010101101010011011;
#400 //4.80215e+22 * -1.96555e-10 = -9.43889e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110010111001011010001011100111;
b = 32'b00010111111111010100011110000101;
correct = 32'b10001011011000110011001000100110;
#400 //-2.67332e-08 * 1.63678e-24 = -4.37563e-32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111110100100101110000000001011;
b = 32'b10101101001010010010100110000010;
correct = 32'b11101100010000100001101101101111;
#400 //9.76153e+37 * -9.61575e-12 = -9.38645e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111111011110110111110010100000;
b = 32'b10011100000001110111001111000010;
correct = 32'b01011100000001010001000001110000;
#400 //-3.34283e+38 * -4.48174e-22 = 1.49817e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111101000010100010001010111100;
b = 32'b10110000101101000010001001010001;
correct = 32'b10101110010000100110010111100001;
#400 //0.0337245 * -1.31065e-09 = -4.4201e-11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010100011001101010011011001101;
b = 32'b11100100011110000001100010100011;
correct = 32'b00111001010111111000011111001001;
#400 //-1.16449e-26 * -1.83063e+22 = 0.000213175
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001010011110111000000001110110;
b = 32'b01001110010101010010111001000100;
correct = 32'b00011001010100010110111101010110;
#400 //1.21094e-32 * 8.94145e+08 = 1.08275e-23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011100111010100000110011001010;
b = 32'b11001000010011101000010100011011;
correct = 32'b11100101101111001100111111111100;
#400 //5.27034e+17 * -211476.0 = -1.11455e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100011100011001110001101001000;
b = 32'b00110001000101111010000111000010;
correct = 32'b00010101001001101110011000101010;
#400 //1.52751e-17 * 2.20653e-09 = 3.3705e-26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001000100011110101001100110110;
b = 32'b11010001001110000111100110110101;
correct = 32'b01011010010011101000111111100101;
#400 //-293530.0 * -4.95197e+10 = 1.45355e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100100100101001010100100001110;
b = 32'b01010000111000001110100000010110;
correct = 32'b11110110000000101001101010110010;
#400 //-2.19384e+22 * 3.01865e+10 = -6.62242e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111111110011110011101100100011;
b = 32'b00101100010000100100010000111111;
correct = 32'b01111111110011110011101100100011;
#400 //nan * 2.76069e-12 = nan
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110100010000001100100110100111;
b = 32'b01010100010111101110111011010111;
correct = 32'b11001001001001111110001010111100;
#400 //-1.79548e-07 * 3.82996e+12 = -687660.0
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100100000101110100000010111101;
b = 32'b01000000101011011001000001111000;
correct = 32'b10100101010011010001100000110110;
#400 //-3.27977e-17 * 5.42389 = -1.77891e-16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110010010101101111110001101100;
b = 32'b00011010100000110111000000100100;
correct = 32'b10001101010111001100001010110000;
#400 //-1.25138e-08 * 5.43615e-23 = -6.80271e-31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001100110011111110101000101101;
b = 32'b01011000110110110000110001111000;
correct = 32'b11100110001100011110011101110101;
#400 //-1.09007e+08 * 1.92677e+15 = -2.10032e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010011111001111010101011101001;
b = 32'b00001110000101110001001111101110;
correct = 32'b00100010100010001011011111011000;
#400 //1.99001e+12 * 1.86218e-30 = 3.70575e-18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010000010111100111001100111101;
b = 32'b01001010011101011010001000011101;
correct = 32'b00011011010101010111000100101000;
#400 //4.38706e-29 * 4.02446e+06 = 1.76555e-22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001011101100011111011110010010;
b = 32'b11011010010111100010001011011111;
correct = 32'b11100110100110100110110011101111;
#400 //2.33265e+07 * -1.56314e+16 = -3.64627e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011001111111001100000011101101;
b = 32'b10101011000010001011100010000000;
correct = 32'b01000101100001101111110010100111;
#400 //-8.89298e+15 * -4.8573e-13 = 4319.58
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110111000011110010101110101110;
b = 32'b00100100000001011110110010111011;
correct = 32'b11011011100101011100110000101100;
#400 //-2.90385e+33 * 2.90403e-17 = -8.43285e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101111101010100001110000010011;
b = 32'b11001111011111100011111010001000;
correct = 32'b00111111101010001111000101101000;
#400 //-3.09428e-10 * -4.26551e+09 = 1.31987
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010101100110001000000011000110;
b = 32'b10011101010010000100011011001111;
correct = 32'b10110011011011101001110110010010;
#400 //2.09599e+13 * -2.65064e-21 = -5.5557e-08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000111001001011001011010110101;
b = 32'b01001010101110110010010101000001;
correct = 32'b10010010011100100001101001011110;
#400 //-1.24575e-34 * 6.13238e+06 = -7.63942e-28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100011101111011011101011000011;
b = 32'b00001011110010011010010111001011;
correct = 32'b10110000000101010111001010000011;
#400 //-6.99978e+21 * 7.76718e-32 = -5.43686e-10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111111110111101111111101011110;
b = 32'b10010111100101010011110111100110;
correct = 32'b10011000000000100000000010001101;
#400 //1.74217 * -9.64452e-25 = -1.68024e-24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011010101011111000111000101011;
b = 32'b01010111000001000101101001000101;
correct = 32'b11110010001101011000011001101011;
#400 //-2.47072e+16 * 1.45523e+14 = -3.59547e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101101111010001110101000011111;
b = 32'b00110111101011111000011001010110;
correct = 32'b00100110000111111011001001000100;
#400 //2.64793e-11 * 2.09242e-05 = 5.54058e-16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011101110001000011111010110000;
b = 32'b01010011010000001011010010100010;
correct = 32'b10110001100100111011100101111100;
#400 //-5.19456e-21 * 8.27664e+11 = -4.29935e-09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100000000110111100101110000011;
b = 32'b10101011100110001111100011001010;
correct = 32'b10001100001110100011000001111100;
#400 //1.31963e-19 * -1.08693e-12 = -1.43435e-31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010011100100011101111011111010;
b = 32'b01000011000011111100010111010110;
correct = 32'b01010111001000111101100010010000;
#400 //1.25302e+12 * 143.773 = 1.80151e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000110001010000011011101000011;
b = 32'b10010110110100011111010011100110;
correct = 32'b00011101100010011111011000001010;
#400 //-10765.8 * -3.39203e-25 = 3.6518e-21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000000011001011011111110000111;
b = 32'b01101111011011001011000000000110;
correct = 32'b10110000001111000010010100001101;
#400 //-9.34409e-39 * 7.32513e+28 = -6.84467e-10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110011010111111111001110011011;
b = 32'b11000011011100010100001110101011;
correct = 32'b10110111010100110000111110000111;
#400 //5.21428e-08 * -241.264 = -1.25802e-05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000001110000011001001011001101;
b = 32'b01101100011001010111111101110000;
correct = 32'b01101110101011011000100010101110;
#400 //24.1967 * 1.10978e+27 = 2.68531e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110111011100101110110101001110;
b = 32'b10111111011011001000101011000011;
correct = 32'b01110111011000000111011001110001;
#400 //-4.92714e+33 * -0.923992 = 4.55264e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101110010011000011111101100101;
b = 32'b11000011111001110100100011111110;
correct = 32'b01110010101110001000011101110001;
#400 //-1.58029e+28 * -462.57 = 7.30995e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101001011011011111010101011100;
b = 32'b00101101011101110101011010001000;
correct = 32'b01010111011001011110100000101011;
#400 //1.79796e+25 * 1.40595e-11 = 2.52785e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101011110110000010011011011111;
b = 32'b11111000100100010101110010111011;
correct = 32'b11100100111101010111100010100000;
#400 //1.53585e-12 * -2.35864e+34 = -3.62252e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111101110110011001110101010001;
b = 32'b00000010011100001001101101100000;
correct = 32'b00000000110011001000011110010000;
#400 //0.106257 * 1.7677e-37 = 1.87831e-38
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011000010000011100101101100101;
b = 32'b11000000000110000111111100011100;
correct = 32'b11011000111001101110000111111010;
#400 //8.52317e+14 * -2.38276 = -2.03087e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010110101111000010010011000001;
b = 32'b10101001101010101011100110000010;
correct = 32'b10000000111110101111000101111101;
#400 //3.03962e-25 * -7.5817e-14 = -2.30455e-38
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000001010011010110010011000111;
b = 32'b00010011110011100001111100001111;
correct = 32'b10010101101001010110000000000011;
#400 //-12.8371 * 5.20323e-27 = -6.67944e-26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010001101001111001011010011001;
b = 32'b01100000010010101100100101100010;
correct = 32'b01110010100001001100000010101010;
#400 //8.99733e+10 * 5.84493e+19 = 5.25887e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000011011001111011111111101100;
b = 32'b11011101000111001100101010010111;
correct = 32'b11100001000011011111000001011010;
#400 //231.75 * -7.06126e+17 = -1.63644e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010100100101010000110011101101;
b = 32'b01000011010101011100000111001011;
correct = 32'b01011000011110001110100100101100;
#400 //5.12134e+12 * 213.757 = 1.09472e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110100000011111000010101011000;
b = 32'b10011011100011101011101000001111;
correct = 32'b01010000001000000000100010001100;
#400 //-4.54836e+31 * -2.36122e-22 = 1.07397e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000011000100011111000100001100;
b = 32'b10101101010011110010111100010101;
correct = 32'b00110000111011000011100110000000;
#400 //-145.942 * -1.1777e-11 = 1.71876e-09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010100010111101011111110110110;
b = 32'b01100010100010110010111010110000;
correct = 32'b11110111011100100011010101101111;
#400 //-3.8268e+12 * 1.28373e+21 = -4.91258e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000101110001111110001110100101;
b = 32'b11111010100011100010101010101011;
correct = 32'b11000000110111100000001100101101;
#400 //1.87975e-35 * -3.69086e+35 = -6.93789
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001111111110111010111000100100;
b = 32'b00000100110101011001101010100111;
correct = 32'b00010101010100011111111111101111;
#400 //8.44499e+09 * 5.02181e-36 = 4.24091e-26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101000101111100111010001100100;
b = 32'b00011011111001101010101101000000;
correct = 32'b01000101001010111001101111111001;
#400 //7.19517e+24 * 3.8161e-22 = 2745.75
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010110110010001101011101100110;
b = 32'b11100000011000110110000001100001;
correct = 32'b11110111101100100110001010011100;
#400 //1.10414e+14 * -6.55368e+19 = -7.23616e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101011001100111000010001101011;
b = 32'b10010100000101000011111001000110;
correct = 32'b00111111110011111110100001110010;
#400 //-2.17023e+26 * -7.48437e-27 = 1.62428
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100011000010110010011101100001;
b = 32'b01011111100101110110111111011001;
correct = 32'b11000011001001001010001000001100;
#400 //-7.54354e-18 * 2.18244e+19 = -164.633
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010100011100001110001001000111;
b = 32'b00111100110011100100000000111011;
correct = 32'b01010001110000100001001010000101;
#400 //4.13835e+12 * 0.0251771 = 1.04192e+11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011010101110001101010000000011;
b = 32'b11000000100000011111101101000011;
correct = 32'b11011011101110111011000001111100;
#400 //2.60123e+16 * -4.06192 = -1.0566e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010111100001011011000110010001;
b = 32'b01000101010000001010011111001111;
correct = 32'b00011101010010010011100110011111;
#400 //8.63975e-25 * 3082.49 = 2.66319e-21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100100110110001110110000010100;
b = 32'b00111001111100000011110110010000;
correct = 32'b01011111010010111001000101111101;
#400 //3.20121e+22 * 0.000458222 = 1.46686e+19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110110110110111010111100111000;
b = 32'b11101101010011000100101110101111;
correct = 32'b11100100101011110101000010010011;
#400 //6.54711e-06 * -3.95165e+27 = -2.58719e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110010001110001000001011110000;
b = 32'b00110100001101010011001110000011;
correct = 32'b00100111000000101001100110110100;
#400 //1.074e-08 * 1.68757e-07 = 1.81244e-15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101010100000110111101101011001;
b = 32'b01100011101110000000000010111000;
correct = 32'b01001110101111010000001000001101;
#400 //2.33559e-13 * 6.78851e+21 = 1.58551e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000100010011101100011000111001;
b = 32'b11011111111010010001001111001111;
correct = 32'b01100100101111000100001001101010;
#400 //-827.097 * -3.359e+19 = 2.77822e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000111100100111100100011010100;
b = 32'b10111100101011001011010101110000;
correct = 32'b11000100110001110110011101011000;
#400 //75665.7 * -0.0210826 = -1595.23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010000000110001011010110010011;
b = 32'b11011010100101110100111010110100;
correct = 32'b00101011001101001000010000011001;
#400 //-3.01166e-29 * -2.12946e+16 = 6.41322e-13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101010011010000100001101101110;
b = 32'b10110111110101100110100100011011;
correct = 32'b00100010110000101000011110111010;
#400 //-2.06291e-13 * -2.55597e-05 = 5.27275e-18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111001001000011001011010001101;
b = 32'b01101110111001110101111101000001;
correct = 32'b11101000100100100000101011111001;
#400 //-0.000154102 * 3.58031e+28 = -5.51734e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100010110110110110101000110010;
b = 32'b11001011101000100110110110000000;
correct = 32'b10101111000010110011011100001110;
#400 //5.94725e-18 * -2.12897e+07 = -1.26615e-10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110111010101111001000110001110;
b = 32'b00110100001111001111111110101110;
correct = 32'b01101100000111110010011000110001;
#400 //4.37225e+33 * 1.76019e-07 = 7.69598e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001011110100010001010010101110;
b = 32'b11001001011001110101000101101110;
correct = 32'b01010101101111001110110000101010;
#400 //-2.74046e+07 * -947479.0 = 2.59653e+13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100100101111101111100001001101;
b = 32'b01010001010000110100011101100110;
correct = 32'b11110110100100011010110001100110;
#400 //-2.81822e+22 * 5.24198e+10 = -1.4773e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010011011001011100100111100110;
b = 32'b11000111000110011100101110011001;
correct = 32'b11011011000010100000110001101011;
#400 //9.86935e+11 * -39371.6 = -3.88572e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001100110010101010001111100100;
b = 32'b10110001000000001011010010010111;
correct = 32'b10111110010010111100000111001010;
#400 //1.06242e+08 * -1.87291e-09 = -0.198981
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011000110100010110001110001000;
b = 32'b01011100001011101110000010101101;
correct = 32'b11110101100011110000100101101011;
#400 //-1.8418e+15 * 1.96895e+17 = -3.62641e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011110011101101111101110100101;
b = 32'b01010011000001011100110000101001;
correct = 32'b10110010000000010001010110110101;
#400 //-1.30752e-20 * 5.74656e+11 = -7.51372e-09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000100011110111001110100001111;
b = 32'b10011000010110111001000101010010;
correct = 32'b00011101010101111100111000110000;
#400 //-1006.45 * -2.83785e-24 = 2.85616e-21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110001000001010001000101111110;
b = 32'b01100000110101111010000101011000;
correct = 32'b11010010011000000010101100011101;
#400 //-1.9364e-09 * 1.24302e+20 = -2.40699e+11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011001001011010111011111000001;
b = 32'b00100111100110100110011101110111;
correct = 32'b11000001010100010100000001001100;
#400 //-3.05168e+15 * 4.28558e-15 = -13.0782
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011001001001010011001111111000;
b = 32'b01011000001000110011101001111010;
correct = 32'b11110001110100101010101110100111;
#400 //-2.90628e+15 * 7.17886e+14 = -2.08638e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110010100000111001100010110011;
b = 32'b11001000100100010001111110011101;
correct = 32'b00111011100101010011001101111011;
#400 //-1.53198e-08 * -297213.0 = 0.00455326
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001101011011100000011100000001;
b = 32'b11000000111000101010001100111100;
correct = 32'b10001110110100101011100111110101;
#400 //7.33478e-31 * -7.08243 = -5.19481e-30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100001110000111000000101010001;
b = 32'b01001011011010011001010100000010;
correct = 32'b10101101101100100110001001111111;
#400 //-1.32479e-18 * 1.5308e+07 = -2.028e-11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110000111110101100011101101111;
b = 32'b00110101000111000110011010001010;
correct = 32'b11100110100110010011010111111010;
#400 //-6.20899e+29 * 5.82637e-07 = -3.61759e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111111110100000010010101100000;
b = 32'b10011000110101110101100001001110;
correct = 32'b10011001001011110001011100110000;
#400 //1.62614 * -5.56654e-24 = -9.05197e-24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010100011010101111110001100110;
b = 32'b00100000011010001111000000000101;
correct = 32'b00110101010101011101000100001110;
#400 //4.03703e+12 * 1.97306e-19 = 7.96529e-07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001100101000010111101111110110;
b = 32'b01110010010110010110110101010000;
correct = 32'b10111111100010010010011100001000;
#400 //-2.48806e-31 * 4.30659e+30 = -1.0715
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011011111110111001011000100010;
b = 32'b00010110111101011000011100100101;
correct = 32'b00110011011100010100101101111111;
#400 //1.41631e+17 * 3.96672e-25 = 5.61808e-08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100011110000111000100110100001;
b = 32'b11110000101000000111101101000101;
correct = 32'b01010100111101010010100001011001;
#400 //-2.12002e-17 * -3.97333e+29 = 8.42355e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111100110011001100110010000100;
b = 32'b00101100110001010111010101001111;
correct = 32'b01101010000111011111011100111010;
#400 //8.50701e+36 * 5.6121e-12 = 4.77422e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101001100110011101100110111100;
b = 32'b10110001100101011011110011010100;
correct = 32'b10011011101100111111101001101011;
#400 //6.83234e-14 * -4.35794e-09 = -2.97749e-22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000010101111010011101010111010;
b = 32'b00111010000101110101011001010111;
correct = 32'b10111101010111111011101011101011;
#400 //-94.6147 * 0.000577306 = -0.0546216
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010001111001000001011101100110;
b = 32'b11001111110011111011111010100100;
correct = 32'b00100010001110010001100011000111;
#400 //-3.59865e-28 * -6.97076e+09 = 2.50853e-18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101000010100010010001111001101;
b = 32'b00100100110011110011101100011000;
correct = 32'b01001101101010010100110000111010;
#400 //3.95054e+24 * 8.9872e-17 = 3.55043e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011101111011000101010011001000;
b = 32'b11011110001010011011011110011000;
correct = 32'b00111100100111001010110101110101;
#400 //-6.25563e-21 * -3.05735e+18 = 0.0191257
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010001011000110001010100101101;
b = 32'b10101111001111011001001100101110;
correct = 32'b01000001001010000010100100110000;
#400 //-6.09571e+10 * -1.72417e-10 = 10.5101
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100010011111011100111011110001;
b = 32'b00100000100110111000100110000000;
correct = 32'b11000011100110100011010010011111;
#400 //-1.17048e+21 * 2.6349e-19 = -308.411
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101110101000000110101100001111;
b = 32'b10100100110111001000100110011001;
correct = 32'b00010100000010100011001000111010;
#400 //-7.29498e-11 * -9.56429e-17 = 6.97712e-27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100011001010110100010001010011;
b = 32'b01001111001111010010111100111010;
correct = 32'b10110010111111010010001000010011;
#400 //-9.2844e-18 * 3.17399e+09 = -2.94686e-08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000101011000111011100101111110;
b = 32'b01001000011010010111101001111101;
correct = 32'b01001110010011111011000011001001;
#400 //3643.59 * 239082.0 = 8.71117e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100011101110011110000011111010;
b = 32'b10011111001010101110010110100010;
correct = 32'b10000011011110000010110001000100;
#400 //2.0153e-17 * -3.61888e-20 = -7.29315e-37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001101101100100100000100010000;
b = 32'b01100110101000010001010010000110;
correct = 32'b11110100111000000101001001101011;
#400 //-3.73826e+08 * 3.8034e+23 = -1.42181e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011001011011011111000000001001;
b = 32'b10001000000101011000010000000100;
correct = 32'b00100010000010101111011101101001;
#400 //-4.18584e+15 * -4.49932e-34 = 1.88335e-18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101100010001011010000101001100;
b = 32'b10010111110011111100001001011011;
correct = 32'b10000100101000000110001101110111;
#400 //2.80849e-12 * -1.34261e-24 = -3.77072e-36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110011000110011100111001110011;
b = 32'b11000111000010111111111111001111;
correct = 32'b00111010101010000011100110010011;
#400 //-3.58109e-08 * -35839.8 = 0.00128345
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101110110111100001010001010111;
b = 32'b11111010100101010101110000101010;
correct = 32'b11101010000000011001000111001010;
#400 //1.0099e-10 * -3.87761e+35 = -3.916e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001000000010101111001101000010;
b = 32'b01011100100100110011110000100111;
correct = 32'b11100101000111111101010010101010;
#400 //-142285.0 * 3.31544e+17 = -4.71737e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011111010011010001110010001100;
b = 32'b11001111011111000010100101101010;
correct = 32'b01101111010010100000100101001000;
#400 //-1.47798e+19 * -4.23057e+09 = 6.25272e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100100010100011001100011000110;
b = 32'b00100001010001001100100010000011;
correct = 32'b11000110001000010001110100100010;
#400 //-1.54655e+22 * 6.66728e-19 = -10311.3
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001111110101001011010001010100;
b = 32'b10111111110001001111111101110110;
correct = 32'b01010000001000111010111001010010;
#400 //-7.13718e+09 * -1.53905 = 1.09844e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000000110110010100111011100000;
b = 32'b11010000100010110111010111001110;
correct = 32'b00010001111011001100001110100111;
#400 //-1.99566e-38 * -1.8718e+10 = 3.73548e-28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001100010100100110101001111011;
b = 32'b00000100101110011101111101001000;
correct = 32'b00010001100110001100011001111001;
#400 //5.51593e+07 * 4.36983e-36 = 2.41037e-28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101011100000001001110011011101;
b = 32'b10001001001001100011100110000111;
correct = 32'b10110101001001110000010100111100;
#400 //3.10967e+26 * -2.00086e-33 = -6.222e-07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000100111000111101100010101011;
b = 32'b01001110111011000111011111110000;
correct = 32'b10010100010100100111011001111101;
#400 //-5.35664e-36 * 1.98364e+09 = -1.06257e-26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101011111000101001011110011011;
b = 32'b00110011110001100100001110101101;
correct = 32'b00100000001011110111110100101001;
#400 //1.61003e-12 * 9.2324e-08 = 1.48645e-19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110100001011100100000010101011;
b = 32'b00101110010101111111010011011000;
correct = 32'b00100011000100101111111011111000;
#400 //1.62285e-07 * 4.91028e-11 = 7.96867e-18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010000101111001110111100111101;
b = 32'b01111111111101111110010011010111;
correct = 32'b01111111111101111110010011010111;
#400 //-2.53584e+10 * nan = nan
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101010110000000100111010111110;
b = 32'b00100101100011011001100001110010;
correct = 32'b01010000110101001011101111000110;
#400 //1.16243e+26 * 2.45629e-16 = 2.85526e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101011110111110111111011101001;
b = 32'b00101011111100111000010100101100;
correct = 32'b01011000010101001001100110111011;
#400 //5.4038e+26 * 1.73032e-12 = 9.35027e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000101101011000111100010101110;
b = 32'b11001100010010100111011000010011;
correct = 32'b01010010100010000110011011000110;
#400 //-5519.08 * -5.3074e+07 = 2.9292e+11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001000110101010111010110100110;
b = 32'b11011000011010100011101101010000;
correct = 32'b00100001110000110100111011111111;
#400 //-1.28471e-33 * -1.03016e+15 = 1.32346e-18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101110011100111110011111000010;
b = 32'b10101001001100101111111001100001;
correct = 32'b00011000001010101000100110000001;
#400 //-5.54576e-11 * -3.97446e-14 = 2.20414e-24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010000110001101101111000011001;
b = 32'b01100010011000000010100100110111;
correct = 32'b10110011101011100010001001011010;
#400 //-7.84394e-29 * 1.03376e+21 = -8.10875e-08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111011010111010001010000011011;
b = 32'b11010000010011011111011100111110;
correct = 32'b11001100001100011101111010011110;
#400 //0.00337339 * -1.38221e+10 = -4.66274e+07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110000010000111100111110000110;
b = 32'b00011110110111010111101110100001;
correct = 32'b10001111101010010110100010110111;
#400 //-7.12355e-10 * 2.34504e-20 = -1.6705e-29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000010100000101001100100101110;
b = 32'b00101001111100101111100001010001;
correct = 32'b00101100111101111110011011110110;
#400 //65.2992 * 1.079e-13 = 7.0458e-12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111010011001000110101100101100;
b = 32'b10010110011111011010110111000010;
correct = 32'b10010001011000100101100011110100;
#400 //0.000871348 * -2.0492e-25 = -1.78557e-28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101111010000010010001000101010;
b = 32'b10100100001000110100101110000111;
correct = 32'b11010011111101100110001101110111;
#400 //5.97719e+28 * -3.5409e-17 = -2.11646e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111001111000000101111101001111;
b = 32'b00110100011111010110110110100011;
correct = 32'b11101110110111100001111001001001;
#400 //-1.45626e+35 * 2.36023e-07 = -3.43711e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011101100111011111000011000101;
b = 32'b01001001010011101001001111001010;
correct = 32'b11100111011111101110010111011001;
#400 //-1.4226e+18 * 846141.0 = -1.20372e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001000111110011110101000011011;
b = 32'b01111111010110111110111100010011;
correct = 32'b01001000110101101011010010101001;
#400 //1.50412e-33 * 2.92342e+38 = 439717.0
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011110000000010011100001011101;
b = 32'b00010010110001010001000101001100;
correct = 32'b00110001010001101111001000110101;
#400 //2.32782e+18 * 1.24367e-27 = 2.89505e-09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010010010100111001101100001101;
b = 32'b10110000010111111011000010010100;
correct = 32'b01000011001110001110011000000101;
#400 //-2.2721e+11 * -8.13779e-10 = 184.899
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110110110111110010010000100000;
b = 32'b10011101001110010010010100111010;
correct = 32'b11010100101000010110000110001110;
#400 //2.26292e+33 * -2.45038e-21 = -5.54501e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000001111000010011101110111011;
b = 32'b11101010110101001100000100111111;
correct = 32'b01101101001110110010111101111100;
#400 //-28.1542 * -1.28602e+26 = 3.62069e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010010001010111010111110101000;
b = 32'b10110010000000111010111010111011;
correct = 32'b10000100101100001010000000100100;
#400 //5.41746e-28 * -7.66493e-09 = -4.15245e-36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000001110011110010011101000010;
b = 32'b01011000010001001011011111111101;
correct = 32'b11011010100111110010111011110000;
#400 //-25.8942 * 8.65178e+14 = -2.24031e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101000011001011110011101100111;
b = 32'b10110000001001001100011011101111;
correct = 32'b00011001000100111111101011100110;
#400 //-1.27622e-14 * -5.99456e-10 = 7.65039e-24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110100001110111110011010001011;
b = 32'b10010101000000111111000101011100;
correct = 32'b00001001110000011011000001000001;
#400 //-1.74996e-07 * -2.66456e-26 = 4.66288e-33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010011010010001111100001110000;
b = 32'b10101111000110111110111011111010;
correct = 32'b01000010111101001101010000001110;
#400 //-8.63162e+11 * -1.41821e-10 = 122.414
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100001010101111111010010111100;
b = 32'b01011101011011100001011110001000;
correct = 32'b10111111010010001101100101100000;
#400 //-7.31687e-19 * 1.07227e+18 = -0.784567
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010110111100010101100011000101;
b = 32'b10000010001111110000101110001000;
correct = 32'b00011001101101000001110000011010;
#400 //-1.32682e+14 * -1.40358e-37 = 1.86229e-23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100110110110110010100011110110;
b = 32'b10110111011110100011010001110111;
correct = 32'b11011110110101100011001011101010;
#400 //5.17477e+23 * -1.49134e-05 = -7.71733e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011100111000111001000110111011;
b = 32'b11110110101000000101001000100101;
correct = 32'b11010100000011101000010000011010;
#400 //1.50593e-21 * -1.62585e+33 = -2.44841e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101000100011001110001111110011;
b = 32'b10101111111111010001001111001110;
correct = 32'b00011001000010110100100000101101;
#400 //-1.5642e-14 * -4.60345e-10 = 7.20071e-24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100110001110010110101011111000;
b = 32'b11000111011111111110111010011000;
correct = 32'b01101110001110010101111001011101;
#400 //-2.18903e+23 * -65518.6 = 1.43422e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001011001101111100110011010101;
b = 32'b11000110110110111110010000100011;
correct = 32'b00010010100111011110000000000110;
#400 //-3.53986e-32 * -28146.1 = 9.96332e-28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100111101111110011110110110001;
b = 32'b01000101000010100110001101101100;
correct = 32'b00101101010011101100001100001110;
#400 //5.308e-15 * 2214.21 = 1.17531e-11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010000001001010011000111101111;
b = 32'b10100001000000110011001100001100;
correct = 32'b10110001101010010101001011111100;
#400 //1.10861e+10 * -4.44521e-19 = -4.92798e-09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110000100001001101110110101000;
b = 32'b00111111001010110011110100110000;
correct = 32'b01110000001100011011111110100010;
#400 //3.2896e+29 * 0.668902 = 2.20042e+29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011101101010010001111000001110;
b = 32'b01000001000001011101100101101010;
correct = 32'b00011111001100001101100001111100;
#400 //4.4765e-21 * 8.36558 = 3.74485e-20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000101010011111100101101010101;
b = 32'b01100100111011000100000110110101;
correct = 32'b10101010101111111100010011001000;
#400 //-9.77044e-36 * 3.48653e+22 = -3.4065e-13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111001000110110001100100000111;
b = 32'b00001100011001001100100110101011;
correct = 32'b11000110000010101001110001111000;
#400 //-5.03321e+34 * 1.76252e-31 = -8871.12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001010001100101011110000000111;
b = 32'b10001011110110011010100111010110;
correct = 32'b00010110100101111111011111110101;
#400 //-2.92839e+06 * -8.38409e-32 = 2.45518e-25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011101111101110100000100010010;
b = 32'b00001010111101101010110111001110;
correct = 32'b10101001011011100100000001100101;
#400 //-2.22707e+18 * 2.37543e-32 = -5.29025e-14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000111111001011010000001100101;
b = 32'b10110110100011001110110111010011;
correct = 32'b00111110111111001101001000010100;
#400 //-117569.0 * -4.20001e-06 = 0.49379
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100110110000000111010111001100;
b = 32'b01101001110001011010010011010000;
correct = 32'b01010001000101001001011010001110;
#400 //1.33546e-15 * 2.98671e+25 = 3.98863e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010101101101110010110000000111;
b = 32'b11001000111110111111001111101011;
correct = 32'b10011111001101000100011010110010;
#400 //7.39826e-26 * -515999.0 = -3.8175e-20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010010011101110001000011000001;
b = 32'b01010000000111001111100011110000;
correct = 32'b11100011000101110111111001110101;
#400 //-2.65285e+11 * 1.05342e+10 = -2.79457e+21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111110110011001010001111100100;
b = 32'b01100100111111000100100011111001;
correct = 32'b01100100010010011010101110101010;
#400 //0.399688 * 3.72307e+22 = 1.48807e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111101000000000001100111010111;
b = 32'b10011111010110010110101001101111;
correct = 32'b11011100110110011001011001010011;
#400 //1.06422e+37 * -4.60396e-20 = -4.89963e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111011000010111111000101111001;
b = 32'b10100000101100100010100100100011;
correct = 32'b01011100010000101100100011000110;
#400 //-7.26627e+35 * -3.01816e-19 = 2.19308e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100100100011001110000111100101;
b = 32'b01111001000111010100111111011100;
correct = 32'b01011110001011010010010011111000;
#400 //6.1098e-17 * 5.10506e+34 = 3.11909e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110010001000000010111100101001;
b = 32'b10100000001001100010001000011101;
correct = 32'b00010010110011111110011111011010;
#400 //-9.32395e-09 * -1.4072e-19 = 1.31207e-27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000110001000101000001111110000;
b = 32'b00011110100101110100000000001111;
correct = 32'b10100101010000000000100011111010;
#400 //-10401.0 * 1.60142e-20 = -1.66564e-16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111011111110010001010110101100;
b = 32'b11101001111110111000001010011101;
correct = 32'b01100110011101001011011101010101;
#400 //-0.00760146 * -3.80071e+25 = 2.8891e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100001100100100001110000000000;
b = 32'b00010100010111111000001000010101;
correct = 32'b10110110011111110010000101000100;
#400 //-3.36905e+20 * 1.12843e-26 = -3.80173e-06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111101000110011101111001010111;
b = 32'b11101110010110010001111001011111;
correct = 32'b01101100000000100111111110111001;
#400 //-0.0375656 * -1.67987e+28 = 6.31054e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010001000101011010101100111110;
b = 32'b00100101101111101100011011000101;
correct = 32'b10110111010111110001001010011011;
#400 //-4.01764e+10 * 3.30944e-16 = -1.32962e-05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110001111110111011110010111010;
b = 32'b10011001000101101100111010011110;
correct = 32'b01001011100101000100101111000010;
#400 //-2.49308e+30 * -7.79654e-24 = 1.94374e+07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100111000000110100010010100010;
b = 32'b01111101001100110110011110010110;
correct = 32'b01100100101101111111110000110110;
#400 //1.82171e-15 * 1.49044e+37 = 2.71514e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000011101001001111111110011110;
b = 32'b01100110101010110111101100011001;
correct = 32'b01101010110111010000110000101011;
#400 //329.997 * 4.04898e+23 = 1.33615e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111111011001001111100001111101;
b = 32'b01000000010011000101111110011010;
correct = 32'b11000000001101101100101110000110;
#400 //-0.894417 * 3.19334 = -2.85617
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100101111010111110110001001101;
b = 32'b11010001100010100100101100001101;
correct = 32'b11110111111111101110010100010111;
#400 //1.39264e+23 * -7.42456e+10 = -1.03398e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010000000110010100100001110111;
b = 32'b00101001010000100001000100001011;
correct = 32'b10111001111010000110011000111101;
#400 //-1.02867e+10 * 4.30914e-14 = -0.000443267
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111101100110110100111100100000;
b = 32'b00011000011000000111001100110011;
correct = 32'b10010110100010000010101100011111;
#400 //-0.0758345 * 2.90095e-24 = -2.19992e-25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000000010101001000110110001111;
b = 32'b11110000101111111111110001101011;
correct = 32'b01110001100111110110011100110010;
#400 //-3.32114 * -4.75334e+29 = 1.57865e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111011001101000111101111111000;
b = 32'b10101111100001100101011000001101;
correct = 32'b00101011001111010110101100011101;
#400 //-0.00275397 * -2.44356e-10 = 6.72949e-13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100110011101100010001111110000;
b = 32'b10101010010001010111101011111100;
correct = 32'b01010001001111011101111111100111;
#400 //-2.90591e+23 * -1.75398e-13 = 5.09691e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000101001111111011101100000101;
b = 32'b11011010011010011110001101011011;
correct = 32'b10100000001011110010101101111111;
#400 //9.01513e-36 * -1.64584e+16 = -1.48375e-19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110101001010001111000110000000;
b = 32'b01000000110011100000100001011011;
correct = 32'b10110110100001111111011111011001;
#400 //-6.29363e-07 * 6.43852 = -4.05217e-06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001101111110001011010110110101;
b = 32'b00100001100100001000011101000000;
correct = 32'b00110000000011000110100110011100;
#400 //5.21582e+08 * 9.79362e-19 = 5.10818e-10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100101100011110111011110110010;
b = 32'b00110001110101110110100111011001;
correct = 32'b00010111111100010111000110110000;
#400 //2.48877e-16 * 6.26936e-09 = 1.5603e-24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010001101110111110110001001000;
b = 32'b00110001111111110101000101110010;
correct = 32'b10000100001110110110110000100101;
#400 //-2.9649e-28 * 7.43074e-09 = -2.20314e-36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011101100101111101001111111100;
b = 32'b01010111101001110111100111100111;
correct = 32'b01110101110001101010011100101011;
#400 //1.36755e+18 * 3.68284e+14 = 5.03645e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100111010110011111000000011001;
b = 32'b11000101110000000100111001011010;
correct = 32'b01101101101000111011011011000111;
#400 //-1.02918e+24 * -6153.79 = 6.33338e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111110111010100101010010000101;
b = 32'b01110101101001000111000101000110;
correct = 32'b01110101000101101000010111010101;
#400 //0.457676 * 4.16911e+32 = 1.9081e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010001110111110100110111010000;
b = 32'b00110011011100001111010010111010;
correct = 32'b11000101110100100010111001101011;
#400 //-1.19885e+11 * 5.61019e-08 = -6725.8
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001010101111010010001101100010;
b = 32'b11101001111001000111100010010001;
correct = 32'b10110101001010001100110010010111;
#400 //1.82133e-32 * -3.45256e+25 = -6.28826e-07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111000011001010010111110010100;
b = 32'b00111001000111010110011001011001;
correct = 32'b01110010000011001110100111001110;
#400 //1.85938e+34 * 0.000150108 = 2.79108e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001110110101110111001001100101;
b = 32'b00011001110011101100100101110011;
correct = 32'b10101001001011100000011110010111;
#400 //-1.8073e+09 * 2.13813e-23 = -3.86423e-14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110000001101111101011101010011;
b = 32'b10011110000011000111010110001110;
correct = 32'b01001110110010011011110001011010;
#400 //-2.27584e+29 * -7.43585e-21 = 1.69228e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101101101000010011000110010000;
b = 32'b01001101101011010010011001000100;
correct = 32'b11111011110110100000110100101101;
#400 //-6.23588e+27 * 3.63121e+08 = -2.26438e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101101000010111001101110110101;
b = 32'b00000000101110100010111000100011;
correct = 32'b00101110010010110001000010010101;
#400 //2.70042e+27 * 1.7098e-38 = 4.61716e-11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111101100011111011000011000111;
b = 32'b01100111011000001111011000000010;
correct = 32'b11100101011111001000100110000110;
#400 //-0.0701614 * 1.06235e+24 = -7.45358e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010101001010101110100001110000;
b = 32'b10111011100000110111001011011011;
correct = 32'b10010001001011111000001100111110;
#400 //3.45146e-26 * -0.00401149 = -1.38455e-28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110011110110010010111111101100;
b = 32'b11000010100101010101010010101101;
correct = 32'b00110110111111010110000101110110;
#400 //-1.01136e-07 * -74.6654 = 7.55133e-06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101001100011100100000011111111;
b = 32'b00100010101101111000010101111000;
correct = 32'b01001100110010111111010101000001;
#400 //2.14968e+25 * 4.97436e-18 = 1.06933e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100110010111111000111010101010;
b = 32'b11011001111000110000010011101101;
correct = 32'b11000000110001100011111111001110;
#400 //7.7562e-16 * -7.98753e+15 = -6.19529
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001101001101100000111001011110;
b = 32'b01110101010100100111000101111101;
correct = 32'b11000011000101011010100001111110;
#400 //-5.61004e-31 * 2.66769e+32 = -149.658
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111010101111001000100001000110;
b = 32'b00100101010111001110010010010101;
correct = 32'b00100000101000101010110101110011;
#400 //0.00143839 * 1.91594e-16 = 2.75586e-19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011101101010110111000001011100;
b = 32'b11000111101111010001001111100110;
correct = 32'b10100101111111010011111010001111;
#400 //4.53795e-21 * -96807.8 = -4.39309e-16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011000101110110110110000101010;
b = 32'b00000011001011100011100000011001;
correct = 32'b10011100011111110001100100101101;
#400 //-1.64859e+15 * 5.11984e-37 = -8.4405e-22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001111011000100011101011111101;
b = 32'b01010010000111111110000011100100;
correct = 32'b01100010000011010100100101100000;
#400 //3.79552e+09 * 1.71668e+11 = 6.5157e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011000100010100111011110010110;
b = 32'b11001000101001111000101001010011;
correct = 32'b11100001101101010011110110101000;
#400 //1.21797e+15 * -343123.0 = -4.17913e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001101010110101100010101101101;
b = 32'b10110110101100010111100010110110;
correct = 32'b10000100100101111010100110101000;
#400 //6.74141e-31 * -5.28906e-06 = -3.56557e-36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001111110111110000000110011001;
b = 32'b00111001011000111010111100001010;
correct = 32'b01001001110001100101011011100101;
#400 //7.48285e+09 * 0.000217136 = 1.6248e+06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100110011110110011101010101001;
b = 32'b00110101010010000001101101011000;
correct = 32'b10011100010001000110000010101010;
#400 //-8.71626e-16 * 7.45456e-07 = -6.49759e-22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100010100011110010100001000011;
b = 32'b11100000110001001100110011010000;
correct = 32'b01000011110111000001101010110111;
#400 //-3.88029e-18 * -1.13448e+20 = 440.209
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010101101110111010101011000010;
b = 32'b11110101111001101100100010000010;
correct = 32'b11001100001010010010111001100111;
#400 //7.57981e-26 * -5.85105e+32 = -4.43499e+07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110010001000011101111010001010;
b = 32'b11000101001110001001110010001111;
correct = 32'b01110111111010010111010111100010;
#400 //-3.20615e+30 * -2953.78 = 9.47028e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100011010011111010010001010100;
b = 32'b11100110100100110111011000111011;
correct = 32'b11001010011011110011011010000100;
#400 //1.12563e-17 * -3.48184e+23 = -3.91926e+06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001111011110011100001011010100;
b = 32'b00111001110000000101011100110111;
correct = 32'b10001001101110111010011100110110;
#400 //-1.23142e-29 * 0.000366861 = -4.51759e-33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001001111000110100011011010100;
b = 32'b11010101010011100010001100010000;
correct = 32'b00011111101101110000001000011111;
#400 //-5.47149e-33 * -1.41656e+13 = 7.7507e-20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011000100011001100101110110101;
b = 32'b10111100110100001110101010011111;
correct = 32'b00010101111001011100110100011001;
#400 //-3.63948e-24 * -0.0255025 = 9.2816e-26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110000010111010110001100011000;
b = 32'b11101000000011001000100100001011;
correct = 32'b01011000111100110001000101101001;
#400 //-8.05402e-10 * -2.65464e+24 = 2.13805e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110010010010000000001110101110;
b = 32'b11011010011010101101010001001100;
correct = 32'b11001101001101110111100100111011;
#400 //1.16424e-08 * -1.65246e+16 = -1.92386e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110001000010000111100111101101;
b = 32'b11001001000110011101011111100110;
correct = 32'b00111010101001000000011111101111;
#400 //-1.98599e-09 * -630142.0 = 0.00125146
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011111010011010011101011110000;
b = 32'b11001101010100101111010001100111;
correct = 32'b00101101001010010001111001001000;
#400 //-4.34592e-20 * -2.21202e+08 = 9.61326e-12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010100111010001000000110010111;
b = 32'b00011001010100010100101111000110;
correct = 32'b00101110101111100001011010011110;
#400 //7.98885e+12 * 1.08203e-23 = 8.64422e-11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000010110010001001100001001101;
b = 32'b11111001010111000100101000101101;
correct = 32'b00111100101011001001110100000001;
#400 //-2.94748e-37 * -7.14881e+34 = 0.021071
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100100101100011011010000111010;
b = 32'b10001001101010100111001001100111;
correct = 32'b10101110111011001010001000110001;
#400 //2.62245e+22 * -4.10336e-33 = -1.07608e-10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010011011000011111001000010010;
b = 32'b00111110001100001111111110111010;
correct = 32'b10010010000111000011100000100001;
#400 //-2.85183e-27 * 0.172851 = -4.92941e-28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111110110010111011100111011001;
b = 32'b10100101100111110111001101101101;
correct = 32'b11100100111111011100100010010010;
#400 //1.35399e+38 * -2.76603e-16 = -3.74518e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101010000101101101110101011011;
b = 32'b00101100000010101111100100100011;
correct = 32'b11010110101000111100110001001010;
#400 //-4.5596e+25 * 1.97493e-12 = -9.00489e+13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111101101000100001100010110100;
b = 32'b00101101101000010110110100110000;
correct = 32'b01101011110011000110110101011000;
#400 //2.69329e+37 * 1.83521e-11 = 4.94274e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011101010011000111011011011110;
b = 32'b00111100001110100010001100110001;
correct = 32'b01011010000101001010101001111001;
#400 //9.20825e+17 * 0.0113609 = 1.04614e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110001001101110010101100000011;
b = 32'b00010010100010100110110100001111;
correct = 32'b01000100010001100001011001101111;
#400 //9.07004e+29 * 8.73591e-28 = 792.351
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101110111110011101010110001101;
b = 32'b00111010000110101011111100000001;
correct = 32'b11101001100101110000010011011110;
#400 //-3.866e+28 * 0.00059031 = -2.28213e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001010000000111110100100110100;
b = 32'b10111000001100100110000000110000;
correct = 32'b11000010101101111101001101101101;
#400 //2.16123e+06 * -4.25281e-05 = -91.9129
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111110001111011011111111111110;
b = 32'b00001011110101011000001011101011;
correct = 32'b00001010100111100100000111001000;
#400 //0.185303 * 8.22416e-32 = 1.52396e-32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100011011010010011010011001010;
b = 32'b01101010011010001110011011011001;
correct = 32'b11001110010101000010101000100010;
#400 //-1.26421e-17 * 7.03902e+25 = -8.89883e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101000010011001101111101110001;
b = 32'b00100110001100100000010011001010;
correct = 32'b00001111000011100111011100110010;
#400 //1.13727e-14 * 6.17626e-16 = 7.0241e-30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110101001100100011111001111001;
b = 32'b11100010011101001001101100111000;
correct = 32'b11011000001010100100111110011110;
#400 //6.64011e-07 * -1.12805e+21 = -7.49036e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110001010100110110111100011101;
b = 32'b01011001100011111010101001010101;
correct = 32'b01001011011011010100111101111110;
#400 //3.07677e-09 * 5.05478e+15 = 1.55524e+07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000001101100101011100001001000;
b = 32'b01100011101001010001011000010111;
correct = 32'b11100101111001101000000001100101;
#400 //-22.34 * 6.09061e+21 = -1.36064e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001011100011001010100000100111;
b = 32'b11100000111000011110011011010100;
correct = 32'b01101100111110000011110100111100;
#400 //-1.84362e+07 * -1.30223e+20 = 2.40082e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000111010000111011010111110111;
b = 32'b01110000001000100000100111011110;
correct = 32'b10110111111101111100000101100011;
#400 //-1.47236e-34 * 2.00594e+29 = -2.95347e-05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000001001110010011000000101111;
b = 32'b10100110101001001111100011100011;
correct = 32'b00101000011011101010110111010010;
#400 //-11.5743 * -1.14472e-15 = 1.32493e-14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100000001001010101110100011111;
b = 32'b00010001010100101100011110100111;
correct = 32'b10110010000010000010011101011011;
#400 //-4.76629e+19 * 1.66276e-28 = -7.92519e-09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111000111110010111010101010000;
b = 32'b10011010001000101111000000100110;
correct = 32'b00010011100111101100011001000000;
#400 //-0.000118951 * -3.36948e-23 = 4.00803e-27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001101111101110110010101110101;
b = 32'b01110001000010110001110010111010;
correct = 32'b00111111100001100110111111011001;
#400 //1.5247e-30 * 6.8885e+29 = 1.05029
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011010001011100000001001110110;
b = 32'b11000100000100001100111100011011;
correct = 32'b01011110110001001101110001010001;
#400 //-1.22448e+16 * -579.236 = 7.09265e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001011000001011011111011110100;
b = 32'b01010000001001111001010001101100;
correct = 32'b11011011101011110001101000111000;
#400 //-8.76517e+06 * 1.12461e+10 = -9.85739e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111100010101010111001001100111;
b = 32'b00100011001010101111011110011110;
correct = 32'b10100000000011101000110001101110;
#400 //-0.0130278 * 9.26815e-18 = -1.20743e-19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001110100101111111111010000100;
b = 32'b11111100101110111111101000010101;
correct = 32'b11001011110111110011011011001011;
#400 //3.74695e-30 * -7.80825e+36 = -2.92571e+07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001000111100111010100010110100;
b = 32'b11110000100010110000000100110010;
correct = 32'b10111010000001000100110110111101;
#400 //1.46647e-33 * -3.44159e+29 = -0.000504698
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000001001010010101100001000111;
b = 32'b11101101101001011001001011000001;
correct = 32'b10101111010110110000110111110100;
#400 //3.11037e-38 * -6.40531e+27 = -1.99229e-10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010000011010011010011011001110;
b = 32'b01001000101100011000001001011110;
correct = 32'b10011001101000100000001101010001;
#400 //-4.60796e-29 * 363539.0 = -1.67517e-23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011101000000110101110101100100;
b = 32'b00001110010101011000000101010101;
correct = 32'b00101011110110110001111000100100;
#400 //5.91614e+17 * 2.63165e-30 = 1.55693e-12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100010001011110010000111101101;
b = 32'b10100000011000010110110111111001;
correct = 32'b11000011000110100011100000001101;
#400 //8.07656e+20 * -1.90946e-19 = -154.219
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111111010001110100010100000101;
b = 32'b10010000011001011100100001101011;
correct = 32'b01010000001100101101110010111111;
#400 //-2.64875e+38 * -4.53167e-29 = 1.20032e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100011110010011000000111111010;
b = 32'b11100100110110000101101000001101;
correct = 32'b11001001001010100100110010001101;
#400 //2.18475e-17 * -3.19279e+22 = -697545.0
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100101001011110110100001010100;
b = 32'b10010101110111100110000111100111;
correct = 32'b10111011100110000101111110001110;
#400 //5.17712e+22 * -8.98195e-26 = -0.00465006
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101011111111000011111111110010;
b = 32'b00100011011011001011101100001100;
correct = 32'b01001111111010010100001101000010;
#400 //6.09903e+26 * 1.28332e-17 = 7.827e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000010101100010011111100110011;
b = 32'b11100000110000111111100011000001;
correct = 32'b11100100000001111010111101011111;
#400 //88.6234 * -1.1297e+20 = -1.00118e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111101001111110011101010100011;
b = 32'b10100001110110000011111010100001;
correct = 32'b11011111101000011000100001000010;
#400 //1.58867e+37 * -1.46533e-18 = -2.32793e+19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001001000101011111001110110110;
b = 32'b01001111111010110001000010001101;
correct = 32'b10011001100010011011000001101010;
#400 //-1.80498e-33 * 7.88746e+09 = -1.42367e-23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111011111100110001010100001001;
b = 32'b10000101100011111110111110000011;
correct = 32'b10000010000010001010110000101101;
#400 //0.00741828 * -1.35356e-35 = -1.00411e-37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011111100101011011011010110101;
b = 32'b00101011010011101001101010101000;
correct = 32'b00001011011100011010011011110000;
#400 //6.34062e-20 * 7.34005e-13 = 4.65405e-32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001100111100110000101110001001;
b = 32'b11111001011011000110011111111100;
correct = 32'b11000110111000000111000101011011;
#400 //3.7447e-31 * -7.67182e+34 = -28728.7
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110010100000111011001010001001;
b = 32'b01011110001001010011001000011111;
correct = 32'b01010001001010011111011110110110;
#400 //1.53316e-08 * 2.9759e+18 = 4.56253e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111011111000100011011000011111;
b = 32'b11100001011111011100000100011111;
correct = 32'b01011101111000000011101000100011;
#400 //-0.00690342 * -2.92559e+20 = 2.01966e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110100011001010010001101110010;
b = 32'b10011100100100001010001010101010;
correct = 32'b10010001100000010111010110001001;
#400 //2.13402e-07 * -9.57117e-22 = -2.0425e-28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010001011101101101100110000010;
b = 32'b11110000011010001101110001100010;
correct = 32'b01000010011000001000100110011111;
#400 //-1.9473e-28 * -2.88268e+29 = 56.1344
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001111010111010010101010110111;
b = 32'b00111110100100010010010011110010;
correct = 32'b01001110011110101100101000111001;
#400 //3.71056e+09 * 0.283485 = 1.05189e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110011101001011101111100011001;
b = 32'b11111110101011001011111010111010;
correct = 32'b11110010110111111101101011110010;
#400 //7.72399e-08 * -1.14809e+38 = -8.86782e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100000001001011011000110111001;
b = 32'b11111010110101111010111110110001;
correct = 32'b11011011100010111001100111111001;
#400 //1.40348e-19 * -5.59954e+35 = -7.85886e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001001110100000110100100001001;
b = 32'b00111001010100100010010011110000;
correct = 32'b11000011101010110001010000111100;
#400 //-1.7073e+06 * 0.000200409 = -342.158
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111011011101110001110001110010;
b = 32'b00011101111001101101000100101110;
correct = 32'b11011001110111101100110101111001;
#400 //-1.28307e+36 * 6.10968e-21 = -7.83917e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111010010110100111110101001101;
b = 32'b00110101001110100111111001000000;
correct = 32'b00110000000111110010101011001010;
#400 //0.000833471 * 6.94741e-07 = 5.79047e-10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010011101010101000100100110100;
b = 32'b00110010001110001101010001111101;
correct = 32'b00000110011101100100000001010101;
#400 //4.30493e-27 * 1.07585e-08 = 4.63147e-35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110001011000111111011100001101;
b = 32'b01110110010011000000101110100111;
correct = 32'b01101000001101011011001100111111;
#400 //3.31733e-09 * 1.03463e+33 = 3.43222e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111001000110000000000000111011;
b = 32'b10110011010001001110010111110001;
correct = 32'b11101100111010011101000101101001;
#400 //4.93271e+34 * -4.58439e-08 = -2.26135e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111111101110000001101001110000;
b = 32'b01001010011100100110011010111100;
correct = 32'b11001010101011100101001011100000;
#400 //-1.43831 * 3.9715e+06 = -5.71224e+06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001010111011000011110001001111;
b = 32'b00100000011110100000010011011110;
correct = 32'b00101011111001101011011101100011;
#400 //7.74097e+06 * 2.11774e-19 = 1.63934e-12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100010010001110111100000011000;
b = 32'b00011111001001110111001001100100;
correct = 32'b10000010000000100111100001111001;
#400 //-2.70331e-18 * 3.54582e-20 = -9.58547e-38
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000110101011110011111110100110;
b = 32'b11001010001101000011111110010000;
correct = 32'b11010001011101101100100010001000;
#400 //22431.8 * -2.95319e+06 = -6.62454e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100011010010001011001000111101;
b = 32'b11000111111001111101111100011001;
correct = 32'b11101011101101011100011110111100;
#400 //3.70219e+21 * -118718.0 = -4.39518e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011011110110110000011110101100;
b = 32'b10110001111111101100100111100010;
correct = 32'b00001110010110011111111001010111;
#400 //-3.62355e-22 * -7.41532e-09 = 2.68698e-30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100111101001011011111110010101;
b = 32'b11101001001010010010001100001000;
correct = 32'b11010001010110110000010001001111;
#400 //4.60044e-15 * -1.27796e+25 = -5.87919e+10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001000010111100010001001001000;
b = 32'b11100110110100100110110001000101;
correct = 32'b00101111101101101001011000010001;
#400 //-6.6846e-34 * -4.96847e+23 = 3.32122e-10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011011010010101111110010000011;
b = 32'b10110001100101001111000010101100;
correct = 32'b11001101011011000011000110100010;
#400 //5.71356e+16 * -4.33473e-09 = -2.47667e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111100111100101111011101000001;
b = 32'b01000000010011010001000000000001;
correct = 32'b01111101110000101001111100101111;
#400 //1.00924e+37 * 3.2041 = 3.23371e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001000101110011011100011001000;
b = 32'b01010001010001011010010101011111;
correct = 32'b01011010100011110110001100101011;
#400 //380358.0 * 5.30552e+10 = 2.018e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010110110011111010110001111100;
b = 32'b11111110001100001000001011010000;
correct = 32'b11010101100011110011000010110100;
#400 //3.35515e-25 * -5.86558e+37 = -1.96799e+13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111110111001110111011110011101;
b = 32'b00010100010010000100101111110111;
correct = 32'b10010011101101010001101000100010;
#400 //-0.452084 * 1.01124e-26 = -4.57166e-27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110010011101110101000010001111;
b = 32'b01100010100001101011111001110010;
correct = 32'b11010101100000100010110000100111;
#400 //-1.43956e-08 * 1.24279e+21 = -1.78908e+13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010111011101100100111101111001;
b = 32'b01101110011111111001111010010111;
correct = 32'b01000110011101011111000111000000;
#400 //7.95872e-25 * 1.97776e+28 = 15740.4
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001100101010110111011110110010;
b = 32'b11111011000110100001111010100001;
correct = 32'b11001000010011100111010100001010;
#400 //2.64188e-31 * -8.00235e+35 = -211412.0
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000011010100001110101010010100;
b = 32'b01011010000000110001110011001011;
correct = 32'b00011101110101011111111100010010;
#400 //6.1395e-37 * 9.22622e+15 = 5.66444e-21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000100110000111011010100011010;
b = 32'b11011100001001011010101001001000;
correct = 32'b10100001011111010100101111001110;
#400 //4.60106e-36 * -1.86522e+17 = -8.58201e-19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001010110101010111011010110000;
b = 32'b01001100111011011000001110101000;
correct = 32'b00011000010001100000110010101001;
#400 //2.05558e-32 * 1.24526e+08 = 2.55973e-24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101101010101101110111100101001;
b = 32'b11010111010110111011101100001011;
correct = 32'b01000101001110000111101110100010;
#400 //-1.22176e-11 * -2.41596e+14 = 2951.73
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111100011010011011010110111111;
b = 32'b10010111011101110010111010000001;
correct = 32'b10010100011000011010100011010000;
#400 //0.0142645 * -7.98687e-25 = -1.13929e-26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000011110001111010010100011111;
b = 32'b10101100111010111110111010011100;
correct = 32'b10110001001101111111111010101001;
#400 //399.29 * -6.70559e-12 = -2.67748e-09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100001011101110010011101111100;
b = 32'b01000011010000101010001100111110;
correct = 32'b11100101001110111110100110000110;
#400 //-2.84949e+20 * 194.638 = -5.54619e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110000101111101001100100110011;
b = 32'b10000001011111110101100001000110;
correct = 32'b10110010101111100001110001010011;
#400 //4.71899e+29 * -4.68994e-38 = -2.21318e-08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110100100001000011000000011101;
b = 32'b00010111001000111101000001101111;
correct = 32'b10001100001010010010110010000110;
#400 //-2.46219e-07 * 5.29312e-25 = -1.30327e-31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001000001110111111011011110111;
b = 32'b11000000000111110010100100011110;
correct = 32'b10001000111010011011100100101000;
#400 //5.65636e-34 * -2.48688 = -1.40667e-33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011001111011110100110110011100;
b = 32'b00011111101110011110101111111010;
correct = 32'b10111010001011011100101110101100;
#400 //-8.41973e+15 * 7.87409e-20 = -0.000662978
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101011001011101000101001010001;
b = 32'b11010001101110000000110000101010;
correct = 32'b01111101011110101111011101101011;
#400 //-2.11006e+26 * -9.88098e+10 = 2.08495e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110010000110110011110010101111;
b = 32'b10111011010101011111110110101110;
correct = 32'b01101110000000011100001101010010;
#400 //-3.07479e+30 * -0.00326524 = 1.00399e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110001010010011010010000000111;
b = 32'b11101111011110100101001000110001;
correct = 32'b01100001010001010010101011101100;
#400 //-2.93426e-09 * -7.74706e+28 = 2.27319e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100110110101000010011100100011;
b = 32'b11010101111101001000011011010001;
correct = 32'b11111101010010101010010100000111;
#400 //5.00932e+23 * -3.36075e+13 = -1.68351e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011011010000100000010010101001;
b = 32'b11000010001001001001011111111110;
correct = 32'b11011101111110010111110001011011;
#400 //5.46113e+16 * -41.1484 = -2.24717e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001010101010011110100011011010;
b = 32'b00010011011011000101101010010010;
correct = 32'b10011110100111001101111011000110;
#400 //-5.5676e+06 * 2.9832e-27 = -1.66093e-20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110110111001010010110100001011;
b = 32'b01100011000000001101101100000110;
correct = 32'b01011010011001101011010100110001;
#400 //6.82998e-06 * 2.37697e+21 = 1.62346e+16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011010110101000001000011000010;
b = 32'b11100111011111010101000100101100;
correct = 32'b11000010110100011101011111001101;
#400 //8.77082e-23 * -1.19626e+24 = -104.921
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000011110001110111101100000110;
b = 32'b01010111100000111000100001011011;
correct = 32'b00011011110011001111110001101001;
#400 //1.17244e-36 * 2.89243e+14 = 3.39121e-22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010110000110010001111001011010;
b = 32'b01010110100000000011100111111100;
correct = 32'b10101101000110010110001110110111;
#400 //-1.23688e-25 * 7.04933e+13 = -8.71918e-12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001111010110000111101001011011;
b = 32'b00110000001100110111001001100001;
correct = 32'b01000000000101111011111001000110;
#400 //3.6319e+09 * 6.52824e-10 = 2.37099
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010110101101111100101011011111;
b = 32'b11101010110000100010101100100011;
correct = 32'b01000010000010110110011010110101;
#400 //-2.96933e-25 * -1.17368e+26 = 34.8503
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010001100000100010111001000111;
b = 32'b00100100111100110101011111101011;
correct = 32'b00110110111101110111110101000101;
#400 //6.98903e+10 * 1.05533e-16 = 7.37576e-06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011010001000101100100011001001;
b = 32'b00011010110000111011110011110110;
correct = 32'b00110101011110001110111000110010;
#400 //1.14549e+16 * 8.09554e-23 = 9.27338e-07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011011111101110110100010001100;
b = 32'b00101011010011110010110111000110;
correct = 32'b01000111110010000011100111000110;
#400 //1.39279e+17 * 7.36047e-13 = 102516.0
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111111000100001101000000010111;
b = 32'b10010100011111010111000001101101;
correct = 32'b00010100000011110101110100111111;
#400 //-0.565675 * -1.27954e-26 = 7.23804e-27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100110010010001011101011001111;
b = 32'b01100000110011101110010011101111;
correct = 32'b01000111101000100011100111010100;
#400 //6.96421e-16 * 1.19266e+20 = 83059.7
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000110111101101001000001111101;
b = 32'b10111111110101110000011110100010;
correct = 32'b11000111010011110001101010110011;
#400 //31560.2 * -1.67992 = -53018.7
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000100000011011101010101001000;
b = 32'b11100000100110010000010111000111;
correct = 32'b10100101001010011000111101010111;
#400 //1.66724e-36 * -8.82115e+19 = -1.4707e-16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001011001011111011000010001111;
b = 32'b01010110011011111000001001000110;
correct = 32'b11100010001001000101111100111101;
#400 //-1.1514e+07 * 6.58357e+13 = -7.58032e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110101000011000110101101000110;
b = 32'b10110111110001011000000111100111;
correct = 32'b00101101010110001010101110011011;
#400 //-5.23102e-07 * -2.35447e-05 = 1.23163e-11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110100100100001011000011110011;
b = 32'b11011110011100011110010111111000;
correct = 32'b11010011100010001011100010001111;
#400 //2.69508e-07 * -4.35765e+18 = -1.17442e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101001001011001010100111011000;
b = 32'b00101010000111001101010100000110;
correct = 32'b11010011110100111000111001011010;
#400 //-1.30461e+25 * 1.39295e-13 = -1.81725e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111111110100011000010000011011;
b = 32'b11100000110101001101110110001000;
correct = 32'b01111111110100011000010000011011;
#400 //nan * -1.22709e+20 = nan
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010001000100111101011110110000;
b = 32'b10011001000111011100101111011100;
correct = 32'b10101010101101100100001000000100;
#400 //3.96862e+10 * -8.15788e-24 = -3.23755e-13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011001101001111111011001011010;
b = 32'b11001110101001011011110111000100;
correct = 32'b01101000110110010111110010010011;
#400 //-5.90965e+15 * -1.39034e+09 = 8.21641e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001001000000000010000001101010;
b = 32'b00100011001001011110011111010011;
correct = 32'b10101100101001100001000111010110;
#400 //-524807.0 * 8.99376e-18 = -4.71998e-12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101011101001000011010010000100;
b = 32'b01000001111100000001001101010011;
correct = 32'b01101110000110011111110110100001;
#400 //3.97024e+26 * 30.0094 = 1.19145e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101111001011010010000010011111;
b = 32'b11001011000011110010111110101101;
correct = 32'b00111010110000011010101011101110;
#400 //-1.57458e-10 * -9.38385e+06 = 0.00147757
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011001000010011100000001010100;
b = 32'b10000101000001111010000110100000;
correct = 32'b10011110100100011111011011001001;
#400 //2.42335e+15 * -6.37736e-36 = -1.54545e-20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111100110000101010100011011110;
b = 32'b01010111001011001011100011000011;
correct = 32'b01010100100000110101010111110011;
#400 //0.0237622 * 1.8991e+14 = 4.51266e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001101111110110110010110101110;
b = 32'b11010010101010100000011110110011;
correct = 32'b10100001001001101111100100010101;
#400 //1.54935e-30 * -3.65137e+11 = -5.65726e-19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001101011001001110101010110010;
b = 32'b00111101101111111000000111011001;
correct = 32'b00001011101010110011111100110111;
#400 //7.05404e-31 * 0.0935094 = 6.59619e-32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111111110111100011010001010001;
b = 32'b01101010110001111011111000000101;
correct = 32'b11111111110111100011010001010001;
#400 //nan * 1.20737e+26 = nan
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011110001010110111111000110101;
b = 32'b00111010100001101011011010010111;
correct = 32'b11011001001101000111110011000001;
#400 //-3.08934e+18 * 0.00102778 = -3.17517e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101100000111110001111110101000;
b = 32'b10111101011011010101000001011001;
correct = 32'b01101010000100111000001001000000;
#400 //-7.69475e+26 * -0.057938 = 4.45818e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101001110001001001100010101011;
b = 32'b00110010010110111001000110011001;
correct = 32'b01011100101010001001111001101010;
#400 //2.97088e+25 * 1.27806e-08 = 3.79696e+17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101111100011110011101011101011;
b = 32'b10101001111001000001001111001101;
correct = 32'b00011001111111110011011100011011;
#400 //-2.60534e-10 * -1.01287e-13 = 2.63886e-23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101100011000100010101000111110;
b = 32'b00010100110110110010100001000000;
correct = 32'b10000001110000011001110110110010;
#400 //-3.214e-12 * 2.21292e-26 = -7.11233e-38
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101011000101101110101000001000;
b = 32'b11011011011011011000011011011000;
correct = 32'b11000111000011000000011000100111;
#400 //5.36155e-13 * -6.68578e+16 = -35846.2
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010111011110111100101000110100;
b = 32'b11011111101111000010111011011001;
correct = 32'b00110111101110010001011010010010;
#400 //-8.13577e-25 * -2.712e+19 = 2.20642e-05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000011011010000101000000011011;
b = 32'b11100000011111010000101001100000;
correct = 32'b11100100011001011010000010010101;
#400 //232.313 * -7.2934e+19 = -1.69435e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100000111010100000111011100000;
b = 32'b10110101011100100011010100110001;
correct = 32'b10010110110111010111001010110010;
#400 //3.9651e-19 * -9.02294e-07 = -3.57769e-25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000101001001101010110110011001;
b = 32'b11010000010100111010100100010000;
correct = 32'b11010110000010011100111100101000;
#400 //2666.85 * -1.42043e+10 = -3.78807e+13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000010010110101010000110100100;
b = 32'b01110111011011000000010110100000;
correct = 32'b01111010010010011001000111010001;
#400 //54.6579 * 4.78709e+33 = 2.61652e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111011100001000010101101101001;
b = 32'b01111000000011000111111101001100;
correct = 32'b11110100000100010001001011101100;
#400 //-0.0040335 * 1.13985e+34 = -4.59758e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101110110111001001000011101001;
b = 32'b10011001100000001111111111001100;
correct = 32'b10001000110111100100100110110001;
#400 //1.00302e-10 * -1.33382e-23 = -1.33785e-33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110011110110011001111100110100;
b = 32'b11000000111010010001011100001100;
correct = 32'b01110101010001100010010101111110;
#400 //-3.44836e+31 * -7.28406 = 2.5118e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001110111000101010010011011001;
b = 32'b10011100001100001111010010011010;
correct = 32'b10101011100111001010100111100011;
#400 //1.90123e+09 * -5.85497e-22 = -1.11316e-12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101011101101101111110000110111;
b = 32'b11000111101000111101100101011100;
correct = 32'b10110011111010100011101111101001;
#400 //1.30019e-12 * -83890.7 = -1.09074e-07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111101010011000010010001110000;
b = 32'b01001111110111101110111001100100;
correct = 32'b11001101101100011100010110110011;
#400 //-0.0498394 * 7.48033e+09 = -3.72815e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010000111001000111111100000101;
b = 32'b00111101000000101000101100101001;
correct = 32'b10001110011010010000100101101100;
#400 //-9.01258e-29 * 0.031871 = -2.8724e-30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001100110110100111000010000101;
b = 32'b11100110001011001101001011000011;
correct = 32'b10110011100100110111011101110000;
#400 //3.36559e-31 * -2.04034e+23 = -6.86695e-08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011110110100100100100011101011;
b = 32'b10110101101101000111011000010010;
correct = 32'b00010101000101000011110001000010;
#400 //-2.22648e-20 * -1.34454e-06 = 2.99359e-26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111110010111100000111001000111;
b = 32'b00100000010110101011111001010101;
correct = 32'b00011111001111011011110101000001;
#400 //0.216851 * 1.85283e-19 = 4.01789e-20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110001101100101001100010100011;
b = 32'b01100100001110110110011011101110;
correct = 32'b11010110100000101011110101001110;
#400 //-5.19783e-09 * 1.38278e+22 = -7.18748e+13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111110101111010011111110101110;
b = 32'b10010111111000000011011010010101;
correct = 32'b10010111001001011100000000010010;
#400 //0.369626 * -1.44894e-24 = -5.35568e-25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110110011001111100010110011111;
b = 32'b01000110110000010011110001001011;
correct = 32'b00111101101011101111001010010011;
#400 //3.45367e-06 * 24734.1 = 0.0854236
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100000000000100111001011110010;
b = 32'b10100001111001111010000000000101;
correct = 32'b10000010011011000000111010000110;
#400 //1.10495e-19 * -1.56955e-18 = -1.73427e-37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101010110110101101100100111111;
b = 32'b11000011000101111110000001000000;
correct = 32'b11101110100000011101010111011001;
#400 //1.32286e+26 * -151.876 = -2.0091e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011000111010101000010110101011;
b = 32'b01001110110110000000010111010000;
correct = 32'b11101000010001011110011000011011;
#400 //-2.06288e+15 * 1.81213e+09 = -3.7382e+24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111100100111111101110101100110;
b = 32'b10111011001101111101000110001010;
correct = 32'b11111000011001011001010000111100;
#400 //6.64053e+36 * -0.00280485 = -1.86257e+34
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100111001001101111011100100000;
b = 32'b00101101001111101010101001100111;
correct = 32'b00010100111110001011010100011010;
#400 //2.31711e-15 * 1.08381e-11 = 2.5113e-26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001111000100100001101110000100;
b = 32'b01101100101001011110110110001100;
correct = 32'b01111100001111010110011010011111;
#400 //2.45128e+09 * 1.60476e+27 = 3.9337e+36
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001011001011101111001101100011;
b = 32'b10100100010000101101001110000010;
correct = 32'b00110000000001010010010011111100;
#400 //-1.14656e+07 * -4.22462e-17 = 4.84377e-10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101110000100100101100111100011;
b = 32'b01111101111000101001111111011000;
correct = 32'b11101100100000011000111010111100;
#400 //-3.32764e-11 * 3.76544e+37 = -1.253e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101110010010001101001101110110;
b = 32'b10011100011100000000110011100101;
correct = 32'b10001011001111000101000001011100;
#400 //4.56626e-11 * -7.9426e-22 = -3.62679e-32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101111111110101101110101111100;
b = 32'b00000101101110110110100001101100;
correct = 32'b10110110001101111010011000011101;
#400 //-1.55278e+29 * 1.76238e-35 = -2.73658e-06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100011000100100011100001110000;
b = 32'b10110001000110111001011100100110;
correct = 32'b10010100101100011011110100000010;
#400 //7.92663e-18 * -2.26414e-09 = -1.7947e-26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111000100010110001011100100000;
b = 32'b10010100101010101110001100010111;
correct = 32'b10001101101110011011000101111011;
#400 //6.63234e-05 * -1.72552e-26 = -1.14442e-30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110000000100001011000001000111;
b = 32'b01011110001001000011010111000010;
correct = 32'b01001110101110011001111010011111;
#400 //5.26374e-10 * 2.95814e+18 = 1.55709e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100101000001000100101100010011;
b = 32'b00111000100111101100110110011011;
correct = 32'b01011110001001000010000100101100;
#400 //3.90461e+22 * 7.57232e-05 = 2.9567e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110000011110001111110101100101;
b = 32'b10111011010001101010010011110111;
correct = 32'b11101100010000010011010001101111;
#400 //3.08234e+29 * -0.00303107 = -9.34281e+26
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111011010000100110100111100011;
b = 32'b10100110100101110111110010110100;
correct = 32'b10100010011001100001011001010010;
#400 //0.00296652 * -1.05115e-15 = -3.11826e-18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000001101100110101000100100111;
b = 32'b11001101001100110100011001100100;
correct = 32'b00001111011110110010011000011001;
#400 //-6.58707e-38 * -1.87983e+08 = 1.23826e-29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000110110111110110000110111010;
b = 32'b10111110001000101101100000100001;
correct = 32'b11000101100011100001100001101111;
#400 //28592.9 * -0.159028 = -4547.05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111001100110101111101111100100;
b = 32'b10100110000101110001100111000010;
correct = 32'b10100000001101101111010001010111;
#400 //0.000295608 * -5.24236e-16 = -1.54968e-19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100010100100001101110101010011;
b = 32'b10010011111110111110010101100100;
correct = 32'b10110111000011101000101011001111;
#400 //1.33614e+21 * -6.35875e-27 = -8.49618e-06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001101000010110100011000011100;
b = 32'b10111110001011011000000110111000;
correct = 32'b00001011101111001100100111100111;
#400 //-4.29171e-31 * -0.16944 = 7.27188e-32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000010001011001100101011101010;
b = 32'b11010110000000101110110000110011;
correct = 32'b00011000101100001011110011110001;
#400 //-1.26948e-37 * -3.59877e+13 = 4.56857e-24
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100011000111111110100011000100;
b = 32'b11100010001110111011001101011010;
correct = 32'b11000101111010100111111000011110;
#400 //8.6687e-18 * -8.65616e+20 = -7503.76
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110111001000010011000100010000;
b = 32'b00110011101010011000100000101111;
correct = 32'b10101011010101010111111001000110;
#400 //-9.60777e-06 * 7.89445e-08 = -7.5848e-13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011010001100101111001000001011;
b = 32'b00101111111111101000111000011000;
correct = 32'b01001010101100011110111101111010;
#400 //1.25922e+16 * 4.63033e-10 = 5.83059e+06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10010010100101111101000011101001;
b = 32'b11111100110110001101011010001001;
correct = 32'b01010000000000001001011101111110;
#400 //-9.58094e-28 * -9.0071e+36 = 8.62965e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001110101010010001111010000011;
b = 32'b11101000101110011111100001111110;
correct = 32'b11110111111101011011011001101011;
#400 //1.41867e+09 * -7.02577e+24 = -9.96729e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101111001101111111100011100101;
b = 32'b01110111011000000111000000011100;
correct = 32'b11100111001000010100101001011001;
#400 //-1.67322e-10 * 4.55214e+33 = -7.61672e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111010000010111000000001001000;
b = 32'b01011011011110110001110001111100;
correct = 32'b11010110000010001101011001001100;
#400 //-0.000532154 * 7.06815e+16 = -3.76135e+13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100000011010001011111111000101;
b = 32'b00100101001100111001101000010100;
correct = 32'b10000110001000110100101000101100;
#400 //-1.97146e-19 * 1.5578e-16 = -3.07114e-35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010101100011101101101011110111;
b = 32'b10001110001111010001001011001000;
correct = 32'b10100100010100110000010001000111;
#400 //1.96339e+13 * -2.33051e-30 = -4.5757e-17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000100101010110110010111000100;
b = 32'b01001000101110001001000011100000;
correct = 32'b01001101111101110010010001001000;
#400 //1371.18 * 377991.0 = 5.18294e+08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000111010101110011101101000101;
b = 32'b01001001010100100001110101011111;
correct = 32'b00010001001100001010011101010000;
#400 //1.61922e-34 * 860630.0 = 1.39355e-28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000001000010100000100001010010;
b = 32'b11110011111111100110101101100010;
correct = 32'b10110101100010010010111000101000;
#400 //2.53526e-38 * -4.03144e+31 = -1.02207e-06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111010110001001001101110001001;
b = 32'b01101101101100101000111111101101;
correct = 32'b11101001000010010010001010101110;
#400 //-0.0015 * 6.90779e+27 = -1.03617e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111010010100010001110100111011;
b = 32'b10111110010110101100011001101111;
correct = 32'b10111001001100101011010011111100;
#400 //0.000797707 * -0.213648 = -0.000170428
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010011010110001100111111011001;
b = 32'b00110100010001100100100101100010;
correct = 32'b11001000001001111110111011101000;
#400 //-9.312e+11 * 1.84669e-07 = -171964.0
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000000001100010101011001000111;
b = 32'b01111111001100010001000011010010;
correct = 32'b00111111100010000111111110010100;
#400 //4.53089e-39 * 2.35361e+38 = 1.06639
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001001101100011001010011111000;
b = 32'b00000110111111011111011111011110;
correct = 32'b00010001001100000010110000101010;
#400 //1.45475e+06 * 9.55322e-35 = 1.38976e-28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110111111100101110111100111100;
b = 32'b11101100010011000111001111111010;
correct = 32'b11100100110000100000010010110011;
#400 //2.89601e-05 * -9.88674e+26 = -2.86321e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001100111000001111111111011110;
b = 32'b10110010010011011111001111101010;
correct = 32'b10111111101101010000001101000101;
#400 //1.17965e+08 * -1.1988e-08 = -1.41416
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01100011110010010111001101011011;
b = 32'b00010001000110001100111110000011;
correct = 32'b00110101011100000111111110010011;
#400 //7.43222e+21 * 1.20546e-28 = 8.95926e-07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10111000111101001010111000001101;
b = 32'b11011000010001101010100101110110;
correct = 32'b01010001101111011110000010010110;
#400 //-0.000116672 * -8.73725e+14 = 1.0194e+11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110011111010101001000110110100;
b = 32'b00111110110101101110000001011110;
correct = 32'b00110011010001001110001101100010;
#400 //1.0923e-07 * 0.419681 = 4.58416e-08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110001011011110111100110111111;
b = 32'b00111110101011111110111000110101;
correct = 32'b00110000101001001001001100001110;
#400 //3.48483e-09 * 0.343614 = 1.19744e-09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010000101110101010011001001101;
b = 32'b01100000101100010101010001010010;
correct = 32'b01110010000000010100101001110110;
#400 //2.50517e+10 * 1.02223e+20 = 2.56087e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001010011011000011001100010100;
b = 32'b11011010001010111000100110001111;
correct = 32'b00100101000111100100010100001010;
#400 //-1.13726e-32 * -1.20709e+16 = 1.37277e-16
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001001011011011010011110111011;
b = 32'b01110011001111000001100000000111;
correct = 32'b01111101001011101001110101111100;
#400 //973436.0 * 1.49023e+31 = 1.45065e+37
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110000000110101011010111110000;
b = 32'b01100110110111000000100100101000;
correct = 32'b11010111100001001111100111100011;
#400 //-5.62834e-10 * 5.19545e+23 = -2.92418e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001111111101010111001001000010;
b = 32'b11010101101100110101010011111100;
correct = 32'b01100110001010111111000001011111;
#400 //-8.23581e+09 * -2.46472e+13 = 2.0299e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101011110101011101011011001101;
b = 32'b10111010111010111101001110010100;
correct = 32'b10100111010001001111110011101010;
#400 //1.51942e-12 * -0.00179921 = -2.73376e-15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110111100100000100100100111101;
b = 32'b11111111000100101101010110101111;
correct = 32'b11110111001001011000010001101001;
#400 //1.72002e-05 * -1.95177e+38 = -3.35709e+33
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000111000010101001010101011011;
b = 32'b00110011100000110110100101111111;
correct = 32'b00111011000011100100011100010011;
#400 //35477.4 * 6.11935e-08 = 0.00217098
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001101110011110100111010100011;
b = 32'b11101010000111001100001110001100;
correct = 32'b00111000011111011110010010001011;
#400 //-1.27763e-30 * -4.7379e+25 = 6.05327e-05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101100110000011000001000001100;
b = 32'b00010010110100001111010010001000;
correct = 32'b11000000000111011111001010000001;
#400 //-1.87149e+27 * 1.31869e-27 = -2.46793
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011111110111101110111100110101;
b = 32'b11100111100000101010111001101010;
correct = 32'b11000111111000111001101010111000;
#400 //9.44164e-20 * -1.23425e+24 = -116533.0
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11011011111111010110001110011111;
b = 32'b00111000101101100001000110111001;
correct = 32'b11010101001101000011011001011110;
#400 //-1.42645e+17 * 8.68174e-05 = -1.23841e+13
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011001100111110111011000000101;
b = 32'b10110010010111110100010100111010;
correct = 32'b11001100100010110001001011101101;
#400 //5.61054e+15 * -1.2996e-08 = -7.29148e+07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100011011101001101110111100000;
b = 32'b10110110001000011001001100001001;
correct = 32'b10011010000110101000110000101110;
#400 //1.32743e-17 * -2.40765e-06 = -3.19597e-23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100000011101011110101110111100;
b = 32'b00110010100000010101100110011000;
correct = 32'b11010011011110001000001110110101;
#400 //-7.08819e+19 * 1.50583e-08 = -1.06736e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010000111100010101111000111100;
b = 32'b10010010100101000101110101000101;
correct = 32'b10100100000010111110001001101011;
#400 //3.23959e+10 * -9.36311e-28 = -3.03326e-17
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11110110100000110101111111110011;
b = 32'b10000100001010011100011011100010;
correct = 32'b00111011001011100100000011001111;
#400 //-1.3323e+33 * -1.99572e-36 = 0.00265889
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00000100010001110001101001111100;
b = 32'b00111011110110000111100100111111;
correct = 32'b00000000101010000101110010100101;
#400 //2.34045e-36 * 0.00660625 = 1.54616e-38
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101010100100001110001000011000;
b = 32'b10010101010000000000001000010001;
correct = 32'b11000000010110010101010101111011;
#400 //8.75765e+25 * -3.87757e-26 = -3.39584
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100111100000000000111110001001;
b = 32'b11011011000101011111011001000101;
correct = 32'b01000011000101100000100001111000;
#400 //-3.5544e-15 * -4.22105e+16 = 150.033
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111010000000010011101010000010;
b = 32'b01000111100100101111110111100110;
correct = 32'b01000010000101000110011100010010;
#400 //0.000492968 * 75259.8 = 37.1007
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100100001000111110110111001101;
b = 32'b10001011101101000001100111101111;
correct = 32'b00110000011001101010011110011111;
#400 //-1.20958e+22 * -6.93725e-32 = 8.39117e-10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110001111010010001001011001100;
b = 32'b10011110100110100011101100001101;
correct = 32'b00010001000011000110101100010010;
#400 //-6.78333e-09 * -1.63298e-20 = 1.1077e-28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101110100010001010100100001110;
b = 32'b10010001100100010101011111011000;
correct = 32'b10000000100110110010110101001011;
#400 //6.21459e-11 * -2.29311e-28 = -1.42507e-38
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010100111000101100000001011010;
b = 32'b01101011110010000001111101011110;
correct = 32'b01000001001100010100001000001111;
#400 //2.2896e-26 * 4.83867e+26 = 11.0786
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111001101000100001000001010101;
b = 32'b00010111110110001010011010101100;
correct = 32'b11010010000010010010011101001011;
#400 //-1.05185e+35 * 1.40007e-24 = -1.47267e+11
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000111011001011001011010110010;
b = 32'b11100100001000000100110100000010;
correct = 32'b00101100000011111100001100111111;
#400 //-1.72723e-34 * -1.18281e+22 = 2.04299e-12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010010100001110100111111010000;
b = 32'b11010110111111101001100011001111;
correct = 32'b11101010000001101001000111110101;
#400 //2.9058e+11 * -1.39966e+14 = -4.06713e+25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111000011110110100111111111110;
b = 32'b01011111000011101001111110111000;
correct = 32'b01011000000011000000001100101010;
#400 //5.99176e-05 * 1.02771e+19 = 6.15781e+14
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00001110000011110101010010111100;
b = 32'b01111001100000101010000101001111;
correct = 32'b01001000000100100100011010110000;
#400 //1.76669e-30 * 8.47838e+34 = 149787.0
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011101011010001011011010101101;
b = 32'b00100011101110110111100001101111;
correct = 32'b01000001101010100110101011101011;
#400 //1.04805e+18 * 2.03256e-17 = 21.3022
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111000010111110000011001110111;
b = 32'b00101100110110101001001001110010;
correct = 32'b11100101101111100110101100010110;
#400 //-1.8094e+34 * 6.21219e-12 = -1.12403e+23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11100110111011010000011011001001;
b = 32'b10111001000011110101011011011000;
correct = 32'b01100000100001001011011100110011;
#400 //-5.59663e+23 * -0.000136699 = 7.65053e+19
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110111001110111000001101100100;
b = 32'b00101101101000101110100000110110;
correct = 32'b01100101011011101010011001111000;
#400 //3.80322e+33 * 1.85204e-11 = 7.04371e+22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001111010100100010100110000010;
b = 32'b10100111101101000100100110010000;
correct = 32'b00110111100101000000000110010011;
#400 //-3.52594e+09 * -5.00398e-15 = 1.76437e-05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010001011010000101101101010100;
b = 32'b11000010110000101000100000100010;
correct = 32'b01010100101100001001000011000101;
#400 //-6.23728e+10 * -97.2659 = 6.06674e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001110110000100010010100101001;
b = 32'b01110111001011101001101000010000;
correct = 32'b11000110100001000110101000011000;
#400 //-4.78605e-30 * 3.54135e+33 = -16949.0
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101000110001011101100111000111;
b = 32'b00010100010000011010111100001111;
correct = 32'b00111101100101011011000001111010;
#400 //7.47459e+24 * 9.77853e-27 = 0.0730905
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011110011101101110111111101101;
b = 32'b00111001111100010111000110001111;
correct = 32'b01011000111010001110010101101000;
#400 //4.44843e+18 * 0.000460517 = 2.04858e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011011101101001011010100101100;
b = 32'b00000001101000110000110110011101;
correct = 32'b00011101111001100011000111101110;
#400 //1.01729e+17 * 5.98963e-38 = 6.09321e-21
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010000010111100011010010101011;
b = 32'b01101001011010111001110000101101;
correct = 32'b00111010010011001000000111101000;
#400 //4.38224e-29 * 1.78022e+25 = 0.000780134
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110101000000010111011011000001;
b = 32'b10111010100100001000010001101100;
correct = 32'b10110000000100100010101110001001;
#400 //4.82291e-07 * -0.00110258 = -5.31764e-10
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10001010110111001100010111100011;
b = 32'b01101110101011000001011011101100;
correct = 32'b10111010000101000110100010111001;
#400 //-2.12597e-32 * 2.66296e+28 = -0.000566136
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111100011000001101101000001010;
b = 32'b00000011100011110000010000101001;
correct = 32'b11000000011110110011101011100110;
#400 //-4.66999e+36 * 8.40574e-37 = -3.92547
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110011000000011101110101010000;
b = 32'b01001100110001101011001001100101;
correct = 32'b11000000010010011001011101010110;
#400 //-3.02364e-08 * 1.04174e+08 = -3.14986
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100010011010101000001010100100;
b = 32'b00101110110011001010110010111110;
correct = 32'b00010001101110110111111001011001;
#400 //3.17821e-18 * 9.30753e-11 = 2.95813e-28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110110000010110101101011101111;
b = 32'b11111000011101100101101110100010;
correct = 32'b01101111000001100001101101000011;
#400 //-2.07655e-06 * -1.99869e+34 = 4.15039e+28
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111111000000100000011000111001;
b = 32'b00001010110111001101000000010001;
correct = 32'b00001010011000000100111000001101;
#400 //0.507907 * 2.12635e-32 = 1.07999e-32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000000000110101111010001001101;
b = 32'b00010101101101011011111010011110;
correct = 32'b10010110010111000000010000110111;
#400 //-2.42116 * 7.34061e-26 = -1.77728e-25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11101010011000110101111011111000;
b = 32'b00101000100110011101111110111100;
correct = 32'b11010011100010001010101001111001;
#400 //-6.87187e+25 * 1.70834e-14 = -1.17395e+12
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01000011111111100111011010100100;
b = 32'b01110110101011001001100111100000;
correct = 32'b01111011001010111001000010101010;
#400 //508.927 * 1.75038e+33 = 8.90817e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010001111110111110010101000011;
b = 32'b11100111001100011100000001111101;
correct = 32'b01111001101011101110011011101010;
#400 //-1.35235e+11 * -8.3941e+23 = 1.13518e+35
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00111011100011000001000001001101;
b = 32'b10111000111011100110111100100101;
correct = 32'b10110101000000100111001111110111;
#400 //0.0042744 * -0.000113694 = -4.85975e-07
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011011010010010100000100000010;
b = 32'b10001010101110011010110101101111;
correct = 32'b10100110100100011111100001010011;
#400 //5.66479e+16 * -1.78801e-32 = -1.01287e-15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100111111011000111010111100110;
b = 32'b11110110000000000110010001010111;
correct = 32'b01011110011011010010111101000011;
#400 //-6.5631e-15 * -6.51025e+32 = 4.27274e+18
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100010011111010111000111010000;
b = 32'b01001111100000110101000100111100;
correct = 32'b00110010100000100000000110101010;
#400 //3.43481e-18 * 4.40628e+09 = 1.51347e-08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111010100000100011001110101010;
b = 32'b00111000101000111111011110011111;
correct = 32'b01110011101001101100100110101100;
#400 //3.38023e+35 * 7.81857e-05 = 2.64286e+31
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10101010010101001011111111010001;
b = 32'b10101111101100111111111001101000;
correct = 32'b00011010100101011001010110001100;
#400 //-1.88959e-13 * -3.27407e-10 = 6.18666e-23
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011101111100010101100110001011;
b = 32'b10011000100001011001110000001011;
correct = 32'b10110110111110111110110101000100;
#400 //2.17389e+18 * -3.45373e-24 = -7.508e-06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10100001010000110111011100100110;
b = 32'b11100001100110010111100000101001;
correct = 32'b01000011011010100101101111101010;
#400 //-6.62263e-19 * -3.53876e+20 = 234.359
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00010111001010011011011000101011;
b = 32'b00111011010101111010000010000001;
correct = 32'b00010011000011101111001001100101;
#400 //5.48368e-25 * 0.00329021 = 1.80424e-27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01001111000011110011001101000010;
b = 32'b01100000001000100101011111110111;
correct = 32'b01101111101101011001111101001001;
#400 //2.4025e+09 * 4.67924e+19 = 1.12419e+29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00011101001110100101110101111100;
b = 32'b11001000110010101011000000010100;
correct = 32'b10100110100100111000110111110011;
#400 //2.46652e-21 * -415105.0 = -1.02386e-15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111010011000000011001011000001;
b = 32'b10110001110010001111001011001111;
correct = 32'b11101100101011111111110001001100;
#400 //2.91026e+35 * -5.84837e-09 = -1.70203e+27
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00100110101000001001011010001111;
b = 32'b10110101001111000010100011001011;
correct = 32'b10011100011011000001000001010000;
#400 //1.1143e-15 * -7.00948e-07 = -7.81069e-22
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101100110000000010101010111110;
b = 32'b00001010000010001101111110111110;
correct = 32'b00110111010011010111110101010010;
#400 //1.85852e+27 * 6.59024e-33 = 1.22481e-05
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11000011010110110000111111001110;
b = 32'b10101111010000101010001111111110;
correct = 32'b00110011001001101000111001001111;
#400 //-219.062 * -1.77025e-10 = 3.87793e-08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01101110001111001111000100001111;
b = 32'b01000110101110000100000011101011;
correct = 32'b01110101100001111111110100101100;
#400 //1.46187e+28 * 23584.5 = 3.44773e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01110010001101101011101100101110;
b = 32'b00111111101001000110100110110011;
correct = 32'b01110010011010101011011010111000;
#400 //3.61936e+30 * 1.28448 = 4.64898e+30
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010111000100010011101011010000;
b = 32'b10011011001110011000011110001110;
correct = 32'b00110010110100101000000011001110;
#400 //-1.59682e+14 * -1.53466e-22 = 2.45058e-08
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10000010000100110001101101001111;
b = 32'b11010100001101001010111000100110;
correct = 32'b00010110110011111010011010001100;
#400 //-1.08077e-37 * -3.10406e+12 = 3.35478e-25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10011110010000100111001001110001;
b = 32'b10110001010001000111010110010000;
correct = 32'b00010000000101010011100011101010;
#400 //-1.02939e-20 * -2.85886e-09 = 2.94289e-29
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01010010110001100011010001011010;
b = 32'b10100111101000010001001001001011;
correct = 32'b10111010111110010110101000101101;
#400 //4.25641e+11 * -4.47063e-15 = -0.00190288
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11111000011100000011110100000010;
b = 32'b00111101000100010111110010010100;
correct = 32'b11110110000010001000011101110111;
#400 //-1.94904e+34 * 0.0355192 = -6.92285e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110010110111111101010010110110;
b = 32'b10100010111010101111100101110000;
correct = 32'b10010110010011010111001010000110;
#400 //2.60573e-08 * -6.36899e-18 = -1.65959e-25
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11010100011011110001011000101011;
b = 32'b10110101011111101101011101110110;
correct = 32'b01001010011011100000000100111000;
#400 //-4.10748e+12 * -9.49359e-07 = 3.89947e+06
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00101111010000111010001110101110;
b = 32'b11110001110101111101011100000000;
correct = 32'b11100001101001001111001011000110;
#400 //1.77933e-10 * -2.13757e+30 = -3.80345e+20
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b11001101100001100101110110001111;
b = 32'b01100111011111010100101111010111;
correct = 32'b11110101100001001111001001000101;
#400 //-2.81785e+08 * 1.19616e+24 = -3.37059e+32
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b00110111100101111010010101011110;
b = 32'b11001000101100001010011100011001;
correct = 32'b11000000110100010100100101011001;
#400 //1.80776e-05 * -361785.0 = -6.5402
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b10110111100100100111100011001001;
b = 32'b01010111011100010001101010111001;
correct = 32'b11001111100010011111001011111111;
#400 //-1.74608e-05 * 2.65097e+14 = -4.62881e+09
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01011010011100101000011001010110;
b = 32'b00111110001100110011010111001011;
correct = 32'b01011001001010011100011011100100;
#400 //1.70662e+16 * 0.17501 = 2.98675e+15
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b",correct[31], correct[30:23], correct[22:0]); end
a = 32'b01111000001101001100101101011010;
b = 32'b10111011101111000111010000100011;
correct = 32'b11110100100001010001011101011011;
#400 //1.46678e+34 * -0.00575115 = -8.43566e+31
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