; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 16:38:51 by pollier           #+#    #+#              ;
;    Updated: 2015/05/31 19:34:48 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define	BUFF_SIZE	10

extern _ft_bzero
global _ft_cat

section .data

buff times BUFF_SIZE db 0

section .text

_ft_cat:

	push	rsi
	push	rdi

boucle:
	

	lea		rsi,	[rel buff]
	mov		rax,	0x2000003
	mov		rdx,	BUFF_SIZE
	syscall
	cmp		rax,	0
	jle		end
	push	rax
	mov		rdx,	rax
	mov		rdi,	1
	mov		rax,	0x2000004
	syscall
	lea		rdi,	[rel buff]
	pop		rsi
	call	_ft_bzero
	mov		rdi,	[rsp]
	jmp		boucle

end:
	
	pop		rdi
	pop		rsi
	mov		rax,	0
	ret
