#!/bin/env bash

asm_file="$1"

[ ! -f  "$asm_file" ] && exit 1

nasm -f elf32 "$asm_file" -o "${asm_file%.*}.o" && \
	ld -m elf_i386 "${asm_file%.*}.o" -o "${asm_file%.*}.bin" || \
	echo "FAILED TO BUILD!"
