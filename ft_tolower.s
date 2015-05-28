global _ft_tolower

section .text

_ft_tolower:

	cmp rdi, 'a'
	jl false
	cmp rdi, 'z'
	jg false
	add rdi, 32
	mov rax, rdi
	ret

false:
	mov rax, rdi
	ret
