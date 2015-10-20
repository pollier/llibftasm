; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 15:51:29 by pollier           #+#    #+#              ;
;    Updated: 2015/10/20 15:47:16 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strlen
section .text

_ft_strlen:


	push	rdi
	mov		rax, 0
	cld
	mov		rcx, -1
	repnz	scasb
	not		rcx
	dec		rcx
	mov		rax, rcx
	pop		rdi
	ret
