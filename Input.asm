section .data
	txt db "hello", 10

section .bss
	name resb 16

section .text
	global start

start:
	mov rax, 0
	mov rdi, 0
	mov rsi, name
	mov rdx, 16
	syscall
	call _printText
	mov rax, 60
	mov rdi, 0
	syscall

_printText:
	mov rax, 1
	mov rdi, 1
	mov rsi, name
	mov rdx, 19
	syscall
	ret
