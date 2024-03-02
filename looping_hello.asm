section .data
	msg db "ASM IS HARD!", 0x0A
	len equ $ - msg

global _start


section .text

_start:
	mov ecx, 10

print:
	mov eax, 0x4
	mov ebx, 0x1
	mov edx, len
	mov esi, msg
	int 0x80

	dec ecx
	jnz print

exit:
	mov eax, 1
	xor ebx, ebx
	int 0x80
