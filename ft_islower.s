; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_islower.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 15:51:29 by pollier           #+#    #+#              ;
;    Updated: 2015/10/20 15:46:55 by pollier          ###   ########.fr        ;
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
	ret

false:
	mov		rax, 0
	ret
