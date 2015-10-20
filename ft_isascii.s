; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isascii.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 15:51:29 by pollier           #+#    #+#              ;
;    Updated: 2015/10/20 15:46:53 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

	global	_ft_isascii

section .text

_ft_isascii:	cmp rdi, 0
				jl false
				cmp rdi, 127
				jg false
				mov rax, 1
				ret

false:	mov rax, 0
		ret
