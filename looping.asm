global _start

section .text

_start:
	mov ebx, 1 ; start ebx at 1
	mov ecx, 4 ; number of iteration

label:
	add ebx, ebx ; ebx += ebx
	dec ecx      ; ecx -= 1

	cmp ecx, 0 ; compare ecx with 0
	jg label    ; jump back if ecx is greater then 0

	mov eax, 1
	int 0x80
