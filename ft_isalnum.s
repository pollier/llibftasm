global _ft_isalnum

section .text

_ftisalnum:

	call ft_isalpha, rdi
	cmp rax, 0
	jg true
	call ft_isdigit, rdi
	cmp rax, 0
	jg true
	jmp false

true:
	mov rax, 1
	ret

false:
	mov rax, 0
	ret
