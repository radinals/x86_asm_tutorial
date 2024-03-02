global _start

section .data
	msg db "HelloWorld", 0x0a
	len equ $ - msg

section .text

_start:
	mov eax, 4 ; 4 == sys write sycall
	mov ebx, 1 ; stdout file descriptor
	mov ecx , msg ; bytes to write
	mov edx, len ; number of bytes to write
	int 0x80 ; perform syscall (printout/write)

	mov eax, 1 ; sys exit syscall
	mov ebx, 0 ; exit status 0
	int 0x80 ; perform syscall (exit)

	; mov eax, 1  ; eax = 123
	; mov ebx, 42 ; ebx = 42
	;
	; mov eax, ebx ; eax = ebx
	;
	; sub ebx, 29 ; ebx = ebx - 29
	;
	; add ebx, 100 ; ebx = ebx + 100
	;
	; mul ebx ; eax = eax * ebx
	; div ebx ; eax = eax * ebx
	;
	; ; eax = 1 = exit,
	; ; ebx is the exit code
	; int 0x80
