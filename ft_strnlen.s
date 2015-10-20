; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strnlen.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 15:51:29 by pollier           #+#    #+#              ;
;    Updated: 2015/10/20 15:47:21 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strnlen
section .text

_ft_strnlen:

	push	rdi
	push	rsi
	mov		rax, 0
	cld
	mov		rcx, rsi
	repnz	scasb
	mov		rsi, [rsp]
	sub		rsi, rcx
	mov		rax, rsi
	pop		rsi
	pop		rdi
	ret
