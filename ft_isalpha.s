global _ft_isalpha

section .text

_ft_isalpha:

	cmp rdi, 'A'
	jl false
	cmp rdi, 'z'
	jg false
	cmp rdi, 'Z'
	jle true
	cmp rdi, 'a'
	jge true

true:
	mov rax, 1
	ret

false:
	mov rax, 0
	ret
