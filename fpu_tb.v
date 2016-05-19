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
 wire [49:0] pro;
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
 clock = 0;op = 2'b01;
a = 32'b00111111000010010100011101011100;
b = 32'b00111100101011100110111111111010;
correct = 32'b00111111000000111101001111011100;
#400 //0.5362451039587689 * 0.021293629359135813 = 0.5149514745996331
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); end

a = 32'b00111110111000010110000011110000;
b = 32'b00111111000000101111000001110000;
correct = 32'b10111101100100011111111111000100;
#400 //0.44019268924200305 * 0.5114813029775083 = -0.07128861373550521
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); end

a = 32'b00111111010001000010000000110100;
b = 32'b00111101110100110000000101010010;
correct = 32'b00111111001010011100000000001001;
#400 //0.766116365177169 * 0.10302986351257493 = 0.663086501664594
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); end

a = 32'b00111101101000111100100000010101;
b = 32'b00111110010101001101111111100000;
correct = 32'b10111110000000101111101111010110;
#400 //0.07997146651550491 * 0.20788527264106538 = -0.12791380612556047
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); end

a = 32'b00111111011110011010010110111100;
b = 32'b00111111011001101101010100100001;
correct = 32'b00111101100101101000010011011100;
#400 //0.9751851626194548 * 0.901689568008967 = 0.07349559461048771
if ((correct - out > 2) && (out - correct > 2)) begin
$display ("A      : %b %b %b", a[31], a[30:23], a[22:0]);
$display ("B      : %b %b %b", b[31], b[30:23], b[22:0]);
$display ("Output : %b %b %b", out[31], out[30:23], out[22:0]);
$display ("Correct: %b %b %b", correct[31], correct[30:23], correct[22:0]); end
 $finish;
 // stop the simulation
 end

endmodule
