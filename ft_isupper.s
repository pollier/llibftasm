; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isupper.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 16:38:51 by pollier           #+#    #+#              ;
;    Updated: 2015/05/31 18:20:10 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_isupper

section .text

_ft_isupper:

	cmp rdi, 'A'
	jl false
	cmp rdi, 'Z'
	jg false
	mov rax, 1

false:
	mov rax, 0
	ret
