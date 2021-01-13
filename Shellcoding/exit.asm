;https://deceiveyour.team/2018/08/27/linux-x86-two-byte-shift-encoder/

global _start

section .text
_start:
	mov eax, 0x10
	mov ebx, 0xa
	int 0x80
