global _ft_islower

section .text

_ft_islower:

	cmp rdi, 'a'
	jl false
	cmp rdi, 'z'
	jg false
	mov rax, 1

false:
	mov rax, 0
	ret
