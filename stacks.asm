global _start

section .data

; label named "addr" points to the string "yellow" in memory
addr db "yellow"

section .text

_start:
	; move the byte of the charcter 'H' to addr
	mov [addr], byte 'H'

	; move the byte of the charcter '!' to addr,
	; offset by 5
	mov [addr+5], byte '!'

	mov eax, 4 ; system write
	mov ebx, 1 ; write to stdout
	mov ecx, addr ; place the string to ecx
	mov edx, 6 ; bytes to write
	int 0x80 ; execute syscall


	mov eax, 1 ; sys exit call
	mov ebx, 0 ; exit status
	int 0x80 ; execute syscall
