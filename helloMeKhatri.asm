section .bss
name resb 16

section .data
text db "What is your name?" , 10
t db "Hello "

section .text
global _start:
_start:
mov rax, 1
mov rdi, 1
mov rsi, text
mov rdx, 19
syscall

mov rax, 0
mov rdi, 0
mov rsi, name
mov rdx, 16
syscall

mov rax, 1
mov rdi, 1
mov rsi, t
mov rdx, 23
syscall

mov rax, 60
mov rdi, 0
syscall
