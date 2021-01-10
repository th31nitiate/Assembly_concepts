global _start

section .text

_start:
	mov eax, 0x11223344
	mov ecx, 0xAABBCCDD
	mov edx, 0x44332211

	push eax
	push ecx
	push edx

	pop edx
	pop eax
	pop ecx

	mov eax, 0x1
	mov ebx, 0x5
	int 0x80

