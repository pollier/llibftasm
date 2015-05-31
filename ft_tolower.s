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

	cmp rdi, 'a'
	jl false
	cmp rdi, 'z'
	jg false
	add rdi, 32
	mov rax, rdi
	ret

false:
	mov rax, rdi
	ret
