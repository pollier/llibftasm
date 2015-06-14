; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;   		ft_isdigit.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 16:38:51 by pollier           #+#    #+#              ;
;    Updated: 2015/05/31 18:19:59 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_isdigit

section .text

_ft_isdigit:

	cmp		rdi, 48
	jl		false
	cmp		rdi, 58
	jge		false
	mov		rax, 1
	ret

false:
	mov		rax, 0
	ret
