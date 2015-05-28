global _ft_isascii

section .text

_ft_isascii:

	cmp rdi, 0
	jl false
	cmp rdi, 127
	jg false
	mov rax, 1

false:
	mov rax, 0
	ret
