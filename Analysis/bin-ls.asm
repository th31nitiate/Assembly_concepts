; HelloWorld.asm
; Author: Vivek Ramachandran
;
;nasm -f elf32 -o HelloWorld.o HelloWorld.asm
;ld -m elf_i386 -o HelloWorld HelloWorld.o
;
;Procedure names are case sensitive
;Investigate why we get seg fault when not using c shellcode programe
;It is due to the env variable in execve parameter. Using 0 should set the default env.


global _start

section .text

_start:
	; PUSH the first null dword
	xor eax, eax
	push eax

	; PUSH ////bin/bash (12)
	push 0x736c2f2f
	push 0x6e69622f

	mov ebx, esp

	push eax
	mov edx, esp

	push ebx
	mov ecx, esp

	mov al, 11
	int 0x80
