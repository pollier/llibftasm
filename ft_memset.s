; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memset.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/06/03 01:23:05 by pollier           #+#    #+#              ;
;    Updated: 2015/06/03 01:23:57 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_memset

section .text

_ft_memset:

	push rdi
	mov rax, rsi
	mov rcx, rdx
	rep stosb
	pop rax
	ret