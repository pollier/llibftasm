; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isprint.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 15:51:29 by pollier           #+#    #+#              ;
;    Updated: 2015/10/20 15:46:56 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

	global	_ft_isprint

section .text

_ft_isprint:	cmp rdi, 32
				jl false
				cmp rdi, 126
				jg false
				mov rax, 1
				ret

false:	mov rax, 0
		ret
