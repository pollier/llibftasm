; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts.s                                          :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/01 18:15:52 by pollier           #+#    #+#              ;
;    Updated: 2015/06/03 01:10:55 by pollier          ###   ########.fr        ;
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
	push	rbx
	cmp		rdi,	0
	je		if_null
	call	_ft_strlen
	mov		rsi,	rdi
	mov		rdi,	1
	mov		rdx,	rax
	mov		rax,	0x2000004
	syscall

n:

	push	0xa
	mov		rsi,	rsp
	mov		rdi,	1
	mov		rdx,	1
	mov		rax,	0x2000004
	syscall
	pop		rdi
	pop		rbx
	pop		rsi
	pop		rdi
	ret

if_null:

	lea		rsi,	[rel string]
	mov		rdx,	7
	mov		rdi,	1
	mov		rax,	0x2000004
	syscall
	pop		rbx
	pop		rsi
	pop		rdi
	ret