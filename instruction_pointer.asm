global _start

section .text

_start:
	;mov ecx, 99
	mov ecx, 1000

	mov ebx, 42
	mov eax, 1

	cmp ecx, 100 ; enable comparison on ecx register value with 100

	; conditional jump (if less than) (<)
	jl skip

	; conditional jump (if greater than) (>)
	; jg skip

	; conditional jump (if equal to) (==)
	; je skip

	; conditional jump (if NOT equal to) (!=)
	; jne skip

	; conditional jump (if greater or equal than) (>=)
	; jle skip

	; conditional jump (if less or equal than) (<=)
	; jle skip

	; non condition jump
	; jmp skip ; jump to the label "skip"

	mov ebx, 13 ; got skipped

; label skip
skip:
	int 0x80
