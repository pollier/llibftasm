; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_memalloc.s                                      :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 15:51:29 by pollier           #+#    #+#              ;
;    Updated: 2015/10/20 15:46:59 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

	global _ft_memalloc

extern	_ft_bzero
extern	_malloc

section .text

_ft_memalloc:

	push rdi
	push rsi

	cmp rdi, 0
	je stop
	call _malloc
	cmp rax, 0
	je stop
	push rax
	mov rsi, rdi
	mov rdi, rax
	call _ft_bzero
	pop rax

end :
	pop rsi
	pop rdi
	ret

stop:
	pop rsi
	pop rdi
	mov rax, 0
	ret
