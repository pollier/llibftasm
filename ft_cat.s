; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_cat.s                                           :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 16:38:51 by pollier           #+#    #+#              ;
;    Updated: 2015/05/31 19:34:48 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

%define	STDOUT				1
%define	BUFF_SIZE			10

extern _ft_bzero
global _ft_cat

section .data
buff times BUFF_SIZE db 0

section .text

_ft_cat:

	push	rdi

read:



end:
	
	pop		rdi
	mov		rax,	0
	ret
