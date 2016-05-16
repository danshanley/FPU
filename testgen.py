import struct, random
def binary(num):
    return ''.join(bin(c).replace('0b', '').rjust(8, '0') for c in struct.pack('!f', num))

for n in range (0, 100):
    a = random.random()
    b = random.random()
    sum = a + b
    print("a = 32'b" + binary(a) + ";")
    print("b = 32'b" + binary(b) + ";")
    print("#50")
    print("if (out != 32'b" + binary(sum) + ") $display (\"Error\");")