; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strlen.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/03 01:22:54 by pollier           #+#    #+#              ;
;    Updated: 2015/06/09 20:30:08 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strlen
section .text

_ft_strlen

	
	push	rdi
	mov		rax, 0
	cld
	mov		rcx, -1
	repnz	scasb
	neg		rcx
	dec		rcx
	dec		rcx
	mov		rax, rcx
	pop		rdi
	ret