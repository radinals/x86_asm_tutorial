global _start

section .text

_start:
	sub esp, 4

	mov [esp], byte 'H'
	mov [esp+1], byte 'e'
	mov [esp+2], byte 'y'
	mov [esp+3], byte '!'

	mov eax, 4 ; syswrite syscall
	mov ebx, 1 ; to stdout file
	mov ecx, esp ; mov the pointer to the bytes to ecx
	mov edx, 4 ; number of bytes to write
	int 0x80

	mov eax, 1
	mov ebx, 0
	int 0x80
