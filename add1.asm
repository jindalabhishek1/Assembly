section .data
	number db 0, 10
section .text
	global _start

_start:
	push 3
	push 4
	push 8
	pop rax
	pop rax
	pop rax
	call _printRAX
	mov rax, 60
	mov rdi, 0
	syscall

_printRAX:
	add rax, 48
	add [number], al
	;incomplete..
