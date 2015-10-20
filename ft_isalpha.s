; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalpha.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 15:51:29 by pollier           #+#    #+#              ;
;    Updated: 2015/10/20 15:46:51 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

	global	_ft_isalpha

section .text

_ft_isalpha:	cmp rdi, 'A'
				jl false
				cmp rdi, 'z'
				jg false
				cmp rdi, 'Z'
				jle true
				cmp rdi, 'a'
				jge true

false:	mov rax, 0
		ret
true:	mov rax, 1
		ret
