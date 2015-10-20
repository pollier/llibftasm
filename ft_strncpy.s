; **************************************************************************** ;
;                                                                              ;
;                                                         :::      ::::::::    ;
;    ft_strncpy.s                                       :+:      :+:    :+:    ;
;                                                     +:+ +:+         +:+      ;
;    By: pollier <pollier@student.42.fr>            +#+  +:+       +#+         ;
;                                                 +#+#+#+#+#+   +#+            ;
;    Created: 2015/05/31 15:51:29 by pollier           #+#    #+#              ;
;    Updated: 2015/10/20 15:47:17 by pollier          ###   ########.fr        ;
;                                                                              ;
; **************************************************************************** ;

global _ft_strncpy
extern _ft_strnlen
section .text

_ft_strncpy:

	push rsi
	push rdi
	push rdx

	cmp rdi, 0
	je stop
	cmp rsi, 0
	je stop
	push rsi
	push rdi
	mov rdi, rsi
	mov rsi, rdx
	call _ft_strnlen
	cld
	pop rdi
	mov rcx, rax
	pop rsi
	rep	movsb		;copie l'octet rsi dans rdi et incremente
	pop rdx
	pop rdi
	pop rsi
	mov rax, rdi
	ret

stop:
	pop rdx
	pop rdi
	pop rsi
	mov rax, 0
	ret
