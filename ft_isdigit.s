; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 15:51:29 by pollier           #+#    #+#              ;
;    Updated: 2015/10/20 15:46:55 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

	global	_ft_isdigit

section .text

_ft_isdigit:	cmp rdi, '0'
				jl false
				cmp rdi, '9'
				jg false
				mov rax, 1
				ret

false:	mov rax, 0
		ret
