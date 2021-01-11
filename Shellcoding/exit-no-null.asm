; objdump -d exit-no-null -M intel
global _start

section .text
_start:
	xor eax, eax
	mov al, 1
	xor ebx, ebx
	mov bl, 0xa
	int 0x80
