section .data
	ques db "What is your name?", 10
	txt db "Hello! ", 10
	

section .bss
	name resb 16

section .text
	global _start

_start:
	call _printQues
	call _input
	call _printText
	call _exit


_printQues:
	mov rax, 1
	mov rdi, 1
	mov rsi, ques
	mov rdx, 19
	syscall
	ret

_input:
	mov rax, 0
	mov rdi, 0
	mov rsi, name
	mov rdx, 16
	syscall
	

_printText:
	mov rax, 1
	mov rdi, 1
	mov rsi, txt
	mov rdx, 23
	syscall
	;mov rax, 1
	;mov rdi, 1
	;mov rsi, name
	;mov rdx, 16
	;syscall
	ret

_exit:
	mov rax, 60
	mov rdi, 0
	syscall
	ret 
