section .text
	global start
	global _main


start:
	call _main
	ret

_main
	mov rax, 1
	ret
