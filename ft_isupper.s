global _ft_isupper

section .text

_ft_isupper:

	cmp rdi, 'A'
	jl false
	cmp rdi, 'Z'
	jg false
	mov rax, 1

false:
	mov rax, 0
	ret
