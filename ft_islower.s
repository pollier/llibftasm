; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_islower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 16:38:51 by pollier           #+#    #+#              ;
;    Updated: 2015/05/31 18:20:03 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_islower

section .text

_ft_islower:

	cmp		rdi, 'a'
	jl		false
	cmp		rdi, 'z'
	jg		false
	mov		rax, 1

false:
	mov		rax, 0
	ret
