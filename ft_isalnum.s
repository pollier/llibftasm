global _ftisalnum

section .text

_ftisalnum:

	extern _ft_isalpha
	extern _ft_isdigit

true:
	mov rax, 1
	ret

false:
	mov rax, 0
	ret
