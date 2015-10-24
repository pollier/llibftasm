; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_test_w_fd.s                                     :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/10/24 09:38:08 by pollier           #+#    #+#              ;
;    Updated: 2015/10/24 10:33:29 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global	_ft_test_w_fd

section .bss

buff resb 1

section .text

_ft_test_w_fd:

	push	rsi	
	push	rdi					;fd
	lea		rsi,	[rel buff]	;load effective address
	mov		rax,	0x2000004	;write
	mov		rdx,	0			;len
	syscall
	cmp		rax,	0
	jl		end
	mov		rax,	1
	pop		rdi
	pop		rsi
	ret

end:
	mov		rax,	0
	pop		rdi
	pop		rsi
	ret