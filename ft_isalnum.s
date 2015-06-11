; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_isalnum.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 16:38:51 by pollier           #+#    #+#              ;
;    Updated: 2015/05/31 19:34:48 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

extern _ft_isalpha
extern _ft_isdigit

global _ft_isalnum
section .text

_ft_isalnum:

	call _ft_isalpha
	cmp rax, 0
	jg true
	call _ft_isdigit
	cmp rax, 0
	jg true
	jmp false

true:
	mov rax, 1
	ret

false:
	mov rax, 0
	ret
