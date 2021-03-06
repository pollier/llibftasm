; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strndup.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 15:51:29 by pollier           #+#    #+#              ;
;    Updated: 2015/10/20 15:47:19 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

extern _ft_strnlen
extern _malloc

global _ft_strndup
extern _ft_strnlen
extern _ft_strncpy

section .text

_ft_strndup:
	push rdi
	push rsi
	push rdi
	push rsi

	call _ft_strnlen
	mov rdi, rax
	mov rsi, rax
	call _malloc
	cmp rax, 0
	je stop
	mov rdi, rax
	pop rsi
	mov rdx, rsi
	pop rdi
	mov rsi, rdi
	call _ft_strncpy
	pop rsi
	pop rdi
	ret

stop:
	pop rsi
	pop rdi
	pop rsi
	pop rdi
	mov rax, 0
	ret
