import struct, random
def binary(num):
    return ''.join(bin(c).replace('0b', '').rjust(8, '0') for c in struct.pack('!f', num))

for n in range (0, 100):
    x = random.random()
    y = random.random()
    sum = x + y
    print(binary(x) + " + " + binary(y) + " = " + binary(sum))
    print(str(x) + " + " + str(y) + " = " + str(sum))