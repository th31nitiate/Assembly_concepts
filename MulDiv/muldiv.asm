global _start

section .text
_start:
	; unsigned multiplication
	mov eax, 0x0

	mov al, 0x10
	mov bl, 0x2
	mul bl

	mov al, 0xFF
	mul bl

	mov eax, 0x11223344
	mov ebx, 0x00000002
	mul ebx

	mov eax, 0x11223344
	mov ebx, 0x55667788
	mul ebx

	; 16 bit multiplication
	mov eax, 0
	mov ax, 0x1122
	mov bx, 0x0002
	mul bx

	mov ax, 0x1122
	mov bx, 0x1122
	mul bx

	; signed interger multiplcatyion 
	mov eax, 0
    	mov  al, -4
    	mov  bl, 4
    	imul bl

	;
	mov eax, 0
	mov  ax, 48
    	mov  bx, 4
    	imul bx  


	; multiply using memory location
	mul byte [var1]
	mul word [var2]
	mul dword [var3]

	; division using 16bit registers
	mov dx, 0x0
	mov ax, 0x7788
	mov cx, 0x2
	div cx

	mov ax, 0x7788 + 0x1
	mov cx, 0x2
	div cx
	
	; exit program
	mov eax, 1
	mov edx, 10
	int 0x80


section .data

	var1 db 0x05
	var2 dw 0x1122
	var3 dd 0x11223344
