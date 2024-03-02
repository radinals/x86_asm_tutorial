section .text

global _start ; nyatakan program mulai di label _start

_start:

  mov ebx, 3 ; simpan nilai 3 di register 32 bit ebx
  mov ecx, 2 ; simpan nilai 2 di register 32 bit ecx

  ; pertambahan nilai ebx dengan ecx ( ebx = ( 3 + 2 ) = 5 )
  add ebx, ecx

  ; pertambahan nilai ebx dengan ecx ( ebx = ( 5 + 2 ) = 3 )
  sub ebx, ecx

  ; perkalian nilai ebx dengan ecx ( ebx = (3 * 2) = 6)
  imul ebx, ecx

  ; pembagian nilai ebx dengan ecx ( ebx = (6 / 2) = 3)
  mov eax, ebx
  idiv ecx
  mov ebx, eax

  ; menentukan syscall apa yang dijalankan sata interupt
  mov eax, 1  ; 1 berarti exit

  ; sebabkan interupt,
  int 0x80
