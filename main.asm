extern printf
extern scanf
extern exit

section .data
	msg: db "Enter the message:", 0xA, 0
	in: db "%s", 0
	out: db "Result: %s", 0xA, 0
	test: db "Test!", 0xA, 0

section .bss
	buf1: resq 8

section .text
	global _start

_start:
	lea rdi, [msg]
	xor rax, rax
	call printf
	
	lea rdi, [in]
	lea rsi, [buf1]
	xor rax, rax
	call scanf

	lea rdi, [out]
	lea rsi, [buf1]
	xor rax, rax
	call printf

	lea rdi, [test]
	xor rax, rax
	call printf
	
exit:
	mov rdi, 0
	mov rax, 60
	syscall
