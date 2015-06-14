; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_tolower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 16:38:51 by pollier           #+#    #+#              ;
;    Updated: 2015/05/31 18:20:18 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_tolower

section .text

_ft_tolower:

	cmp		rdi, 'A'
	jl		false
	cmp		rdi, 'Z'
	jg		false
	add		rdi, 32

false:
	mov		rax, rdi
	ret
