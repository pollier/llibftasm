; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 16:38:51 by pollier           #+#    #+#              ;
;    Updated: 2015/05/31 18:18:43 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_isalpha

section .text

_ft_isalpha:

	cmp		rdi, 'A'
	jl		false
	cmp		rdi, 'z'
	jg		false
	cmp		rdi, 'Z'
	jle		true
	cmp		rdi, 'a'
	jge		true

false:
	mov		rax, 0
	ret

true:
	mov		rax, 1
	ret

