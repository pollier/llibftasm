; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strnew.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 15:51:29 by pollier           #+#    #+#              ;
;    Updated: 2015/10/20 15:47:20 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

	global _ft_strnew

extern	_ft_memalloc

section .text

_ft_strnew:

	cmp rdi, 0
	je strnew
	call _ft_memalloc
	ret

strnew:
	inc rdi
	jmp _ft_strnew
