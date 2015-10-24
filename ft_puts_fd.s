; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_puts_fd.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 15:51:29 by pollier           #+#    #+#              ;
;    Updated: 2015/10/24 10:38:21 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global      _ft_puts_fd
extern	_ft_strlen
extern	_ft_test_w_fd

section	.data
string	db	"(null)", 0x0a

section	.text

_ft_puts_fd:

	push	rdi
	push	rsi
	mov		rdi,	rsi
	call	_ft_test_w_fd
	cmp		rax,	0
	je		error
	pop		rsi
	pop		rdi
	push	rdi
	push	rsi
	mov		r8,	rsi
	cmp		rdi,	0
	je		stop
	call	_ft_strlen

test:

	push 	r8
	push	rdi

write:

	mov		rsi,	rdi
	mov		rdi,	r8
	mov		rdx,	rax
	mov		rax,	0x2000004
	syscall

n:

	push	0x0a
	mov		rsi,	rsp
	mov		rdi,	r8
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
	mov		rdi,	r8				;stdout
	mov		rax,	0x2000004		;write
	syscall
	pop		rsi
	pop		rdi
	ret

error:
	pop		rsi
	pop		rdi
	ret
