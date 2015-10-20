; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 15:51:29 by pollier           #+#    #+#              ;
;    Updated: 2015/10/20 15:47:03 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_memset

section .text

_ft_memset:

	push	rdi
	mov		rax, rsi
	mov		rcx, rdx
	rep		stosb
	pop		rax
	ret
