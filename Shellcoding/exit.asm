global _start

section .text
_start:
	mov eax, 0x10
	mov ebx, 0xa
	int 0x80
