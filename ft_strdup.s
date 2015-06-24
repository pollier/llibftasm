; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strdup.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/03 01:23:34 by pollier           #+#    #+#              ;
;    Updated: 2015/06/03 01:24:05 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

extern _ft_strlen
extern _malloc

global _ft_strdup

section .text

_ft_strdup:

	cmp		rdi,	0
	je		null
	push	rdi
	push	rsi
	call	_ft_strlen
	mov		rcx,	rax
	mov		rdi,	rax
	push	rax
	call	_malloc
	mov		rdi,	rax
	pop		rcx
	mov		rsi,	[rsp]
	push		rdi
	rep		movsb
	pop		rax
	pop		rsi
	pop		rdi
	ret

null:
	
	mov 	rax,	0
	ret
