import struct, random, sys
def binary(num):
    return ''.join(bin(c).replace('0b', '').rjust(8, '0') for c in struct.pack('!f', num))
numTests = int(sys.argv[1])
op = str(sys.argv[2])
for n in range (0, numTests):
    a = random.random()
    b = random.random()
    if(op == "ADD"):
        result = a + b
    elif(op == "SUB"):
        result = a - b
    elif(op == "DIV"):
        result = a / b
    else:
        result = a * b
    print("a = 32'b" + binary(a) + ";")
    print("b = 32'b" + binary(b) + ";")
    print("correct = 32'b" + binary(result) + ";")
    print("#400")
    print("if (correct - out > 1) $display (\"Output: %b Correct: %b\", out, correct);\n")
