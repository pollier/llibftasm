; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strchr.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 15:51:29 by pollier           #+#    #+#              ;
;    Updated: 2015/10/20 15:47:10 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strchr
extern _ft_strlen
section .text

_ft_strchr:

	push rdi

	cmp rdi, 0
	je stop
	call _ft_strlen
	cmp rsi, 0
	je zero
	mov rcx, rax
	mov rax, rsi
	cld
	repne	scasb
	dec rdi
	cmp sil, byte [rdi]		;sil = 8 premiers bits de rsi
	jne stop
	mov rax, rdi
	pop rdi
	ret

zero:
	pop rdi
	ret

stop:
	pop rdi
	mov rax, 0
	ret
