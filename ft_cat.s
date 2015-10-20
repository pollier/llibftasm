; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 15:51:29 by pollier           #+#    #+#              ;
;    Updated: 2015/10/20 15:46:47 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define	BUFF_SIZE	32

global _ft_cat

section .bss

buff resb BUFF_SIZE

section .text

_ft_cat:

	push	rsi					;buffer
	push	rdi					;fd

boucle:

	lea		rsi,	[rel buff]	;load effective address
	mov		rax,	0x2000003	;read
	mov		rdx,	BUFF_SIZE
	syscall
	cmp		rax,	0
	jle		end
	mov		rdx,	rax
	mov		rdi,	1			;stdout
	mov		rax,	0x2000004	;write
	syscall
	mov		rdi,	[rsp]
	jmp		boucle

end:

	pop		rdi
	pop		rsi
	mov		rax,	0
	ret
