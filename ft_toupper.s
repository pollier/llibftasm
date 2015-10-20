; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_toupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 15:51:29 by pollier           #+#    #+#              ;
;    Updated: 2015/10/20 15:47:23 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

	global	_ft_toupper

section .text

_ft_toupper:	cmp rdi, 97
				jl false
				cmp rdi, 122
				jg false
				sub rdi, 32

false:	mov rax, rdi
		ret
