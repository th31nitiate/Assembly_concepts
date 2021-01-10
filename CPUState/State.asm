global _start

section .text

HelloWorldProc:
	push ebp
	mov ebp, esp
	
	; Print hello world using write syscall
	mov eax, 0x4
	mov ebx, 1
	mov ecx, message
	mov edx, mlen
	int 0x80 ; signifies end of procedure


	leave
	ret

_start:
	mov ecx, 0x10

PrintHelloWorld:
	pushad
	pushfd
	call HelloWorldProc
	popfd
	popad

	loop PrintHelloWorld

	mov eax, 1
	mov ebx, 10
	int 0x80

section .data
	message: db "Hello World!"
	mlen: equ $-message 
