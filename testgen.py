import struct, sys
import numpy as np

np.seterr(all='raise')

def binary(num):
    return ''.join(bin(c).replace('0b', '').rjust(8, '0') for c in struct.pack('!f', num))

f = open("fpu_tb.v", 'w')
op = str(sys.argv[1])
numTests = int(sys.argv[2])

f.write("//-----------------------------------------------------------\n// File: fpu_tb.v\n// FPU Test Bench\n//-----------------------------------------------------------\n`timescale 1 ns/100 ps\nmodule fpu_tb ();\n //----------------------------------------------------------\n // inputs to the DUT are reg type\n reg clock;\n reg [31:0] a, b;\n reg [1:0] op;\n reg [31:0] correct;\n //----------------------------------------------------------\n // outputs from the DUT are wire type\n wire [31:0] out;\n wire [49:0] pro;\n //----------------------------------------------------------\n // instantiate the Device Under Test (DUT)\n // using named instantiation\n fpu U1 (\n          .clk(clock),\n          .A(a),\n          .B(b),\n          .opcode(op),\n          .O(out)\n        );\n //----------------------------------------------------------\n // create a 10Mhz clock\n always\n #100 clock = ~clock; // every 100 nanoseconds invert\n //----------------------------------------------------------\n // initial blocks are sequential and start at time 0\n initial\n begin\n $dumpfile(\"fpu_tb.vcd\");\n $dumpvars(0,clock, a, b, op, out);\n clock = 0;")

if(op == "ADD"):
    f.write("op = 2'b00;\n")
elif(op == "SUB"):
    f.write("op = 2'b01;\n")
elif(op == "DIV"):
    f.write("op = 2'b10;\n")
elif(op == "MULT"):
    f.write("op = 2'b11;\n")
for n in range (0, numTests):
    #If we get a FloatingPointError: invalid value encountered in add
    #then decrement n and try again
    try:
        byte = np.random.bytes(4)
        a = np.fromstring(byte, dtype=np.float32)
        byte = np.random.bytes(4)
        b = np.fromstring(byte, dtype=np.float32)
        if(op == "ADD"):
            result = a + b
        elif(op == "SUB"):
            result = a - b
        elif(op == "DIV"):
            result = a / b
        elif(op == "MULT"):
            result = a * b
        f.write("a = 32'b" + binary(a) + ";\n")
        f.write("b = 32'b" + binary(b) + ";\n")
        f.write("correct = 32'b" + binary(result) + ";\n")
        f.write("#400 //" + str(a[0]) + " * " + str(b[0]) + " = " + str(result[0]) + "\n")
        if(op == "ADD"):
            f.write("if ((correct - out > 2) && (out - correct > 2)) begin\n")
        elif(op == "SUB"):
            f.write("if ((correct - out > 2) && (out - correct > 2)) begin\n")
        elif(op == "DIV"):
            f.write("if (correct[31:12] != out[31:12]) begin\n")
        elif(op == "MULT"):
            f.write("if ((correct - out > 2) && (out - correct > 2)) begin\n")
        f.write("$display (\"A      : %b %b %b\", a[31], a[30:23], a[22:0]);\n")
        f.write("$display (\"B      : %b %b %b\", b[31], b[30:23], b[22:0]);\n")
        f.write("$display (\"Output : %b %b %b\", out[31], out[30:23], out[22:0]);\n")
        f.write("$display (\"Correct: %b %b %b\",correct[31], correct[30:23], correct[22:0]); end\n")
    except:
        n -= 1
f.write("$display (\"Done.\");\n$finish;\n // stop the simulation\n end\n\nendmodule")
