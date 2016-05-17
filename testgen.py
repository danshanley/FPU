import struct, random, sys
def binary(num):
    return ''.join(bin(c).replace('0b', '').rjust(8, '0') for c in struct.pack('!f', num))
numTests = int(sys.argv[1])
op = str(sys.argv[2])
if(op == "ADD"):
    print("op = 2'b00;")
elif(op == "SUB"):
    print("op = 2'b01;")
elif(op == "DIV"):
    print("op = 2'b10;")
elif(op == "MULT"):
    print("op = 2'b11;")
for n in range (0, numTests):
    a = random.random()
    b = random.random()
    if(op == "ADD"):
        result = a + b
    elif(op == "SUB"):
        result = a - b
    elif(op == "DIV"):
        result = a / b
    elif(op == "MULT"):
        result = a * b
    print("a = 32'b" + binary(a) + ";")
    print("b = 32'b" + binary(b) + ";")
    print("correct = 32'b" + binary(result) + ";")
    print("#400 //" + str(a) + " * " + str(b) + " = " + str(result))
    print("if (correct - out > 1) begin")
    print("$display (\"A     : %b B      : %b\", a, b);")
    print("$display (\"Output: %b Correct: %b\", out, correct); end\n")
