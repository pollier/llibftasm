; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_bzero.s                                         :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 15:51:29 by pollier           #+#    #+#              ;
;    Updated: 2015/10/20 15:46:45 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_bzero
section .text

_ft_bzero:

	push	rdi
	push	rsi
	mov		rcx, rsi
	mov		rax, 0
	rep		stosb

	pop		rsi
	pop		rdi
	ret
