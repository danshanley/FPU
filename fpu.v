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
	reg [24:0] o_mantissa;

	reg [7:0] diff;
	reg [23:0] tmp_mantissa;
	reg [7:0] tmp_exponent;
	reg [49:0] product;
	reg [49:0] quotient;

	reg  [7:0] i_e1;
	reg  [24:0] i_m1;
	wire [7:0] o_e1;
	wire [24:0] o_m1;
	normaliser normie1
	(
		.in_e(i_e1),
		.in_m(i_m1),
		.out_e(o_e1),
		.out_m(o_m1)
	);

	reg  [7:0] i_e2;
	reg  [24:0] i_m2;
	wire [7:0] o_e2;
	wire [24:0] o_m2;
	normaliser normie2
	(
		.in_e(i_e2),
		.in_m(i_m2),
		.out_e(o_e2),
		.out_m(o_m2)
	);

	reg  [7:0] i_e3;
	reg  [24:0] i_m3;
	wire [7:0] o_e3;
	wire [24:0] o_m3;
	normaliser normie3
	(
		.in_e(i_e3),
		.in_m(i_m3),
		.out_e(o_e3),
		.out_m(o_m3)
	);

	assign outp[31] = o_sign;
	assign outp[30:23] = o_exponent;
	assign outp[22:0] = o_mantissa[22:0];

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
			//If a is NaN or b is zero return a
			if ((a_exponent == 255 && a_mantissa != 0) || (b_exponent == 0) && (b_mantissa == 0)) begin
				o_sign = a_sign;
				o_exponent = a_exponent;
				o_mantissa = a_mantissa;
			//If b is NaN or a is zero return b
			end else if ((b_exponent == 255 && b_mantissa != 0) || (a_exponent == 0) && (a_mantissa == 0)) begin
				o_sign = b_sign;
				o_exponent = b_exponent;
				o_mantissa = b_mantissa;
			//if a is inf return inf
			end else if (a_exponent == 255) begin
				o_sign = a_sign;
				o_exponent = 255;
				o_mantissa = 0;
			//if b is inf return inf
			end else if (b_exponent == 255) begin
				o_sign = b_sign;
				o_exponent = 255;
				o_mantissa = 0;
			end else begin // Passed all corner cases
				if (a_exponent == b_exponent) begin // Equal exponents
					o_exponent = a_exponent;
					if (a_sign == b_sign) begin // Equal signs = add
						o_exponent = o_exponent + 1;
						o_mantissa = {a_mantissa + b_mantissa} >> 1;
						o_sign = a_sign;
					end else begin // Opposite signs = subtract
						if(a_mantissa > b_mantissa) begin
							o_mantissa = a_mantissa - b_mantissa;
							o_sign = a_sign;
						end else begin
							o_mantissa = b_mantissa - a_mantissa;
							o_sign = b_sign;
						end
						if(o_mantissa[24] == 1) begin
							o_exponent = o_exponent + 1;
							o_mantissa = o_mantissa >> 1;
						end else if(o_mantissa[23] != 1) begin
							i_e1 = o_exponent;
							i_m1 = o_mantissa;
							o_exponent = o_e1;
							o_mantissa = o_m1;
						end
					end
				end else begin //Unequal exponents
					if (a_exponent > b_exponent) begin // A is bigger
						o_exponent = a_exponent;
						o_sign = a_sign;
						diff = a_exponent - b_exponent;
						tmp_mantissa = b_mantissa >> diff;
						if (a_sign == b_sign) begin
							o_mantissa = a_mantissa + tmp_mantissa;
						end else begin
							o_mantissa = a_mantissa - tmp_mantissa;
						end
					end else if (a_exponent < b_exponent) begin // B is bigger
						o_exponent = b_exponent;
						o_sign = b_sign;
						diff = b_exponent - a_exponent;
						tmp_mantissa = a_mantissa >> diff;
						if (a_sign == b_sign) begin
							o_mantissa = b_mantissa + tmp_mantissa;
						end else begin
							o_mantissa = b_mantissa - tmp_mantissa;
						end
					end
					if(o_mantissa[24] == 1) begin
						o_exponent = o_exponent + 1;
						o_mantissa = o_mantissa >> 1;
					end else if(o_mantissa[23] != 1) begin
						i_e2 = o_exponent;
						i_m2 = o_mantissa;
						o_exponent = o_e2;
						o_mantissa = o_m2;
					end
				end
			end
		end else if (SUB) begin
		  if (a_exponent > b_exponent) begin // A is bigger
		    o_exponent = a_exponent;
		    diff = a_exponent - b_exponent;
		    tmp_mantissa = {b_mantissa >> diff};
		    if (a_sign == ~b_sign) begin
		      o_mantissa = a_mantissa + tmp_mantissa;
		    end else begin
		      o_mantissa = a_mantissa - tmp_mantissa;
		    end
		    o_sign = a_sign;
		  end else if (a_exponent < b_exponent) begin // B is bigger
		    o_exponent = b_exponent;
		    diff = b_exponent - a_exponent;
		    tmp_mantissa = {a_mantissa >> diff};
		    if (a_sign == ~b_sign) begin
		      o_mantissa = b_mantissa + tmp_mantissa;
		    end else begin
	      	o_mantissa = b_mantissa - tmp_mantissa;
		    end
				o_sign = ~b_sign;
		  end else begin
		    if (a_sign == ~b_sign) begin
		      o_mantissa = {a_mantissa + b_mantissa} >> 1;
		      o_exponent = a_exponent;
					o_sign = a_sign;
		    end else begin
		      if(a_mantissa > b_mantissa) begin
		        o_mantissa = a_mantissa - b_mantissa;
						o_sign = a_sign;
		      end else begin
		        o_mantissa = b_mantissa - a_mantissa;
						o_sign = ~b_sign;
		      end
		      o_exponent = a_exponent;
		    end
		  end
		end else if (DIV) begin

		end else begin //Multiplication
			o_sign = a_sign ^ b_sign;
			o_exponent = a_exponent + b_exponent - 127;
			product = a_mantissa * b_mantissa;
			if(product[49] == 0 && product[48] == 0 && product[47] == 0) begin
				product = product << 2;
				o_mantissa = product[49:25];
			end else if (product[49] == 0 && product[48] == 0) begin
				product = product << 1;
				o_mantissa = product[49:25];
				o_exponent = o_exponent + 1;
			end else begin
				o_mantissa = product[49:25];
			end
		end
	end
endmodule

module normaliser(in_e, in_m, out_e, out_m);
  input [7:0] in_e;
  input [24:0] in_m;
  output [7:0] out_e;
  output [24:0] out_m;

  wire [7:0] in_e;
  wire [24:0] in_m;
  reg [7:0] out_e;
  reg [24:0] out_m;

  always @ ( * ) begin
		if (in_m[23:3] == 21'b000000000000000000001) begin
			out_e = in_e - 20;
			out_m = in_m << 20;
		end else if (in_m[23:4] == 20'b00000000000000000001) begin
			out_e = in_e - 19;
			out_m = in_m << 19;
		end else if (in_m[23:5] == 19'b0000000000000000001) begin
			out_e = in_e - 18;
			out_m = in_m << 18;
		end else if (in_m[23:6] == 18'b000000000000000001) begin
			out_e = in_e - 17;
			out_m = in_m << 17;
		end else if (in_m[23:7] == 17'b00000000000000001) begin
			out_e = in_e - 16;
			out_m = in_m << 16;
		end else if (in_m[23:8] == 16'b0000000000000001) begin
			out_e = in_e - 15;
			out_m = in_m << 15;
		end else if (in_m[23:9] == 15'b000000000000001) begin
			out_e = in_e - 14;
			out_m = in_m << 14;
		end else if (in_m[23:10] == 14'b00000000000001) begin
			out_e = in_e - 13;
			out_m = in_m << 13;
		end else if (in_m[23:11] == 13'b0000000000001) begin
			out_e = in_e - 12;
			out_m = in_m << 12;
		end else if (in_m[23:12] == 12'b000000000001) begin
			out_e = in_e - 11;
			out_m = in_m << 11;
		end else if (in_m[23:13] == 11'b00000000001) begin
			out_e = in_e - 10;
			out_m = in_m << 10;
		end else if (in_m[23:14] == 10'b0000000001) begin
			out_e = in_e - 9;
			out_m = in_m << 9;
		end else if (in_m[23:15] == 9'b000000001) begin
			out_e = in_e - 8;
			out_m = in_m << 8;
		end else if (in_m[23:16] == 8'b00000001) begin
			out_e = in_e - 7;
			out_m = in_m << 7;
		end else if (in_m[23:17] == 7'b0000001) begin
			out_e = in_e - 6;
			out_m = in_m << 6;
		end else if (in_m[23:18] == 6'b000001) begin
			out_e = in_e - 5;
			out_m = in_m << 5;
		end else if (in_m[23:19] == 5'b00001) begin
			out_e = in_e - 4;
			out_m = in_m << 4;
		end else if (in_m[23:20] == 4'b0001) begin
			out_e = in_e - 3;
			out_m = in_m << 3;
		end else if (in_m[23:21] == 3'b001) begin
			out_e = in_e - 2;
			out_m = in_m << 2;
		end else if (in_m[23:22] == 2'b01) begin
			out_e = in_e - 1;
			out_m = in_m << 1;
		end
  end
endmodule
