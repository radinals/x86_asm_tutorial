global _start

section .text
_start:
	; db is 1 byte
	name1 db "string"
	name2 db 0xFF ; hexadecimal
	name3 db 100 ; literal decimal

	; dw is 2 bytes
	name4 dw 1000

	; dd is 4 bytes
	name5 dd 100000
