global _ft_toupper

section .text

_ft_toupper:

	cmp rdi, 'a'
	jl false
	cmp rdi, 'z'
	jg false
	sub rdi, 32
	mov rax, rdi
	ret

false:
	mov rax, rdi
	ret
