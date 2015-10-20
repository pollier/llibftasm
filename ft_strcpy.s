; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strcpy.s                                        :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 15:51:29 by pollier           #+#    #+#              ;
;    Updated: 2015/10/20 15:47:12 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strcpy
extern _ft_strlen
section .text

_ft_strcpy:

	push rsi
	push rdi

	cmp rdi, 0
	je stop
	cmp rsi, 0
	je stop
	mov rdi, rsi
	call _ft_strlen
	inc rax
	cld
	mov rdi, [rsp]
	mov rcx, rax
	rep	movsb		;copie l'octet rsi dans rdi et incremente
	pop rdi
	pop rsi
	mov rax, rdi
	ret

stop:
	pop rdi
	pop rsi
	mov rax, 0
	ret
