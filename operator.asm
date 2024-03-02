global _start

_start:
	mov eax, 1  ; eax = 123
	mov ebx, 42 ; ebx = 42

	mov eax, ebx ; eax = ebx

	sub ebx, 29 ; ebx = ebx - 29

	add ebx, 100 ; ebx = ebx + 100

	mul ebx ; eax = eax * ebx
	div ebx ; eax = eax * ebx

	; eax = 1 = exit,
	; ebx is the exit code
	int 0x80
