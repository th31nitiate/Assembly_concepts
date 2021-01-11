; HelloWorld.asm
; Author: Vivek Ramachandran
;
;nasm -f elf32 -o HelloWorld.o HelloWorld.asm
;ld -m elf_i386 -o HelloWorld HelloWorld.o
;
;Procedure names are case sensitive



global _start

section .text

_start:
	; print hello world to the screen
	xor eax, eax
	mov al, 0x4

	xor ebx, ebx
	mov bl, 0x1

	
	xor edx, edx
	push edx
	push 0x0a646c72
	push 0x6f57206f
	push 0x6c6c6548
	
	mov ecx, esp

	mov dl, 12
	int 0x80

        ; exit gracefully syscall 

	mov al, 0x1
	mov bl, 0x5
	int 0x80
