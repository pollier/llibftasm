; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/03 01:23:19 by pollier           #+#    #+#              ;
;    Updated: 2015/06/03 01:24:00 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_memcpy

section .text

_ft_memcpy:

	push	rdi
	push	rbx
	push	rsi
	mov		rcx, rdx
	rep		movsb
	pop		rsi
	pop		rbx
	pop		rax
	mov		rdi, rax
	ret