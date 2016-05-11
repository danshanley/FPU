//IEEE 754 Single Precision ALU
module fpu(clk, A, B, opcode, outp);
	input clk;
	input [31:0] A, B;
	input [1:0] opcode;
	output [31:0] outp;

	wire [31:0] outp;
	wire [7:0] a_exponent;
	wire [23:0] a_mantissa;
	wire [7:0] b_exponent;
	wire [23:0] b_mantissa;

	reg o_sign;
	reg [7:0] o_exponent;
	reg [22:0] o_mantissa;

	reg [7:0] diff;
	reg [23:0] tmp_mantissa;

	assign outp[31] = o_sign;
	assign outp[30:23] = o_exponent;
	assign outp[22:0] = o_mantissa;

	assign ADD = !opcode[1] & !opcode[0];
	assign SUB = !opcode[1] & opcode[0];
	assign DIV = opcode[1] & !opcode[0];
	assign MUL = opcode[1] & opcode[0];

	assign a_sign = A[31];
	assign a_exponent[7:0] = A[30:23];
	assign a_mantissa[23:0] = {1'b1, A[22:0]};

	assign b_sign = B[31];
	assign b_exponent[7:0] = B[30:23];
	assign b_mantissa[23:0] = {1'b1, B[22:0]};

	always @ (posedge clk) begin
		if (ADD) begin
			if (a_exponent < b_exponent) begin
				o_exponent = b_exponent;
				diff = b_exponent - a_exponent;
				tmp_mantissa = {a_mantissa >> diff};
				o_mantissa = b_mantissa + tmp_mantissa;
			end
			else if (b_exponent < a_exponent) begin
				o_exponent = a_exponent;
				diff = a_exponent - b_exponent;
				tmp_mantissa = {b_mantissa >> diff};
				o_mantissa = a_mantissa + tmp_mantissa;
			end
			else begin
				o_mantissa = {a_mantissa + b_mantissa} >> 1;
				o_exponent = a_exponent + 1'b1;
			end
			o_sign = a_sign;
		end
		else if (SUB) begin
			if (a_exponent < b_exponent) begin
				o_exponent = b_exponent;
				diff = b_exponent - a_exponent;
				tmp_mantissa = {a_mantissa >> diff};
				o_mantissa = b_mantissa - tmp_mantissa;
			end
			else if (b_exponent < a_exponent) begin
				o_exponent = a_exponent;
				diff = a_exponent - b_exponent;
				tmp_mantissa = {b_mantissa >> diff};
				o_mantissa = a_mantissa - tmp_mantissa;
			end
			else begin
				o_mantissa = {a_mantissa - b_mantissa} << 1;
				o_exponent = a_exponent - 1'b1;
			end
			o_sign = a_sign;
		end
		else if (DIV) begin
				o_sign = a_sign ^ b_sign;
				o_mantissa = a_mantissa / b_mantissa;
				o_exponent = a_exponent - b_exponent;
		end
		else begin
				o_sign = a_sign ^ b_sign;
				o_mantissa = a_mantissa * b_mantissa;
				o_exponent = a_exponent + b_exponent;
		end
	end
endmodule
