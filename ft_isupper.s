; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 15:51:29 by pollier           #+#    #+#              ;
;    Updated: 2015/10/20 15:46:57 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_isupper

section .text

_ft_isupper:

	cmp		rdi, 'A'
	jl		false
	cmp		rdi, 'Z'
	jg		false
	mov		rax, 1
	ret

false:
	mov		rax, 0
	ret
