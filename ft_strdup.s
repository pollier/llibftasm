; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 15:51:29 by pollier           #+#    #+#              ;
;    Updated: 2015/10/20 15:47:14 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

extern _ft_strlen
extern _malloc

global _ft_strdup

section .text

_ft_strdup:

	cmp		rdi,	0
	je		stop
	push	rdi
	call	_ft_strlen
	mov		rdi,	rax
	push	rax
	call	_malloc
	jc		stop
	mov		rdi,	rax
	pop		rcx
	mov		rsi,	[rsp]
	push	rdi
	rep		movsb
	pop		rax
	pop		rdi
	mov		rdi,	rax
	ret

stop:

	mov 	rax,	0
	ret
