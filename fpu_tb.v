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
 op = 2'b10;
 a = 32'b00111110000100110111100110001011;
 b = 32'b00111110101010100111100110111110;
 correct = 32'b00111110110111010111010111001101;
 #400 //0.14401833816256182 * 0.3329600674608325 = 0.4325393710448575
 if (correct - out > 1) begin
 $display ("A     : %b B      : %b", a, b);
 $display ("Output: %b Correct: %b", out, correct); end

 a = 32'b00111111011010011100011001000011;
 b = 32'b00111101100100110000111100100100;
 correct = 32'b01000001010010110111101000010011;
 #400 //0.9131814553350508 * 0.0718062205256188 = 12.717302883379702
 if (correct - out > 1) begin
 $display ("A     : %b B      : %b", a, b);
 $display ("Output: %b Correct: %b", out, correct); end

 a = 32'b00111101001011010010010011111001;
 b = 32'b00111110111010111101110100001111;
 correct = 32'b00111101101110111110110100100111;
 #400 //0.04227158787494145 * 0.4606709036037373 = 0.09176092421782923
 if (correct - out > 1) begin
 $display ("A     : %b B      : %b", a, b);
 $display ("Output: %b Correct: %b", out, correct); end

 a = 32'b00111111010010110111011000010000;
 b = 32'b00111111010110011101110100110111;
 correct = 32'b00111111011011110001001101101111;
 #400 //0.7947702289390305 * 0.8510317055794674 = 0.9338902695732958
 if (correct - out > 1) begin
 $display ("A     : %b B      : %b", a, b);
 $display ("Output: %b Correct: %b", out, correct); end

 a = 32'b00111111001010101010000010001100;
 b = 32'b00111110110011100001101000100101;
 correct = 32'b00111111110100111110111110111001;
 #400 //0.6665122471930868 * 0.4025432143361197 = 1.655753279290296
 if (correct - out > 1) begin
 $display ("A     : %b B      : %b", a, b);
 $display ("Output: %b Correct: %b", out, correct); end
 $finish;
 // stop the simulation
 end

endmodule
