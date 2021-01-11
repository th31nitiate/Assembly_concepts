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
	jmp short Call_Shellcode


shellcode:
	; print hello world to the screen
	xor eax, eax
	mov al, 0x4

	xor ebx, ebx
	mov bl, 0x1

	pop ecx

	xor edx, edx
	mov dl, 13
	int 0x80

	; exit  gravefully syscall

	; mov eax, 0x4
	; mov ebx, 0x1
	; mov ecx, message
	; mov edx, mlen ; 0x11
	; int 0x80

        ; exit gracefully syscall 

	mov al, 0x1
	mov bl, 0x5
	int 0x80

Call_Shellcode:
	call shellcode
	message: db "Hello World!", 0xA
