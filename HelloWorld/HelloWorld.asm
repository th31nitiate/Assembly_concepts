; HelloWorld.asm
; Author: Vivek Ramachandran
;
;nasm -f elf32 -o HelloWorld.o HelloWorld.asm
;ld -m elf_i386 -o HelloWorld HelloWorld.o

global _start

section .text

_start:
	; print hello world to the screen
	mov eax, 0x4
	mov ebx, 0x1
	mov ecx, message
	mov edx, mlen ; 0x11
	int 0x80

	mov eax, 0x1
	mov ebx, 0x5
	int 0x80

section .data
	message: db "Hello World!"
	mlen	equ  $-message
