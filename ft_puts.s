; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 15:51:29 by pollier           #+#    #+#              ;
;    Updated: 2015/10/20 15:47:04 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global      _ft_puts
extern	_ft_strlen

section	.data
string	db	"(null)", 0x0a

section	.text

	_ft_puts:

	push	rdi
	push	rsi
	cmp		rdi,	0
	je		stop
	call	_ft_strlen

write:

	mov		rsi,	rdi
	mov		rdi,	1
	mov		rdx,	rax
	mov		rax,	0x2000004
	syscall

n:

	push	0x0a
	mov		rsi,	rsp
	mov		rdi,	1
	mov		rdx,	1
	mov		rax,	0x2000004
	syscall
	pop		rdi
	pop		rsi
	pop		rdi
	ret

stop:

	lea		rsi,	[rel string]
	mov		rdx,	7				;(null)
	mov		rdi,	1				;stdout
	mov		rax,	0x2000004		;write
	syscall
	pop		rsi
	pop		rdi
	ret
