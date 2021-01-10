; Issues compiling this on  64bit architecture due to lib mismatch
;
;ld -I/lib/i386-linux-gnu/ld-linux.so.2 -lc -e main -s -o Libc Libc.o -m elf_i386
;
;gcc was reconmended for compiling the object file to elf binary though a 32bit system should be the simplest method
;
;

extern printf
extern exit

global main

section .text
main:
	push message
	call printf
	add esp, 0x4 ; adjusting the stack frame

	mov eax, 0xa
	call exit

section .data
	message: db "Hello World!", 0xA, 0x00
	mlen	 equ $-message
